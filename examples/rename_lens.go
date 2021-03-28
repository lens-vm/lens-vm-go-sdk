package main

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
)

// LensVM module import functions

//go:wasm-module hoist
//export lensvm_exec
func lensvm_exec_hoist(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int, dataBuffer *byte, dataSize int) sdk.Status

// LensVM module export functions

// export lensvm_exec_rename
func lensvm_exec_rename(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int, dataBuffer *byte, dataSize int) sdk.Status {
	// ctx, err := sdk.GetContext(contextID)
	// if err != nil {
	// 	return sdk.ErrToStatus(err)
	// }
	// return ctx.Exec("rename", argBuffer, argSize, dataBuffer, dataSize)
	return sdk.Exec(contextID, forward, argBuffer, argSize, dataBuffer, dataSize)
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
		sdk.NewImport("hoist", (sdk.ExexFn)(lensvm_exec_hoist),
	}
}

func (ctx *RenameContext) Run(forward bool, args sdk.Data, data sdk.Data) (sdk.Data, error) {
	var from, to string
	if forward {
		from = args.GetString("source")
		to = args.GetString("destination")
	} else {
		from = args.GetString("destination")
		to = args.GetString("source")
	}

	hoist, err := ctx.GetImport("hoist")
	if err != nil {
		return nil, err
	}
	res := sdk.DataFrom(map[string]interface{}{
		to: data.GetString(from),
	})

	return hoist.Run(forward, nil, res)
}
