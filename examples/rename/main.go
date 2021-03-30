package main

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
	lenses "github.com/lens-vm/lens-vm-go-sdk/examples/rename/lenses"
)

func main() {
	sdk.RegisterContext(0, &lenses.RenameContext{})
}
