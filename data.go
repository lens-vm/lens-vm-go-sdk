package sdk

import "github.com/valyala/fastjson"

var (
	// ensure we implement the Data interface
	_ Data = (*data)(nil)
)

type Patch interface {
	Set(string, interface{})
}

type patch struct {
	value *fastjson.Value
}

func NewPatch(d ...map[string]interface{}) Patch {
	// use an empty JSON object string to set the Type
	// on the fastjson.Value to fastjson.TypeObject
	// so all our following Set functions work correctly.
	v, _ := fastjson.Parse("{}")
	return &patch{
		value: v,
	}
}

func (p *patch) Set(k string, val interface{}) {}

func (p *patch) setValue(k string, val *fastjson.Value) {}

func (p *patch) set(k string, val interface{}) {}

type DataArray []Data

type Data interface {
	Get(keys ...string) (interface{}, bool)

	GetObject(keys ...string) (Data, bool)
	MustGetObject(keys ...string) Data

	GetArray(keys ...string) (DataArray, bool)
	MustGetArray(keys ...string) DataArray

	GetString(keys ...string) (string, bool)
	MustGetString(keys ...string) string

	GetInt32(keys ...string) (int32, bool)
	MustGetInt32(keys ...string) int32

	GetFloat32(keys ...string) (float32, bool)
	MustGetFloat32(keys ...string) float32

	Merge(Patch) Data
}

type dType uint8

const (
	dObjectType = 1
	dJSONType   = 2
)

// data is a utility wrapper around all the serialization, read, and
// write operations our data buffer objects need.
// data can hold two kinds of data internally
// 1. Native object map
// 2. Parsed JSON object
//
// reading and writing to/from the data object will always keep
// things in their orginal kind of structure (object/json).
// It will then invoke the necessary serialization routines
// if it needs to. E.g. Producing a merge output.
type data struct {
	t dType
	o map[string]interface{} // native object
	p *fastjson.Value        // parsed value
}

func DataFrom(d map[string]interface{}) Data {
	return data{
		o: d,
	}
}

func (d data) Get(keys ...string) (interface{}, bool) {
	return nil, true
}

func (d data) GetString(keys ...string) (string, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return "", false
	}

	str, ok := v.(string)
	return str, ok

}

func (d data) MustGetString(keys ...string) string {
	panic("unimplemented")
}

func (d data) GetObject(keys ...string) (Data, bool) {
	panic("unimplemented")
}

func (d data) MustGetObject(keys ...string) Data {
	panic("unimplemented")
}

func (d data) GetArray(keys ...string) (DataArray, bool) {
	panic("unimplemented")
}
func (d data) MustGetArray(keys ...string) DataArray {
	panic("unimplemented")
}

func (d data) GetInt32(keys ...string) (int32, bool) {
	panic("unimplemented")
}
func (d data) MustGetInt32(keys ...string) int32 {
	panic("unimplemented")
}

func (d data) GetFloat32(keys ...string) (float32, bool) {
	panic("unimplemented")
}
func (d data) MustGetFloat32(keys ...string) float32 {
	panic("unimplemented")
}

func (d data) Merge(other Patch) Data {
	return nil
}
