package sdk

var (
	// ensure we implement the Data interface
	_ Data = (*data)(nil)
)

type Data interface {
	Get(keys ...string) interface{}
	GetString(keys ...string) string

	Merge(Data) Data
}

type data struct {
	instance map[string]interface{}
}

func DataFrom(d map[string]interface{}) Data {
	return data{
		instance: d,
	}
}

func (d data) Get(keys ...string) interface{}

func (d data) GetString(keys ...string) string {
	v := d.Get(keys...)
	if v == nil {
		return ""
	}

	str, ok := v.(string)
	if !ok {
		return ""
	}
	return str
}

func (d data) Merge(other Data) Data {
	return nil
}
