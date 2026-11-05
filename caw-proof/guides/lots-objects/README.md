# Lots and objects

The [tool index](../../TOOL-INDEX.tsv) maps selection, move, rotate, object
placement, lot placement/level/clone/snap/conform to their original managed
classes. A visible tool class proves a UI path exists; it does not prove that
its native object, manager, scene, and save operations succeed.

[CmdPlaceNewLot](managed/CmdPlaceNewLot.cs) requires nonzero width and height,
calls `World.CreateNewLot`, adds the result to the editor, retains its ID,
and deletes a failed add. Undo deletes the retained lot; Redo executes again
and remaps later lot-command IDs. [CmdCloneLot](managed/CmdCloneLot.cs) first
looks up an existing lot, creates a new one with source dimensions and
properties at the requested pose, copies data, tracks the source/clone ID
relation, and refreshes the layer node. The original
[World managed methods](managed/World-lots.cs.txt) lead from those commands
to the declared native constructors in the
[World wrapper excerpt](managed/WorldWrap-lots.cs.txt). Exact package and
sidecar writes are not established here.

[CmdLotConformEdges](managed/CmdLotConformEdges.cs) is especially easy to
overread: its `Execute` returns true, while Undo/Redo display dialogs. The
command itself does not show the terrain-edge computation; inspect
`LotConformEdgesTool` and the native lot operation before assigning an edge
algorithm or reversible geometry contract.

Object selection and manipulation additionally cross manager membership,
component transform, scene refresh, and persistence interfaces. This guide
does not infer that an object transform persists merely because a setter is
declared.

## Native evidence

`WorldWrap_CreateNewLot` checks the world pointer before forwarding the lot
arguments to an internal constructor: [instructions](../../evidence/native/Sims3Common/functions/10998670_WorldWrap_CreateNewLot.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10998670_WorldWrap_CreateNewLot.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10998670_WorldWrap_CreateNewLot.c).
`ObjectManagerWrap_AddObjectToManagerAndScene` checks both pointers before
forwarding to its helper and normalizes the result to a boolean:
[instructions](../../evidence/native/Sims3Common/functions/10995FC0_ObjectManagerWrap_AddObjectToManagerAndScene.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10995FC0_ObjectManagerWrap_AddObjectToManagerAndScene.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10995FC0_ObjectManagerWrap_AddObjectToManagerAndScene.c).
These wrappers do not prove lot construction details, scene insertion side
effects, or save persistence.
