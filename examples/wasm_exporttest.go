package main

import (
	"fmt"

	json "github.com/valyala/fastjson"
)

//go:wasm-module hoist
//export lensvm_exec
// func hoist(x int) int

// //go:wasm-module rename
// //export lensvm_exec
// func rename() int

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

	var p json.Parser
	v, err := p.Parse(`{
			"str": "bar",
			"int": 123,
			"float": 1.23,
			"bool": true,
			"arr": [1, "foo", {}]
	}`)
	if err != nil {
		panic(err)
	}

	fmt.Println(v.GetStringBytes("str"))

	fmt.Println(v.MarshalTo(nil))
}
