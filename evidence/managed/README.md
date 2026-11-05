# Original managed side

[Saved-task restoration selections](selected/save-object-stack/restoration-index.tsv)
retain fourteen complete original methods (2040 CIL bytes) for context take,
transfer, installation, field replay, failure events and queue reset. The
[existing save-admission/restoration guide](../../guides/persistence/managed-object-stack-save-admission.md)
distinguishes a consumed invalid sentinel, an already-null slot and successful
continuation. Complete CIL, annotated actual C# and module-local metadata are
paired there; native Mono implementation and runtime Save/Reload remain open.

The files here are readable exports of the matching PC 1.67 managed game code.
`types/` contains decompiled C# for retained original `ScriptCore` types covering the verified native registrations, route-manager wrapper and selected producer/consumer contracts. It also retains complete selected GameplaySystems, GameplayObjects and SimIFace types for the reviewed contracts. C# shows wrapper flow and signatures; the original
IL and metadata tokens control exact call identity.

`callers.il.txt` contains complete IL bodies for the 1,808 methods with direct
registered-native callsites. Use an [API page](../../api/README.md) to find a
caller MethodDef and IL offset, then search this file for that method and
instruction. The [callpath records](../bindings/callpaths.json) retain all
1,877 direct callsite records, including the target token and match quality.
A same-assembly MethodDef edge is exact; a cross-assembly name match is only a
candidate. These are static sites, not runtime invocation counts.

The [binding records](../bindings/registration-map.json) contain native table
bytes and matching managed metadata. The [exceptions](../bindings/exceptions.json)
identify ambiguous or unmatched names. A managed signature does not alone prove
the native ABI, especially around indirect host calls; inspect the paired
original instructions in the [native evidence](../native/README.md).

## Additional original SimIFace contracts

The selected Route, RouteDestination, RoutePlanResult, RoutePlanResultType and
ResourceKey types are retained with their complete original type IL and actual
ILSpy C# rendering. They come from the matching PC1.67 SimIFace.dll already
extracted from the original game scripts, identified below.
C# syntax is the decompiler's representation; IL and field metadata establish
exact arithmetic, enum values, layouts and member identity. The [routing](../../guides/routing/planner-and-results.md)
and [animation](../../guides/animation/controller-lifecycle.md) guides identify
the respective producer/consumer contracts.

## Matching original assembly identities

All additional gameplay evidence uses these pristine PC 1.67 S3SA assemblies.
The source resource mapping and original DLL bytes were checked before extraction.
Member slices preserve complete selected IL bodies; their guides state the scope.

| Original assembly | Original package S3SA resource | DLL SHA-256 |
| --- | --- | --- |
| ScriptCore | scripts.package `073FAA07:00000000:78CF6CF5304D0C4F` | `1ac13ea63f60ceb7ba3a91053da85358aa25635aba5d13053904a8e7c1278115` |
| SimIFace | scripts.package `073FAA07:00000000:C356DF69B70ADD42` | `6ddedb668e1b6da037e346cd5cf6f500f37407dca633b428e7ec410daa00fcb2` |
| Sims3GameplaySystems | gameplay.package `073FAA07:00000000:03D6C8D903CE868C` | `f9b2e5ef2ebd09ff26ec5d173ff8b72752573f741430972edc8fdbb3c6bc93fd` |
| Sims3GameplayObjects | gameplay.package `073FAA07:00000000:B9C90FDC6793BC0A` | `356dc01b4f1d0817822a2cd6f470cff763307911ed2cf22481eb6446bba512ae` |
| UI | gameplay.package `073FAA07:00000000:F7C3ADE896D4E765` | `d38676dc2b953c03f3d764b7c2d531c1f2a08c0232580b40a8880c188f659b89` |
| Sims3Metadata | scripts.package `073FAA07:00000000:600F9EA1DDC99FB1` | `dd8a115b6d94050abc58ed0e785196b7160a547e0cf18504baf6fb39f95b8d75` |


[Portals/stairs](../../guides/routing/portals-and-stairs.md),
[tomb puzzles](../../guides/tombs/README.md) and
[travel member slices](../../guides/travel/managed/README.md) identify their
managed producers, consumers, state transitions and persistence boundaries.

[Map-view and heightmap member slices](../../guides/world/map-view-managed-callers.md) retain original Gameplay/UI selection, priority, keep/release arguments and lifecycle call sites.

## Original complate and expression preparation

[Complate preparation](../../guides/shaders/managed-complate-preparation.md)
retains seventeen complete original IL method bodies, two actual annotated
ILSpy 11.1 type renderings and an addressable MethodDef caller index. The matching
Sims3Metadata module MVID is `e70bc526-3170-48fd-9e79-faa4a19e5328`.
The original NestedClass rows establish TextureStep, TextureDestination and
TexturePart as nested Complate owners. Method tokens are local to this original
module; the lookup does not make cross-assembly name matches exact. All selected
instruction offsets/opcodes were checked independently against file-backed
metadata decoding and original method byte ranges; no original code was run.

## Original auto-plant creation

[Selected complete member pairs](selected/soil-auto-plant/members.tsv) retain six
original GameplaySystems bodies (680 CIL bytes), annotated actual ILSpy C# and
[immediate call/function-pointer edges](selected/soil-auto-plant/calls.tsv).
The [contract](../../guides/world/auto-plant-managed-creation.md) distinguishes
original managed seed/factory/growth ownership from native slot/resource/render
mechanisms and project visualization policy. The existing matching original
GameplaySystems and SimIFace identities above apply; no rebuilt assembly is
used as source authority.
The matching original GameplaySystems module MVID is
`e8701302-f3cd-4f23-9387-d9d17a68ff9e`; member tokens are local to that module.


## Original object initialization and placement

[Selected GameObject, ScriptObject and LotManager members](selected/gameobject-initialization/method-index.tsv)
retain19 complete original bodies (959 CIL bytes), actual annotated ILSpy C#,
[native/managed call and function-pointer operands](selected/gameobject-initialization/call-edges.tsv)
and a [selected field-access index](selected/gameobject-initialization/field-access.tsv).
The [initialization contract](../../guides/objects/managed-gameobject-initialization.md)
records constructor defaults, lazy collections, guarded hook order and managed
lot/room/level transitions. The paired original declarations include the relevant
fields and UInt16 FlagField enum; the GameplaySystems identity and module MVID
above apply. No original gameplay execution is claimed.

## Original saved target binding

[Two complete selected ScriptCore methods](selected/resident-loaded-proxy-binding/method-index.tsv)
retain51 original CIL bytes for BindLoadedObject and PersistReader.Item, with
[exact call operands](selected/resident-loaded-proxy-binding/call-edges.tsv) and
[selected field accesses](selected/resident-loaded-proxy-binding/field-access.tsv).
The [contract](../../guides/objects/managed-loaded-proxy-binding.md) distinguishes
existing-target delegation from table population, native admission and world
readiness. Existing LoadSaveManager C# is reused with an inline annotation; the
getter remains actual selected ILSpy output. Original ScriptCore module MVID is
`da71f9d5-3a90-44c6-8f98-5bafd2fca18a`; the central DLL identity above applies.

## Original object-table preparation

[Fifteen complete selected ScriptCore methods](selected/object-table-preparation/method-index.tsv)
retain 4629 original CIL bytes for table allocation, descending Precreate/Create
passes, typed target construction and post-load completion. The
[original contract](../../guides/objects/managed-object-table-preparation.md)
distinguishes table state, per-object failure, formatter ownership and callback
phases. Actual annotated C# and complete typed CIL are paired in the index;
[call operands](selected/object-table-preparation/call-edges.tsv) and
[field accesses](selected/object-table-preparation/field-access.tsv) are selected
static lookup records. The ScriptCore identity above applies.

## Original managed music policy

[Twelve selected AudioManager members](../../guides/audio/managed/AudioManager.methods.tsv) retain 1,179 complete original CIL bytes. Ten typed member exports supplement the two existing Init/Shutdown callback bodies; the existing annotated C# type is reused. [Calls and function pointers](../../guides/audio/managed/AudioManager.calls.tsv), [fields](../../guides/audio/managed/AudioManager.fields.tsv) and [field accesses](../../guides/audio/managed/AudioManager.field-uses.tsv) are finite lookup indices. The [music contract](../../guides/audio/managed-music-policy.md) distinguishes managed transition/restart ownership from native command and output-device lifetime. The GameplaySystems identity and module MVID above apply.

## Original service registration and retained factories

[Eight selected original methods](selected/service-registration/method-index.tsv)
cover EventQueue constructor publication and lazy acquisition, SACS persistence
subscription, retained stream factories, LookAt delegation and RandomGen lazy
service caching. Seven new bodies retain284 CIL bytes; the complete21-byte
FlushLookAtQueue caller is reused from the existing caller collection. The
[original contract](../../guides/bridge/managed-service-registration.md) and
[typed call/delegate operands](selected/service-registration/call-edges.tsv)
distinguish publication, acquisition, factory invocation and native execution.
The matching original ScriptCore and SimIFace identities above apply.

## Original SACS post-load and yielding consumers

[Thirty-five selected original members](selected/sacs-client-postload/method-index.tsv)
retain4275 complete CIL bytes, actual annotated C# renderings and exact module-local
MethodDef/RVA identities. [Calls](selected/sacs-client-postload/call-edges.tsv) and
[field accesses](selected/sacs-client-postload/field-access.tsv) record selected
operands. The [contract](../../guides/sacs/managed-client-postload-and-waits.md)
distinguishes original native handles, actor setters, post-load wildcard filters,
yielding finally cleanup and original gameplay posture reset from bridge recovery.
The SimIFace module MVID is `e4365bd8-6054-4cb5-8702-c69b1c102ce9`; the existing
ScriptCore/GameplaySystems identities above apply. No rebuilt assembly or executed
gameplay is used as authority.

## Original household PropertyStream and metadata producers

[Twenty-five complete original methods](selected/household-property-streams/method-index.tsv)
retain9979 CIL bytes, actual annotated C#, exact module-local identities and finite
[call](selected/household-property-streams/call-edges.tsv)/[field](selected/household-property-streams/field-access.tsv)
operand indexes. The [contract](../../guides/persistence/household-property-streams-and-bin-records.md)
distinguishes original managed/native formats and full gameplay imports from bounded
metadata display projections. Existing SimIFace and GameplaySystems identities/MVIDs
apply; no prepared/rebuilt assembly or gameplay execution is used as authority.

[Thumbnail preparation methods](selected/thumbnail-preparation/method-index.tsv): six complete original policy/task members,2385 CIL bytes with actual ILSpy C# and typed CIL.

[Catalog category projections and preset thumbnail IDs](selected/catalog-category-projection/README.md) retain four complete original enum declarations with94 field rows and the complete58-byte original KeyForThumbnail getter, actual ILSpy excerpts and exact field/call token operands.

[Window Area property](selected/ui-window-area/area-property.cs.txt) ([complete selected CIL](selected/ui-window-area/area-property.il.txt)) records the original Area getter/setter and UIManager forwarding boundaries.

[Slider/scrollbar image indexers](selected/ui-component-images/component-images.cs.txt) ([complete selected CIL](selected/ui-component-images/component-images.il.txt)) retain original component/image property identities.

[TextEdit original managed class](selected/ui-text-editing/text-editing.cs.txt) ([complete selected CIL](selected/ui-text-editing/text-editing.il.txt)) retains constructor policy, properties and event identities.

[Window event and shutdown policy](selected/ui-window-events/window-events.cs.txt) ([complete selected CIL](selected/ui-window-events/window-events.il.txt)) retains original script registration/glue, callback finally and registry retirement.

[Window subtree and Grid disposal policy](selected/ui-window-subtrees/window-subtrees.cs.txt) ([complete selected CIL](selected/ui-window-subtrees/window-subtrees.il.txt)) retains original Detach disposal, wrapper and Grid tag/parameter ownership.

[Original SearchLight controller](../../guides/objects/resident-animation-skin-and-searchlight.md) indexes eight complete pristine methods331CILbytes and actual selected member excerpts.

[Layout retention members](selected/ui-layout-retention/layout-retention.cs.txt) ([complete original CIL](selected/ui-layout-retention/layout-retention.il.txt)) retain13 complete UI.dll methods,689 CIL bytes and the full Layout-finalizer EH section.

[Custom-control flag helpers](selected/ui-custom-control-flags/custom-control-flags.cs.txt) ([complete original CIL](selected/ui-custom-control-flags/custom-control-flags.il.txt)) retain four whole UIManager methods and115 original CIL bytes.

[Original UI identity producers and Game consumers](selected/ui-window-identities/window-identities.cs.txt) ([complete original CIL](selected/ui-window-identities/window-identities.il.txt)) contains eight complete methods,7866CIL bytes and the original76-byte exception section.

[Original drawable/image wrappers](ui-drawable-image-reference-lifetime/UI.dll.ui-drawable-images.cs.txt) ([complete original CIL](ui-drawable-image-reference-lifetime/UI.dll.ui-drawable-images.il.txt)) retains20 complete methods533CIL bytes, headers and two16-byte exception sections.

[Surface preset wrappers and enum metadata](selected/surface-subsort-catalog/SimIFace.cil.txt), [native-array wrappers](selected/surface-subsort-catalog/ScriptCore.cil.txt) and [original UI selection](selected/surface-subsort-catalog/UI.cil.txt) retain13 complete original bodies1048CIL bytes, one16-byte finally section and two InternalCalls.

## Original managed object-stack save admission

[Two selected original ScriptCore methods](selected/save-object-stack/method-index.tsv)
retain77 complete CIL bytes for SaveObjectStack and AddTaskState, with actual
annotated C# and exact module-local tokens/RVAs. The
[contract](../../guides/persistence/managed-object-stack-save-admission.md)
separates the concrete Simulator cast and proxy-miss -1 from append, the second
mTasks observation and signed Count-field-minus-one. The ScriptCore identity and
module MVID above apply. ChunkedList internals, a nonnegative result, PreSave
and task resumption are not newly established by these two members.

[Game time and configuration members](selected/game-time-and-config/members.tsv)
retain nine complete original methods (1587 CIL bytes): Gameflow context/rates,
ScriptCore/SimIFace overloads and actual CAS/Options callers. Original package
identities above apply; these are static calls, not an executed trace.

[Library content original members](selected/library-content/members.tsv) retain eighteen complete methods/2364 CIL bytes from the matching pristine packaged retail ScriptCore, Sims3GameplaySystems and UI identities above. Native inventory storage, real household/travel callers and UI warning/placement are distinguished. Compiler-generated child methods and full dynamic dispatch remain separate; no original code executed.

[Complate acquisition/cache and step parsing](complate-acquisition.il.txt) adds eight complete original methods1014CILbytes to the existing complate method/call indexes (25selected total). Nine fresh body comparisons1145bytes include the already retained131byte step-admission method, not exported twice. Same pristine packaged Sims3Metadata identity applies; source selection/global cache/clone and enabled-before-construction boundaries are distinct, with no target code executed.

[Lot tree manager callers](lot-tree-manager-callers.il.txt), [selected C#](lot-tree-manager-callers.cs) and [method/resource identity index](lot-tree-method-index.tsv) retain four complete Retail1.67 methods1253CILbytes. They connect to the existing tree/placement guide and ScriptCore registration; they do not prove runtime execution.

[Designer observation selections](selected/ui-designer-observation/method-index.tsv) join original BB/CAS controller getters, WindowBase null/handle/Enabled semantics and the actual UIManager flag reader; the existing window-property guide separates metadata fields from effective properties and bounded native picking.

[World object-lot callback IL](world-object-lot-update.il.json) pairs with the existing [World managed decompilation](../../guides/callbacks/managed/Sims3.SimIFace.World.cs); the [object guide](../../guides/objects/object-handling.md#location-room-state-and-event-order) identifies the original package, metadata, handler gate and native event17 relationship.

The [CacheSignature type](types/ScriptCore.CacheSignature.cs) pairs Init with the existing callers.il.txt and its remaining methods with [signature wire/equality IL](cache-signature-wire.il.json). The existing [loading guide](../../guides/loading/README.md#gameplaydata-cache-verification-and-signature-ownership) identifies retail provenance and the original disabled-after-rebuild verification policy, separate from native store/checksum behavior.

[ColorInfo serialization](../../guides/appearance/color-info-serialization.md) joins twelve selected IL/managed exports across Sims3Metadata, SimIFace, UI and mscorlib. These retain the actual reader, writer, consumers and support methods without distributing assemblies.
