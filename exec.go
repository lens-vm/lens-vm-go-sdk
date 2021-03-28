package sdk

// ExecFn matches the named exec func ABI: lensvm_exec_<name>
type ExecFn = func(ContextID, bool, *byte, int32, *byte, int32) Status

func Exec(contextID ContextID, forward bool, argBuffer *byte, argSize int, dataBuffer *byte, dataSize int) Status {
	ctx := GetContext(contextID)
	if ctx == nil {
		return StatusErrInvalidContext
	}

	// gets args/data from memory
	return StatusOK
}
