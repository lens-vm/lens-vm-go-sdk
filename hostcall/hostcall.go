package hostcall

// +build !lenstest

import (
	"github.com/lens-vm/lens-vm-go-sdk/types"
)

//export lensvm_get_buffer
func LensVMGetBufferBytes(t types.BufferType, start, maxsize int32, retData **byte, retSize *int32) types.Status

//export lensvm_set_buffer
func LensVMSetBufferBytes(t types.BufferType, start, maxsize int32, ptr *byte, size int32) types.Status
