package generator

import (
	"go/ast"
	"go/importer"
	"go/token"
	"go/types"
	"io"

	"github.com/dave/jennifer/jen"
)

// generator will work on the selected structure of one file
type generator struct {
	defs       map[*ast.Ident]types.Object
	pkg        *types.Package
	fs         *token.FileSet
	files      []*ast.File
	structures []*ast.TypeSpec
	buf        *jen.File
	pkgName    string
	dirName    string
	inited     bool
	w          io.Writer
}

func newGenerator(str []*ast.TypeSpec, dirname string, files []*ast.File, fs *token.FileSet, pkgName string, w io.Writer) *generator {
	return &generator{
		structures: str,
		pkgName:    pkgName,
		w:          w,
		dirName:    dirname,
		fs:         fs,
		files:      files,
	}
}

func (g *generator) init() error {

	/**
	initializing package parsing with the go/type
	*/

	g.defs = make(map[*ast.Ident]types.Object)
	infos := &types.Info{
		Defs: g.defs,
	}

	config := types.Config{Importer: importer.Default(), FakeImportC: true}

	var err error
	g.pkg, err = config.Check(g.dirName, g.fs, g.files, infos)
	if err != nil {
		return err
	}

	g.buf = jen.NewFilePathName(g.pkg.Path(), g.pkgName)
	g.buf.PackageComment("Code generated by lensvm-go. DO NOT EDIT.")
	g.inited = true
	return nil
}
