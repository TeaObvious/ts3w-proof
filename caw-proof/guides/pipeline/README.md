# Native content-pipeline helpers

`Sims3PipelineHelper.dll` is a separate original CAW 1.22.10 native module.
Its eight named exports include array conversion, mesh optimization/welding,
texture-engine creation, and SpeedTree converter creation. Managed callers
belong to `Sims3Pipeline.dll`, not the editor's `WorldBuilderCS` tool classes.
The [eight-export native index](../../evidence/native/Sims3PipelineHelper/README.md)
links every original byte/disassembly window to annotated Ghidra pseudocode.

The [MeshUtils excerpt](managed/MeshUtils-native-bridges.cs.txt) declares
`ConvertArray`, `ConvertArrayWithScaleOffset`, `StridedCopy`, and `WeldArray`.
It pins managed arrays, passes element types and counts, and releases the
handles in its wrapper methods. [StageOptimizeVertexOrder](managed/StageOptimizeVertexOrder.cs)
calls `OptimizeMesh` with index and vertex counts and a vertex remap buffer.
[TextureUtils](managed/TextureUtils.cs) imports
`CreateTextureEngine`; [SpeedTreeUtils](managed/SpeedTreeUtils.cs) imports
`CreateSpeedTreeConverter` and wraps the returned interface pointer.

[StageConvertTristrips](managed/StageConvertTristrips.cs) declares five more
`Sims3PipelineHelper.dll` imports. Those five names are absent from this
shipped helper's named export table; the [native index](../../evidence/native/Sims3PipelineHelper/README.md)
records the exact mismatch. The managed stage does not establish that its
triangle-strip call path ran successfully in CAW 1.22.10.

These imports and wrappers establish intent and marshaling at the managed
boundary. They do not by themselves prove native conversion arithmetic,
ownership of returned COM-like objects, or that every export runs during a
normal world-editing session. Read the original native bytes and annotated
pseudocode before using a conversion result as a format contract.

For direct inspection, the shipped helper exports include
`ConvertArray` at `0x10036120` ([instructions](../../evidence/native/Sims3PipelineHelper/functions/10036120_ConvertArray.asm) ([annotated pseudocode](../../evidence/native/Sims3PipelineHelper/functions/10036120_ConvertArray.c)),
[pseudocode](../../evidence/native/Sims3PipelineHelper/functions/10036120_ConvertArray.c)),
`OptimizeMesh` at `0x100366c0` ([instructions](../../evidence/native/Sims3PipelineHelper/functions/100366C0_OptimizeMesh.asm) ([annotated pseudocode](../../evidence/native/Sims3PipelineHelper/functions/100366C0_OptimizeMesh.c)),
[pseudocode](../../evidence/native/Sims3PipelineHelper/functions/100366C0_OptimizeMesh.c)),
and `CreateTextureEngine` at `0x100044e0` ([instructions](../../evidence/native/Sims3PipelineHelper/functions/100044E0_CreateTextureEngine.asm) ([annotated pseudocode](../../evidence/native/Sims3PipelineHelper/functions/100044E0_CreateTextureEngine.c)),
[pseudocode](../../evidence/native/Sims3PipelineHelper/functions/100044E0_CreateTextureEngine.c)).
