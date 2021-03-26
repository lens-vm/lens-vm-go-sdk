package main

//go:wasm-module hoist
//export lensvm_exec
func hoist(x int) int

//go:wasm-module rename
//export lensvm_exec
func rename() int

func main() {
	x := 1
	hoist(x)
	rename()
}
