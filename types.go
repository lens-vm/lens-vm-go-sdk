package sdk

type ContextID int32

type Import struct {
	name   string
	ExecFn ExecFn
}

func NewImport(name string, fn ...ExecFn) Import {
	i := Import{
		name: name,
	}
	if len(fn) > 0 {
		i.ExecFn = fn[0]
	}
	return i
}

// type Export struct {
// 	name   string
// 	execFn ExecFn
// }
