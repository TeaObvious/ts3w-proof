# Retained original proof overview

The base proof overview from cf6f60a42fe8c5bd181495a32161217972cefebc includes the targeted retained update bd11af54646a7c0d4faaf984997015b144fe58d6. Paths resolve into this repository; maintained successors retain precedence. This import reuses the original published evidence and does not execute new Native tasks. See the [update scope](retained-proof-bd11-update.md) and [current project entry](../README.md).

# Original PC 1.67 TS3W API proof

This is an offline, plain-text reference for developers comparing OpenTS3 with
original PC 1.67 `TS3W.exe` and its matching managed game code. The original
executable, assemblies, packages and assets are not needed to read it. The
collection describes original APIs and selected internal paths; it does not
claim that an API is missing from or implemented by OpenTS3.

The separate [Create a World 1.22.10 proof](../caw-proof/README.md) covers the
original editor and its native DLLs. Its APIs are indexed independently of the
game's `TS3W.exe` registrations.

Unless a guide explicitly identifies another reference, game contracts use
the original PC 1.67 `TS3W.exe` (SHA-256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`)
and the shader guide additionally uses matching `Shaders_Win32.precomp` (SHA-256
`d16ce5d5a5aac7978c91fd9f04fbdc39e979e58743cfde0e53d3accf7d81f981`).

## Find an API

1. Search [API-INDEX.tsv](../API-INDEX.tsv) by registration name or managed
   signature, browse the [clickable registration-prefix index](../api/README.md),
   or use [ADDRESS-INDEX.tsv](../ADDRESS-INDEX.tsv) when you know a native address.
2. Open the API page. It joins one original registration record to managed
   declarations, direct caller IL offsets, the native target, and any other
   names sharing that target. For example,
   [SACS_RequestStateImpl](../api/ScriptCore.SACS/0x01161e68.md) records seven
   declared arguments and links to the original code.
3. Read its [original bytes and disassembly](../evidence/native/functions/007674D0_SACS_RequestStateImpl.asm) ([annotated Ghidra pseudocode](../evidence/native/functions/007674D0_SACS_RequestStateImpl.c)).
   The SACS pseudocode comment explains why the decompiler's stack argument
   labels are misleading for this function.
4. Open a [system guide](#system-guides) for a reviewed path through callers,
   internal helpers, side effects and unresolved branches.

`../API-INDEX.tsv` is sorted by registration name. Its `guide_tags` mean that the
record appears in an explicitly reviewed guide selection; a blank tag means
that no guide was written for it, not that the API is absent. The address index
is sorted numerically by native target and preserves aliases. The API page is
keyed by the unique **registration record address**; the native target address
is a separate value and can be shared by several registrations.

## Folder map

| Path | Purpose |
| --- | --- |
| [`api/`](../api/README.md) | One short page for each of 1,775 original registered names, grouped by the name prefix used in the registration table. |
| [`guides/`](#system-guides) | Reviewed paths through specific game systems; SACS is one of these guides. |
| [`evidence/managed/`](../evidence/managed/README.md) | Original managed ScriptCore C# and complete IL caller bodies. This is the .NET side that invokes native methods. |
| [`evidence/bindings/`](../evidence/bindings/README.md) | Original eight-byte name/address table records and the managed-to-native callpath join. This connects the .NET and EXE sides. |
| [`evidence/native/`](../evidence/native/README.md) | Address-keyed original EXE byte windows, linear disassembly, annotated Ghidra pseudocode and direct-call index. Each native address has one canonical export pair. |
| [`AUDIT.md`](../AUDIT.md) | Representative claim chains, their observations, interpretations and unresolved limits. |

The 46 `api/` prefixes are registration-name prefixes, while the EXE has 43
registration tables. A table may contain names with different prefixes. The
44 retained original ScriptCore types cover registration owners and the route-manager wrapper under
[`evidence/managed/types/`](../evidence/managed/types/).

## System guides

- [ColorInfo serialization and hair slots](../guides/appearance/color-info-serialization.md): original reader/writer IL, deduplicated footer keys and nonzero Boolean semantics.
- [Extension omitted-field defaults](../guides/navigation/extension-footprint-omitted-fields.md): exact old-version defaults with explicitly bounded native evidence.
- [Facial-blend admission](../guides/cas/facial-blend-resource-admission.md): complete named builder/consumer bodies and refreshed script adapter.

| System | Reviewed path |
| --- | --- |
| [Deck/foundation point and support queries](../guides/world/deck-foundation-point-selection.md) | Strict generic selection distinct from platform, missing-product behavior, full-cell/below-level adapters and forward lot transform. |
| [Four-word grid growth and copying](../guides/world/four-word-grid-growth-and-copying.md) | Missing-marker initialization, uniform-block expansion, copy direction, capacity and borrowed-pointer boundaries. |
| [Floor pattern and message inputs](../guides/world/floor-pattern-message-inputs.md) | Numeric16-bit pattern IDs,64-byte key interning, FNV-1, signed pending-location search and high-quarter flags. |
| [Platform point selection](../guides/world/platform-point-selection.md) | Vertex iterator tables, strict/partial quarter admission, catalogue lookup and centre coordinate encoding. |
| [Analytic roofs and Pagoda curve boundaries](../guides/rendering/analytic-roof-curve-boundaries.md) | Selected conical/octagonal mesh streams, exact curve/load retry and NaN branches, unresolved virtual height target. |
| [Loaded-world filename input field](../guides/world/loaded-world-filename-input-field.md) | Complete two-instruction raw field getter and its distinct native-wrapper/managed-marshaling limits. |
| [Sim-head isolation material parameters](../guides/rendering/sim-head-isolation-material-parameters.md) | Original flag-selected F32 thresholds, material parameters and counted modifier/LOD ownership; shader equation remains separate. |
| [Console command text and dispatch](../guides/console-command-text-and-dispatch.md) | UTF-16 token bounds, quote parity, suffix-based variant conversion, synchronized dispatch and execution lifetime. |
| [Saved Location fields](../guides/persistence/saved-location-fields-and-retention.md) | Exact reader ABI, descriptor/component versions, retained partial state and queued attachment boundaries. |
| [Resident VisualState and Sim state](../guides/persistence/resident-visual-and-sim-state.md) | Exact writer/read widths, independent geometry state, outfit reference handles and physical component ABI. |
| [Saved Model and shared design](../guides/persistence/saved-object-model-and-shared-design.md) | Physical ABI, independent replacement history, saved keys, component order and context-selected shared property references. |
| [Portal light-interest point](../guides/lighting/portal-light-interest.md) | Full affine box centre, stored-state displacement stages and prebound world-XZ room query. |
| [Audio](../guides/audio/README.md) | [Object admission, deferred rows and replay](../guides/audio/object-sound-admission-and-replay.md), [managed music/world policy](../guides/audio/managed-music-policy.md), [outside sampling and occlusion](../guides/audio/outside-sampling-and-occlusion.md), voice/emitter/listener setup, [finished callback consumption and retirement](../guides/audio/finished-callbacks.md), and selected property paths. |
| [Cube-face readback and mip publication](../guides/rendering/cube-face-readback.md) | Six mapped faces, exact source pitch/fixed destination stride, face-offset atlas and AL failure/publication boundaries. |
| [Homogeneous position stream packing](../guides/rendering/homogeneous-position-packing.md) | Requested-position ID1, signed 16-bit denominator, zero ceiling, x87 rounding and original source/bounds boundaries. |
| [Shaders](../guides/shaders/README.md) | Precompiled package layout, capability selection, material options, variant interpreter, pass assembly and GPU object creation. |
| [Managed complate preparation](../guides/shaders/managed-complate-preparation.md) | Original template/value/expression and step construction, preset cleanup/results, complete selected IL and actual annotated C#. |
| [Native complate preparation](../guides/shaders/native-complate-preparation.md) | Original native compile chain, AL status, enabled admission and DrawFabric key production. |
| [Window subtree and Grid assignment lifetime](../guides/ui/window-subtree-lifetime.md) | Live child removal/destruction, layout/managed ownership and exact ID15 invalid-window rejection distinct from explicit IDs12/13 clear. |
| [Dialog input components](../guides/ui/dialog-input-components.md) | Original component picking, press offsets, captured movement, resize/cursor branches and release ordering. |
| [Layout edge arithmetic](../guides/ui/layout-edge-arithmetic.md) | Simple/Proportional transforms, physical interface joins and strict ordered inversion clamps. |
| [Authored value arrays](../guides/ui/authored-value-arrays.md) | Count/stride/type admission, AL error joins and independent StdDrawable image slots. |
| [Slider and scrollbar input](../guides/ui/slider-scrollbar-input.md) | Original dispatch, component geometry, live value/capture ordering and calibrated repeat clock limits. |
| [Thumbnail camera and modular sections](../guides/rendering/thumbnail-camera-and-modular-sections.md) | Original camera merge/selection/fixed/fit, exact literals and ordered modular key references. |
| [Camera](../guides/camera/README.md) | Interface bridge, zoom, presets, terrain/water height and camera helpers. |
| [Sea and WaterGeometry](../guides/water/README.md) | Global Sea container versions, regeneration, shared query-grid serialization and packed vertex producers/consumers. |
| [Weather settings and publication](../guides/weather-settings-and-publication.md) | Managed array conversion, native record layout, synchronized pending state, later renderer consumption and selected projections. |
| [Seasons state](../guides/seasons-state.md) | Tree inputs, snow state, retained leaf density and selected weather CPU producers. |
| [Lot placement, snow and ponds](../guides/lot-placement-snow-pond.md) | Terrain import transforms, enabled footprints, component bounds and pond root lookup. |
| [Particle/weather/audio paths](../guides/particles-weather-audio.md) | Terrain contact, precipitation caster submission, authored ambience fades and delay lifetime. |
| [Animation](../guides/animation/controller-lifecycle.md) | Resource/controller ownership, track queues, replacement, lifetime, held poses and managed completion. |
| [Variation words and leaf metadata](../guides/vegetation/variation-words-and-leaf-metadata.md) | Deterministic UInt32 lookup, exact normalization constant, mixed-sign count division, leaf fields and shared roof caller. |
| [Tree texture requests](../guides/vegetation/tree-texture-requests.md) | Authored request order, seasonal keys, state-dependent shared-slot fallback and request completion/retirement. |
| [SPT section readers](../guides/vegetation/spt-section-readers.md) | Original byte cursor, map-bank counts/ownership, leaf mesh writes, branch controls and absence-only inheritance. |
| [Tree random and spline arithmetic](../guides/vegetation/random-and-spline-arithmetic.md) | PC seed/shuffle/range preparation, explicit SSE/x87 rounding boundaries and remaining precision limits. |
| [VRTF/MLOD resources and binding](../guides/objects/model-resource-wire-and-binding.md) | Header/count admission, element projection, reference defaults, buffer ownership, base ranges and state/material inputs. |
| [Geometry states and declarations](../guides/objects/geometry-state-and-vertex-declaration.md) | State lookup/suppression, packet word propagation, indexed ranges and native vertex-element translation. |
| [Material state and geometry authority](../guides/objects/material-state-and-geometry-authority.md) | Full material command ABI, MTST/MATD rebinding, copied geometry ranges, saved replay and ordinary RabbitHole callers. |
| [Near-tree alpha, LOD and FSAA](../guides/vegetation/near-alpha-lod-and-fsaa.md) | Four category draw owners, exact alpha units, selected shader/PASS identities and bounded AA-setting evidence. |
| [Whole-tree billboard UV, fade and alpha](../guides/vegetation/billboard-alpha-uv-and-fade.md) | Ordinary PC packet/atlas producers, sine-space pitch and distance constants, complete vertical/horizontal shader joins and RGB-only alpha-test PASS. |
| [VisualState geometry commands](../guides/objects/visual-state-geometry-commands.md) | Versioned component input, registered object-event command order, full GUID/state ABI and SceneModel consumption; original saved/live precedence remains open. |
| [Object opacity and color transitions](../guides/objects/opacity-and-color-transitions.md) | Packed targets, event payloads, Model/Sim/Tree listeners, renderer interpolation, retargeting and alpha bands. |
| [Tattoo opacity word](../guides/cas/tattoo-opacity-word.md) | UInt32 preset property output, named/container readers, ignored type/result and actual return transport. |
| [Character UV packing](../guides/cas/character-uv-packing.md) | Stream ABI, finite wrapping, first-UV atlas transform, ambient x87 rounding and CAS cursor producer. |
| [Roof hip and polygon numerics](../guides/rendering/roof-hip-and-polygon-numerics.md) | UInt32 masks, coordinate conversion, normal-frame rotation, retained atlas state and collar traversal. |
| [Wall height, roof selection and product admission](../guides/rendering/wall-preparation.md) | Selected height/roof/stair paths, cutout U coordinates, product predicates and DesignSwap reservation/upload; stair stored-body gap remains explicit. |
| [Texture composite quad, submission and blend state](../guides/rendering/txtc-operation-pipelines.md) | Complete selected quad/draw/factor bodies; physical ABI, parameter publication and explicit current Vulkan policy limits. |
| [Local light banks](../guides/rendering/local-light-bank-finalization.md) | Candidate state/selection, threshold fill, directional response, custom ABI, balancing and opposing light. |
| [Swarm collection wire](../guides/rendering/swarm-collection-wire.md) | Registered kind/version traversal, mixed-endian raw fields, reference ownership, signed sentinels and byte strings. |
| [Managed lot initialization](../guides/world/lot-managed-initialization.md) | Original lot insertion, Simulator registration, type events and dive-lot flag ownership. |
| [Finalized component parameters](../guides/objects/finalized-component-parameters.md) | Native record kinds, append order, unsigned hash sorting, exact-type lookup, borrowed payload lifetime and Animation/VisualState consumers; managed wire mapping remains open. |
| [GameUtils loading-screen callback](../guides/bridge/gameutils-load-screen-swap.md) | Original single-slot publication, service/interface null gates, indirect dispatch and clear-after-cleanup order. |
| [Filtered audio view collision](../guides/audio/filtered-view-segments-and-roof-collision.md) | Segment filtering, physical query/output ABI, full lot transforms and roof collision registration. |
| [Persistence stream transfers](../guides/bridge/persistence-stream-transfer-boundaries.md) | Eighteen original scalar/array/string leaves and seven helpers; physical counts/status/encoding and stored-body limits. |
| [Object screen query](../guides/bridge/object-screen-query.md) | Managed forwarding, retained object/Transform/camera admission, Model bounds producers, SSE sphere and packed camera comparison. |
| [Object map-tag bounds](../guides/bridge/object-map-tag-bounds.md) | Homogeneous corner order, four-lane projection, extrema seeds and wrapper output admission. |
| [Sim Transform ancestor](../guides/bridge/sim-transform-ancestor.md) | Parent-before-component traversal, AL return, component lookup and notification joins. |
| [Countertop cutout installation and Transform load](../guides/objects/countertop-cutout-installation-and-transform-load.md) | First-owner cutout state, model-origin message, original object-group/component/pending-row order and qualified physical ABI. |
| [Saved attachment writer and parent-point roles](../guides/objects/saved-attachment-writer-and-point-roles.md) | Physical Boolean output roles, saved Transform fields and distinct bone identity/model-index paths. |
| [Surface-cutout eligibility and child-point removal](../guides/objects/surface-cutout-eligibility-and-child-removal.md) | Exact key/AL output and point-list removal distinct from installation clear. |
| [Saved Parent/Unparent event restore](../guides/objects/animation-parent-unparent-saved-restore.md) | Direct saved-parent forwarding, absent-parent detach/conditional matrix restore, physical ABI and indirect-call limits. |
| [Neighborhood path shaping](../guides/routing/neighborhood-path-shaping.md) | Packed-key conversion, conditional passes, constraint mutation, runner ordering and physical call/constant boundaries. |
| [Installed water and pond boundaries](../guides/bridge/water-pond-resource-boundaries.md) | Native layer defaults, pond rebuild/ID/helper lifetime, compact coordinates and distinct registered/managed output boundaries. |
| [Generated pond footprint](../guides/world/lot-pond-generated-footprint.md) | Exact seed-relative polygon fields, physical formatter argument and retained-helper refresh. |
| [Lot spatial resource boundaries](../guides/bridge/lot-spatial-resource-boundaries.md) | Floor/entrance cache ownership, native selected-routing identifier, full portal transforms, producer/display consumer and original managed output layers. |
| [Native script object lifecycle](../guides/bridge/native-script-object-lifecycle-boundaries.md) | Original create/destroy/readiness wrappers, physical interface binding, original managed authority and explicit zero-Listing metadata limits. |
| [Load/save operations](../guides/bridge/loadsave-handle-and-profile-boundaries.md) | Native writer ownership, typed handles, file-info and profile variants, staged package save/load and SaveWorld completion; explicit stored-body limits. |
| [Persistence stream handles](../guides/bridge/persistence-stream-handle-boundaries.md) | Four complete getter/seek/copy bodies and four bounded create/close windows with one-byte metadata and zero Listing instructions. |
| [Managed service registration](../guides/bridge/managed-service-registration.md) | Original constructor slots, lazy retained services, persistence-dependent registration and LookAt delegation; bootstrap/native acceptance remain separate. |
| [Object light controls](../guides/objects/object-light-controls.md) | Versioned resource/control persistence, full-GUID command packets, RGB replacement and thresholded dimmer; complete LITE factory and renderer acceptance remain open. |
| [Object signature maps](../guides/objects/object-signature-maps.md) | Version-one writer, full-key unique insertion, first-map zero masking and original key-type lookup ABI. |
| [Object IO context table](../guides/objects/object-io-context-table.md) | UInt16 version/count admission, registered context callbacks, absent-context initialization, sized payloads and status/backpatch failure ordering. |
| [Object handling](../guides/objects/object-handling.md) | Full64-bit GUID registry, component producers, packed masks, transforms, events and Location ownership. |
| [Managed object initialization](../guides/objects/managed-gameobject-initialization.md) | Constructor defaults, lazy collections, guarded original Init hook order and lot/room/level callbacks; complete selected CIL and actual annotated C#. |
| [Saved target/proxy binding](../guides/objects/managed-loaded-proxy-binding.md) | Original table-index partition, existing target lookup, Load even for null and exact local failure/result behavior. |
| [Managed object-table preparation](../guides/objects/managed-object-table-preparation.md) | Versioned page allocation, two descending preparation passes, formatter/constructor selection, partial failure and separate post-load callbacks. |
| [Rendered object picking](../guides/objects/rendered-pick-selection.md) | Tile reduction, priority ties, hash order, readback mapping and result publication. |
| [Painting commands and materials](../guides/objects/painting-command-and-materials.md) | Script key ABI, locked commands, fixup lifetime, signed reveal channels and typed substitution. |
| [Medieval object resource layouts](../guides/objects/medieval-object-resource-layouts.md) | Separately identified original-asset VPXY v5, RSLT v5 and FTPT v7 structure; native Medieval decoder and behavior limits remain explicit. |
| [Visual proxy stream versions](../guides/objects/visual-proxy-stream-versions.md) | Original VPXY 1–4 entry/key/bounds grammar, modular suffix and exact native failure limits; Medieval v5 remains a separate reference. |
| [Slot resource projection](../guides/objects/slot-resource-projection.md) | Ordered name/flag lookup, resource ownership, borrowed matrices, completion gates and cleanup asymmetry. |
| [Wall-mounted visibility](../guides/world/wall-mounted-object-visibility.md) | Signed wall/level messages, catalog and attachment gates, visibility exceptions and VisualState consumers. |
| [Routing destinations](../guides/routing/destinations-and-scoring.md) | Point, slot and radial targets, ownership, moving-object transforms and seven score weights.  [Held-footprint catalog gates](../guides/routing/held-footprint-gates.md). |
| [Placed-footprint leaf selectors](../guides/routing/placed-footprint-selectors.md) | Distinct catalog truth tables, required polygon masks, inherited-FPU yaw conversion and strict squared-separation helpers; full pair validator remains open. |
| [Find Good Location](../guides/routing/find-good-location.md) | Native lot/world dispatch, request fields, radius/facing boundaries, managed callback and result publication. |
| [Routing planner](../guides/routing/planner-and-results.md) | Expansion/filtering, synchronous graph planning, subpaths and original result types. |
| [Local portals and stairs](../guides/routing/portals-and-stairs.md) | Slot registration, room crossings, permissions, lanes, native traversal and completion. |
| [Residential visitors](../guides/travel/visitors-and-door-greeting.md) | Arrival, doorbell, outdoor host, invitation, household greeting and room access. |
| [World travel](../guides/travel/world-travel.md) | Vacation/future states, saves, stable identity, households and inventory return. |
| [Travel databases](../guides/travel/travel-databases.md) | Temporary bin, record keys, native resource writers/readers and persistence boundaries. |
| [Tombs and puzzles](../guides/tombs/README.md) | Linked actions, switches/gates/traps, room discovery and persistence. |
| [Scuba and cave/well transitions](../guides/travel/diving-and-dive-wells.md) | Local underwater placement, posture, linked destinations and same-world relocation. |
| [Overlapping render surfaces](../guides/shaders/depth-and-overlapping-surfaces.md) | Material pass depth/alpha states, terrain layers and exact rug bias ordering. |
| [Footprints](../guides/objects/footprint-queries.md) | Named/enabled geometry, parents/Tree expansion, point/object queries, exact edges and HandTool policy. |
| [SACS](../guides/sacs/README.md) | Driver/state requests, seven-argument stack accounting, bridge-watch and callback lifetime. |
| [Native driver quiescence and collection](../guides/sacs/native-driver-quiescence-and-collection.md) | Intrusive references, rig gating, swap-last collection, queued copy and bounded scheduling. |
| [Hosted driver reset and handle invalidation](../guides/sacs/host-reset-handle-invalidation.md) | Reset/drain ordering, typed pointer unpublication and queue validity. |
| [Object-video surfaces](../guides/video/object-video-native-surfaces.md) | Initialization, fallback texture application, playback rows and incomplete ABI metadata. |
| [Recorder settings and managed cache](../guides/video/recorder-settings.md) | Eight-word meaning, native normalization, managed cached settings and separate service/output questions. |
| [World headers and lot descriptions](../guides/world/headers-lot-descriptions.md) | Modern manager descriptors, TerrainSizeInfo versions and lot-description reader/writer fields. |
| [Lot extrema and display bounds](../guides/world/lot-authored-extrema-and-display-bounds.md) | Versioned authored extrema, FloorManager cache and complete selected display-bounds bodies. |
| [World position to lot and room](../guides/world/lot-spatial-lookup.md) | ScriptCore callers, shared lot spatial index, local position and room-grid lookup. |
| [Map view and lot detail](../guides/world/map-view-and-lot-detail.md) | Separate policy flags, numeric priorities, distance scores, admission, requested state and remote work. |
| [Ceiling room-data refresh](../guides/world/ceiling-room-refresh.md) | Original restart notifications, strict elapsed threshold, request/response identity and immediate paths. |
| [Map-view and heightmap callers](../guides/world/map-view-managed-callers.md) | Actual Gameplay/UI bool arguments, active-lot selection and Edit Town/Buy/Blueprint lifetimes. |
| [Sparse terrain blend maps](../guides/world/terrain-blend-maps.md) | Version/endian and chunk admission, raw/uniform tile decoding, layer append semantics and TerrainData producer. |
| [Terrain layer texture binding](../guides/world/terrain-layer-texture-binding.md) | Native layer keys, copied material records, texture completion, signed blend-mask generation and independent DDS block transport. |
| [UI thumbnail requests and key derivation](../guides/ui/image-request-and-key-derivation.md) | Complete descriptor/key/image publication plus current world/save metadata output and typed-release join; old one-byte qualifications corrected. Concrete image pool/source reload/cache/GPU limits remain explicit. |
| [Combo-box control state](../guides/ui/combo-box-control-state.md) | Original managed tag/list authority, native value/selection/modal state, autosize and bounded unresolved child windows. |
| [Effect membership, timeline and counted lifetime](../guides/ui/effect-membership-timeline-lifetime.md) | Original managed proxy/disposal policy, adjusted counted interfaces, timeline/interpolation/fade arithmetic and bounded frontend authority. |
| [StaticRotate and retained-window transforms](../guides/ui/static-rotate-retained-transforms.md) | Published effect callback, exact axis/angle admission, Z coefficients, producer-to-matrix center/parent composition and retained draw/clip boundaries. |
| [Typed window property values](../guides/ui/window-property-values.md) | Complete selected UInt32/Single/vector-set/string-set dispatch; explicit one-byte metadata limits for bounded vector/string getters and custom marshaling. |
| [Window trigger hooks and color swatches](../guides/ui/window-trigger-hooks-and-color-swatches.md) | Complete selected native registry, notification, color-resource factory and stream-reader bodies; bounded wrapper and physical ABI limits. |
| [Heightmap lifecycle](../guides/world/heightmap-data-lifecycle.md) | Keep/force latch, sample and optimizer ownership, release, reconstruction and native callers. |
| [Cleanup jobs](../guides/world/cleanup-job-lifetime.md) | Verified job ABI, queueing, affinity, callbacks, terminal-state waits and reference ownership. |
| [Lot level and floor selection](../guides/world/lot-level-selection.md) | Integer level selectors, sampled floor/terrain heights, midpoint and below-height thresholds, and managed floor consumers. |
| [Floor geometry and visibility](../guides/world/floor-geometry-original-boundaries.md) | Complete original subset producer/consumer, oriented quarter codec, incremental thickness edges, draw and construction visibility boundaries; ABI, room/resource and current-policy limits. |
| [Pool presence and water production](../guides/world/pool-presence-and-water-production.md) | Original room-map parsing, presence state, lot events, packed water producer, sampled elevation and hash boundaries; current proxy and resource limits. |
| [Deck foundation queries](../guides/world/deck-foundation-query-boundaries.md) | Complete original catalog-product existence and local-point dispatch bodies; physical AL/bounds, child limits and original/current policy distinctions. |
| [Road source mesh and material passes](../guides/world/road-source-mesh-and-material-passes.md) | Complete quad-clipped source mesh and ordered material/pass bodies, physical ABI, UInt16 topology and qualified provider/child boundaries. |
| [Saved roof records](../guides/world/roof-saved-record-read.md) | Complete versioned roof-reader body, physical AL/stack ABI, counted failure ordering and bounded caller/constructor/key/catalog ownership. |
| [Lot Fence, Deck and compositor streams](../guides/world/lot-layer-resource-streams.md) | Complete original resource producers, headers, flattened cells, readers and bounded compositor stream ownership. |
| [Sims3Pack containers](../guides/loading/sims3pack.md) | Header/manifest framing, field/type mapping, stream ABI, bounded entry reads and ownership limits. |
| [Name/GUID maps](../guides/loading/name-guid-maps.md) | Native NGMP reader, UTF-16 hash, first-found lookup and provider publication. |
| [Resource reference tables](../guides/loading/reference-store.md) | REFS versions, handle widths, duplicate replacement, local-key sets and stream status. |
| [Resource handle and ordinal consumers](../guides/loading/resource-reference-key-maps.md) | Explicit key lookup, wall defaults, compositor identity, preset suffixes and SeaLife row state. |
| [Loading and resources](../guides/loading/README.md) | Package mounts, resource loading, DataFactory, cache and DBPF entry paths. |
| [State controller and quit request](../guides/loading/state-controller-and-quit.md) | Original pending/queue publication, virtual lifetime order, teardown and the byte writer; process termination remains unproved. |
| [LoadTick and selected pump mechanisms](../guides/loading/load-tick-and-pump.md) | Original void callback dispatch, elapsed/thread gates, service order and clock arithmetic; complete resource staging/readiness remain open. |
| [Saving and persistence](../guides/persistence/README.md) | Save/load dispatch, serialization reader and writer, handle tags and error branches. |
| [Managed object-stack save admission](../guides/persistence/managed-object-stack-save-admission.md) | Save admission plus fourteen complete restoration/failed-stack/queue-reset members: context transfer, native installation boundary, field replay and failure/lifetime distinctions. |
| [Callbacks](../guides/callbacks/README.md) | Managed registration sites and selected native-to-managed bridge paths. |
| [Authored layout document and raw element names](../guides/ui/authored-layout-document-and-raw-names.md) | Direct object/graph grammar, non-namespace parser creation, raw QName token producer and physical reader/output ABI; factory/recursive-property/continuation limits. |

Guide selections overlap, and they cover only the reviewed subsystems. Their
registration counts must not be added to obtain a total. Each guide keeps
longer or more specific original-code captures when the canonical bounded
window is insufficient; the API pages and address-keyed exports remain the
main lookup route.

The [catalog product reference](../guides/ui/catalog-product-common-wire.md#moodlet-topic-arrays-private-import-and-public-wrapper) also distinguishes private moodlet topic imports from the public ScriptCore methods: native null is normalized to a new empty UInt32 array by the original managed wrapper.

## Scope and reading rules

| Retained evidence | Count |
| --- | ---: |
| Original registration records / tables | 1,775 / 43 |
| Distinct registered native addresses | 1,731 |
| Registration records with a direct managed IL callsite | 1,760 |
| Complete retained caller IL bodies | 1,808 |
| Address-keyed raw/disassembly and annotated pseudocode pairs | 4,884 |
| Selected direct native call references | 27,220 |
| Retained original ScriptCore owner/wrapper types | 44 |

The `raw/` files contain original bytes and a linear decoding over a bounded
window. The `.c` files are Ghidra pseudocode with analyst comments, not original
source and not a guaranteed reconstruction of the full function. A window can
stop before a branch target or include padding. Indirect calls can mislead the
decompiler about stack arguments and return values. Managed callsites, native
registration and machine instructions should be read together before claiming
a behavior. The collection records static observations; no retail gameplay run
is claimed here.

For a text-only search from this directory:

```sh
rg -n 'SACS_RequestStateImpl' ../API-INDEX.tsv
rg -n '^0x007674d0\t' ../ADDRESS-INDEX.tsv
rg -n '0x007674d0' evidence/native/direct-calls.tsv
```

The [managed/native reuse table](../evidence/bindings/managed-native-reuse.tsv)
joins direct ScriptCore IL callsites with their registered native entry and
selected immediate native callees. The full registered surface exceeds the reviewed guides. An unreviewed
API page still provides the original declaration, binding record, callers and
code export so contributors can continue the investigation without Ghidra.

[Original auto-plant creation](../guides/world/auto-plant-managed-creation.md) retains
six original managed creation/factory/growth members and their CIL call edges.
The original managed workflow remains separate from native object presentation.

- [Construction references and modular stairs](../guides/persistence/construction-references-and-modular-stairs.md) — complete key/table/LDES/stair reader, writer, allocation and traversal contracts.

- [Construction-layer saving](../guides/world/construction-layer-save-contracts.md): current native manager versions and terrain state.

- [Save metadata, live state and reference maps](../guides/world/save-metadata-state-and-reference-maps.md): exact metadata layout/version sources, fresh contexts, complete LDES and wall ordinal lifetime.

- [Object catalogs and world-template metadata](../evidence/native/catalog-template-contracts.md): complete product/preset and metadata contracts.

- [Thumbnail cache path selection](../evidence/native/thumbnail-cache-path-selection.md): configured and default native paths.

[Shader pass identity and queue memos](../guides/shaders/shader-pass-and-queue-memos.md) describes native binding identity, generation selection and invocation-local queue inputs.

[Construction tool preparation and retained context](../guides/world/construction-tool-preparation-and-retained-context.md) documents selected pre-initialization material work and actual retained-tool ownership.

[Native pose cache and publication](../guides/animation/pose-cache-and-publication.md) establishes actual key/signedness/reference and publication boundaries.

[Resident skin and SearchLight controller](../guides/objects/resident-animation-skin-and-searchlight.md) documents native matrix expansion and original managed controller policy.

[Native render-state source lifetime](../guides/animation/render-state-source-lifetime.md) establishes actual state-allocation, input/source reference and cleanup ordering.

[Fireplace catalog parts](../guides/construction/fireplace-catalog-parts.md) and [catalog common wire](../guides/construction/catalog-common-wire-cfir.md) establish versioned full keys, exact Common advancement, raw text and constructor defaults.

[Native pose, bounds and dirty publication](../guides/animation/pose-bounds-and-dirty-publication.md) establishes bounded native pose-output, bounds-input and spatial-owner mechanisms.

[Native lot-detail dispatch and pending queries](../guides/world/lot-detail-dispatch-and-pending.md) establishes bounded GUID pending scans, remote-call flags and worker-affinity selection.

[Layout retention](../guides/ui/layout-retention.md) establishes complete export/layout/shared release ABIs and separate typed-registration/object references.

[Authored window properties](../guides/ui/authored-window-properties.md) establishes exact constructors, descriptors, scalar types and typed bridge ABIs.

[Native window class identities and factories](../guides/ui/authored-window-identities.md) establishes actual class getters, registration/removal, typed identity output and original managed identity consumers.

[Native drawable/image reference lifetime](../guides/ui/drawable-image-references.md) establishes independently retained acquisitions, concrete zero-only StdDrawable destruction and typed image-pointer write ordering.

[Construction catalog lists and ordering](../guides/construction/construction-catalog-lists-and-ordering.md) establishes retained family dispatch, exact filters, physical comparator/merge ABI, original name and four-word key ordering and handle export.

[Wall/floor preset masks and managed consumption](../guides/construction/surface-subsort-catalog.md) establishes live authored/installed preset selection, full UInt32 IDs, pair export and original managed wrapper/UI ownership.

[DBPF header, index and packed-resource decoding](../guides/resources/dbpf-header-index-payload.md) establishes conditional index rows, first-duplicate lookup, selected raw/decoded consumption and the built-in RefPack wrapper/command boundary.

[Catalog Common icon selection](../guides/ui/catalog-common-icon-selection.md), [managed/native thumbnail key ABI](../guides/ui/catalog-thumbnail-managed-native-key-abi.md) and [versioned product Common wire](../guides/ui/catalog-product-common-wire.md) retain full selected original producer/consumer and typed stream boundaries.

[Floor monetary contribution](../guides/world/floor-monetary-contribution.md) joins the original x87 subtotal, exact product lookup, map/resource inputs and distinct rendering-key predicate.

[RoomManager saved grid](../guides/construction/room-manager-grid-original-reader.md) documents the original header/body, enclosing LOT version, query mask and physical array ABI.

[Loading controller and readiness](../guides/loading/loading-presentation-readiness.md) follows original transition waits, callback posting and controller teardown.

[Wall queued updates and material readiness](../guides/world/wall-material-readiness.md) follows the physical producer, tail transfer, bucket polling and material AL status.

[Scene-shadow matrix inputs](../guides/world/scene-shadow-item-matrix-inputs.md) follows original item matrix production, predicates, identity fallback and queue cleanup.

[Detailed-lot monitor and readiness](../guides/world/lot-detail-scheduler-receipts.md) joins actual requested/ready/status producers, callback completion and continuation.

[Display mode requests and callbacks](../guides/ui/display-resolution-requests.md) establishes original message ownership, actual receiver ABI and managed Keep/Revert boundaries.

[Authored lot representations and display levels](../guides/rendering/lot-authored-representations-and-display-levels.md) and [owned package read-view consumers](../guides/resources/dbpf-owned-read-view-consumers.md) describe distinct acquisition, persistence, physical ABI and native/legacy boundaries.

- [SpeedTree template wire, defaults, typed initialization and consumers](../guides/resources/speedtree-template-wire.md) — full paired native closure and explicit ABI/alias limits.

- [Skeleton, blend, outfit and Sim-export data](../guides/cas/skeleton-outfit-and-export-data.md).

- [Rendering, tree objects and placement](../guides/objects/render-tree-and-placement-mechanisms.md): original selectors, object primitives, numeric variation and placement boundaries.

- [Floor-feature alpha and geometry](../guides/rendering/floor-feature-alpha-and-geometry.md): physical fade/byte/diagonal contracts, render ownership and platform/cutout boundaries.

- [Wall-flag placement and physical support](../guides/construction/wall-flag-placement-and-physical-support.md): original ordered constraints, signed endpoints, producers and diagnostic failure behavior.

- [Room construction and quality stages](../guides/rendering/room-construction-and-quality-stages.md): conditional1/2 limit, actual signed-ID constructor and direct incremental state/resource consumers.

- [Ceiling geometry and level selection](../guides/world/ceiling-geometry-and-levels.md): signed tile/room records, exact height operands, contour versus quarter geometry, model/display selection and level-bound expansion.

- [Quarter coverage and polygon predicates](../guides/world/quarter-coverage-and-polygon-predicates.md): original signed iterator, exact bounds/overlap/first-match behavior and selected cutout/placement producers.

- [Object component resource framing and factory](../guides/objects/component-resource-framing-and-factory.md): actual format/parameter/status gates, component identity, prototype load and corrected factory/query ABI.

- [Rug saved rows and ordering](../guides/objects/rug-resource-rows-and-ordering.md): original row wire, permissive saved admission, ordered/map identity, rank wrap and actual render-bias consumer.

- [Loaded-lot creation and callbacks](../guides/objects/loaded-lot-admission-and-callbacks.md): exact vtable admission, manager/Physics/tile/event order and original Location managed callback reentry.

- [Loaded-lot creation and callbacks](../guides/objects/loaded-lot-admission-and-callbacks.md): exact vtable admission, manager/Physics/tile/event order and original Location managed callback reentry.

- [Quarter flatness and centre selection](../guides/objects/quarter-flatness-and-centre-selection.md): exact callback/polarity/onehot signed outputs, tolerance and binary32 diagonal tie before x87 interpolation.

- [Snow placement cover and blockers](../guides/objects/snow-placement-cover-and-blockers.md): native extra conditions, signed shelter/eave phases, footprint membership, fullGUID and component/catalog gates.

- [Surface cutout registration and render inputs](../guides/build-buy/surface-cutout-registration-and-render-inputs.md).

- [Cutout ownership, flags and reference admission](../guides/build-buy/cutout-ownership-flags-and-reference-admission.md).

- [Placement capability and native query boundaries](../guides/build-buy/placement-capability-and-native-query-boundaries.md).

- [Object incarnation and routing component lifetime](../guides/objects/object-incarnation-and-routing-component-lifetime.md).

- [Authored Model bounds and insertion flags](../guides/objects/authored-model-bounds-and-insertion-flags.md).

- [Basement byte layer and compact queries](../guides/construction/basement-byte-layer-and-queries.md).

- [Basement tool, native undo, validation and wall product metadata](../guides/construction/basement-tool-and-wall-products.md).

- [INI formatted values and physical calling contracts](../guides/construction/ini-formatted-values-and-abi.md).

- [Slot flags and angular ranking](../guides/build-buy/slot-flags-and-angular-ranking.md).
- [Slot candidates and full validation cache](../guides/build-buy/slot-candidate-selection-and-validation-cache.md).

- [Floor-feature cells and bridge admission](../guides/world/floor-feature-cells-and-bridge.md).

- [Tool proxy products and prices](../guides/build-buy/tool-proxy-products-and-prices.md).

- [Common wall placement validation and side effects](../guides/construction/common-wall-placement-validation.md).

[Fireplace associations and World hooks](../guides/construction/fireplace-associations-and-hooks.md) distinguishes normal direct-ID save, export indices, native group identity/traversal and the shipped public zero-result hook.

[Floor-feature grids and mask persistence](../guides/world/floor-feature-grid-and-mask-persistence.md) covers physical header resize, enclosing description version, raw mask preservation and ordinary writer presence.

[Construction scalar and authored preset queries](../guides/construction/product-generic-scalar-and-preset-queries.md) records selective outputs, full preset identities, ordinal sentinels and shared terrain-brush price admission.

[Native compositor packed fields](../guides/shaders/native-compositor-packed-property-constructors.md) records complete property dispatch/constructors, signed coordinate storage and float4 ARGB packing with explicit FP-control limits.

[Object rotation drag](../guides/build-buy/object-rotation-drag.md) establishes original raw input, pressed/current state, exact yaw snapping constants and application/sound/focus consumers.

[Tool sound requests](../guides/build-buy/tool-sound-playback.md) records keyed command ABI, original event-key producers and held-episode release ordering.

[Hand-tool held state and notifications](../guides/build-buy/hand-tool-held-state-and-notifications.md) records command clearing, physical callback ABI and honest registered wrapper/handler windows.

[Existing-object pickup admission](../guides/build-buy/existing-object-pickup-admission.md) records ordered component/catalog gates, original callback ABI and qualified property/refusal paths.

[Object-reference replacement](../guides/build-buy/object-reference-replacement.md) records retained-command traversal, physical interface adjustments and host-selective cache eviction.

[Retained object-design commands](../guides/build-buy/retained-object-design-commands.md) records first/later value recording, application/exchange, map clearing and bounded dispatch data.

[Roof pitch drag](../guides/build-buy/roof-pitch-drag.md) establishes original input/selection/accepted-Y state and exact raw activation span with unresolved device-field meaning.

[Authored lot coordinates](../guides/world/lot-plane-coordinates.md) records original forward arithmetic grouping, resolved-pose transformation and moving inverse routing with exact constants.

[Build/Buy sound selection](../guides/build-buy/tool-sound-selection.md) records native cost effects, wall sample arithmetic, original key producers and catalog predicate precedence.

[Pool room/object map reader](../guides/world/pool-room-object-map-reader.md) records unsigned complete-map admission and signed room-key replacement through actual caller and writer evidence.

[World surface bounds and platform admission](../guides/world/lot-surface-bounds-and-platform-admission.md) closes world-product extension, lot edge allowance and separate original platform sampling.

[Neighborhood point and segment visibility](../guides/routing/neighborhood-spatial-visibility.md) records original masks, recursive order, physical AL ABI and separate terrain/sea/tuning producers.

[Stair and fence catalog finishes](../guides/construction/catalog-finish-compilation.md) records full-ID/ordinal acquisition, native compiler roles and qualified material-source ABI.

## Construction texture fixup

[Original saved texture fixup](../guides/rendering/construction-texture-fixup.md) covers two-key helper construction, callback order, model clone/material installation and TYPE compatibility.

## Neighborhood light-grid initialization

[Original producer, terrain modes and grid dimensions](../guides/lighting/neighborhood-light-grid-initialization.md) records complete selected initialization/return flow, original arithmetic and reader boundaries.

[Blend-unit fixed key slot](../guides/cas/blend-unit-fixed-key-slot.md) records unsigned fixed-slot selection, its key-export caller and initialization limits.

[Frame timer delta and renderer phase](../guides/rendering/visual-game-clock.md) records ordered Float32 step selection, phase reduction and original evidence limits.

## Empty-land worth and selected formatted INI read

[Original arithmetic, initialized destination and nonzero-only reader gate](../guides/lots/empty-land-worth-and-ini-read.md).

[Billboard light and wind binding](../guides/vegetation/billboard-light-and-wind-binding.md) establishes the shared side-factor producer/consumer, component-wise threshold and packed wind dispatch.

[Window-point floor picking](../guides/world/floor-pick-window-point.md) records iterative collision rejection, physical AL status and untouched failure output.

[Standing water normal routing](../guides/shaders/standing-water-normal-components.md) records actual channel masks/swizzles and the packed parameter decoder.

[Original pond selection](../guides/shaders/pond-nearest-owner-and-center.md) distinguishes registered-owner admission and transformed bounds midpoint from mesh centroid queries.

[CAS-associated parametric tone program](../guides/shaders/cas-gamma-program.md) retains complete archived instructions and distinguishes live parameters from fixed defaults.

[Selected bounds and separate transform output](../guides/rendering/selected-bounds-and-transform-copy.md) retains the exact native copy/optional-override order and unresolved producer/coordinate-space limits.

[Mirror context, shared raster defaults and stencil setters](../guides/rendering/mirror-raster-stencil.md) closes selected original orientation, ordered reflection and raw stencil-state contracts, with complete owned canonical pairs.

[Ghost LOD shader substitutions](../guides/rendering/ghost-lod-shader-substitution.md) closes the original15key map, clone/apply selection and low-byte result boundary.

[Partition resource lanes and Platform reset](../guides/world/partition-resource-lanes-and-platform-reset.md) covers countedUInt16 vectors, exact version7/11 gates, saved/bundle caller distinction and empty-manager initialization.

[Wall graph selection and crossing](../guides/world/wall-graph-selection-and-crossing.md) joins both original World APIs to the complete crossing kernel, six product graph slots, missing-catalog defaults and physical AL/integer contracts.

[Lot-edge arrival locations](../guides/routing/lot-edge-arrival-locations.md) follows the original load-context producer, component4/5 and floor0/1 distinction, cyclic midpoint admission, preferred-index compaction and100/50 weighted destination consumer.

[Roof catalog fields and defaults](../guides/roof-catalog-fields-and-defaults.md) joins complete CRST/CRPT framing, dense key selection, typed product admission and actual inline saved-style lookup, with reference-table and native default boundaries.

[Floor-pattern support](../guides/world/floor-pattern-support.md) distinguishes implicit default and saved map identities, UInt16 cell-key lookup, first-key terrain and full-quad floor predicates, signed bounds and downstream admission.
- [Authored opening cutout locators](../guides/world/authored-opening-cutout-locators.md): per-row physical-wall admission, compact keys, adjacency ordering and x87 narrowing.
- [Room-floor atlas origins and ordered groups](../guides/world/room-floor-atlas-origins.md): descriptor/base/density inputs, wrapped origins and stored-origin group selection.

[Source-room query and paired state refresh](../guides/lighting/source-room-paired-state-refresh.md) records actual query preservation, caller byte defaults, conditional state updates and the unresolved list-admission boundary.

[Floor-tile colour preparation and room reduction](../guides/lighting/floor-tile-color-and-room-reduction.md) distinguishes exact scalar/lane/conversion facts, conditional tile defaults and the complete four-lane reducer from unresolved catalog, FP-state and downstream policy.

## Medieval asset reference

The separate [Medieval object-layout guide](../guides/objects/medieval-object-resource-layouts.md)
uses selected installed PC 2.0.113.00001 base-package inputs, identified here by
SHA-256. This identifies the examined corpus; independent authentication against
separate original retail media is not claimed. No game packages are distributed.
No Medieval native decoder address or native malformed-input semantics is inferred
from these asset observations.

| Package | SHA-256 |
| --- | --- |
| SASDeltaBuild0.package | `cf4019764f787a84393c38f6e585cf0cb6a2e900ae495707766efa4c654b1fc0` |
| SASDeltaBuild1.package | `294f50a31528bd209e103078b878b7faf26b6c22859e23666fb85bda34f2faea` |
| SASDeltaBuild2.package | `3004a4a1f2a1a8b6752b475a9596a7ab4fa5a9cf8c5ffaee8db08d4edcea007c` |
| SASFullBuild0.package | `fe7aa9f6e51acacb252e1be744473be891e777b337ba87bebb676edfaa828b78` |
| SASFullBuild1.package | `f65120b38a3ee4d9f8e8ae80923cb368c0d042a59fc3540953422c20bfb6777c` |
| SASFullBuild2.package | `86aa90d72020013a7e50f701eb99cd38fb0e1c95a24e772810b8ffd6f07076cf` |

[Numeric configuration default/result](../guides/bridge/numeric-configuration-read.md) establishes the successful-default UInt32-ref rule and real CAS/string-overload callers; the existing visual clock guide now includes scale/speed/clear/query ownership.

[Library memory-bin lifetime and warning callers](../guides/persistence/library-session-lifecycle-and-warning.md) joins existing inventory/household/travel research to original Init/no-op Shutdown, real inventory storage and UI prevalidation; no host failure-warning equivalence is inferred.

[Library description key selection](../guides/persistence/library-description-key-selection.md) records native first-returned instance, type-only comparator, explicit group0 read and exact remaining source/provider boundaries.

The existing [managed complate guide](../guides/shaders/managed-complate-preparation.md) now joins original cache/clone/template acquisition and authored enabled-step admission; current Pattern preview source freshness is not original cache or pixel parity.

The existing tree/placement guide now joins registered lot clustering to original retained-source split, manager wrappers and full selected managed callers; native clone/dispatch/resource completion limits remain explicit.

The existing [lot level guide](../guides/world/lot-level-selection.md#local-height-facade-outside-source-and-picking-boundaries) qualifies exact sampler guard/outside float stores, in-lot x87 extrapolation and distinct collision-screen-pick boundaries; existing canonical native pairs are reused.

The existing Library lifecycle guide now joins actual refresh/discovery/name/provider acquisition and Win32 file-presence admission; six needed native pairs are added without DB mutation/save, with one nonowned alignment byte explicit.

The existing [catalog/lot preset guide](../guides/persistence/catalog-swatches-and-lot-presets.md#live-floorwall-point-source-and-current-preset-selection) now qualifies live source/preset point dispatch, actual physical outputs and remaining native selection/lifetime limits.

The existing floor-pattern and CWAL guides now join original point-mask/tie selection, four-key inequality, retained edit recording and actual price branches; full support/flood/default/undo/funds remain explicit original paths.

The existing [hidden flags guide](../guides/objects/hidden-flags-component-query.md#base-and-inherited-visibility-writers) now joins base/inherited synchronous events and qualified child callback, exact CLIP threshold/alternate branches and selective world-map effect detachment, preserving unresolved adapter, topology, membership and lifetime questions.

The existing [VisualState command guide](../guides/objects/visual-state-geometry-commands.md#named-live-setter-null-empty-and-computed-zero) now qualifies actual live-name admission, NUL-length/FNV1 hash return and full raw-state store; empty811C9DC5 differs from null/no-op and serialized0. Frontend owned Listing remains unavailable and its bounded original-byte CFG is qualified honestly.

Existing slot-resource, saved-attachment and pose-publication guides now join normal/bone frontend ABI, common raw point predicate, index/offset command writer, actual renderer reader/installation and full mode consumer. Concrete parent Model/Sim bone-query semantics, exact mode3 arithmetic and concurrency/lifetime remain explicit limits.

The existing shader pass/memo and material/sampler guides now join selected original Phong SpecStyle rawdefault3, stage/state conversion, one-based preset lookup/read, actual state-cache/COM call and baseline preservation. Local-definition census is bounded; no CLR cache, driver/pixel/probe or resource lifetime parity is inferred.

The existing [slider/scrollbar guide](../guides/ui/slider-scrollbar-input.md#scroll-area-setup-current-child-data-and-value-movement) now joins original ScrollWindow C/IL to Setup identity admission, processor state/refresh, extent/track layout and integer-before-float child movement. The undefined callback remains qualified original data/CFG; constructor/error/teardown/thread/resource limits remain explicit.

The existing deck-query, foundation-catalog and pool-room-map guides now join selected-quarter command/cost ownership, compatible-kind lookup, matching compressed-grid reader/writer and actual room/helper publication. Missing original validator, room/height/footprint/resource/thread contracts remain explicit; canonical pairs are reused where already present.

The existing [weather/settings guide](../guides/weather-settings-and-publication.md#sky-time-override-and-probe-callback-receiver) now joins selected probe callback/queue completion, adjusted interface writer and base-object time reader. Undefined entry CFGs remain qualified data; native world/clock/resource/thread ownership is not inferred from CLR generation transport.

The existing [Seasons spatial guide](../guides/seasons-state.md#public-rain-puddle-query-and-absent-lot-continuation) now joins the registered flag4 query, nullable lot/room admission and actual off-lot normal reader.

The existing [roof catalog guide](../guides/roof-catalog-fields-and-defaults.md#manual-validation-uses-the-resolved-scalar-style) now joins manual scalar-type/area/wall validation and automatic catalog/threshold/deferred-wall order, with the partial function and unexpanded geometry/greedy/error boundaries explicit.

The existing [animation Parent/Unparent guide](../guides/objects/animation-parent-unparent-saved-restore.md#saved-record-replacement-precedes-attach-refusal) now joins saved-record replacement before occupied refusal with the actual consuming reader and separate render-child lifetime.

The existing [sculpt response guide](../guides/world/terrain-sculpt-response.md#shared-vertex-admission-and-actual-upper-height-propagation) now includes shared vertex-rule ordering/diagnostic accumulation, physical propagation cutoff and the ground-change water wrapper; all child/runtime limits remain explicit.

The existing [wall/stair preparation guide](../guides/rendering/wall-preparation.md#stair-validator-dispatch-and-commit-only-floor-removal) now qualifies undefined CF6240/CB9B30 entries with physical caller/AL/packed-point/commit/output facts and selected original data excerpts; full validation and lifetime remain open.

The [distinct native cache ownership comparison](../guides/objects/material-state-and-geometry-authority.md#distinct-cache-keys-reuse-and-resource-references) separates retained declaration lookup61B090, lazy MATD material6CAEC0 and exact/default MTST selection; global keys, synchronization, eviction and writer/data limits remain explicit.

The [wall validation support caller](../guides/construction/common-wall-placement-validation.md#physical-support-caller-and-separate-room-notification-owner) joins D48752 product/context gates to actual AFDB70 arguments/AL handling and distinguishes B53330 queue/list flushes from room topology and completed rendering.

The existing [resident rig assignment guide](../guides/objects/resident-animation-skin-and-searchlight.md#acquisition-failure-is-separate-from-manager-cache-policy) distinguishes actual old-reference withdrawal, AL acquisition failure and optional notification from unexpanded resource-manager negative-result/reset/error policy and slot binding acknowledgement.

The existing [structural support guide](../guides/world/lot-structural-support.md#fireplace-climb-and-the-separate-low-top-placement-branch) now joins the fireplace support-climb physical arguments and AL decisions to the distinct low-top validation/placement branch and actual type2/type4 zone consumers; helper/vertex/level/placement and whole geometry/lifetime questions remain explicit.

The existing [roof numerics guide](../guides/rendering/roof-hip-and-polygon-numerics.md#dome-and-generic-overlap-are-separate-unresolved-producers) distinguishes selected hip/normal/Mansard rules from the undefined dome entry and unresolved generic overlap/eave producer; a bounded operand observation is not a complete exported function or mesh contract.

The existing [window-property guide](../guides/ui/window-property-values.md#designer-controller-fields-are-separate-from-effective-properties) now connects actual designer controller fields/getters and effective filter-button flags to original managed metadata/CIL; diagnostic observation and bounded native picking remain separate.

The existing [footprint guide](../guides/objects/footprint-queries.md#saved-component-flags-writer-and-post-read-binding) now distinguishes the live primary/secondary flag writer, versioned reader and equal-count-preserving post-read resource binding from ordinary default initialization. Undefined database entries remain qualified original data; allocator, outer context, routing and runtime limits remain explicit.

The existing [room guide](../guides/construction/room-manager-grid-original-reader.md#fractional-room-point-during-object-membership-refresh) connects manager refresh to fractional point/quarter encoding; the [object guide](../guides/objects/object-handling.md#location-room-state-and-event-order) separates Location mutation, managed event17 and native index transition, with the retail managed callback IL and remaining ownership/error/ordering limits.

The existing [loading guide](../guides/loading/README.md#gameplaydata-cache-verification-and-signature-ownership) now describes original GameplayData verification, session gating and CacheSignature wire/equality ownership. Canonical CacheManager/Init IL is reused; native database checksum/store/recovery and host persistence acceptance remain separate.

The existing [floor geometry guide](../guides/world/floor-geometry-original-boundaries.md#storage-material-and-resource-ownership-must-stay-distinct) now joins the default/wide-map/narrow-cell, typed CWAL material and subset boundaries without claiming complete shader/cache/render behavior. The original price witness is independent of which product branch has applied a correction.

The [placement query guide](../guides/build-buy/placement-capability-and-native-query-boundaries.md#join-validators-support-and-diagnostics-without-collapsing-their-ownership) now joins exact slot/wall/support/feedback owners while retaining floorability, shell/ghost, B0B210, error-state and persistent-cache boundaries.

The existing [floor colour and room reduction guide](../guides/lighting/floor-tile-color-and-room-reduction.md#coarse-fill-input-exposure-and-the-actual-consumer) now joins actual coarse fill input/count, settings-dependent exposure/fill and a concrete downstream four-lane reader; complete child/tuning/resource/runtime boundaries remain explicit.

The existing [CAS data guide](../guides/cas/skeleton-outfit-and-export-data.md#tone-version-admission-and-physical-key-branches) now records the complete original TONE2..6 reader, direct-vs-indexed keys, physical slot order and AL result, keeping factory/writer/selector/resource/runtime questions explicit.

The existing [animation controller guide](../guides/animation/controller-lifecycle.md#ordered-layer-evaluation-and-null-mask-termination) joins complete layer child traversal and null-mask termination independently of weight; producer order and lower blend/resource behavior remain separate.

The [lot worth guide](../guides/lots/empty-land-worth-and-ini-read.md#loaded-lot-totals-manager-membership-and-component-contributions) joins selected full furnished/unfurnished totals, ordered manager membership, script value transport, stair/foundation/fireplace arithmetic and explicit complex-mode/catalog/invalidation boundaries.

The [camera guide](../guides/camera/README.md#authored-fly-through-resource-and-curve-consumption) now joins original INI admission, endpoint/control creation, yaw adjustment and actual sampling/FOV/ground consumers, with physical ABI and numeric/lifetime limits.

The existing [authored opening guide](../guides/world/authored-opening-cutout-locators.md#location-transform-cutout-rows-and-held-placement) and [wall visibility guide](../guides/world/wall-mounted-object-visibility.md#upstream-room-camera-and-focus-tile-selection) now join physical Location/Transform/locator arithmetic, held-tool branch order and selected room/focus producers with explicit remaining helper/state/lifetime limits.

The existing wall preparation guide now separates current component/packet/receipt/cache owners from original C38910 coordinate math and explicit whole-topology/pixel/queue/GPU producer gaps.
