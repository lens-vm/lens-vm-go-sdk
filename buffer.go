package sdk

import (
	"github.com/lens-vm/lens-vm-go-sdk/hostcall"
	"github.com/lens-vm/lens-vm-go-sdk/types"
)

func GetInputDataBuffer(start, maxsize int32) ([]byte, error) {
	ret, st := getBuffer(types.BufferTypeInputData, start, maxsize)
	return ret, types.StatusToError(st)
}

func GetInputArgBuffer(start, maxsize int32) ([]byte, error) {
	ret, st := getBuffer(types.BufferTypeInputArg, start, maxsize)
	return ret, types.StatusToError(st)
}

func SetOutputPatchBuffer(patch []byte) error {
	return setBuffer(types.BufferTypeOutputPatch, patch)
}

func GetTempDataBuffer(start, maxsize int32) ([]byte, error) {
	ret, st := getBuffer(types.BufferTypeTempInputData, start, maxsize)
	return ret, types.StatusToError(st)
}

func SetTempDataBuffer(buf []byte) error {
	return setBuffer(types.BufferTypeTempInputData, buf)
}

func GetTempArgBuffer(start, maxsize int32) ([]byte, error) {
	ret, st := getBuffer(types.BufferTypeTempInputArg, start, maxsize)
	return ret, types.StatusToError(st)
}

func SetTempArgBuffer(buf []byte) error {
	return setBuffer(types.BufferTypeTempInputArg, buf)
}

func setBuffer(bufType types.BufferType, buf []byte) error {
	var ptr *byte
	size := int32(len(buf))
	if size != 0 {
		ptr = &buf[0]
	}
	st := hostcall.LensVMSetBufferBytes(bufType, 0, size, ptr, size)
	return types.StatusToError(st)
}

func getBuffer(bufType types.BufferType, start, maxSize int32) ([]byte, types.Status) {
	var retData *byte
	var retSize int32
	switch st := hostcall.LensVMGetBufferBytes(bufType, start, maxSize, &retData, &retSize); st {
	case types.StatusOK:
		// is this correct handling...?
		if retData == nil {
			return nil, types.StatusNotFound
		}
		return RawBytePtrToByteSlice(retData, retSize), st
	default:
		return nil, st
	}
}
