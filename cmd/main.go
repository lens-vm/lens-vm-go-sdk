package main

import (
	"github.com/urfave/cli/v2" // imports as package "cli"
)

var (
	rootCmd = &cli.App{
		Name: "lensvm-go",
		Usage: "Utility for the LensVM Go SDK",
	}