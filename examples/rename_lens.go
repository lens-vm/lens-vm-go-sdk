package main

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
)

// LensVM module import functions

//export lensvm_exec_hoist
func lensvm_exec_hoist(contextID sdk.ContextID, argBuffer *byte, argSize int, dataBuffer *byte, dataSize int) sdk.Status

// LensVM module export functions

// export lensvm_exec_rename
func lensvm_exec_rename(contextID sdk.ContextID, argBuffer *byte, argSize int, dataBuffer *byte, dataSize int) sdk.Status {
	ctx, err := sdk.GetContext(contextID)
	if err != nil {
		return sdk.ErrToStatus(err)
	}
	return ctx.Exec("rename", argBuffer, argSize, dataBuffer, dataSize)
}

func rename(ctx *RenameContext, data sdk.Data, source, destination string) (sdk.Data, error) {

}

type RenameContext struct {
	sdk.DefaultModuleContext
}

func (ctx *RenameContext) Name() string {
	return "rename"
}

// Imports defines what other lenses we need to import
func (ctx *RenameContext) Imports() []sdk.Import {
	return []sdk.Import{
		sdk.NewImport("hoist", lensvm_exec_hoist),
	}
}

func (ctx *RenameContext) Lens(args sdk.Data, data sdk.Data) (sdk.Data, error) {
	source := args.GetString("source")
	destination := args.GetString("destination")

	hoist, err := ctx.GetImport("hoist")
	if err != nil {
		return nil, err
	}
	res := sdk.DataFrom(map[string]string{
		destination: data.GetString(source),
	})

	return hoist.Exec(nil, res)
}
