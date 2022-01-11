package sdk

import (
	"errors"
	"strconv"

	"github.com/benbjohnson/immutable"
	"github.com/lens-vm/jsonmerge"
	"github.com/lens-vm/lens-vm-go-sdk/types"
	"github.com/valyala/fastjson"
)

var (
	// ensure we implement the Data interface
	_ Data = (*data)(nil)

	_ Patch = (*data)(nil)
)

// Map is an alias to map[string]interface{}
type Map map[string]interface{}

// List is an alias to map[string]interface{}
type List []interface{}

type Patch interface {
	Data
	Set(string, interface{}) error
}

// type patch struct {
// 	value *fastjson.Value
// }

func NewPatch(d ...Map) (Patch, error) {
	if len(d) > 0 { // create the patch from the Map object
		m, err := convertMapToImmutableMap(d[0])
		if err != nil {
			return nil, err
		}
		return &data{
			t: dObjectType,
			o: m,
		}, nil
	}

	return &data{
		t: dObjectType,
		o: immutable.NewMap(nil),
	}, nil
}

func (p *data) Set(key string, value interface{}) error {
	return p.set(key, value)
}

func (p *data) set(key string, value interface{}) error {
	var err error
	p.o, err = applyValueToImmutableMap(p.o, key, value)
	return err
}

type DataArray []Data

type Data interface {
	Get(keys ...string) (interface{}, bool)

	GetObject(keys ...string) (Data, bool)
	MustGetObject(keys ...string) Data

	GetArray(keys ...string) (DataArray, bool)
	MustGetArray(keys ...string) DataArray

	GetString(keys ...string) (string, bool)
	MustGetString(keys ...string) string

	GetInt(keys ...string) (int, bool)
	MustGetInt(keys ...string) int

	GetFloat32(keys ...string) (float32, bool)
	MustGetFloat32(keys ...string) float32

	Merge(Patch) (Data, error)

	Bytes() ([]byte, error)
}

type dType uint8

const (
	dObjectType = 1
	dJSONType   = 2
	dRawType    = 3
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
	o *immutable.Map  // internal map
	r interface{}     // non map raw value
	p *fastjson.Value // parsed value
}

// DataFromBuffer returns a Data interface initalized
// from a JSON byte slice buffer
func DataFromBuffer(buf []byte) (Data, error) {
	p, err := fastjson.ParseBytes(buf)
	if err != nil {
		return nil, types.ErrMalformedData
	}
	return data{
		t: dJSONType,
		p: p,
	}, nil
}

// DataFromMap returns a Data interface initalized
// from a generic map object
func DataFromMap(d Map) (Data, error) {
	im, err := convertMapToImmutableMap(d)
	if err != nil {
		return nil, types.ErrMalformedData
	}
	return data{
		t: dObjectType,
		o: im,
	}, nil
}

type _immutableMapSetter interface {
	Set(key, value interface{}) *immutable.Map
}

// _mapBuilderShim is a small wrapper around the
// immutable.MapBuilder that implements our
// _immutableMapSetter interface.
type _mapBuilderShim struct {
	mb *immutable.MapBuilder
}

func (m _mapBuilderShim) Set(key, value interface{}) *immutable.Map {
	m.mb.Set(key, value)
	return (*immutable.Map)(nil) // return an empty map pointer
}

// applyValueToImmutableMap sets the key-value pair on the underling immutable object.
// We use the _immutableMapSetter as a easy interface that can be implemented by both
// the immutable.Map and the immutable.MapBuilder, which have similar but different
// interfaces. To use the MapBuilder, it must first be wrapped in _mapBuilderShim,
// and the return value should be ignored, as it will be a nil pointer
func applyValueToImmutableMap(ims _immutableMapSetter, key string, v interface{}) (*immutable.Map, error) {
	var im *immutable.Map
	switch val := v.(type) {
	// base scalars
	case bool, int, int8, int16, int32, int64, uint, uint8, uint16, uint32, uint64,
		float32, float64, string:
		im = ims.Set(key, val)
	case map[string]interface{}:
		subim, err := convertMapToImmutableMap(val)
		if err != nil {
			return nil, err
		}
		im = ims.Set(key, subim)
	case Map:
		subim, err := convertMapToImmutableMap(val)
		if err != nil {
			return nil, err
		}
		im = ims.Set(key, subim)
	case []interface{}:
		im = ims.Set(key, convertListToImmutableList(val))
	case List:
		im = ims.Set(key, convertListToImmutableList(val))
	default:
		return nil, errors.New("Unsupported value in map")
	}

	return im, nil
}

func convertMapToImmutableMap(m map[string]interface{}) (*immutable.Map, error) {
	im := immutable.NewMapBuilder(nil)
	for k, v := range m {
		_, err := applyValueToImmutableMap(_mapBuilderShim{im}, k, v)
		if err != nil {
			return nil, err
		}
	}
	return im.Map(), nil
}

func convertListToImmutableList(l []interface{}) *immutable.List {
	il := immutable.NewListBuilder()
	for _, v := range l {
		il.Append(v)
	}
	return il.List()
}

func dataFromJSONValue(d *fastjson.Value) Data {
	return data{
		t: dJSONType,
		p: d,
	}
}

func (d data) getFromObject(keys ...string) (interface{}, bool) {
	v := get(d.o, keys...)
	return v, v != nil
}

func get(m interface{}, keys ...string) interface{} {
	if m == nil {
		return nil
	}

	if len(keys) > 0 {
		switch v := m.(type) {
		case *immutable.Map:
			next, ok := v.Get(keys[0])
			if ok {
				m = get(next, keys[1:]...)
			}
			if !ok || m == nil {
				return nil
			}
		case *immutable.List:
			n, err := strconv.Atoi(keys[0])
			if err != nil || n < 0 || n >= v.Len() {
				return nil
			}
			next := v.Get(n)
			m = get(next, keys[1:]...)
		default:
			return nil // scalar value but we've been given a key
		}
	}

	return m
}

func (d data) getFromParsed(keys ...string) (*fastjson.Value, bool) {
	v := d.p.Get(keys...)
	return v, v != nil
}

func (d data) getRaw(keys ...string) (interface{}, bool) {
	v := get(d.r, keys...)
	return v, v != nil
}

func (d data) Get(keys ...string) (interface{}, bool) {
	if d.t == dJSONType {
		return d.getFromParsed(keys...)
	} else if d.t == dObjectType {
		return d.getFromObject(keys...)
	}
	return d.getRaw(keys...)
}

func (d data) GetString(keys ...string) (string, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return "", false
	}

	// we got a fastjson.Value from the Get call
	if vv, ok := v.(*fastjson.Value); ok {
		buf, err := vv.StringBytes()
		if err != nil {
			return "", false
		}
		return string(buf), true
	}
	// we got a raw interface{} from the Get call
	str, ok := v.(string)
	return str, ok

}

func (d data) MustGetString(keys ...string) string {
	str, _ := d.GetString(keys...)
	return str
}

func (d data) GetObject(keys ...string) (Data, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return nil, false
	}

	if vv, ok := v.(*fastjson.Value); ok {
		if vv.Type() != fastjson.TypeObject {
			return nil, false
		}
		d2 := dataFromJSONValue(vv)
		return d2, true
	}

	obj, ok := v.(map[string]interface{})
	if !ok {
		return nil, false
	}
	dd, err := DataFromMap(obj)
	return dd, err != nil
}

func (d data) MustGetObject(keys ...string) Data {
	obj, _ := d.GetObject(keys...)
	return obj
}

func (d data) GetArray(keys ...string) (DataArray, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return nil, false
	}

	if vv, ok := v.(*fastjson.Value); ok {
		if vv.Type() != fastjson.TypeArray {
			return nil, false
		}
		arr, err := vv.Array()
		if err != nil {
			return nil, false
		}

		d2 := make([]Data, len(arr))
		for i, item := range arr {
			d2[i] = dataFromJSONValue(item)
		}
		return d2, true
	}

	arr, ok := v.([]interface{})
	if !ok {
		return nil, false
	}

	d2 := make([]Data, len(arr))
	for i, item := range arr {
		d2[i] = data{
			t: dRawType,
			r: item,
		}
	}
	return d2, true
}
func (d data) MustGetArray(keys ...string) DataArray {
	arr, _ := d.GetArray(keys...)
	return arr
}

func (d data) GetInt(keys ...string) (int, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return 0, false
	}

	vv, ok := v.(*fastjson.Value)
	if ok {
		i, err := vv.Int()
		if err != nil {
			return 0, false
		}
		return i, true
	}

	i, ok := v.(int)
	if !ok {
		return 0, false
	}
	return i, true
}

func (d data) MustGetInt(keys ...string) int {
	i, _ := d.GetInt(keys...)
	return i
}

func (d data) GetFloat64(keys ...string) (float64, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return 0, false
	}

	if vv, ok := v.(*fastjson.Value); ok {
		i, err := vv.Float64()
		if err != nil {
			return 0, false
		}
		return i, true
	}

	f, ok := v.(float64)
	if !ok {
		return 0, false
	}

	return f, true

}

func (d data) MustGetFloat64(keys ...string) float64 {
	f, _ := d.GetFloat64(keys...)
	return f
}

func (d data) GetFloat32(keys ...string) (float32, bool) {
	v, ok := d.Get(keys...)
	if !ok {
		return 0, false
	}

	if vv, ok := v.(*fastjson.Value); ok {
		f, err := vv.Float64()
		if err != nil {
			return 0, false
		}
		f32 := float32(f)
		if f != float64(f32) { // if the val we got doesnt fit in a float32
			return 0, false
		}
		return float32(f), true
	}

	f, ok := v.(float32)
	if !ok {
		return 0, false
	}

	return f, true

}

func (d data) MustGetFloat32(keys ...string) float32 {
	f, _ := d.GetFloat32(keys...)
	return f
}

func (d data) Merge(other Patch) (Data, error) {
	dbytes, err := d.Bytes()
	if err != nil {
		return nil, err
	}

	pbytes, err := other.Bytes()
	if err != nil {
		return nil, err
	}

	mBytes, err := jsonmerge.MergePatch(dbytes, pbytes)
	if err != nil {
		return nil, err
	}

	return DataFromBuffer(mBytes)
}

/*

Example uses

patch := NewPatch()
patch.Set("a", sdk.Map{
	"a": sdk.Map{
		"b": 2,
	}
})

type

*/
