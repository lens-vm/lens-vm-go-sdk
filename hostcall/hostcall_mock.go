package hostcall

// +build lenstest

import (
	"github.com/lens-vm/lens-vm-go-sdk/types"
)

var currentHost LensVMWASMHost = DefaultLensVMWASMHost{}

func RegisterMockHost(host LensVMWASMHost) {
	currentHost = host
}

type LensVMWASMHost interface {
	LensVMGetBufferBytes(t types.BufferType, start, maxsize int32, retData **byte, retSize *int32) types.Status
	LensVMSetBufferBytes(t types.BufferType, start, maxsize int32, ptr *byte, size int32) types.Status
}

type DefaultLensVMWASMHost struct{}

func (d DefaultLensVMWASMHost) LensVMGetBufferBytes(t types.BufferType, start, maxsize int32, retData **byte, retSize *int32) types.Status {
	return 0
}

func (d DefaultLensVMWASMHost) LensVMSetBufferBytes(t types.BufferType, start, maxsize int32, ptr *byte, size int32) types.Status {
	return 0
}

// func LensVMGetBufferBytes(t types.BufferType, start, maxsize int32, retData **byte, retSize *int32) types.Status {
// 	return currentHost.LensVMGetBufferBytes(t, start, maxsize, retData, retSize)
// }

// //export lensvm_set_buffer
// func LensVMSetBufferBytes(t types.BufferType, start, maxsize int32, ptr *byte, size int32) types.Status
