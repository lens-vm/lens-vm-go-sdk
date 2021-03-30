package sdk

import (
	"github.com/lens-vm/lens-vm-go-sdk/types"
)

// ExecFn matches the named exec func ABI: lensvm_exec_<name>
type ExecFn = func(ContextID, bool, *byte, int32, *byte, int32) types.Status

func Exec(contextID ContextID, forward bool, argBuffer *byte, argSize int32, dataBuffer *byte, dataSize int32) types.Status {
	ctx := GetContext(contextID)
	if ctx == nil {
		return types.StatusErrInvalidContext
	}

	// gets args/data from memory
	return types.StatusOK
}
