package sdk

type Status int

type ContextID int

type ExecFn func(ContextID, *byte, int, *byte, int) Status

func ErrToStatus(err error) Status {
	return Status(0) //todo
}
