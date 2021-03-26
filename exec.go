package sdk

//export lensvm_exec
func LensExec(contextID ContextID, argBuffer *byte, argSize int, dataBuffer *byte, dataSize int) Status {
	ctx, err := sdk.GetContext(contextID)
	if err != nil {
		return ErrToStatus(err)
	}
}
