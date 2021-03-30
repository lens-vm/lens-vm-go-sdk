package lenses

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
)

// LensVM module import functions

//export lensvm_exec_hoist
// func lensvm_exec_hoist(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int32, dataBuffer *byte, dataSize int32) sdk.Status

// // // LensVM module export functions

// // //export lensvm_exec_rename
// func lensvm_exec_rename(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int32, dataBuffer *byte, dataSize int32) sdk.Status {
// 	// ctx, err := sdk.GetContext(contextID)
// 	// if err != nil {
// 	// 	return sdk.ErrToStatus(err)
// 	// }
// 	// return ctx.Exec("rename", argBuffer, argSize, dataBuffer, dataSize)
// 	return sdk.Exec(contextID, forward, argBuffer, argSize, dataBuffer, dataSize)
// }

type RenameContext struct {
	sdk.DefaultModuleContext
}

func (ctx *RenameContext) Name() string {
	return "rename"
}

// Imports defines what other lenses we need to import
func (ctx *RenameContext) Imports() []string {
	return []string{
		"hoist",
		"convert",
		"..."
	}
}

func (ctx *RenameContext) Run(forward bool, args sdk.Data, data sdk.Data) (sdk.Patch, error) {
	var from, to string
	var ok1, ok2 bool
	if forward {
		from, ok1 = args.GetString("source")
		to, ok2 = args.GetString("destination")
	} else {
		from, ok1 = args.GetString("destination")
		to, ok2 = args.GetString("source")
	}

	if !(ok1 && ok2) { // if either failed return ErrBadArgument
		return nil, sdk.ErrBadArgument
	}

	hoist, err := ctx.GetImport("hoist")
	if err != nil {
		return nil, err
	}
	res := sdk.NewPatch()
	res.Set(to, data.MustGetString(from))

	data = data.Merge(res)

	return hoist.Run(forward, nil, data)
}

type RemoveContext struct {
	sdk.DefaultModuleContext
}

// func newRenameContext(uint32) sdk.ModuleContext { return &RenameContext{} }

// func main() {
// 	sdk.NewWrappedContext(&RenameContext{}).Init()
// }

// example host application code
/*
	host := lensvm.NewHostRuntime()
	module := host.Instanciate(... wasm ...)
	// create context id for the http req
	// contextID := atomic.AddInt32(&contextIDGenerator, 1)
	contextID := host.NewContextID()
	rename := module.CreateLens(contextId, "rename")
	patch := rename.Lens(...)
	// or
	patch := rename.Forward(...)
	// or
	patch := rename.Reverse(...)


	var x int = 1
	x := 1

	x = 2

*/
