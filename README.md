# LensVM Go SDK

The Go SDK for [LensVM](https://github.com/lens-vm), enables developers to write LensVM Modules in Go, which are compiled to WASM and can be run on any LensVM Host runtime.

Currently this repo only contains an example of how to use the SDK as a point of reference for the design of the SDK implementation.

`lens-vm-go-sdk` is powered by [TinyGo](https://tinygo.org/), and compiles to the [WASI]() interface specifically.

## Design
The SDK is consumed by the users implementing the `ModuleContext` interface. Then the SDK wraps up the implementation and hooks it into the correct WASM exports so its compliant with the LensVM [ABI](https://hackmd.io/@source/lens-vm#Application-Binary-Interface-ABI).