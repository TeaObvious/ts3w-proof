# Editable layers and object managers

The original CAW layer UI works with object managers, rather than treating a
tree node as the sole owner of an editable object. The retained excerpts show
managed relationships and declared native calls; they do not prove on-disk
manager serialization.

[WorldLayersControl.Init](managed/WorldLayersControl-layers.cs.txt) reads the
`ActiveLayer` setting, resolves a tree node by its ID, and passes that
node's `ObjectManager` to `World.SetActiveObjectManager`. The context-menu
handler persists the selected manager ID back into `WorldSettings`. Its
`OnAddLayer` and `OnAddLayerToWorld` handlers call
`World.CreateNewLayer`, insert the result in the tree, and add the layer
ID to `EditableObjMgrs`. The original
[World managed methods](managed/World-layers.cs.txt) forward the active-manager
and new-layer calls. The
[World wrapper excerpt](managed/WorldWrap-layers.cs.txt) declares
`WorldWrap_CreateNewLayer`, `WorldWrap_SetActiveObjectManager`, and manager
add/remove functions in `Sims3Common.dll`.

Reading this path together with [project saving](../project-io/README.md)
identifies the editor setting and native manager boundary. It does not prove
how `.world`, layer, lot, or settings sidecars are updated together, nor that
all tree operations are reversible.

## Native evidence

`WorldWrap_CreateNewLayer` forwards a non-null world to an internal layer
constructor: [instructions](../../evidence/native/Sims3Common/functions/10997DC0_WorldWrap_CreateNewLayer.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10997DC0_WorldWrap_CreateNewLayer.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10997DC0_WorldWrap_CreateNewLayer.c).
`WorldWrap_SetActiveObjectManager` stores the supplied manager pointer in the
world at offset `0xac` when the world pointer is non-null:
[instructions](../../evidence/native/Sims3Common/functions/10997D40_WorldWrap_SetActiveObjectManager.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/10997D40_WorldWrap_SetActiveObjectManager.c)),
[annotated pseudocode](../../evidence/native/Sims3Common/functions/10997D40_WorldWrap_SetActiveObjectManager.c).
The layer constructor's internal ownership and save format are outside these
export wrappers.
