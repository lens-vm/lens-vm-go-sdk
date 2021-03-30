package sdk

import (
	"reflect"
	"unsafe"
)

// RawBytePtrToByteSlice takes a pointer and a size argument
// and returns a byte slice
// Note: It uses the TinyGo internal representation of a
// Byte slice (https://tinygo.org/compiler-internals/datatypes/)
func RawBytePtrToByteSlice(raw *byte, size int32) []byte {
	return *(*[]byte)(unsafe.Pointer(&reflect.SliceHeader{
		Data: uintptr(unsafe.Pointer(raw)),
		Len:  uintptr(size),
		Cap:  uintptr(size),
	}))
}
