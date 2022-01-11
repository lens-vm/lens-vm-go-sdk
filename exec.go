package sdk

import (
	"errors"
	"fmt"

	"github.com/benbjohnson/immutable"

	"github.com/lens-vm/lens-vm-go-sdk/types"
)

// ExecFn matches the named exec func ABI: lensvm_exec_<name>
type ExecFn = func(bool, *byte, int32, *byte, int32) types.Status

var (
	modules = immutable.NewMap(nil)
)

func RegisterModule(ctx ModuleContext) error {
	name := ctx.Name()
	imports := ctx.ResolveImports()
	fmt.Println(imports[0].ExecFn)
	_, exists := modules.Get(name)
	if exists {
		return errors.New("Module already exists with the given name: " + name)
	}
	modules = modules.Set(name, ctx)
	return nil
}

func RegisterModules(ctxs ...ModuleContext) error {
	for _, c := range ctxs {
		if err := RegisterModule(c); err != nil {
			return err
		}
	}
	return nil
}

func GetModule(name string) ModuleContext {
	modIface, ok := modules.Get(name)
	if !ok {
		return nil
	}

	mod, ok := modIface.(ModuleContext)
	if !ok {
		return nil
	}
	return mod
}

func Exec(lens string, forward bool, argBufferStart int32, argSize int32, dataBufferStart int32, dataSize int32) types.Status {
	ctx := GetModule(lens)
	if ctx == nil {
		return types.StatusErrInvalidContext
	}

	// gets args/data from memory
	return exec(ctx, forward, argBufferStart, argSize, dataBufferStart, dataSize)
}

func exec(ctx ModuleContext, forward bool, argBufferStart int32, argSize int32, dataBufferStart int32, dataSize int32) types.Status {
	// @todo: hook into the importHandler system to determine if we
	// need to load from the main or temporary buffers
	// load args
	argBuffer, err := GetInputArgBuffer(argBufferStart, argSize)
	if err != nil {
		return types.ErrToStatus(err)
	}
	arg, err := DataFromBuffer(argBuffer)
	if err != nil {
		return types.ErrToStatus(err)
	}
	// load data
	dataBuffer, err := GetInputDataBuffer(dataBufferStart, dataSize)
	if err != nil {
		return types.ErrToStatus(err)
	}
	d, err := DataFromBuffer(dataBuffer)
	if err != nil {
		return types.ErrToStatus(err)
	}

	// run lens
	patch, err := ctx.Run(forward, arg, d)
	if err != nil {
		return types.ErrToStatus(err)
	}

	// save return
	patchBuffer, err := patch.Bytes()
	if err != nil {
		return types.ErrToStatus(err)
	}
	if err := SetOutputPatchBuffer(patchBuffer); err != nil {
		return types.ErrToStatus(err)
	}

	// return status
	// dont need to embed patch pointer into status
	// because we are using a managed buffer
	return types.StatusOK
}
