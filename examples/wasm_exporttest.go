package main

import (
	// "encoding/json"
	"fmt"
	"reflect"

	"github.com/lens-vm/jsonmerge"
	json "github.com/valyala/fastjson"

	"github.com/benbjohnson/immutable"
)

//export lensvm_exec_hoist
// func hoist(x int) int

// //export lensvm_exec_rename
// func rename() int

type t *json.Value

type x map[reflect.Type]int

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

	y := map[reflect.Type]int{
		reflect.TypeOf(out): 1,
	}
	for k, v := range y {
		fmt.Println(k)
		fmt.Println(v)
	}

	m1 := immutable.NewMap(nil)
	m1 = m1.Set("jane", 100)

	m2 := immutable.NewMap(nil)
	m2 = m2.Set("bob", 200)

	m1 = m1.Set("charles", m2)

	fmt.Println(m1.Len()) // 2

	v, ok := m1.Get("charles")
	if vv, ok2 := v.(*immutable.Map); ok && ok2 {
		fmt.Println(vv.Get("bob"))
	}
	// fmt.Println(v, ok) // 300 true

	// fmt.Println(map[string]interface{}{
	// 	"bob": 1,
	// })

}
