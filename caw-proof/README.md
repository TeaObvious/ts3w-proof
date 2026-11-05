# Original Create a World 1.22.10 API proof

This plain-text collection maps the original **Create a World (CAW)
1.22.10.024037** editor to its managed calls and native implementations. It is
readable without Ghidra or an installed editor. CAW is a separate application:
[`TS3W.exe` PC 1.67](../references/retained-proof-overview.md) is the game reference, while `CAW.exe` is a
managed editor whose native calls primarily enter `Sims3Common.dll` and
`Sims3PipelineHelper.dll`.

## Original module identities

These are the shipped 32-bit CAW 1.22.10.024037 native reference DLLs, with image base `0x10000000`; they are distinct from the older CAW versions and the game's `TS3W.exe`.

| Original module | SHA-256 |
| --- | --- |
| `Sims3Common.dll` | `9a698f8e9e9fdada945aeff78b2e9dc483b2a4bdba4b2f06365b829295092e10` |
| `Sims3PipelineHelper.dll` | `31444d39e481b6e091f05cf499588c2ce90faf714a2d58f24f87cc54cdf813ae` |

## Find a function or tool

1. Search [API-INDEX.tsv](API-INDEX.tsv) by native export name, module or
   address, or browse the [module and prefix index](api/README.md). Each API
   page gives the PE ordinal and virtual address, original managed import
   declarations, direct IL callers and available native code exports.
2. Read the original-byte window and linear disassembly beside the annotated
   Ghidra pseudocode. For example, the
   [WorldWrap_Save API page](api/Sims3Common/WorldWrap/2692.md) connects the
   original C# declaration to [native instructions](evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.asm)
   ([pseudocode](evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.c)).
3. For an editing task, use [TOOL-INDEX.tsv](TOOL-INDEX.tsv) and the
   [original 18-value tool enum](guides/WorldBuilderTool.cs) to find the
   managed tool class and a [system guide](#system-guides).
4. Read [AUDIT.md](AUDIT.md) for representative claim chains that separate
   original observations, interpretations and unresolved behavior.

## Folder map

| Path | What it contains |
| --- | --- |
| [`api/`](api/README.md) | One page per named PE export, grouped by module and export prefix. Aliases retain distinct export pages and share the same address-keyed native code. |
| [`evidence/managed/`](evidence/managed/README.md) | Original CLI P/Invoke metadata, matched C# declaration excerpts, direct caller IL instructions and unresolved name matches. |
| [`evidence/native/Sims3Common/`](evidence/native/Sims3Common/README.md) | Original CAW Common bytes/disassembly and annotated Ghidra pseudocode, keyed by virtual address. |
| [`evidence/native/Sims3PipelineHelper/`](evidence/native/Sims3PipelineHelper/README.md) | The eight pipeline-helper exports with paired native evidence. |
| [`guides/`](#system-guides) | Selected original editor entry-to-bridge paths, with the relevant managed source included. |
| [`TOOL-INDEX.tsv`](TOOL-INDEX.tsv) | All 18 original editor tool IDs, their class source and guide. |

The [packed-world marker contract](guides/project-io/packed-marker-admission.md) retains its exact key, AL/default behavior and probe-only resource-query boundary.

The [native binding contracts](guides/native-binding-contracts.md) follow terrain queries/sculpt storage, resource naming, road validity/snapping, camera depth and DXT1 eligibility through the original internal helpers. [INTERNAL-INDEX.tsv](INTERNAL-INDEX.tsv) indexes their canonical pairs. The detailed [editable terrain collision](guides/editable-terrain-collision.md), [road spline geometry](guides/roads/native-spline-geometry.md) and [resource filename ownership](guides/resource-filename-ownership.md) guides include the corresponding producers and lifetime rules.

## System guides

| System | Original-code path |
| --- | --- |
| [Project load, save and export](guides/project-io/README.md) | Main form → world wrapper → native project operations; export is a separate workflow. |
| [Terrain](guides/terrain/README.md) | Brush command, height edits and undo/redo bridge. |
| [Roads](guides/roads/README.md) | Spline and intersection tools, road-square manipulation and grading. |
| [Water](guides/water/README.md) | Sea-level commands, sea wrapper and pond tool. |
| [Lots and objects](guides/lots-objects/README.md) | Selection, placement, manipulation, cloning and lot edits. |
| [Layers](guides/layers/README.md) | Layer-tree operations and world wrapper. |
| [Rendering and camera](guides/render-camera/README.md) | Camera controls, camera-origin pick segments, screen projection, conditional water replacement and transform/Euler numerics. |
| [Shared host no-op exports](guides/shared-host-noop-exports.md) | Twenty original export aliases, a single RET body and separate managed signatures. |
| [Pipeline](guides/pipeline/README.md) | Vertex conversion, mesh optimization, texture and SpeedTree helper imports. |

## Evidence boundary

| Retained original fact | Count |
| --- | ---: |
| Named PE exports: Common / pipeline helper | 2,723 / 8 |
| Distinct Common export entry addresses | 2,626 |
| Managed P/Invoke MethodDefs to those two modules | 2,822 |
| Direct same-assembly IL callsite instructions | 2,970 |
| Declarations matched to an exact or unique decorated PE name | 2,681 |
| Declarations without such a named-export match | 141 |

The `CAW.exe` editor and its managed DLLs were inspected as original CLI
assemblies; the C# excerpts are ILSpy renderings, not EA source. The PE export
table establishes name, ordinal and address; a matching P/Invoke declaration
does not establish that an operation ran. A virtual address refers to its named
module at image base `0x10000000`. Native pseudocode is Ghidra's static
rendering with analyst comments; original instruction bytes take precedence
when stack parameters or returns disagree. Byte windows are bounded and may
omit internal helpers. The [unresolved import list](evidence/managed/unresolved-imports.md)
is a bounded name comparison, not a runtime failure list.

The collection excludes the adapted SuperCAW source, current OpenTS3
implementation status, generated build products, original binaries and assets.
It documents original interfaces and selected behavior; it does not claim full
CAW compatibility or an observed editor session.
