# Editable project load, save, and export

This guide follows the original CAW 1.22.10 managed editor. It distinguishes an
editable `.world` project from a single packed world file and from the later
world-export operation. The retained excerpts are original ILSpy C# renderings;
they are navigation aids, not original source or proof of native internals.

## Load

[WorldBuilderMainForm.LoadWorldFile](managed/WorldBuilderMainForm-load.cs.txt)
first checks that the file exists and rejects `World.IsSinglePackedWorldFile`.
After shutting down the previous project, it creates a `Sims3.CSHost.World` if
needed, enables lot lighting solvers, calls `World.Load`, exports world textures,
loads a same-stem `.settings` file when present, initializes the scene and layer
control, and activates the default tool. The [World class](managed/World-load-save.cs.txt)
calls `WorldWrap.Load`, then creates managed components and clears its routing
rebuild flag on success. The [CSHost wrapper excerpt](managed/WorldWrap-load-save.cs.txt)
declares `WorldWrap_Load` from `Sims3Common.dll` and treats native result `1`
as success. These managed checks do not show which resources the native loader
reads or the order in which it reads them.

## Save

[SaveWorldToCurrentFile and SaveWorld](managed/WorldBuilderMainForm-save.cs.txt)
call layer-tree auto-clustering before `World.Save`; both pass
`eEndianType.kLittle`. The current-file path saves the `.settings` sidecar
after the world call. Save As checks its destination and, after a successful
world save, writes settings and refreshes the property view. The
[World class](managed/World-load-save.cs.txt) backs up an existing project,
checks whether routing needs rebuilding, and then calls `WorldWrap.Save`.
For a changed destination it conditionally copies `World.ini` and character
import sidecars. The [CSHost wrapper](managed/WorldWrap-load-save.cs.txt)
declares `WorldWrap_Save` and tests its return against `1`. The native writer
and its paired reader must be inspected before assigning a complete package
format or atomicity contract.

## Export

[OnExportWorldClick](managed/WorldBuilderMainForm-export.cs.txt) requires an
existing selected file. Outside local test mode it checks localized name,
description, and thumbnail before calling `Sims3.CSHost.World.ExportWorld`.
The [World export method](managed/World-export.cs.txt) invokes
`Sims3WorldPackagerCmd.Run`, passing `runSims3Pt = !isUserMode`, and then either
copies a package-only result or passes the packaged result to
`ContentManager.ExportWorld`. It removes its temporary file in `finally`.
The supplied `sims3pt.exe` path names a possible packager dependency; the
helper's own implementation and a successful export are outside this guide.
Export is a separate workflow from Save As.

## Audit boundary

The observations above are static managed control flow and declared P/Invoke
contracts. A successful CAW load, disk write, reopened sidecar, or packed-world
export has not been observed by this guide.

## Native evidence

`WorldWrap_Load` at `0x10997bd0` forwards the world and wide path to
`0x102426c0` and converts its byte result to `0` or `1`: [export
instructions](../../evidence/native/Sims3Common/functions/10997BD0_WorldWrap_Load.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10997BD0_WorldWrap_Load.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10997BD0_WorldWrap_Load.c),
[loader instructions](../../evidence/native/Sims3Common/functions/102426C0_CAW_WorldLoadFromWidePath.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/102426C0_CAW_WorldLoadFromWidePath.c)),
[loader pseudocode](../../evidence/native/Sims3Common/functions/102426C0_CAW_WorldLoadFromWidePath.c).
The helper rejects a null or empty UTF-16 path and enters resource-load
helpers; those calls do not establish every resource or sidecar read.

`WorldWrap_Save` at `0x10999af0` runs a pre-save gate at `0x10999970`,
submits a task with path and endian arguments, and returns `1` only when the
observed task state is `6`: [export instructions](../../evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10999AF0_WorldWrap_Save.c),
[gate instructions](../../evidence/native/Sims3Common/functions/10999970_CAW_WorldPreSaveGate.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10999970_CAW_WorldPreSaveGate.c)),
[gate pseudocode](../../evidence/native/Sims3Common/functions/10999970_CAW_WorldPreSaveGate.c).
The meaning of task states and the complete writer remain unproven here.

[Packed-world marker admission](packed-marker-admission.md) follows the five-byte export thunk, complete target and six-stackword resource query. Probe-only selection and failure defaults are distinct from full project validity.
