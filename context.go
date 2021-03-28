package sdk

type RootContext struct{}

func GetContext(contextID ContextID) ModuleContext {
	return nil // todo
}

func RegisterContext(contextID ContextID, module ModuleContext) error {
	return nil // todo
}

type ModuleContext interface {
	// Name returns the name of the lens module
	Name() string

	// Imports returns a list of modules to import.
	// Any imports returned here must also be defined in the
	// module file import section
	// (https://github.com/lens-vm/spec#module-file-modulejsonyaml).
	// Additionally, we rely on the module file for the version
	// info, so the runtime can resolve the correct version and
	// dynamically link it into the module.
	Imports() []Import

	// // Export returns a list of functions this module
	// // implments
	// Exports() []Export

	// Get the function handler for a named import.
	// Any import accessed through this function must be defined
	// in the Imports() method.
	GetImport(string) (ModuleContext, error)

	// Run is responsible for parsing arguments and executing
	// the actual lens transformation function.
	Run(forward bool, args Data, data Data) (Data, error)
}

type DefaultModuleContext struct {
	ModuleContext
	importModules map[string]ExecFn
}

// Name returns the name of the lens module
func (ctx *DefaultModuleContext) Name() string {
	return ""
}

// Imports returns a list of modules to import.
func (ctx *DefaultModuleContext) Imports() []Import {
	panic("not implemented") // TODO: Implement
}

// Get the function handler for a named import.
// Any import accessed through this function must be defined
// in the Imports() method.
func (ctx *DefaultModuleContext) GetImport(_ string) (ModuleContext, error) {
	panic("not implemented") // TODO: Implement
}

// Run is responsible for parsing arguments and executing
// the actual lens transformation function.
func (ctx *DefaultModuleContext) Run(forward bool, args Data, data Data) (Data, error) {
	panic("not implemented") // TODO: Implement
}
