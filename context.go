package sdk

import "fmt"

// type RootContext struct{}

func GetContext(contextID ContextID) ModuleContext {
	return nil // todo
}

func RegisterContext(contextID ContextID, module ModuleContext) error {
	return nil // todo
}

type WrappedModuleContext interface {
	ModuleContext
}

type DefaultWrappedContext struct {
	ctx ModuleContext
}

func NewWrappedContext(ctx ModuleContext) *DefaultWrappedContext {
	return &DefaultWrappedContext{
		ctx: ctx,
	}
}

func (ctx *DefaultWrappedContext) Init() {
	fmt.Println(ctx.ctx.Name())
}

type ModuleContext interface {
	Init()

	// Name returns the name of the lens module
	Name() string

	// OnContextCreate is called when a new module context is created
	OnContextCreate()

	// ResolveImports dynamically links the import name
	// to the imported WASM module function.
	// This function should be autogenerated
	// See github.com/lens-vm/lens-vm-go-sdk#GeneratedImportResolver
	ResolveImports() []Import

	// Imports returns a list of modules to import.
	// Any imports returned here must also be defined in the
	// module file import section
	// (https://github.com/lens-vm/spec#module-file-modulejsonyaml).
	// Additionally, we rely on the module file for the version
	// info, so the runtime can resolve the correct version and
	// dynamically link it into the module.
	Imports() []string

	// Get the function handler for a named import.
	// Any import accessed through this function must be defined
	// in the Imports() method.
	GetImport(string) (ImportedModuleContext, error)

	// Run is responsible for parsing arguments and executing
	// the actual lens transformation function.
	Run(forward bool, args Data, data Data) (Patch, error)
}

type ImportedModuleContext interface {
	Run(forward bool, args Data, data Data) (Patch, error)
}

type DefaultModuleContext struct {
	importModules map[string]ExecFn
}

func (ctx *DefaultModuleContext) Init() {
	fmt.Println(ctx.Name())
}

// Name returns the name of the lens module
func (ctx *DefaultModuleContext) Name() string {
	return ""
}

// OnContextCreate implements the Module ABI lifecycle
func (ctx *DefaultModuleContext) OnContextCreate() {}

// ResolveImports links the import name to the WASM import function
func (ctx *DefaultModuleContext) ResolveImports() []Import {
	return []Import{}
}

// Imports returns a list of modules to import.
func (ctx *DefaultModuleContext) Imports() []string {
	return []string{}
}

// Get the function handler for a named import.
// Any import accessed through this function must be defined
// in the Imports() method.
func (ctx *DefaultModuleContext) GetImport(name string) (ImportedModuleContext, error) {
	panic("not implemented") // TODO: Implement
}

// Run is responsible for parsing arguments and executing
// the actual lens transformation function.
func (ctx *DefaultModuleContext) Run(forward bool, args Data, data Data) (Data, error) {
	panic("not implemented") // TODO: Implement
}
