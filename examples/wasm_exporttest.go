package main

import (
	"encoding/json"
	"fmt"

	// json "github.com/valyala/fastjson"
	"github.com/lens-vm/jsonmerge"
)

//export lensvm_exec_hoist
// func hoist(x int) int

// //export lensvm_exec_rename
// func rename() int

type t json.RawMessage

//export testFn
func testFn() int {
	return 1
}

func main() {
	// d := map[string]interface{}{
	// 	"test":  "hello world",
	// 	"i64":   123456,
	// 	"f64":   1234.56,
	// 	"asdf4": 0.14159,
	// 	"sf": map[string]interface{}{
	// 		"v": []int{4, 5},
	// 		"z": "hw2",
	// 	},
	// 	"unicode": "M\u00fcNSTER",
	// 	"bool":    true,
	// }

	// b := cbor.EncodeMap(d)

	// fmt.Println(b)

	// // obj, err := json.NewFromBytes(d)
	// // if err != nil {
	// // 	panic(err)
	// // }
	// data, err := cbor.Decode(b)
	// if err != nil {
	// 	panic(err)
	// }

	// fmt.Println(data)

	doc := []byte(`{
			"str": "bar",
			"int": 123,
			"float": 1.23,
			"bool": true,
			"arr": [1, "foo", {}]
	}`)
	patch := []byte(`{
		"str": "foo",
		"int": null,
		"bool": false
	}`)

	out, err := jsonmerge.MergePatch(doc, patch)
	if err != nil {
		panic(err)
	}

	fmt.Println(string(out))
}
