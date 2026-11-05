# Material state and geometry authority

Reference: pristine PC1.67 TS3W.exe and original managed assemblies identified
below. Names are analyst assignments. These are static original-instruction
contracts; they do not diagnose a host GPU model-range exception or certify a
parallel resource cache.

## Material command and receivers

[World_ObjectSetMaterial ASM](../../evidence/native/functions/0078CE00_ScriptCore_World_World_ObjectSetMaterial.asm) ([pseudocode](../../evidence/native/functions/0078CE00_ScriptCore_World_World_ObjectSetMaterial.c)) has the physical cdecl arguments
`UInt64 objectGuid, managed string handle, binary32 transitionTime, byte overlay`
in five stack DWORDs; the caller cleans the stack. The complete owned function
is 258 bytes through 0078CF01. Missing registry/object/Model returns silently.
A null string or null string-view result yields material hash zero; otherwise
7D0020 hashes the wide name. A present VisualState receives opacity one for
nonzero overlay, otherwise zero, with the original transition time and flag,
**before** the material-equality test. This side path is not a geometry command.
When the material differs, the wrapper calls the Model setter with route zero
for overlay=true, route one otherwise, and force zero.

[Model material setter ASM](../../evidence/native/functions/00948800_ModelComponent_SetMaterialHash.asm) ([pseudocode](../../evidence/native/functions/00948800_ModelComponent_SetMaterialHash.c)) is ECX Model plus UInt32 hash,
a low-byte route and a low-byte force in three stack slots, RET0C, void. It
skips equal hash unless forced; otherwise it stores Model+4C before enqueueing:

| Command offset | Raw value |
| --- | --- |
| +0 | opcode 0488D99C |
| +4 | temporary destructor pointer, initially null |
| +8/+C | all 64 GUID bits from the owning object |
| +10 | UInt32 material hash |
| +14 | route byte zero-extended to UInt32 |

An absent dispatcher does not roll back the Model hash. This setter has no
queue-success return. The optional temporary destructor receives the payload
address; no retained resource pointer or GPU completion fence is transported.
The four-byte getter is [00948870 ASM](../../evidence/native/functions/00948870_ModelComponent_GetMaterialHash.asm) ([pseudocode](../../evidence/native/functions/00948870_ModelComponent_GetMaterialHash.c)).

The [notification dispatcher ASM](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm) ([pseudocode](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)) compares the complete
route DWORD at703D8D. Route zero calls [immediate consumer ASM](../../evidence/native/functions/00700020_SceneManager_SetMaterialHashByGuid.asm) ([pseudocode](../../evidence/native/functions/00700020_SceneManager_SetMaterialHashByGuid.c));
nonzero calls [deferred consumer ASM](../../evidence/native/functions/007000C0_SceneManager_SetDeferredMaterialHashByGuid.asm) ([pseudocode](../../evidence/native/functions/007000C0_SceneManager_SetDeferredMaterialHashByGuid.c)). Both have ECX scene
manager, a full UInt64 GUID and UInt32 hash, RET0C; their result is only AL.
The dispatcher ignores that result and returns AL1 for the handled opcode.

The immediate consumer rejects map-end, null iterator, adjusted-null object
and failed virtual type query017F1D88. Success stores SceneModel+264, marks
+26C=1, then either applies available LOD material immediately when +29C bit0
is set, or marks +26D=1 for later. Both paths queue the object dirty once.
The deferred consumer first requires the same typed model, then searches the
GUID tree at manager+110C: an existing node receives the hash at node+2C;
a missing node delegates to the immediate consumer. This is an additional
material-state owner; it is not the Model+4C saved field.

## MTST lookup, MATD acquisition and LOD ownership

[material-set interface query ASM](../../evidence/native/functions/006D7550_MaterialSetResource_QueryInterface.asm) ([pseudocode](../../evidence/native/functions/006D7550_MaterialSetResource_QueryInterface.c)) returns resource+40 for
IID0202F7D5. Its complete 65-byte body includes all comparison/return branches.
[resource construction ASM](../../evidence/native/functions/006D90B0_MaterialSetResource_Create.asm) ([pseudocode](../../evidence/native/functions/006D90B0_MaterialSetResource_Create.c)) installs the interface table
FF7720 and initializes the default pointer and entry vectors. FF7704 is the
`Renderer/MaterialSetList` allocation-tag string, not another vtable.

[drawable interface assignment ASM](../../evidence/native/functions/0068F1A0_Drawable_SetMaterialSetInterface.asm) ([pseudocode](../../evidence/native/functions/0068F1A0_Drawable_SetMaterialSetInterface.c)) retains the incoming
interface before releasing the previous drawable+34 value. During rebinding,
[material selection ASM](../../evidence/native/functions/00691510_Drawable_SelectMaterialSetByHash.asm) ([pseudocode](../../evidence/native/functions/00691510_Drawable_SelectMaterialSetByHash.c)) can obtain that interface from the
current material at drawable+2C. It calls interface virtual+28 with the requested
hash and an initially null output. The concrete target is
[hash selection ASM](../../evidence/native/functions/006D87F0_MaterialSetInterface_AcquireByHash.asm) ([pseudocode](../../evidence/native/functions/006D87F0_MaterialSetInterface_AcquireByHash.c)):

- Hash zero delegates to the default-material virtual+14.
- Nonzero hash uses [exact ordinal lookup ASM](../../evidence/native/functions/006D7D60_MaterialSetResource_FindHashOrdinal.asm) ([pseudocode](../../evidence/native/functions/006D7D60_MaterialSetResource_FindHashOrdinal.c)). It scans
  24-byte entries in stored order and compares entry+14 as a raw UInt32. First
  match wins; miss returns signed -1 and leaves the output unchanged.
- A hit writes entry+10's material-definition pointer, retains it through
  virtual0 when nonnull, and returns whether it is nonnull.

[default acquisition ASM](../../evidence/native/functions/006D7CD0_MaterialSetInterface_AcquireDefault.asm) ([pseudocode](../../evidence/native/functions/006D7CD0_MaterialSetInterface_AcquireDefault.c)) writes null/AL0 for a missing
interface+4 pointer; otherwise it retains, publishes and returns AL1.
On failed hash selection,691510 releases any temporary result and requests this
default.

The [MLOD resource producer](model-resource-wire-and-binding.md) resolves each authored material reference through its
RCOL context: a material-set interface is installed on the drawable; an ordinary MATD instead goes through material
acquisition. The [MATD acquisition ASM](../../evidence/native/functions/006CAEC0_MaterialDef_AcquireMaterial.asm)
([pseudocode](../../evidence/native/functions/006CAEC0_MaterialDef_AcquireMaterial.c)) lazily constructs a material at definition+38, initializes
its shader binding with the selector, then retains/publishes it. An existing cached material is reused without
reconsidering the selector. Allocation/initialization failure returns AL0; complete cache failure cleanup is outside
this leaf. The hash-rebinding path uses current selector006CAF60. Only successful acquisition changes the effective
material through [effective-material rebinding ASM](../../evidence/native/functions/00691400_Drawable_RebindEffectiveMaterial.asm) ([pseudocode](../../evidence/native/functions/00691400_Drawable_RebindEffectiveMaterial.c)).
Missing interface/result or acquisition failure does not synthesize new geometry.
The binder retains material/parameter-owner references and can rebuild its
parameter binding when the material or context stamp changes.

[available-LOD consumer ASM](../../evidence/native/functions/006DCC00_ModelBinding_ApplyMaterialToAvailableLod.asm) ([pseudocode](../../evidence/native/functions/006DCC00_ModelBinding_ApplyMaterialToAvailableLod.c)) prefers an untagged, nonzero
binding slot+C. Otherwise slot+8 must be untagged/nonzero and its resource+30
must be2 or3. Pending/empty slots are not dereferenced as resident LODs.
[LOD material rebinding ASM](../../evidence/native/functions/006DBE80_ModelBinding_RebindMaterialOnLod.asm) ([pseudocode](../../evidence/native/functions/006DBE80_ModelBinding_RebindMaterialOnLod.c)) retains the selected LOD and,
when binding+5C is set and LOD+72 is clear, calls the existing
[clone wrapper ASM](../../evidence/native/functions/006DB3D0_ModelLOD_CloneWithMaterialSubstitutions.asm) ([pseudocode](../../evidence/native/functions/006DB3D0_ModelLOD_CloneWithMaterialSubstitutions.c)). Failed cloning returns before the
material loop without clearing pending+5D. Successful cloning can replace the
LOD slot: the original does not guarantee stable wrapper-pointer identity.
It then visits the existing drawables, applies the material hash/context,
marks them, invokes optional substitution listeners, clears pending+5D at the
completed tail and releases the local LOD. Listener virtual calls can themselves
replace the LOD; their arbitrary implementations are outside this bounded claim.

The clone's [copy routine ASM](../../evidence/native/functions/006DAE80_ModelLOD_CopyDrawablesForMaterialClone.asm) ([pseudocode](../../evidence/native/functions/006DAE80_ModelLOD_CopyDrawablesForMaterialClone.c)) allocates the same drawable
count. Its [drawable copier ASM](../../evidence/native/functions/00690EC0_Drawable_CopyGeometryAndMaterialBindings.asm) ([pseudocode](../../evidence/native/functions/00690EC0_Drawable_CopyGeometryAndMaterialBindings.c)) retains/copies the same
vertex streams and byte offsets, index buffer and declaration, copies the six
base-range DWORDs at+38..4C, and copies each five-DWORD geometry-state record
unchanged into the destination table. It also copies rig/palette ownership and
material bindings. Allocation failures are not transactional: state-allocation
status is ignored by the copier. Therefore **material-only updates preserve
geometry content and state selection on the reviewed normal path, while they
can allocate a private LOD/drawable wrapper and rebind materials**.

The separate [geometry contract](geometry-state-and-vertex-declaration.md) remains
the authority: SceneModel+2A4 supplies the requested geometry hash; zero selects
the first authored state record when a table exists. Neither0488D99C consumer
writes that field or emits a zero geometry command. A material hash of zero
means default material; it is not a request for geometry state zero. No evidence
here licenses replacing the exact model/range owner with an unrelated fallback.

## Saved state, presentation and reacquisition

[Saved Model state](../persistence/saved-object-model-and-shared-design.md)
reads/writes Model+4C independently of current model keys and retained replacement
history. [VisualState persistence and geometry commands](visual-state-geometry-commands.md)
own the separate saved geometry word and04D18170 command.

| Bounded original path | Established ordering |
| --- | --- |
| [resource presentation ASM](../../evidence/native/functions/0094B3E0_ModelComponent_PresentResourceAndSavedMaterial.asm) ([pseudocode](../../evidence/native/functions/0094B3E0_ModelComponent_PresentResourceAndSavedMaterial.c)) | Copies current resource key; ordinary branch queues model presentation, then optional substitutions, then force-replays **nonzero** saved material hash with route0. The specialized +80 bit0 branch does not take that replay. Later bounds/visibility/event commands follow. |
| [current-resource replay ASM](../../evidence/native/functions/0094BDE0_ModelComponent_RepublishCurrentResource.asm) ([pseudocode](../../evidence/native/functions/0094BDE0_ModelComponent_RepublishCurrentResource.c)) | A nonzero current key type invokes that presentation routine with current descriptors and Model+4C. |
| [Model assignment ASM](../../evidence/native/functions/0094BF10_ModelComponent_AssignSavedModelState.asm) ([pseudocode](../../evidence/native/functions/0094BF10_ModelComponent_AssignSavedModelState.c)) | Empty destination key uses full presentation with source material. Existing-key branch applies resource/bounds and substitutions, then sends a changed material hash as0488D99C route0. |
| [LOD resolution ASM](../../evidence/native/functions/006DC2E0_ModelBinding_ResolveAvailableLodAndPendingMaterial.asm) ([pseudocode](../../evidence/native/functions/006DC2E0_ModelBinding_ResolveAvailableLodAndPendingMaterial.c)) | Revisits pending+5D through the material binder when a resource slot becomes available and rereads a potentially replaced slot. Other branches can switch resource/LOD. |

These local orders do not establish the global ordering of every Model/VisualState
post-load listener or every deferred-tree consumer. They do not prove that an
original renderer exposes a material-only operation as an animation-source model
replacement. Exact host GUID/model-key publication and thread safety still need
host diagnostics; static native proof cannot identify an intermittent offender.

## Ordinary RabbitHole versus SearchLight

The additional managed evidence comes from pristine `Sims3GameplaySystems.dll`,
SHA256 `f9b2e5ef2ebd09ff26ec5d173ff8b72752573f741430972edc8fdbb3c6bc93fd`,
S3SA `073FAA07:00000000:03D6C8D903CE868C` in pristine gameplay.package. Its extracted
bytes were independently compared with the original package. Selected full IL
bodies include metadata tokens and their original IL bytes; C# is actual ILSpy
output with analyst scope comments.

- [RabbitHole IL](managed/RabbitHole.visual.pristine.cil.txt)
  ([annotated C#](managed/RabbitHole.visual.actual.cs.txt)): OnStartup schedules
  Default and OpenManyLights1 when the sunrise-delta tuning is below24 and the
  existing visual-state list is absent/empty. InitVisualStates chooses the last
  time already reached, or wraps to the last state. The base suffix is empty and
  base custom-state effects are empty; subclasses may override both.
- [VisualStateChange IL](managed/VisualStateChange.visual.pristine.cil.txt)
  ([annotated C#](managed/VisualStateChange.visual.actual.cs.txt)): creates the
  daily alarm, calls SetMaterial with suffix handling, then virtual custom effects.
- [GameObject IL](managed/GameObject.material.pristine.cil.txt)
  ([annotated C#](managed/GameObject.material.actual.cs.txt)): SetMaterial passes
  transitionTime0 and overlay=true; SetGeometryState calls a different World
  entry. The material wrappers do not call that geometry setter.

The [SearchLight controller](resident-animation-skin-and-searchlight.md) separately
sets the same material name and starts its SearchLight state-machine client.
The normal RabbitHole path already explains how OpenManyLights1 can be requested
without that controller. No exact `RabbitHoleGeneric` managed type exists in the
two checked original gameplay modules; a host diagnostic/catalog classification
is not an authenticated original concrete CLR type. The model key and requesting
GUID still need to be joined to the actual original script/resource owner before
attributing a failing animation upload to SearchLight or to all rabbit holes.

The separate [live geometry-name producer](visual-state-geometry-commands.md#named-live-setter-null-empty-and-computed-zero) now distinguishes null no-op, empty811C9DC5 and computed0 suppression. It must not be replaced with the independent default-material normalization. Neither that frontend nor local clone/material replay establishes global saved/live precedence or a CLR concurrent resolution-cache/session policy.


## Distinct cache keys, reuse and resource references

The selected native owners must be kept distinct when comparing reusable model
results. [Vertex-format cache ASM](../../evidence/native/functions/0061B090_VertexFormatCache_GetOrCreate.asm)
([pseudocode](../../evidence/native/functions/0061B090_VertexFormatCache_GetOrCreate.c)) receives ECX cache,
elements/count/output in three stack words, RET0C and AL success. It copies the
elements/count before reusing incoming stack bytes as scratch. Its61ACE0 lookup
returns a declaration which is retained through virtual+4 before publishing the
output. Miss allocates24hex bytes, constructs, invokes61A6F0 and only on successful
creation retains for insertion61AF00 and output. The failure path invokes
virtual+8 on the created declaration and returns AL0. These are declaration
references, not MATD or decoded mesh ownership. The complete key comparator/hash,
collision/insert behavior, eviction/destruction and synchronization remain behind
61ACE0/61AF00 and the cache owner; this wrapper does not recover a mesh LRU.

The MATD6CAEC0 owner instead tests definition+38 at6CAEC3. A nonzero value jumps
to6CAF1D, writes output then retains through virtual0 and returns AL1/RET8. Only
the absent branch reads the incoming selector at6CAEFD and passes it with the
definition to6CADA0. Thus a later selector does not reconstruct an already cached
material in this leaf. Allocation/initialization AL0 does not establish complete
cleanup or transactional restoration;79FF90 and surrounding owner destruction
remain separate paths. No explicit lock in this leaf proves absence of external
serialization, nor licenses parallel first construction.

Material-set lookup6D87F0 has a third identity rule: zero uses virtual+14 default;
nonzero delegates to6D7D60 exact first equal raw hash in24-byte records.6D7CD0
retains and publishes default or writes null/AL0.691510 releases an unsuccessful
temporary, requests default, then acquires/rebinds a successful MATD material.
No universal equivalence of a nonzero named Default entry with the interface's
default pointer is established without the authored writer/data relationship.
Changing material selection is separate from geometry, resource-key selection
and global source replacement. None of these bounded owners specifies a CLR
mount generation, decoded-array/texture-reserve budget, zero-budget policy,
process memory bound, package stamp protocol or GPU completion fence.
