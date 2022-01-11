package lenses

import (
	sdk "github.com/lens-vm/lens-vm-go-sdk"
	"github.com/lens-vm/lens-vm-go-sdk/types"
)

//export lensvm_exec_head
func _lensvm_exec_head(forward bool, argBufferStart int32, argSize int32, dataBufferStart int32, dataSize int32) types.Status {
	return sdk.Exec("head", forward, argBufferStart, argSize, dataBufferStart, dataSize)
}

type HeadContext struct {
	sdk.DefaultModuleContext
}

func (ctx *HeadContext) Name() string {
	return "head"
}

// Imports defines what other lenses we need to import
// func (ctx *RemoveContext) Imports() []string {

// }

// Run is the main lens function. It should be able to execute the lens both
// forwards and backwards indicated by the first argument in the function.
//
// Head Lens: Head replaces a list with its first (head) element.
// E.g.
// From This:
//	{
//		"labels": [
//			{
//				"name": "bug",
//				"color": "red"
//			}
//		]
//	}
// To This:
// 	{
// 		"labels": {
// 			"name": "bug",
// 			"color": "red"
//		}
//	}
func (ctx *HeadContext) Run(forward bool, args sdk.Data, data sdk.Data) (sdk.Patch, error) {
	name, ok := args.GetString("name")
	if !ok {
		return nil, types.ErrBadArgument
	}

	list, ok := data.GetArray(name)
	if !ok {
		return nil, types.ErrMalformedData // @todo: Replace with err for bad expected data
	}

	if len(list) < 1 {
		return nil, types.ErrMalformedData
	}

	return sdk.NewPatch(sdk.Map{
		name: list[0],
	})
}
