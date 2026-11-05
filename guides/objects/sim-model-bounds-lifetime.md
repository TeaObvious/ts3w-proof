# Sim model loading and bounds lifetime

Reference: [PC 1.67 identity](../../evidence/reference.json). Component Model
bounds and renderer SceneModel bounds are distinct storage and lifetimes.

| Boundary | Input | Original behavior | Remaining boundary |
| --- | --- | --- | --- |
| 0094F3E0 | Sim component, owner, model key/resource slot | Optionally acquire025ED708, enqueue model resource command, resolve owner's Model, set override00200000, publish owner visibility. No direct bounds write or scene-membership test. | Acquire/enqueue does not prove replacement pose/bounds consumption. |
| 00948D80 / 00948B00 | Model override DWORD | Store at component+50. Unless FFFFFFFF, publish04878BC4 with mask7FFFFC00 and stored value. | No AABB generation or manager insertion. |
| 006F5D50 | SceneModel, source descriptor | Sim override computes bounds from original bone/pose selectors. Ordinary branches use descriptor part bounds, optionally pose-transformed. | SceneModel and usable animation state must exist. No scene-pointer check does not make that state universally available off-scene. |
| 006F6020 | SceneModel, nonnull descriptor | Call006F5D50 and test AL. On decline, copy descriptor part bounds and publish descriptor bounds. Null descriptor returns. | A failed Sim override does not justify an invented rendered-vertex box. |

## Exact producers

- [0094F3E0 ASM](../../evidence/native/objects/models/0094F3E0_SimComponent_LoadModelAndSetBoundsOverride.asm)
  ([C](../../evidence/native/objects/models/0094F3E0_SimComponent_LoadModelAndSetBoundsOverride.c)).
- [00948D80 ASM](../../evidence/native/objects/models/00948D80_ModelComponent_SetRenderFlagsOverride.asm)
  ([C](../../evidence/native/objects/models/00948D80_ModelComponent_SetRenderFlagsOverride.c)).
- [00948B00 ASM](../../evidence/native/objects/models/00948B00_ModelComponent_PublishRenderFlagsOverride.asm)
  ([C](../../evidence/native/objects/models/00948B00_ModelComponent_PublishRenderFlagsOverride.c)).
- Existing [006F5D50 ASM](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.asm)
  ([C](../../evidence/native/functions/006F5D50_SceneModel_RefreshSimAndPartBounds.c)) and
  [006F6020 ASM](../../evidence/native/functions/006F6020_SceneModel_RefreshBoundsOrCopyResourceFallback.asm)
  ([C](../../evidence/native/functions/006F6020_SceneModel_RefreshBoundsOrCopyResourceFallback.c)) are reused without duplicates.

0094F3E0 physically returns AL=true and purges one stack word with RET4; the
retained provisional one-register C prototype omits it. When resource slot+30
is untagged/nonnull, resource+38 masked byCF00 selects300/400/500 classifications.
The command is B3436C13 or2F704CAB. These are not bounds dimensions.

For006F5D50, Sim override requires global0115C20C and model flags00200000, then
animation state+298, its+20 link and borrowed matrices from0056C070. It scans135
selectors, skips missing entries, unions model-space bone translations, pads by.15
and adds head0F97B21B with.30 radius, then copies the bound to parts and publishes.
Missing usable pose or valid union can return AL=false; the fallback caller matters.

The component has separate constructor defaults and authored proxy updates:
[component bounds](authored-model-bounds-and-insertion-flags.md),
[object query bounds](../bridge/object-screen-query.md). Neither makes Model+60/+70
identical to a live SceneModel bound. More of the original pose/publication path
is traced in [pose bounds](../animation/pose-bounds-and-dirty-publication.md).

These selected functions do **not** close the whole outfit-change event chain,
render-command drain, renderer-to-component bound synchronization, retirement,
or updated bounds availability without a SceneModel. They alone do not approve
an always-available off-scene Sim-box replacement.
