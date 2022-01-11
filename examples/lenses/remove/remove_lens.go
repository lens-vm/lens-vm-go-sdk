package lenses

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
	"github.com/lens-vm/lens-vm-go-sdk/types"
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

//export lensvm_exec_remove
func _lensvm_exec_remove(forward bool, argBufferStart int32, argSize int32, dataBufferStart int32, dataSize int32) types.Status {
	return sdk.Exec("remove", forward, argBufferStart, argSize, dataBufferStart, dataSize)
}

type RemoveContext struct {
	sdk.DefaultModuleContext
}

func (ctx *RemoveContext) Name() string {
	return "remove"
}

// Imports defines what other lenses we need to import
// func (ctx *RemoveContext) Imports() []string {

// }

// Run is the main lens function. It should be able to execute the lens both
// forwards and backwards indicated by the first argument in the function.
func (ctx *RemoveContext) Run(forward bool, args sdk.Data, data sdk.Data) (sdk.Patch, error) {
	name, ok := args.GetString("name")
	if !ok {
		return nil, types.ErrBadArgument
	}
	return sdk.NewPatch(sdk.Map{
		name: nil,
	})
}
