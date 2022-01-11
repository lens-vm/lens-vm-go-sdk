package main

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
	"github.com/lens-vm/lens-vm-go-sdk/examples/lenses"
)

func main() {
	sdk.RegisterModules(&lenses.RenameContext{},
		&lenses.RemoveContext{},
		&lenses.HeadContext{})
}
