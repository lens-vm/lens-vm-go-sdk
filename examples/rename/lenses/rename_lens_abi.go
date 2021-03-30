// Code generated by lens-vm-go-sdk. DO NOT EDIT.
package lenses

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
)

/******* LensVM module import functions *******/

//export lensvm_exec_hoist
func _lensvm_exec_hoist(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int32, dataBuffer *byte, dataSize int32) sdk.Status

func wrapped_lensvm_exec_hoist(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int32, dataBuffer *byte, dataSize int32) sdk.Status {
	return _lensvm_exec_hoist(contextID, forward, argBuffer, argSize, dataBuffer, dataSize)
}

func (ctx *RenameContext) ResolveImports() []sdk.Import {
	return []sdk.Import{
		sdk.NewImport("hoist", wrapped_lensvm_exec_hoist),
	}
}

/******* LensVM module export functions *******/

//export lensvm_exec_rename
func _lensvm_exec_rename(contextID sdk.ContextID, forward bool, argBuffer *byte, argSize int32, dataBuffer *byte, dataSize int32) sdk.Status {
	return sdk.Exec(contextID, forward, argBuffer, argSize, dataBuffer, dataSize)
}