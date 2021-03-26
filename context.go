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
}
