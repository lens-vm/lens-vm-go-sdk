package sdk

import (
	"github.com/lens-vm/jettison"
)

// Bytes converts the data object
// into a serialized JSON byte array
func (d data) Bytes() ([]byte, error) {
	if d.t == dJSONType {
		return d.bytesFromJSON()
	}
	return d.bytesFromObject()
}

func (d data) bytesFromJSON() ([]byte, error) {
	return d.p.MarshalTo(nil), nil
}

func (d data) bytesFromObject() ([]byte, error) {
	return jettison.Marshal(d.o)
}
