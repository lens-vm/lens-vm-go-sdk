package main

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
	"github.com/lens-vm/lens-vm-go-sdk/examples/lenses/rename"
)

func main() {
	// rename :=
	// data := []byte("hello")
	// arg := []byte("world")
	// fmt.Println(rename.Wrapped_lensvm_exec_hoist(true, &data[0], 5, &arg[0], 5))
	sdk.RegisterModules(&rename.RenameContext{})

}
