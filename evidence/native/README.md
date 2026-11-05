# Original native side: TS3W.exe

[Placement options](../../guides/objects/placement-option-dispatch.md), [Sim model bounds](../../guides/objects/sim-model-bounds-lifetime.md), [import scene entry](../../guides/persistence/imported-object-scene-entry.md) and [lot pose matrices](../../guides/world/lot-pose-and-matrix-layout.md) retain eleven additional complete original owned Listings and qualified C projections. The 00949000 callback remains a verified byte window with no defined function or C body. See the [retained update scope](../../references/retained-proof-f915-update.md).

[Steering Travelling clock](../../guides/routing/planner-and-results.md#steering-travelling-clock-and-callback-order)
joins the interval writer, actual single-subtraction update and event4 sink.
Strict equality behavior and Travelling-before-avoidance order are instruction
verified; scheduler, C0-state writer, complete payload and runtime remain separate.

Every address refers to the original 32-bit PC 1.67 executable. Begin with an
[API page](../../api/README.md) or the [address index](../../ADDRESS-INDEX.tsv).
The 5,067 selected native addresses each have one pair:

- `raw/0x<address>.asm.txt` contains original bytes and the disassembly syntax recorded in the code index. Most listings use Intel syntax; selected lot-stream bodies retain the reviewed AT&T listing with explicit nonowned gap bytes.
- `pseudocode/0x<address>.c` contains the annotated Ghidra rendering.

The [object guide](../../guides/objects/object-handling.md) also includes the
complete VisualState in-place constructor and its original descriptor identity,
size and initial flag word. Construction is separate from later notifications.

[code-index.tsv](code-index.tsv) gives the window bounds and both filenames.
The 1,731 distinct registered native targets are included; remaining exports
are selected internal helpers, table getters and callback paths. Most raw
windows stop at the next defined Ghidra entry or an 8 KiB cap. Reviewed internal exports, including the
[Sea/WaterGeometry functions](../../guides/water/README.md),
[Seasons state](../../guides/seasons-state.md) and
[camera frame](../../guides/camera/frame-ground-order.md) and
[gameplay input](../../guides/camera/gameplay-input-rotation.md), use the inclusive
Ghidra function-body envelope with an exclusive end one byte later.
The [shader proof](../../guides/shaders/README.md) uses the same envelope rule.
[Render-mode controls and tagged texture dispatch](../../guides/shaders/render-mode-controls-and-tagged-textures.md) retain complete native mode gates, control publication and draw consumers.
The [world lot spatial path](../../guides/world/lot-spatial-lookup.md) adds
reviewed internal exports with the same rule.
[Object handling](../../guides/objects/object-handling.md), [routing](../../guides/routing/planner-and-results.md),
[controller lifetime](../../guides/animation/controller-lifecycle.md) and [footprints](../../guides/objects/footprint-queries.md)
use full reviewed function envelopes too.
[Local portals/stairs](../../guides/routing/portals-and-stairs.md),
[world travel](../../guides/travel/world-travel.md),
[visitors](../../guides/travel/visitors-and-door-greeting.md),
[tombs/diving](../../guides/tombs/README.md) and
[depth/overlap](../../guides/shaders/depth-and-overlapping-surfaces.md)
retain full original function envelopes and necessary original constant/table data.
[Map/lot detail](../../guides/world/map-view-and-lot-detail.md), [heightmap lifetime](../../guides/world/heightmap-data-lifecycle.md) and [cleanup jobs](../../guides/world/cleanup-job-lifetime.md) retain complete reviewed envelopes and selected original dispatch data.
[Wall-mounted visibility](../../guides/world/wall-mounted-object-visibility.md) adds complete wall-message, catalog-gate and VisualState consumer envelopes.
[Object opacity/color](../../guides/objects/opacity-and-color-transitions.md) adds complete producer/listener, renderer-transition and scene-object envelopes.
[Finished-audio callbacks](../../guides/audio/finished-callbacks.md) retain complete map/store/dispatch, variant and object-retirement envelopes.
[Name/GUID maps](../../guides/loading/name-guid-maps.md) retain full reader/hash/map/factory/provider envelopes.
[Resource reference tables](../../guides/loading/reference-store.md) retain full reader/writer/context and primitive-stream envelopes.
[Resource handle and ordinal consumers](../../guides/loading/resource-reference-key-maps.md) add eleven complete owned Listings. SeaLife has a seven-byte nonowned gap excluded from its Listing; the code index records its bounding envelope, not contiguous coverage. The guide links selected incoming references and distinguishes virtual-zero-fill global data from physical bytes.
[Variation words and seasonal leaf metadata](../../guides/vegetation/variation-words-and-leaf-metadata.md) retain full tree/leaf producer and shared roof caller envelopes plus necessary original table/constant bytes.
[Weather settings and publication](../../guides/weather-settings-and-publication.md) retain complete selected managed-array adapters, synchronized pending storage, semantic comparator and renderer consumer envelopes.
[Portal light-interest points](../../guides/lighting/portal-light-interest.md) retain six complete owned Listings, sixteen physical scalar bytes and selected incoming references; state writers and subordinate partition selection remain unresolved.
[Console command text and dispatch](../../guides/console-command-text-and-dispatch.md) retain four complete owned Listings, genuine annotated pseudocode, physical ABI limits and original quote-parity instructions.
The code index records the boundary rule per export. These inferred bounds
do not prove the function's full extent; branches can reach beyond them.

[annotation-index.json](annotation-index.json) records Ghidra names, selected
signatures, evidence classes and pseudocode filenames. Ghidra function bodies
and inferred prototypes can be incomplete. The function comments explain
particular hazards, including stack accounting where indirect calls confuse
the decompiler. Original instruction bytes govern those claims.

[direct-calls.tsv](direct-calls.tsv) lists 28,621 selected direct call edges.
`target_has_pseudocode` marks whether the target has a paired export here.
Unresolved virtual/computed destinations are absent. Selected statically resolved
vtable and import-table calls are included when Ghidra identifies a concrete
target; their original instruction form remains visible in the paired ASM.
For example, B19990 at B1A223 calls through the installed ShearedBoxShape vtable
slot+0C to682B50, rather than encoding a relative CALL target. The [system guides](../../references/retained-proof-overview.md#system-guides)
retain longer original windows and reviewed paths for particular behavior.

[Slot resource projection](../../guides/objects/slot-resource-projection.md)
retains eleven complete envelopes, including one five-byte thunk, and the
five original category allocation labels. It distinguishes AL completion
from resource readiness and preserves the original cleanup asymmetry.

[Find Good Location](../../guides/routing/find-good-location.md) retains the full registered adapter and selected internal lot/candidate envelopes, with physical ABI, output, raw-count and unordered-comparison annotations.

[SPT section readers](../../guides/vegetation/spt-section-readers.md) retain the full dispatch caller, byte readers, map bank, leaf mesh and branch control/fallback envelopes, including 187 necessary original switch bytes.

[Tattoo opacity extraction](../../guides/cas/tattoo-opacity-word.md) retains the exact registered jump and full target/property-reader bodies with corrected output-pointer ABI and actual returned word.

[Character UV packing](../../guides/cas/character-uv-packing.md) retains the complete requested-attribute packer and CAS drawable caller, corrected virtual-call ABI, 108 original switch bytes and two float constants. Selected UV semantics do not establish full stream/shader admission.

[Local light bank finalization](../../guides/rendering/local-light-bank-finalization.md) retains twelve complete bodies and seven original float words. Corrected EAX/stack/XMM0 storage restores a missing ratio computation; bank starts, dynamic globals and component rejection are instruction verified. Full room generation, sort ties and rendered acceptance remain open.

[Swarm collection traversal](../../guides/rendering/swarm-collection-wire.md) retains collection/vector/description/string bodies plus the original word readers. Receiver and callback ABI corrections expose partial mutations, ignored failures, mixed widths and negative ID sentinels; concrete factories and nested codecs remain open.

[Painting commands and materials](../../guides/objects/painting-command-and-materials.md)
retains17 complete selected envelopes and189 necessary original data bytes.
It corrects the registered hook body and physical GUID/key ABI, separates
submission from application, and documents signed reveal indexing, payload
padding, typed substitution and ignored child failures. Only the selected
Painting arm of the previously exported large handler is newly reviewed.

[Rendered pick selection](../../guides/objects/rendered-pick-selection.md)
retains15 complete selected envelopes, the prime table and point/mapping data.
Corrected physical ABI distinguishes integer counts, explicit API receiver and
raw float-bit stores from decompiler conversion artifacts. Selection ties are
separate from GPU production and generation ownership.

[Object sound admission and replay](../../guides/audio/object-sound-admission-and-replay.md)
retains25 complete selected component/name/list/event envelopes and the original
squared-distance threshold. Deferred rows, activation replay and callback/retire
ordering are separate from backend start success. Remaining actual-C aligned-stack
and register aliases are explicitly annotated against original instructions.

[Held-footprint intersection gates](../../guides/routing/held-footprint-gates.md)
retain five complete selected bodies and the exact tolerance word. Catalog mask
widths, stored-angle refresh and failure collection are distinct from the still
unexpanded full object-pair geometry and original managed intersection policy.

[Other-object footprint leaves](../../guides/routing/placed-footprint-selectors.md) retain eight complete annotated bodies for distinct catalog predicates, all-bit polygon masks, inherited-FPU octant conversion and strict squared-separation comparisons.

[World LoadTick and selected pump mechanisms](../../guides/loading/load-tick-and-pump.md) retain nine complete original bodies, callback ABI, elapsed-clock arithmetic and separate open readiness questions.

[VisualState geometry commands](../../guides/objects/visual-state-geometry-commands.md) retain five complete reader/event/command/store helpers, the complete listener registration and a bounded additional case of the existing notification handler. Original bytes, full GUID/state ABI and actual annotated Ghidra C are paired; matching persistence writer and complete loading/event order remain open.

[Intro movie gain and resource requests](../../guides/audio/intro-movie-gain.md) retain four complete native producers/callers and corrected local ambience submission accounting.

[Finalized component parameters](../../guides/objects/finalized-component-parameters.md) retain native-kind dispatch, descriptor/payload construction, hash-only sorting, first-hash/exact-type lookup and Animation/VisualState consumers. The selected original ABI distinguishes finalized type4 presence from type5 raw words.

[Object light resource and control boundaries](../../guides/objects/object-light-controls.md) retain matched versioned persistence, local typed initialization, command replay and full-GUID object consumers. Source color replacement and ordered thresholded dimmer updates have different failure/notification contracts.

[Outside sampling and occlusion](../../guides/audio/outside-sampling-and-occlusion.md) retains complete tuning, point generation and update bodies, necessary stored constants/vtable words and the six-word occlusion ABI. Static sample count and squared-distance units are distinct from scheduler or audio acceptance.

[Registered object-sound entries](../../guides/audio/object-sound-script-entry-boundaries.md) retain their complete original bodies, full GUID/managed-name/loop-or-flags input slots and matched held-reference release. Machine argument use and managed declaration metadata remain separate boundaries.

[Object IO context tables](../../guides/objects/object-io-context-table.md) retain complete reader/writer envelopes, the writer's disjoint body gap, UInt16 version admission, callback/seek ordering and actual annotated C stack-model limits.

[Object signature maps](../../guides/objects/object-signature-maps.md) retain complete writer/insertion/lookup bodies, exact physical stack widths, zero masking and the key-type partition; resource loading and native rehash order remain separate.

[Native complate preparation](../../guides/shaders/native-complate-preparation.md) records the wrapper, destination traversal and operation compiler; initial producer ownership and full native property/lifetime contracts remain unresolved.

[Dialog input components](../../guides/ui/dialog-input-components.md) retains complete picker, press, captured move and release bodies plus necessary original jump-table data. Indirect callback and event-production contracts remain unresolved.

[Slider and scrollbar input](../../guides/ui/slider-scrollbar-input.md) retains 24 complete original bodies, selected switch/vtable/constant data, instruction ABI and conditional calibrated-clock semantics. Outer callbacks and rendered acceptance remain open.

[Ceiling room-data refresh](../../guides/world/ceiling-room-refresh.md) retains 18 complete original bodies, selected registration/switch data and the strict mode-5 deferred-request threshold. Its disjoint room-seed body excludes four alignment bytes; message delivery and displayed completion remain open.

[Driver quiescence and collection](../../guides/sacs/native-driver-quiescence-and-collection.md) retains 19 complete original bodies and the reference-interface/getter bindings. AL-only results, actual stack cleanup, inferred capacity and the bounded registered-release window remain explicit.

[Object-video surfaces](../../guides/video/object-video-native-surfaces.md) covers initialization, fallback application, playback rows and instruction-level ABI limits.

[State controller and quit request](../../guides/loading/state-controller-and-quit.md)
retains eleven complete existing bodies, including discontiguous queue cleanup;
request admission, virtual lifetime calls and the byte writer remain distinct
from unproved process termination.

[Terrain layer texture binding](../../guides/world/terrain-layer-texture-binding.md)
records layer-key fallback, copied material/texture entries, ordinary readiness
and cached native bind. Separate mapped blend-mask generation and DDS block-copy
boundaries retain their original failure and sampling limits.

[GameUtils loading-screen callbacks](../../guides/bridge/gameutils-load-screen-swap.md)
retain the complete producer and consumer envelopes with single-slot publication,
service/interface null gates and clear-after-dispatch/cleanup ordering.

[Lot Fence, Deck and compositor streams](../../guides/world/lot-layer-resource-streams.md)
retains complete selected producer/consumer envelopes. Owned AT&T instructions
are byte-matched to saved Ghidra units; explicit gap bytes remain outside function
ownership. AL-only results, sticky stream status and unverified subordinate
comparators/decoders remain qualified.

[Wall preparation](../../guides/rendering/wall-preparation.md) retains17 complete
selected function bodies and one explicitly incomplete stored stair body. Its
missing success branch remains outside stored ownership, with a separate bounded
original-byte excerpt. Roof selection, selected-owner/general-height distinctions,
product predicates and DesignSwap local-call effects retain their stated limits.

[Window trigger hooks and color swatches](../../guides/ui/window-trigger-hooks-and-color-swatches.md)
retains eight complete original helper bodies and selected support bytes; the
existing color wrapper remains a bounded export with its extent limit explicit.

[Persistence stream handles](../../guides/bridge/persistence-stream-handle-boundaries.md)
retain four complete existing bodies (610 bytes / 222 instructions), and four
bounded create/close windows whose stored one-byte bodies have zero Listing
instructions. The actual C projections and original-byte windows are paired;
no body or instruction repair is implied.

[Texture composite quad, submission and blend state](../../guides/rendering/txtc-operation-pipelines.md)
retains five complete selected bodies and 138 bytes of supporting original data.
Physical ABI/AL authority, unsigned division, signed Int16 parameter conversion,
independent enable/factor/write bits and unresolved child effects remain explicit.
The existing `0060FF90` alpha-enable pair is unchanged; current Vulkan budgets,
snapshot/default policy and full pixel/equation parity are not inferred.

[Deck foundation queries](../../guides/world/deck-foundation-query-boundaries.md)
retain two complete original bodies with actual saved Ghidra Listing text and
pristine PE bytes:413 instructions/1306 owned bytes, plus six explicitly unowned
alignment bytes. The paired C remains the actual saved native rendering.

[Typed window properties and Caption dispatch](../../guides/ui/window-property-values.md)
retain eight actual annotated C exports and their unchanged canonical ASM windows.
Six complete bodies contain602 Listing instructions/1811 bytes; two one-byte
metadata entries have zero Listing instructions and separately bounded224/448-byte
windows. Physical defaults, low-byte flags, Caption generic fallback and string
marshaling limits are explicit.

[Persistence stream transfers](../../guides/bridge/persistence-stream-transfer-boundaries.md)
retain21 complete existing bodies (4403 original bytes/1611 Listing instructions)
and four bounded array/string windows whose stored one-byte bodies have zero
Listing instructions. The converter preserves a13-byte nonowned gap;280 original
data bytes retain its switch and leading-byte tables. Actual saved C projections
remain verbatim and native transport does not replace original managed policy.

[Filtered audio view collision](../../guides/audio/filtered-view-segments-and-roof-collision.md)
compares fifteen complete existing bodies (10,901 original bytes/2,993 Listing
instructions), their listener consumer, full lot transforms and roof collision
producer. The listener raw envelope retains two separate alignment bytes;271
necessary original data bytes preserve constants, switch tables and labels.

[Floor geometry and visibility](../../guides/world/floor-geometry-original-boundaries.md)
retains fourteen complete original bodies with saved Ghidra Listing text and
pristine PE bytes:2734 instructions/10080 owned bytes, plus28 explicitly unowned
alignment bytes. Paired C is the actual saved annotated native rendering.

[UI thumbnail requests and key derivation](../../guides/ui/image-request-and-key-derivation.md)
retain three complete descriptor/key/allocation-publication helpers:530 actual
Listing instructions/1845 original bytes, physical template-ID pose gating,
packed key arithmetic and explicit child/cache/render-completion limits.

[Pool presence and water production](../../guides/world/pool-presence-and-water-production.md)
retains fourteen complete original bodies with saved Ghidra Listing text and
pristine PE bytes:1458 instructions/4587 owned bytes, plus12 explicitly unowned
alignment bytes. Paired C is the actual saved annotated native rendering.

[Load/save operation boundaries](../../guides/bridge/loadsave-handle-and-profile-boundaries.md)
retain22 complete existing bodies (5815 original bytes/2022 actual Listing instructions)
and ten one-byte metadata entries with zero Listing instructions and388 bytes of
separate bounded PE windows. Three nonowned alignment bytes remain explicit.
Original data excerpts retain32 bytes of writer-vtable/header-key data and a
separate96-byte reader reference window without a stored function. Actual annotated
C is verbatim; native writer/index transport does not replace original managed
serializer authority.

[Native script object lifecycle](../../guides/bridge/native-script-object-lifecycle-boundaries.md)
retains three one-byte metadata entries with zero actual Listing instructions and
126 separate bounded pristine PE wrapper bytes. Necessary original-data excerpts
retain 2143 absent-producer bytes, 1414 support-window bytes and 48 table/scalar bytes;
the existing global-getter canonical pair is reused. No missing function or
Listing instruction is invented; actual annotated wrapper C remains verbatim.

[Combo-box control state](../../guides/ui/combo-box-control-state.md) retains nine
new complete internal pairs and two actual frontend C refreshes:1,440 Listing
instructions/4,633 owned bytes, explicit nine-byte gap and unchanged480/320-byte
frontend raw windows. Seven unresolved-entry windows remain bounded evidence.

[Saved roof record reading](../../guides/world/roof-saved-record-read.md)
retains the complete original reader:365 saved Listing instructions and1079
pristine bytes with no envelope gap, paired with actual annotated Ghidra C.
Version/key/catalog/child and runtime-global limits remain explicit.

[Lot spatial resource boundaries](../../guides/bridge/lot-spatial-resource-boundaries.md)
authenticate ten complete bodies with7198 pristine bytes/1877 saved Listing instructions;
seven new raw pairs use complete saved Listing, while three existing raw/index scopes remain exact,
seven explicit nonowned alignment bytes and216 necessary gameplay-data bytes.
All annotated C is verbatim.
Original selected-identifier production, actual display consumption and original
managed Invalid initialization remain distinct from current resource-cache policy.

[Bounded rectangle transfer](../../guides/rendering/rectangle-transfer.md) retains one complete
85-instruction/242-byte original body and its actual annotated pseudocode.
The unsigned divisor has current ESP-relative provenance; incoming argument and
virtual API/filter/pixel identities remain explicitly unproved.

[Road source mesh and material passes](../../guides/world/road-source-mesh-and-material-passes.md)
retain two complete original functions:1240 saved Listing instructions and4642
owned pristine bytes in4649 envelope bytes, with seven unowned alignment bytes
and19 necessary data ranges/205bytes. Actual annotated Ghidra C is verbatim;
physical ABI, pass/UV/provider and current proxy-policy limits remain explicit.

[Effect membership, timeline and counted lifetime](../../guides/ui/effect-membership-timeline-lifetime.md)
retains twelve new complete internal pairs and five actual frontend C refreshes.
Thirteen complete bodies own1,275 Listing instructions/3,724 pristine bytes; four
one-byte-body frontends retain their bounded368/96/128/128-byte old raw windows.
All five old raw/index scopes remain unchanged. Numerical and counted-interface
observations do not establish current UI timing, ownership or pixel parity.

[Installed-water and pond boundaries](../../guides/bridge/water-pond-resource-boundaries.md)
retain22actual C results,18complete7304-byte/2070-Listing bodies and45nonowned bytes;
four one-byte metadata bodies have zero actual Listing and separate752-byte bounded windows.
Fifteen new raw/C pairs join seven unchanged old raw/index scopes. Only actual new
owned Listing contributes new call rows. Eighty necessary data bytes and existing
durable scalar rows retain the original defaults, sentinels and signed neighbor tables.
[Generated pond footprint and refresh](../../guides/world/lot-pond-generated-footprint.md) adds two complete owned Listings, exact formatter/corner/field/resource effects and retained-object refresh. One nonowned byte is excluded from the second body; its index records the bounding envelope.

[Object screen query](../../guides/bridge/object-screen-query.md) retains seven actual
annotated C results and complete1285-byte/380-Listing native bodies; the existing
registered wrapper raw scope remains336bytes including4padding bytes. Six new
complete pairs join it. Managed forwarding, original default/replacement bounds,
SSE reduction, eight packed lanes and unexpanded child limits remain explicit.

[Object catalogs and world-template metadata](catalog-template-contracts.md) retain complete product reader/alias/filter/preset/price and world metadata reader/writer/getter/managed consumer bodies, with original dispatch tables and constants.

[Thumbnail cache path selection](thumbnail-cache-path-selection.md) retains the complete native configuration/default path selector.

[UI drawable state and image geometry](ui-drawable-selection-and-geometry.md) records native state arrays, distinct scale modes and physical draw ABIs.
[LotLocation framing](../../guides/navigation/lot-location-resource-framing.md) joins the resource owner to full header readers/writers and bounded payload blocks.
[Typed wall graph identity](../../guides/navigation/compact-wall-graph-identity.md) records the original ID-based vertex/room joins.

[Polygon footprint persistence](../../guides/navigation/polygon-footprint-persistence.md) retains base/versioned references, ordered rings and stored bounds.
[Scene-window drawing and point picking](ui-scene-window-and-picking.md) records original transforms, local hit callbacks and necessary exact constants.

[Footprint tables and typed kind projections](../../guides/navigation/footprint-table-and-kind-projections.md) retains the original index/tag grammar and concrete kind21 producers/consumers.
[Button state and Click dispatch](../../guides/ui/button-state-and-click-dispatch.md) joins native capture/state/event handlers to selected original UI managed members.

[Build-product catalog readers and component selection](build-product-catalogs-and-proxy-components.md) retains CFEN/CRAL/CSTR factory, required models, versions and native ordered proxy selection.

[Window Area dispatch](../../guides/ui/window-area-property-dispatch.md) joins actual registered native rectangle handling to selected original managed producers.

[Stair collision and render composition](../../guides/construction/stair-collision-and-render-admission.md) retains bounded native producer/consumer contracts.

[Stair step-placement consumer](../../guides/construction/stair-step-placement-consumer.md) retains bounded native producer/consumer contracts.

[Lighting update byte and custom-rig change notification](../../guides/rendering/lighting-update-and-custom-rig-controls.md) retains bounded native producer/consumer contracts.

[ShearedBoxShape resolved virtual slot](../../guides/construction/sheared-box-resolved-virtual-slot.md) retains the original vtable producer and destination word for B19990 at B1A223.

[Slider and scrollbar component presentation](../../guides/ui/slider-scrollbar-presentation.md) retains concrete native producers, atlas arithmetic and missing-image fallbacks.

[Fence records and rail/post authority](../../guides/construction/fence-records-and-rail-post-authority.md) distinguishes native design registration, locator/model consumers and current detached/fallback policies.

[CWAL and CTPT native product fields — PC1.67](../../guides/construction/wall-floor-and-terrain-brush-fields.md) retains bounded original producer/consumer facts.

[Canvas message pump and combo MouseDown ABI](../../guides/ui/canvas-message-pump-and-combo-input.md) retains bounded original producer/consumer facts.

[Roof catalog fields and defaults](../../guides/roof-catalog-fields-and-defaults.md) covers full readers, constructor, style/pattern fallback and the five-byte ordinal thunk with its complete target.

[Scene shadow queue and optional flora](../../guides/shaders/scene-shadow-queue-and-flora-order.md) retains the full native producer/dispatcher/consumer chain and bounded cache/lifetime comparison.

[Sparse shape and construction events](../../guides/world/sparse-shape-and-construction-events.md) covers retained location iteration and actual wall/floor event queues, without claiming current detached rectangle/channel algorithms are native.

[Pattern catalog bank and key array](../../guides/construction/pattern-catalog-bank-and-key-array.md) proves full-key unsigned lower-bound/exact search and explicit default selection, independently of host filesystem/name heuristics.

[Text editor and focus service](../../guides/ui/text-editing-and-focus.md) retains actual editor/focus producers, validation chronology and reference boundaries.

[Supplied lot-content identity](../../guides/world/lot-content-import-and-companion-signatures.md) establishes actual typed ID imports and recursive GUID lookup, separately from current signature and overlay heuristics.

[CAS material production](../../guides/shaders/cas-material-parameter-production.md) joins actual parameter/sentinel producers with concrete consumers and selected authored sampler examples.

[Window event registration and shutdown](../../guides/ui/window-event-lifetime.md) joins native registration, payload/reference delivery and synchronous shutdown retirement with original script consumers.

[Lot terrain membership](../../guides/world/lot-terrain-membership-and-draw-identity.md) proves lot-ID-keyed native membership memoization and the lot pointer carried by actual material/draw consumers.

[Lot retained-state lifetime](../../guides/world/lot-retained-state-release-and-visual-receipts.md) establishes request/readiness versus retained-state teardown and scalar deletion, distinct from host evidence receipts.

[Foundation and wall-style catalogs](../../guides/construction/foundation-and-wall-style-catalogs.md) establishes native versioned readers, default/reference keys and actual catalog field consumers.

[Runtime fence post height](../../guides/construction/runtime-fence-post-height.md) proves proxy bounds, typed threshold/default rules and the real x87 tallest-candidate consumer.

[Shader pass identity and queue memos](../../guides/shaders/shader-pass-and-queue-memos.md) describes native binding identity, generation selection and invocation-local queue inputs.

[Construction tool preparation and retained context](../../guides/world/construction-tool-preparation-and-retained-context.md) closes selected parameter/program production and tool reuse/lifetime, including the four original switch tables.

[Window subtree detach and retirement](../../guides/ui/window-subtree-lifetime.md) joins actual unlink/detach ordering, retained native Grid cells and original managed disposal.

[Native pose cache and publication](../../guides/animation/pose-cache-and-publication.md) proves exact two-row keys and ordered pose/child consumers.

[Resident skin and SearchLight controller](../../guides/objects/resident-animation-skin-and-searchlight.md) closes native joint/bind storage, rig follow-up and actual original managed controller ownership.

[Native render-state source lifetime](../../guides/animation/render-state-source-lifetime.md) proves unique-state destruction and consumed/retained source boundaries.

[Fireplace catalog parts](../../guides/construction/fireplace-catalog-parts.md) and [catalog common wire](../../guides/construction/catalog-common-wire-cfir.md) establish versioned full keys, exact Common advancement, raw text and constructor defaults.

[Native pose, bounds and dirty publication](../../guides/animation/pose-bounds-and-dirty-publication.md) establishes actual post-pose callback, dirty-list production, bounds fallback and exact unordered spatial branches.

[Native lot-detail dispatch and pending queries](../../guides/world/lot-detail-dispatch-and-pending.md) establishes actual requested/readiness separation and same-thread versus queued dispatch.

[Layout retention](../../guides/ui/layout-retention.md) establishes complete export/layout/shared release ABIs and separate typed-registration/object references.

[Authored window properties](../../guides/ui/authored-window-properties.md) establishes exact constructors, descriptors, scalar types and typed bridge ABIs.

[Native window class identities and factories](../../guides/ui/authored-window-identities.md) establishes actual class getters, registration/removal, typed identity output and original managed identity consumers.

[Native drawable/image reference lifetime](../../guides/ui/drawable-image-references.md) establishes independently retained acquisitions, concrete zero-only StdDrawable destruction and typed image-pointer write ordering.

[Construction catalog lists and ordering](../../guides/construction/construction-catalog-lists-and-ordering.md) establishes retained family dispatch, exact filters, physical comparator/merge ABI, original name and four-word key ordering and handle export.

[Wall/floor preset masks and managed consumption](../../guides/construction/surface-subsort-catalog.md) establishes live authored/installed preset selection, full UInt32 IDs, pair export and original managed wrapper/UI ownership.

[DBPF header, index and packed-resource decoding](../../guides/resources/dbpf-header-index-payload.md) establishes conditional index rows, first-duplicate lookup, selected raw/decoded consumption and the built-in RefPack wrapper/command boundary.

[Catalog Common icon selection](../../guides/ui/catalog-common-icon-selection.md), [managed/native thumbnail key ABI](../../guides/ui/catalog-thumbnail-managed-native-key-abi.md) and [versioned product Common wire](../../guides/ui/catalog-product-common-wire.md) retain full selected original producer/consumer and typed stream boundaries.

[Floor monetary contribution](../../guides/world/floor-monetary-contribution.md) joins the original x87 subtotal, exact product lookup, map/resource inputs and distinct rendering-key predicate.

[RoomManager saved grid](../../guides/construction/room-manager-grid-original-reader.md) documents the original header/body, enclosing LOT version, query mask and physical array ABI.

[Loading controller and readiness](../../guides/loading/loading-presentation-readiness.md) follows original transition waits, callback posting and controller teardown.

[Wall queued updates and material readiness](../../guides/world/wall-material-readiness.md) follows the physical producer, tail transfer, bucket polling and material AL status.

[Scene-shadow matrix inputs](../../guides/world/scene-shadow-item-matrix-inputs.md) follows original item matrix production, predicates, identity fallback and queue cleanup.

[Detailed-lot monitor and readiness](../../guides/world/lot-detail-scheduler-receipts.md) joins actual requested/ready/status producers, callback completion and continuation.

[Display mode requests and callbacks](../../guides/ui/display-resolution-requests.md) establishes original message ownership, actual receiver ABI and managed Keep/Revert boundaries.

[Authored lot representations and display levels](../../guides/rendering/lot-authored-representations-and-display-levels.md) and [owned package read-view consumers](../../guides/resources/dbpf-owned-read-view-consumers.md) describe distinct acquisition, persistence, physical ABI and native/legacy boundaries.

[SpeedTree TREE templates](../../guides/resources/speedtree-template-wire.md) retain the typed loading/default/endian/vector/consumer closure, including the Boolean leaf-point predicate and physical ABI caveats.

[Button and grid content placement](../../guides/ui/button-and-grid-content-placement.md) records float partitions, insets/radio side effects, five-word Grid ABI, signed cell admission and independent stretch/alignment rules.

[SACS required-event and frame settings](../../guides/sacs/required-events-and-frame-settings.md) closes original defaults, registered setting addresses, signed event cursor and strict listener versus inclusive producer thresholds.

[SACS NextState admission](../../guides/sacs/next-state-admission.md) closes exact pointer membership, physical four-word ABI and pending/dirty propagation.

[SACS driver graph and update](../../guides/sacs/driver-graph-and-update.md) closes exact graph admission, pending records, state-watch ordering and manager update ABI.

[SACS requests and walker lifetime](../../guides/sacs/requests-and-walker-lifetime.md) closes actor construction, placement, pause/continue, cleanup and physical callback/status contracts.

[Construction product loading](../../guides/construction/product-selection-and-curved-resource.md) distinguishes native catalog lookup, Common and ordinal-key wire from the former flat projection.

[Hit-mask and control coordinates](../../guides/ui/hit-mask-and-control-coordinates.md) separates signed coordinate mapping, native resource admission, control hit order and project layout guards.

[Text style, category windows and product selection](../../guides/ui/text-style-category-windows-and-product-selection.md) records physical text-style inheritance, original category-window construction and first/exact product preset selection.

[Skeleton, blend, outfit and Sim-export data](../../guides/cas/skeleton-outfit-and-export-data.md) records original wire fields, ordering, version gates and selected failure/ABI boundaries.

[Rendering, tree objects and placement](../../guides/objects/render-tree-and-placement-mechanisms.md) records original per-domain selectors, tree state/variation and placement boundaries.

[Floor-feature alpha and geometry](../../guides/rendering/floor-feature-alpha-and-geometry.md) records native fade, texture and mesh ownership with physical arithmetic and explicit platform/cutout boundaries.

[Wall-flag placement](../../guides/construction/wall-flag-placement-and-physical-support.md) records required/prohibited edge sets, original callers, packed coordinates and diagnostic admission.

[Room construction and quality stages](../../guides/rendering/room-construction-and-quality-stages.md) records actual conditional quality limit, constructor ABI, signed room lookup and direct consumers.

[Ceiling geometry and levels](../../guides/world/ceiling-geometry-and-levels.md) records signed tile parts, height branches, contours, model selection and actual level-bound expansion.

[Quarter coverage and polygon predicates](../../guides/world/quarter-coverage-and-polygon-predicates.md) records complete signed iterator, real polygon arithmetic and cutout/placement callers.

[Object component resource framing and factory](../../guides/objects/component-resource-framing-and-factory.md) records original format gates, component masks, typed parameter admission and exact factory/query ABI.

[Rug rows, ordering and resource admission](../../guides/objects/rug-resource-rows-and-ordering.md) records original full-GUID saved load/write, ordered-list versus map identity, compact fields, insertion ranks and render-bias production.

[Loaded-lot creation and callback ordering](../../guides/objects/loaded-lot-admission-and-callbacks.md) records actual manager/Physics/tile/completion order and the separate managed Location callback.

[Quarter flatness and centre selection](../../guides/objects/quarter-flatness-and-centre-selection.md) records physical callback polarity, signed onehot geometry, exact tolerance and rounded-diagonal selection.

[Snow placement cover and object conditions](../../guides/objects/snow-placement-cover-and-blockers.md) records extra authored requirements, actual shelter phases, footprint-based members, fullGUID ignore and component/catalog blocker gates.

[Surface cutout registration and render inputs](../../guides/build-buy/surface-cutout-registration-and-render-inputs.md) records quarter selection, authored fields, registration, tile ownership and physical message ABI.

[Cutout ownership, flags and reference admission](../../guides/build-buy/cutout-ownership-flags-and-reference-admission.md) records full-GUID tile conflicts, added flags and original catalog ordinal failure.

[Placement capability and native query boundaries](../../guides/build-buy/placement-capability-and-native-query-boundaries.md) records actual authored predicates, enabled footprint enumeration and independent slot validation.

[Object incarnation and routing component lifetime](../../guides/objects/object-incarnation-and-routing-component-lifetime.md) records actual lookup/removal and object-owned routing/SACS boundaries.

[Authored Model bounds and insertion flags](../../guides/objects/authored-model-bounds-and-insertion-flags.md) records original proxy query, retained failure and exact scalar words.

[Basement byte layers and compact tile queries](../../guides/construction/basement-byte-layer-and-queries.md) records the original header/body reader/writer, raw cell masks and compact live-lot admission.

[Basement tool and wall product metadata](../../guides/construction/basement-tool-and-wall-products.md) records original excavation/removal, validation and wall catalog metadata boundaries.

[INI formatted values and physical arguments](../../guides/construction/ini-formatted-values-and-abi.md) records four fixed INI arguments plus variadic output pointers, explicit text lookup and scan dispatch.

[Slot flags and angular ranking](../../guides/build-buy/slot-flags-and-angular-ranking.md) records raw flag domains, the mask/count composition and SSE candidate arithmetic.

[Floor feature cells and bridge admission](../../guides/world/floor-feature-cells-and-bridge.md) records byte flags, shared mask gates, distinct absent-lot returns and compact signed coordinates.

[Tool proxy products and prices](../../guides/build-buy/tool-proxy-products-and-prices.md) records original wire, retained map replacement, physical tool callers and price rounding.

[Common wall placement validation](../../guides/construction/common-wall-placement-validation.md) records actual property dispatch, error collection order and native floor-feature mutations.

[Fireplace groups and original hooks](../../guides/construction/fireplace-associations-and-hooks.md) records direct/export wire, native group traversal, stable identities and the public zero-result hook.

[Floor-feature cells and tile queries](../../guides/world/floor-feature-cells-and-bridge.md) records full-word predicates, present-empty enumeration and packed result lanes.

[Floor-feature grid and mask persistence](../../guides/world/floor-feature-grid-and-mask-persistence.md) records raw grid headers, authoritative enclosing-version selection and normal writer presence.

[Lot structural support](../../guides/world/lot-structural-support.md) records ordered room/floor, object, partition and roof alternatives and exact cell sampling.

[Dense floor grid lifetime and level changes](../../guides/world/floor-feature-dense-grid-levels.md) records retained dimensions, dense byte/ushort ownership, resize ABIs and insertion initialization.

[Puddle initial feature query](../../guides/rendering/puddle-initial-feature-query.md) distinguishes raw renderer flags/mask output from the gameplay intersection predicate.

[Lot level range publication](../../guides/world/lot-level-range-publication.md) closes signed admission, retained range mutation and notification order.

[Library lot ground](../../guides/world/library-lot-ground-wire.md) closes float-grid producer, header/body reader and ground-level selection.

[Terrain paint layers](../../guides/world/terrain-paint-layer-state.md) closes key selection, layer reuse, byte mixing, usage and actual tool consumers.

[Fence finish resources](../../guides/world/fence-finish-resource-ownership.md) closes first authored IDs, custom-bank selection and independent finish keys.

[Saved preset headers and program ownership](../../guides/persistence/saved-preset-header-ownership.md) explains full UInt32 metadata, distinct defaults and physical program-build ABI.

[Level growth and null-pattern rows](../../guides/world/lot-level-growth-and-null-patterns.md) closes retained layer resize order, full quad lookup and reference accounting.

[Ceiling material input](../../guides/world/ceiling-material-input.md) closes unsigned wire-version selection, context width and the native producer/default boundary.

[Paint and water scalar response](../../guides/world/paint-water-brush-response.md) closes ordered Float32 softness, unordered input and paint-only width limits.

[Terrain paint samples and conditional charges](../../guides/world/terrain-paint-samples-and-charges.md) closes typed transfer, compact floor admission and live callback charge order.

[Paint input coordinates and edge response](../../guides/world/paint-input-geometry.md) describes quarter-grid, live-level and ordered edge semantics.

[Floor visibility flags](../../guides/world/floor-visibility-input.md) covers independent wire dimensions, post-load perimeter and masked bits.

[Terrain brush sampling](../../guides/world/terrain-brush-sampling.md) covers episode orientation, rectangle spans, physical view/callback ABI and ordered texels.

[Sculpt response and live cost boundary](../../guides/world/terrain-sculpt-response.md) records typed callback arithmetic, input bounds and actual incremental charges.

[Sculpt fractional cost history](../../guides/world/terrain-sculpt-funds-history.md) closes raw cost, concrete history slots and geometry-before-money replay.

[Brush profile surfaces](../../guides/world/brush-profile-surfaces.md) documents resource format dispatch, scalar raster input and source-dependent image conversion.

[Polygon predicates](../../guides/world/quarter-coverage-and-polygon-predicates.md) retains ordered bound selection and exact overlap/cyclic rules.

[Water response and input](../../guides/world/water-brush-response-and-input.md) closes unrounded target arithmetic, typed sample/point ABI and live click bounds; full controller work remains separate.

[Ghost appearance requests](../../guides/objects/ghost-appearance-request.md) closes the original component gate, raw request event and unsigned fixup style projection.

[Hidden component query](../../guides/objects/hidden-flags-component-query.md) closes current component presence and two-bit projection; Footprint predicate defines full EAX0/1 independently of frontend AL consumption.

[Fence post finish-key comparison](../../guides/build-buy/fence-post-finish-key-comparison.md) closes all12rawkeywords and fullEAX0/1; native ID allocation remains separate.

[Stair authored preset selection](../../guides/build-buy/stair-authored-preset-selection.md) closes first/fullID/count/ordinal/default selection and physical ABI; authored-only host caching remains distinct from the complete kind5 custom service.

[Layout edge arithmetic](../../guides/ui/layout-edge-arithmetic.md) records the selected anchor/proportional transforms, physical interface joins, AL inverse results and ordered inversion clamps.

[Authored value arrays](../../guides/ui/authored-value-arrays.md) — exact indexed destinations, declared count/type admission, AL-only error joins and StdDrawable independent slots.

[Ghost LOD shader substitutions](../../guides/rendering/ghost-lod-shader-substitution.md) provides the full original function and actual annotated decompilation.

[StaticRotate and retained-window transforms](../../guides/ui/static-rotate-retained-transforms.md) joins the published effect callback to local matrices, row-vector center/parent composition and retained draw/clip consumers; physical ABI and renderer limits remain explicit.

[Object-group writing](../../guides/persistence/object-group-writing.md) records the complete manager writer, physical partial-register returns, successful-row/context ordering and provider/version limits. The same guide now joins opaque04F7BDA7 per-manager selection, copied Get/Set vectors and distinct empty-map/outer-save boundaries.

[Library lot object import](../../guides/persistence/library-lot-object-import.md) records the complete object-resource placement reader and fresh-ID vector producer, physical ECX/stack/AL or void boundaries, same-vector output and provider/version limits.

[World native-persistence envelope and writer](../../guides/persistence/native-object-table-envelope-and-writer.md) records complete current/legacy framing, NOBJ-before-context load order, record offsets and physical ECX/stack/AL or void boundaries with provider limits.

[Authored Caption descriptor and empty commit](../../guides/ui/authored-caption-descriptor-and-empty-commit.md) joins the actual inherited context, selected string row, key-presence branch and null-string clear with physical ABI and provider limits.

[Authored Caption text and resource-key input](../../guides/ui/authored-caption-text-and-resource-key-input.md) connects exact leading text, arena copy, resource-key grammar and numeric physical ABI, including the division helper remainder that pseudocode does not model.

[Thumbnail scene model and custom-rig selection](../../guides/rendering/thumbnail-scene-model-rig-selection.md) separates ordinary model-name lookup, category fallback, additional-model setup and the ready-gated ordered rig vector.

[Object-thumbnail camera selection and section hashes](../../guides/rendering/object-camera-resource-selection-and-hashes.md) retain two complete owned Listings with genuine annotated C: request-key settings selection with AL-only status, and CRT-lowered UTF16 FNV-1. The hash Listing excludes its three nonowned gap bytes; camera bounds, model-hash mapping and size policy remain separate boundaries.

[Four-lobe source-color accumulation](../../guides/rendering/four-lobe-source-color-accumulation.md) covers supplied-source arithmetic, physical stack inputs, native clamp and distribution branches, and bounded caller/provider limits.

[Roof-manager height at or below a story ceiling](../../guides/camera/roof-height-at-or-below.md) covers signed level traversal, strict initializer threshold, extended x87 comparison, output/scratch lifetime and selected provider limits.

[Frosted-glass fixup attachment update](../../guides/shaders/frosted-glass-fixup-attachments.md) describes complete removal-before-enable ordering, descriptor admission, allocation/attachment lifetime calls and the distinct unexpanded snow/frost material-command boundary.

[Partition resource lanes and Platform reset](../../guides/world/partition-resource-lanes-and-platform-reset.md) adds three complete owned Listings and actual annotated C for countedUInt16 vectors, resource-bundle reading and empty-room reset.

[Component bounding-box corners and transforms](../../guides/shaders/component-bounding-box-corners.md) records all eight original corners, exact SIMD transform order and the four-corner roof polygon consumer.

[Wall graph selection and crossing](../../guides/world/wall-graph-selection-and-crossing.md) retains five complete owned Listings and actual annotated C, connected to the two original World wrapper APIs.

[Lot-edge arrival locations](../../guides/routing/lot-edge-arrival-locations.md) retains six complete owned Listings and actual annotated C, excluding ten unowned gap bytes; it distinguishes selected component, generated level and native query admission.

[Floor-pattern support](../../guides/world/floor-pattern-support.md) retains five complete owned Listings and genuine annotated C: map initialization, full-quad key transport and separate physical terrain/floor admission.

[Authored opening cutout locators](../../guides/world/authored-opening-cutout-locators.md) retains six complete annotated owners and their physical row/graph/rounding boundaries.

[Room-floor atlas origins and ordered groups](../../guides/world/room-floor-atlas-origins.md) retains nine complete annotated owners and their origin-allocation/group-selection boundaries.

[Sim-head isolation material parameters](../../guides/rendering/sim-head-isolation-material-parameters.md) retains four complete annotated owners: flag-selected threshold production, counted modifier lifetime and original material substitution/output ownership.

[Material state and geometry authority](../../guides/objects/material-state-and-geometry-authority.md) joins the full material command, typed lookup and LOD-copy contract. [Near-tree alpha, LOD and FSAA](../../guides/vegetation/near-alpha-lod-and-fsaa.md) joins category draws, alpha producers and selected original shader instructions.

[Authored layout document and raw element names](../../guides/ui/authored-layout-document-and-raw-names.md) retain17 complete selected owned Listings and actual annotated C. Raw QName creation/callback/copy/getter joins distinguish default namespaces from prefixed element names; constructor continuation, custom EAX allocator and object-ID output ABI remain explicit.

[Loaded-world filename input field](../../guides/world/loaded-world-filename-input-field.md) retains the complete two-instruction, seven-byte annotated getter and its current-memory/pristine-byte agreement. The code index identifies this complete existing-function listing through RET; the separate registered wrapper remains a legacy linear window and its conversion/marshaling children remain unresolved.

The existing tree/placement guide now joins registered lot clustering to original retained-source split, manager wrappers and full selected managed callers; native clone/dispatch/resource completion limits remain explicit.

The existing Library lifecycle guide now joins actual refresh/discovery/name/provider acquisition and Win32 file-presence admission; six needed native pairs are added without DB mutation/save, with one nonowned alignment byte explicit.

The existing room-colour guide now includes five additional complete original C/Listing pairs (820instructions/3089ownedbytes), actual full-EAX count and physical output/read ABI, plus selected scalar words. Analyst preambles qualify unchanged inferred Ghidra metadata; the qualified physical ABI is authoritative over incomplete inferred metadata. Full settings/child/worker/GPU behavior remains open.

The existing CAS data guide adds the complete TONE reader399instructions1130ownedbytes; actual C is preserved with analyst qualification of AL and inferred metadata. Full native factory/writer/selection/stream limits remain open.

The animation controller guide includes complete00554CA0 child traversal/null-mask stop. Complete lower numerical/resource/caller policy remains open.

Loaded lot worth now joins ten complete canonical bodies and selected pristine arithmetic/direction data. Whole complex-mode and mutation/catalog ownership remain separate.

The camera guide joins six complete path reader/control/update pairs; yaw alignment gaps are excluded from owned code.

Opening and wall-selection guides now join nine complete selected bodies;11nonownedalignment bytes excluded from owned instruction totals.

Selected complete B00190/B06E90 parents join room metrics and first-boundary wall coverage to existing World API pages.8alignment bytes excluded; all lower reader/writer/cache/FP/lifetime bounds remain explicit.

Five selected appearance/readiness and obstruction parents join701instructions2011ownedbytes to existing CAS/routing guides; all lower queue/resource/managed callback/cache/physics lifetimes remain qualified.

CompleteB4B630 joins physical partition price and double accumulation to existing worth guide; roof tie narrowing and retained corner source/admission limits remain explicit.

Three complete construction/eave/stair pairs join existing wall preparation and brush guides; incomplete parents, source/vtable joins and lifetime limits remain explicit.

[Social wall-query collection](../../guides/routing/destinations-and-scoring.md#social-wall-segment-collector-and-cell-admission) retains twenty complete reviewed owned Listings with original-byte envelopes, annotated Ghidra renderings and explicit analyst display aliases. The two undefined callback wrappers remain qualified original data. Fifteen envelope gap bytes are not owned instructions; pointer-set cardinality, cell-mask admission and final wall classification are separate contracts.

[Active-path point and along-route queries](../../guides/routing/planner-and-results.md#active-path-point-and-destination-obstruction)
join8460F0/85F690 and distinct full-GUID vector readers81C580/81C5C0, with canonical
original Listings and explicit field/seed/geometry/retirement boundaries.

[Platform point selection](../../guides/world/platform-point-selection.md) closes the three platform leaves and the five-function vertex iterator, with physical signed bytes, catalogue and partial-selection order. The centre encoder does not write a quarter mask.

[Deck/foundation point selection](../../guides/world/deck-foundation-point-selection.md),
[four-word grid copying](../../guides/world/four-word-grid-growth-and-copying.md)
and [floor pattern message inputs](../../guides/world/floor-pattern-message-inputs.md)
retain26 further complete bodies, including strict negative type tests, child
AL forwarding,16-bit pattern IDs, FNV-1, pending refresh and vector expansion.
Their Listings exclude15 nonowned gap bytes in three functions. Allocation,
high-bit rebuilding, complete live publication and gameplay remain separate.

[Facial-blend admission](../../guides/cas/facial-blend-resource-admission.md) adds two complete named bodies under `cas/facial-blends/` and refreshes the existing adapter pair. The code index is authoritative for paths; the ApplyOutfit owned Listing excludes a six-byte gap.
