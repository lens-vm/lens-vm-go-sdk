package types

import "errors"

type Status int32

type err struct {
	err error
}

// Note: When adding a new error to the SDK
// It must have:
// 1. A Status type defined in the const
// section
// 2. A error type defined with newErr
// 3. A mapping between err and Status in the
// errToStatusMap

// Defined Status types, must match Error
// Only available code slots are 0-9
const (
	StatusOK                Status = iota // code 0; doesn't need a matching error
	StatusErrInvalidContext               // code 1
	StatusErrBadArgument                  // code 2
	StatusNotFound                        // code 3
	_                                     // code 4
	_                                     // code 5
	_                                     // code 6
	_                                     // code 7
	_                                     // code 8
	StatusErrUnknown                      // code 9; doesn't need a matching error
)

type BufferType uint32

const (
	// BufferTypeInputData Input data object which has the lens applied to
	BufferTypeInputData BufferType = iota

	// BufferTypeInputArg Input argument object which defines the lens parameters
	BufferTypeInputArg

	// BufferTypeOutputPatch Output JSON Merge Patch object produced by the lens
	BufferTypeOutputPatch

	// BufferTypeTempInputData Temporary input data object, used for inter module
	// lens execution
	BufferTypeTempInputData

	// BufferTypeTempInputArg Temporary input argument object, used for inter module lens
	// execution
	BufferTypeTempInputArg
)

// Defined Error types, must match Status
var (
	ErrInvalidContext = errors.New("Invalid context")
	ErrBadArgument    = errors.New("Lens has bad argument")
	ErrNotFound       = errors.New("Buffer data could not be found")

	ErrUnknownStatus = errors.New("Unknown status")
)

// Map between err and Status
var errToStatusMap = map[string]Status{
	ErrInvalidContext.Error(): StatusErrInvalidContext,
	ErrBadArgument.Error():    StatusErrBadArgument,
	ErrNotFound.Error():       StatusNotFound,
}

// Map between status and error
var statusToErrorMap = map[int32]error{
	int32(StatusOK):                nil,
	int32(StatusErrInvalidContext): ErrInvalidContext,
	int32(StatusErrBadArgument):    ErrBadArgument,
	int32(StatusNotFound):          ErrNotFound,
}

// func newErr(s string) err {
// 	return err{
// 		err: errors.New(s),
// 	}
// }

// func (e err) Error() string {
// 	return e.Error()
// }

// func (e err) Int32() int32 {
// 	return int32(ErrToStatus(e))
// }

func ErrToStatus(err error) Status {
	if err == nil {
		return StatusOK
	}
	s, ok := errToStatusMap[err.Error()]
	if !ok {
		return StatusErrUnknown
	}
	return s
}

func StatusToError(s Status) error {
	err, ok := statusToErrorMap[int32(s)]
	if !ok {
		return ErrUnknownStatus
	}
	return err
}
