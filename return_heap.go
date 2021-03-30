package sdk

// import (
// 	"sync"
// )

// type returnPtr int32

// func ptrFromStatus(s Status) returnPtr {
// 	return returnPtr(s - 10)
// }

// func (r returnPtr) toStatus() Status {
// 	// increment by 10 to avoid the reserved status codes of 0-9
// 	return Status(r + 10)
// }

// func (r returnPtr) int32() int32 {
// 	return int32(r)
// }

// // var (
// // 	defaultReturnHeap = newReturnHeap()
// // )

// // returnHeap is a memory structure to save complex return values
// // from exported WASM functions.
// // E.g. Instead of returning a string type, we return a index
// // (or a Status) that points the where in the returnHeap memory
// // array the stored string is.
// type returnHeap struct {
// 	sync.Mutex

// 	ptrGenerator *int32
// 	heap         map[int32][2]int32
// }

// // func newReturnHeap() *returnHeap {
// // 	return &returnHeap{
// // 		ptrGenerator: 0,
// // 		heap:       make(map[int32][2]int32, 0),
// // 	}
// // }

// // func (r returnHeap) store(data []byte) {
// // 	size := len(data)
// // 	ptr := unsafe.Pointer(&data[0])

// // }

// // func (r returnHeap) getPtr(index int32) int32 {
// // 	if int32(len(r.heap)) < index {
// // 		return -1
// // 	}
// // 	return r.heap[index][0]
// // }
