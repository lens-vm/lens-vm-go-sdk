package sdk

type Status int32

const (
	StatusOK Status = Status(iota)
	StatusErrInvalidContext
)

type ContextID int32

type Import struct {
	name   string
	execFn ExecFn
}

type Export struct {
	name   string
	execFn ExecFn
}

func ErrToStatus(err error) Status {
	return Status(0) //todo
}
