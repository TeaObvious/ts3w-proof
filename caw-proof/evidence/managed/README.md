# CAW 1.22.10 managed import evidence

The [import index](IMPORT-INDEX.tsv) lists all 2,822 P/Invoke MethodDefs in the original `CAW.exe` and managed DLLs that declare `Sims3Common` or `Sims3PipelineHelper` as their native library. The type, method token, entry name, signature blob and import attributes come from the original CLI metadata. Each [declaration excerpt](declarations/) reproduces the corresponding line or lines from the untouched ILSpy C# export, including marshalling attributes.

The [caller excerpts](callers/) list 2,970 direct same-assembly IL `call` or `callvirt` instructions whose target token is one of those imported MethodDefs. The original instruction bytes and IL offsets are included. Readable C# snippets show occurrences of the imported method name in the same source type; a C# line is not asserted to correspond to a particular IL offset. Cross-assembly, reflection, delegate and native callers are outside this direct-call count.

Most import entry names match a named PE export. The [unresolved list](unresolved-imports.md) records declarations that have no exact named-export match or unique stdcall-decorated match in the corresponding original native DLL. It is a bounded static name comparison, not evidence that a runtime call fails. A native export without a matched P/Invoke may still be called by native code or resolved dynamically.

The original export list and managed declarations establish the API surface. Consult the linked raw native bytes and annotated pseudocode, where provided, for implementation behavior. These static records alone do not establish that an operation was exercised at runtime.
