# Object footprint queries and geometry

This guide follows the original PC 1.67 TS3W reference identified in the [proof overview](../../references/retained-proof-overview.md). Names on internal helpers are analyst assignments. The evidence is static original instructions and the actual annotated Ghidra decompiler output. No retail gameplay, object-placement scenario or native geometry test was executed.

The entry contracts come from retained [ScriptCore.World](../../evidence/managed/types/ScriptCore.World.cs), [ScriptCore.Queries](../../evidence/managed/types/ScriptCore.Queries.cs), [decoded original caller IL](../../evidence/managed/callers.il.txt) and [SimIFace.World](../callbacks/managed/Sims3.SimIFace.World.cs). In particular, `ObjectFootprintContainsPoints` takes an array of **object GUIDs** and returns indices into that array. It does not accept an array of point coordinates. ScriptCore tokens `0x06000958..0x0600095E`, `0x06000523/524` and `0x06000917` locate the selected wrappers in the IL export.

## The separate query contracts

| Managed operation | Original computation | Important result boundary | Original evidence |
| --- | --- | --- | --- |
| `ObjectGetFootprintExtents` | World XZ axis-aligned bounds of all named polygon vertices; signed effective level | Missing components preserves managed zeros; valid components with no named geometry writes extreme bounds then returns false | [ASM](../../evidence/native/functions/00794E80_ScriptCore_World_World_ObjectGetFootprintExtents.asm) ([annotated pseudocode](../../evidence/native/functions/00794E80_ScriptCore_World_World_ObjectGetFootprintExtents.c)) |
| `ObjectFootprintContainsPoint` | World XZ ray crossing against named geometry; point Y selects lot level | At most 16 vertices per polygon; outside lots bypasses level comparison | [ASM](../../evidence/native/functions/007950F0_ScriptCore_World_World_ObjectFootprintContainsPoint.asm) ([annotated pseudocode](../../evidence/native/functions/007950F0_ScriptCore_World_World_ObjectFootprintContainsPoint.c)) |
| `ObjectFootprintContainsPoints` | Comparison objects' world pivots transformed into source local XZ | Indices can repeat across matching polygons; no hit leaves incoming `results` reference unchanged | [ASM](../../evidence/native/functions/00797FD0_ScriptCore_World_World_ObjectFootprintContainsPoints.asm) ([annotated pseudocode](../../evidence/native/functions/00797FD0_ScriptCore_World_World_ObjectFootprintContainsPoints.c)) |
| `GetSimsIntersectingFootprint` | Physics range candidates then local polygon point/disc overlap | Positive radius uses closed-edge distance, radius <=0 uses a separate strict-X point kernel | [ASM](../../evidence/native/functions/0074A2B0_ScriptCore_Queries_Query_GetSimsOverlappingFootprint.asm) ([annotated pseudocode](../../evidence/native/functions/0074A2B0_ScriptCore_Queries_Query_GetSimsOverlappingFootprint.c)) |
| `GetObjectsIntersectingObject` | Enabled object polygons through lot tile candidates and polygon intersection, then managed policy | Skips source object; callback can allow intersection and remove a candidate | [ASM](../../evidence/native/functions/0074A050_ScriptCore_Queries_Query_GetObjectsOverlappingObject.asm) ([annotated pseudocode](../../evidence/native/functions/0074A050_ScriptCore_Queries_Query_GetObjectsOverlappingObject.c)) |
| `TestIfObjectsIntersect` | Builds a placement request for two objects and a supplied matrix | Returns whether placement solver status equals zero; missing prerequisites returns false | [ASM](../../evidence/native/functions/00794B20_ScriptCore_World_World_TestIfObjectsIntersect.asm) ([annotated pseudocode](../../evidence/native/functions/00794B20_ScriptCore_World_World_TestIfObjectsIntersect.c)) |

These functions have different filtering, level and edge contracts. Treating all of them as one bounding-box or pivot test loses original behavior.

## Object coordinates, parents and slots

The three named geometry wrappers require footprint, transform and level/location components, resolved through the shared object access path described in the [object handling guide](object-handling.md). Component globals `0x011e9fa8`, `0x011ea158` and `0x011edf08` identify their respective access keys. A GUID occupies two stack words; the registered wrappers are caller-cleanup x86 functions, and their Boolean return is AL. SAFEARRAY and managed Type handles remain opaque host-interface pointers in the pseudocode.

`TransformComponent_GetWorldQuaternionTranslation` returns the caller's output pointer in EAX and writes two aligned float4 values: quaternion `(qx,qy,qz,qw)` followed by translation. Without a parent at component+0x30 it copies local fields +0x10/+0x20. Otherwise it composes the parent/slot transform with those fields: world rotation is parent quaternion times local quaternion, and world translation is parent rotation applied to local translation plus parent translation. The SIMD fourth translation lane is not another spatial X coordinate. [ASM](../../evidence/native/functions/00957910_TransformComponent_GetWorldQuaternionTranslation.asm) ([annotated pseudocode](../../evidence/native/functions/00957910_TransformComponent_GetWorldQuaternionTranslation.c))

The parent/slot resolver starts with the parent's world transform, or identity/zero when no parent transform component is found. Parent slots component `0x011ea114` searches for the child pointer stored at transform+4. A binding byte chooses the relative virtual +0x14/+0x1c path or the absolute matrix at virtual +0x18. Matrix rotation is converted to a quaternion before attachment composition. The precise virtual slot implementation and binding-byte names are open; the branch and composition are retained. [ASM](../../evidence/native/functions/00956F90_TransformComponent_GetParentSlotQuaternionTranslation.asm) ([annotated pseudocode](../../evidence/native/functions/00956F90_TransformComponent_GetParentSlotQuaternionTranslation.c)) Slot search returns the binding pointer and optional node byte, with no write on a missing child. [ASM](../../evidence/native/functions/00950FB0_SlotsComponent_FindChildSlotBinding.asm) ([annotated pseudocode](../../evidence/native/functions/00950FB0_SlotsComponent_FindChildSlotBinding.c))

`TransformComponent_GetWorldPosition` calls that world transform getter and copies the second float4, returning the caller output pointer in EAX. It reads a parent's and slot's current contribution, rather than directly reading local +0x20. [ASM](../../evidence/native/functions/00957A30_TransformComponent_GetWorldPosition.asm) ([annotated pseudocode](../../evidence/native/functions/00957A30_TransformComponent_GetWorldPosition.c)) The nullable convenience helper returns the transform component for a native object. [ASM](../../evidence/native/functions/0055E050_Object_GetTransformComponentOrNull.asm) ([annotated pseudocode](../../evidence/native/functions/0055E050_Object_GetTransformComponentOrNull.c))

For named local vertices `(x,z)`, the single-point and extents paths build `(x,0,z)`, rotate by the world quaternion and add world translation. The multipoint path instead computes the inverse source quaternion using RCPPS and **two** Newton refinement steps, negates the rotated source translation, and transforms each comparison object's world position into local coordinates. No zero-quaternion check is visible there.

## Polygon storage, ownership and producers

A native polygon occupies 0x40 bytes. The retained fields are:

| Offset | Established field |
| --- | --- |
| +0x00 | 32-bit footprint name hash |
| +0x04 | One byte copied by record copy; exact meaning open |
| +0x05 | Relative level byte, sign-extended by level consumers |
| +0x08 | Default flag bits |
| +0x1c | Additional dword copied to an optional collector output; exact name open |
| +0x20/+0x24 | Minimum X/Z |
| +0x28/+0x2c | Maximum X/Z |
| +0x30/+0x34/+0x38 | Float2 vertex-vector begin/end/capacity |
| +0x3c | Vertex-vector diagnostic allocation name |

Record copying deep-copies the vertex allocation. [ASM](../../evidence/native/functions/0082B7B0_FootprintPolygon_CopyConstruct.asm) ([annotated pseudocode](../../evidence/native/functions/0082B7B0_FootprintPolygon_CopyConstruct.c)) Clearing a polygon vector destroys vertex allocations and retains polygon capacity. [ASM](../../evidence/native/functions/00946280_FootprintPolygonVector_Clear.asm) ([annotated pseudocode](../../evidence/native/functions/00946280_FootprintPolygonVector_Clear.c)) Destroying the temporary vector frees each vertex allocation and the backing record allocation. [ASM](../../evidence/native/functions/007499E0_FootprintPolygonVector_Destroy.asm) ([annotated pseudocode](../../evidence/native/functions/007499E0_FootprintPolygonVector_Destroy.c))

A footprint resource has a version dword at +0x58. Unsigned version >=5 uses primary/secondary vectors at +0x38/+0x48; older versions share +0x28 for both accessors. The names primary and secondary describe these accessors without asserting recovered original array names. [ASM](../../evidence/native/functions/00932D50_FootprintResource_GetPrimaryPolygonVector.asm) ([annotated pseudocode](../../evidence/native/functions/00932D50_FootprintResource_GetPrimaryPolygonVector.c)) [ASM](../../evidence/native/functions/00932D60_FootprintResource_GetSecondaryPolygonVector.asm) ([annotated pseudocode](../../evidence/native/functions/00932D60_FootprintResource_GetSecondaryPolygonVector.c)) The constructor initializes all three vector descriptors and sets version 9. It returns its input allocation in EAX. [ASM](../../evidence/native/functions/009331D0_FootprintResource_Construct.asm) ([annotated pseudocode](../../evidence/native/functions/009331D0_FootprintResource_Construct.c))

| Component resource pointer | Source vector | Parallel mutable flags |
| --- | --- | --- |
| +0x28 | Primary | +0x58 |
| +0x2c | Supplemental primary | +0x48 |
| +0x30 | Secondary | +0x68 |
| +0x34 | Generated extended resource | Shares base flags through grouped selection |

The configured resource loader passes component keys +8/+0x18 to the resource manager with original resource type `0xc807312a`. Its AL result is optimistic for several partial-load cases. [ASM](../../evidence/native/functions/00944B70_FootprintComponent_LoadConfiguredResources.asm) ([annotated pseudocode](../../evidence/native/functions/00944B70_FootprintComponent_LoadConfiguredResources.c)) Installation retains/replaces resource references, initializes mutable flags from each source record+8, and rebuilds the extended resource. [ASM](../../evidence/native/functions/00947660_FootprintComponent_SetResourceLayers.asm) ([annotated pseudocode](../../evidence/native/functions/00947660_FootprintComponent_SetResourceLayers.c)) A dedicated supplemental setter initializes its flag array too. [ASM](../../evidence/native/functions/00946550_FootprintComponent_SetSupplementalResource.asm) ([annotated pseudocode](../../evidence/native/functions/00946550_FootprintComponent_SetSupplementalResource.c)) The combined loader releases temporary references after installation. [ASM](../../evidence/native/functions/00947840_FootprintComponent_LoadAndInstallResources.asm) ([annotated pseudocode](../../evidence/native/functions/00947840_FootprintComponent_LoadAndInstallResources.c))

Extended geometry depends on the original **Tree** component, selected by mask global `0x011ea290`. The [original component descriptor table](../../evidence/objects/component-descriptors.tsv) establishes this name. With fewer than two entries, rebuilding releases component+0x34. Otherwise it constructs a version-9 resource, clears its vectors and expands base primary/secondary records using relative matrices. Supplemental geometry stays separate. [ASM](../../evidence/native/functions/00947500_FootprintComponent_RebuildExtendedResource.asm) ([annotated pseudocode](../../evidence/native/functions/00947500_FootprintComponent_RebuildExtendedResource.c)) Entry count uses signed division of the source byte difference by 0x50, implemented with signed IMUL/SAR and sign correction. [ASM](../../evidence/native/functions/0095A610_TreeComponent_GetEntryCount.asm) ([annotated pseudocode](../../evidence/native/functions/0095A610_TreeComponent_GetEntryCount.c))

Tree relative matrices are 0x40-byte outputs produced from 0x50-byte source entries. Each source matrix is multiplied against the inverse first matrix. With the scale option enabled, the first three rows are multiplied by entry+0x48 while the translation row is unchanged. [ASM](../../evidence/native/functions/0095BF50_TreeComponent_GetRelativeMatrices.asm) ([annotated pseudocode](../../evidence/native/functions/0095BF50_TreeComponent_GetRelativeMatrices.c)) The expansion helper appends a record, transforms it in place, then appends another deep copy of that transformed record for each matrix. The original instruction sequence therefore produces **two records per matrix**; it is not safe to simplify this away. Empty matrix input makes one source copy. [ASM](../../evidence/native/functions/00946F30_FootprintPolygon_AppendRelativeTransformCopies.asm) ([annotated pseudocode](../../evidence/native/functions/00946F30_FootprintPolygon_AppendRelativeTransformCopies.c)) The first append advances vector end by 0x40 and constructs default record state. [ASM](../../evidence/native/functions/00946EB0_FootprintPolygonVector_AppendDefault.asm) ([annotated pseudocode](../../evidence/native/functions/00946EB0_FootprintPolygonVector_AppendDefault.c))

In-place matrix transformation uses `x'=x*m0+z*m8+m12` and `z'=x*m2+z*m10+m14`, then recomputes bounds from +/-FLT_MAX. Its decompiler casts of float differences to int are artifacts: SUBSS writes IEEE float bits and MOV/SAR reads their **sign bit**, with no numeric float-to-integer conversion. [ASM](../../evidence/native/functions/00932F90_FootprintPolygon_TransformXZAndRebuildBounds.asm) ([annotated pseudocode](../../evidence/native/functions/00932F90_FootprintPolygon_TransformXZAndRebuildBounds.c))

## Named geometry and enabled geometry

Named collection appends every matching hash and initializes relative-level output to byte 0x80. Each matching record overwrites that byte, so the **last matching record** determines the level used by the wrappers. It searches base primary, supplemental primary and base secondary in that order. An existing extended resource substitutes for base primary/secondary, provided the corresponding base layer exists. Collection does not consult the mutable enabled flags. [ASM](../../evidence/native/functions/009470E0_FootprintComponent_CollectNamedPolygons.asm) ([annotated pseudocode](../../evidence/native/functions/009470E0_FootprintComponent_CollectNamedPolygons.c))

The enabled-state setter searches primary first, then secondary only when no primary match exists. It changes bit **0x4** in mutable flags for every matching record in the chosen layer. It leaves resource defaults intact and does not search supplemental geometry. Changed bits notify routing through `0x008330a0` and a second invalidation call `0x00791120`. [ASM](../../evidence/native/functions/00945C20_FootprintComponent_SetNamedEnabledBit.asm) ([annotated pseudocode](../../evidence/native/functions/00945C20_FootprintComponent_SetNamedEnabledBit.c)) The query returns the first match's bit2. [ASM](../../evidence/native/functions/00944FE0_FootprintComponent_IsNamedEnabled.asm) ([annotated pseudocode](../../evidence/native/functions/00944FE0_FootprintComponent_IsNamedEnabled.c)) Reset restores defaults across all three flag arrays and notifies routing when changed. [ASM](../../evidence/native/functions/00945E20_FootprintComponent_ResetRuntimeFlags.asm) ([annotated pseudocode](../../evidence/native/functions/00945E20_FootprintComponent_ResetRuntimeFlags.c))

The registration-level enable/reset wrappers return true once the component operation is dispatched, even when a requested hash is absent or nothing changes. Missing manager, object or component returns false. [ASM](../../evidence/native/functions/0078D8C0_ScriptCore_World_World_ObjectEnableFootprint.asm) ([annotated pseudocode](../../evidence/native/functions/0078D8C0_ScriptCore_World_World_ObjectEnableFootprint.c)) [ASM](../../evidence/native/functions/0078D910_ScriptCore_World_World_ObjectIsFootprintEnabled.asm) ([annotated pseudocode](../../evidence/native/functions/0078D910_ScriptCore_World_World_ObjectIsFootprintEnabled.c)) [ASM](../../evidence/native/functions/0078D950_ScriptCore_World_World_ObjectResetFootprintState.asm) ([annotated pseudocode](../../evidence/native/functions/0078D950_ScriptCore_World_World_ObjectResetFootprintState.c)) Name-hash enumeration visits base primary, supplemental and secondary, inserts unique hashes and returns a uint SAFEARRAY. ScriptCore maps native NULL to an empty uint array; it does not enumerate extended copies independently. [ASM](../../evidence/native/functions/00798440_ScriptCore_World_World_ObjectGetFootprintNameHashes.asm) ([annotated pseudocode](../../evidence/native/functions/00798440_ScriptCore_World_World_ObjectGetFootprintNameHashes.c))

The runtime-mask iterator uses `(flags & mask)==mask` when requireAll is true and any intersecting bit otherwise. Its unsigned cursor advances through layers. Primary extended geometry maps expanded indices to base flags through two unsigned divisions. Nonzero flag count and expansion ratio are required by the visible instructions. This iterator substitutes the extended **primary** vector; its secondary branch uses the base secondary resource. [ASM](../../evidence/native/functions/00945080_FootprintComponent_NextPolygonByRuntimeFlags.asm) ([annotated pseudocode](../../evidence/native/functions/00945080_FootprintComponent_NextPolygonByRuntimeFlags.c))

Mask-and-level collection is a separate path. It requires all include bits, no exclude bits and exact relative-level byte match, deep-copying selected vertices with optional hash/extra outputs. [ASM](../../evidence/native/functions/00946BB0_FootprintPolygonVector_CollectByFlagsAndLevel.asm) ([annotated pseudocode](../../evidence/native/functions/00946BB0_FootprintPolygonVector_CollectByFlagsAndLevel.c)) Expanded collection groups polygons per base flag entry; unsigned DIV occurs before its empty loop gate. [ASM](../../evidence/native/functions/00946CC0_FootprintPolygonVector_CollectExpandedByFlagsAndLevel.asm) ([annotated pseudocode](../../evidence/native/functions/00946CC0_FootprintPolygonVector_CollectExpandedByFlagsAndLevel.c)) The component dispatch substitutes extended primary and secondary layers for this collector. [ASM](../../evidence/native/functions/00946FF0_FootprintComponent_CollectByFlagsAndLevel.asm) ([annotated pseudocode](../../evidence/native/functions/00946FF0_FootprintComponent_CollectByFlagsAndLevel.c)) The simple flag predicate checks the three base flag arrays. [ASM](../../evidence/native/functions/00944E00_FootprintComponent_HasEnabledFlags.asm) ([annotated pseudocode](../../evidence/native/functions/00944E00_FootprintComponent_HasEnabledFlags.c))

## Height, level and output details

Base level comes from location component+0x18, with `0x7fffffff` treated as zero. Extents and world containment add the collected relative-level byte and narrow the effective level to signed eight bits. The sim-range query adds a sign-extended relative byte to the full base integer, so its comparison does not share that narrowing.

For a point inside a lot, ordinary world-to-local level selection is used, as documented in [lot level selection](../world/lot-level-selection.md). Single-point queries bypass the level gate when no containing lot or no world index exists. Multi-object containment requires the global world index, but a comparison pivot outside all lots bypasses that comparison's level gate. No continuous height interval test is visible in these named point paths after level admission.

ScriptCore initializes extents to zero before calling native code. Native missing-component exits preserve those values. Once components are valid, native writes level and reduced bounds even if the polygon collection is empty. Empty geometry leaves min X/Z at FLT_MAX and max X/Z at -FLT_MAX, then returns false. A nonempty record vector determines the success flag even if a malformed record has no vertices. This is distinct from the generic polygon-bounds helper: that helper returns false and leaves output unchanged on an empty vertex vector. [ASM](../../evidence/native/functions/007CE1C0_Geometry_GetPolygonXZBounds.asm) ([annotated pseudocode](../../evidence/native/functions/007CE1C0_Geometry_GetPolygonXZBounds.c))

Multi-object containment obtains the UI8 buffer and count through host vtable+0x68. The original loop explicitly reads both dwords of GUID[index]. It gets the comparison transform and calls the world-position getter without a local null guard after lookup. An invalid comparison GUID is not established to be a safe skip. For each polygon hit, it appends the comparison index, with no break or deduplication. [ASM](../../evidence/native/functions/0062C0D0_Int32Vector_AppendValue.asm) ([annotated pseudocode](../../evidence/native/functions/0062C0D0_Int32Vector_AppendValue.c)) Only a positive result count triggers host+0x8c allocation and host+0xa4 copy into `results`. Zero hits, empty input or early failure returns false without replacing the incoming result reference.

## Exact geometry kernels and boundaries

The named-point kernel closes the polygon by starting with its last vertex. For finite inputs it stores `previousZ>=pointZ` and `currentZ>=pointZ`. When those differ, it toggles parity when

```
((currentZ-pointZ)*(previousX-currentX)
 >= (previousZ-currentZ)*(currentX-pointX)) == (currentZ>=pointZ)
```

This expression is verified against COMISS/JC, not merely accepted from the decompiler's chained comparisons. It has no epsilon. Boundary acceptance depends on these precise comparisons; a global rule that every edge is included is unsupported. The kernel reads the last vertex before testing count zero. [ASM](../../evidence/native/functions/007CD9E0_Geometry_PointInPolygonCrossing.asm) ([annotated pseudocode](../../evidence/native/functions/007CD9E0_Geometry_PointInPolygonCrossing.c))

The sim-overlap point kernel is independent: half-open Z intervals and strict `pointX < edgeIntersectionX`, four-edge unrolling plus remainder. [ASM](../../evidence/native/functions/006771D0_Geometry_PointInPolygonRayCrossingStrictX.asm) ([annotated pseudocode](../../evidence/native/functions/006771D0_Geometry_PointInPolygonRayCrossingStrictX.c)) Its vector wrapper returns on the first hit. [ASM](../../evidence/native/functions/00677540_Geometry_PointInAnyPolygon.asm) ([annotated pseudocode](../../evidence/native/functions/00677540_Geometry_PointInAnyPolygon.c)) The sim query broad phase starts local minima at FLT_MAX but local maxima at **positive FLT_MIN** (word 0x00800000), merges stored bounds only for nonempty polygons, transforms the combined center and uses the half-diagonal radius. The requested sim radius is not added to that range radius. Positive sim radius affects the subsequent narrow phase: it first checks the center, then accepts closed-edge squared distance <= radius squared, with endpoint/interior projection. [ASM](../../evidence/native/functions/0067B010_Geometry_DiscOverlapsPolygon.asm) ([annotated pseudocode](../../evidence/native/functions/0067B010_Geometry_DiscOverlapsPolygon.c)) Its list wrapper preserves the original stack radius across polygons; `extraout_ST0` in the decompiler does not mean radius changes. [ASM](../../evidence/native/functions/0067B2B0_Geometry_DiscOverlapsAnyPolygon.asm) ([annotated pseudocode](../../evidence/native/functions/0067B2B0_Geometry_DiscOverlapsAnyPolygon.c))

Segment-versus-polygon first checks endpoints and then inclusive segment parameters 0..1. Nearly parallel determinants are rejected below approximately **0.01**. [ASM](../../evidence/native/functions/007CE750_Geometry_SegmentIntersectsPolygon.asm) ([annotated pseudocode](../../evidence/native/functions/007CE750_Geometry_SegmentIntersectsPolygon.c)) Polygon-versus-polygon first requires **strict** AABB overlap, so touching AABBs reject before segment tests. The determinant threshold is `max(min(XwidthA,XwidthB)*0.001, 2^-23)`. Remaining segment parameters are inclusive; containment is tried both ways. [ASM](../../evidence/native/functions/007CEAA0_Geometry_PolygonsIntersectWithBounds.asm) ([annotated pseudocode](../../evidence/native/functions/007CEAA0_Geometry_PolygonsIntersectWithBounds.c)) A final equal-count fallback compares cyclic forward vertex sequences using squared distance strictly below approximately 0.0001; reversed winding is not tested. [ASM](../../evidence/native/functions/007CE9A0_Geometry_PolygonsEqualCyclicTolerance.asm) ([annotated pseudocode](../../evidence/native/functions/007CE9A0_Geometry_PolygonsEqualCyclicTolerance.c)) The exact original float bytes are retained in [footprint constants](../../evidence/objects/footprint-constants.tsv).

## Object intersection, tile candidates and managed policy

The object-overlap producer requires footprint component bit1, obtains base lot position/heading and iterates enabled area mask **5** (`0x1 | 0x4`). Each nonempty polygon is transformed into lot XZ and queried at signed relative level plus base integer level. It deduplicates candidates by GUID. [ASM](../../evidence/native/functions/00ACB9C0_Lot_CollectObjectsIntersectingObjectFootprints.asm) ([annotated pseudocode](../../evidence/native/functions/00ACB9C0_Lot_CollectObjectsIntersectingObjectFootprints.c)) Bit1 admission is a component byte predicate; its original semantic symbol remains unknown. [ASM](../../evidence/native/functions/00944980_FootprintComponent_IsRegisteredBit.asm) ([annotated pseudocode](../../evidence/native/functions/00944980_FootprintComponent_IsRegisteredBit.c))

The owner-to-lot matrix builder resolves the object resource and delegates to an XZ rotation/translation matrix producer. [ASM](../../evidence/native/functions/00B0A010_Footprint_BuildOwnerToLotXZMatrix.asm) ([annotated pseudocode](../../evidence/native/functions/00B0A010_Footprint_BuildOwnerToLotXZMatrix.c)) The forward matrix uses x87 FSIN/FCOS: `x'=x*cos+z*sin+tx`, `z'=-x*sin+z*cos+tz`, with an optional resource offset. The inverse option changes rotation and translation. The offset's resource policy is still open. [ASM](../../evidence/native/functions/00B09C70_Footprint_BuildXZRotationTranslationMatrix.asm) ([annotated pseudocode](../../evidence/native/functions/00B09C70_Footprint_BuildXZRotationTranslationMatrix.c)) Applying that 3x3 matrix preserves every vertex. [ASM](../../evidence/native/functions/00B0E520_Geometry_TransformPolygonXZByMatrix3.asm) ([annotated pseudocode](../../evidence/native/functions/00B0E520_Geometry_TransformPolygonXZByMatrix3.c))

The lot polygon collector bounds the requested signed level, derives and clamps tile ranges, collects tile candidates with mask5, deduplicates GUIDs and runs polygon intersection. An option can admit an object containing the original **Sim** component selected by mask global `0x011ea0fc` before geometry. Grid rounding uses original x87/sign-bit adjustments; decompiler ROUND expressions are not a replacement contract. [ASM](../../evidence/native/functions/00AC7FF0_Lot_CollectObjectsIntersectingPolygon.asm) ([annotated pseudocode](../../evidence/native/functions/00AC7FF0_Lot_CollectObjectsIntersectingPolygon.c)) The final per-object test requires matching effective level and nonempty vertices, transforms the polygon, computes bounds and calls the strict-AABB polygon kernel. [ASM](../../evidence/native/functions/00B0E870_LotQuery_TestFootprintPolygonIntersection.asm) ([annotated pseudocode](../../evidence/native/functions/00B0E870_LotQuery_TestFootprintPolygonIntersection.c))

The outer `Query_GetObjectsOverlappingObject` skips null entries and self. If **both** objects have the original **Script** component selected by mask `0x011ea0f8`, it calls `ObjectIntersection_InvokeHandToolAllowCallback`; true removes that candidate. This function marshals two GUIDs and Matrix44 and dispatches event **0x18**, `HandToolAllowIntersection`, with three arguments. It returns the managed policy result, not another geometric predicate. [ASM](../../evidence/native/functions/0078F780_ObjectIntersection_InvokeHandToolAllowCallback.asm) ([annotated pseudocode](../../evidence/native/functions/0078F780_ObjectIntersection_InvokeHandToolAllowCallback.c)) The retained SimIFace callback returns false when no delegate is installed. A valid query with no survivors materializes a typed empty array through host+0xc0; missing prerequisites returns native NULL.

`TestIfObjectsIntersect` additionally retains both native objects and balances those references. It composes the supplied Matrix44 with the lot transform, extracts placement position/heading, selects a level, builds a request containing the second object and calls `0x00b45410`. The exposed result is exactly `status==0`. The complete placement solver, its status taxonomy and all allow-intersection policies are not resolved by this guide.

## Established limits

The following remain open: the complete on-disk footprint resource reader, exact original primary/secondary array names, Tree source-entry/resource creation, unknown record fields, managed gameplay callers outside the retained ScriptCore/SimIFace set, resource-specific heading offset policy, precise component names behind unresolved global masks, slot virtual-method implementations, every tile-collection option and the complete placement solver. Malformed polygons, zero divisors in expanded geometry, invalid comparison GUIDs, zero quaternions and NaNs have no demonstrated gameplay handling here. Static resource/reference ownership, branches and ABI corrections do not establish live routing invalidation or placement acceptance.

The separate [Find Good Location contract](../routing/find-good-location.md) establishes lot/world dispatch and selected native placement request/result boundaries; its complete solver policies remain open.

The [complete quarter coverage closure](../world/quarter-coverage-and-polygon-predicates.md) adds the signed-byte iterator and direct placement/cutout callers. Cyclic matching commits to the first near starting vertex: a later mismatch returns false without trying another start. The native segment solver uses one rounded reciprocal and two multiplies, not two direct divisions.


## Saved component flags, writer and post-read binding

The [selected original data/instruction excerpts](../../evidence/objects/footprint-component-persistence.tsv)
identify the native receiver and the distinct persistence operations. Constructor
945A70 installs vtable10448EC. DATA references10448F4/F8 identify reader9465E0
and writer9449B0. The writer is established by its actual stream calls, receiver
loads and return; the adjacent944950 instead collects two configured resource
keys. It is not the flag-array writer. Constructor wrapper946150 is likewise
not a destructor: nonnull allocation is forwarded to945A70. Initial bytes40/41
are1 and float44 has bits3DFBE76D fromFED760; their complete semantic names are
not recovered here.

Writer9449B0 preserves componentECX inEDI. Two physical stack words supply the
stream wrapper and context. It requests version3 through932950, writes byte40,
registers key+8 through7D7460 and writes its UInt16 handle, then writes the current
primary UInt32 count `(end5C-begin58)>>2` and words at begin58. It independently
registers key18 and writes secondary count/words from68/6C. Finally it writes
byte41 and Single44 through FLD/FSTP and4DE390. Each primitive's result reaches
7D79F0; finalAL is stream status byte14, RET8. These live vectors are distinct
from each shared resource polygon's default field8. The writer neither reloads
resource defaults nor collapses the secondary vector into the primary one.

Reader9465E0 rejects unsigned component version>3 withAL0/RET8. Version>=1 reads
byte40; context version>=14 uses a UInt16 resource handle and7D7190, while older
context uses the inline-key reader7D7760. It reads the primary count and UInt32
words into vector58/5C. Version>=2 additionally reads key18 and vector68/6C;
version>=3 reads byte41 and word44. The last word is storage for the float field;
the writer uses x87 conversion, so raw NaN payload/FP-state equivalence is not
claimed. Count admission, allocation/failure/partial stream effects and complete
outer context/key lifetime remain separate from the verified field order.

Post-read callback947A80 resolves the actual component using mask11E9FA8, passes
its argument to9478E0 and otherwise returnsAL1. The latter is **resource binding
and saved-count reconciliation, not a serializer**. It calls configured-resource
loader944B70, installs the acquired primary/secondary pointers28/30 and clears
its temporary slots. With primary present,932D50 supplies the resource records.
If the saved flag count equals the resource count,94794B skips the reset. If it
differs, C221F0 resizes and947960 copies every record8 default into vector58.
Absent primary clears that vector. The secondary branch uses932D60; equal count
also preserves saved flags, whereas mismatch only calls C221F0 here. It has no
copy-default loop matching the primary branch. Absent secondary clears its end.
947500 then rebuilds the extended Tree resource. Remaining local references are
released before localAL1/RET4. That local success is not proof that every resource
loaded or routing has accepted the resulting geometry.

C221F0 compares unsigned requested count with `(end-begin)>>2`; growth passes a
zero fill-word pointer, old end and missing count to6E4940. Its non-growth branch
adjusts the end after a zero-byte memmove. The insertion helper's allocation,
capacity, exception and exact retained-prefix/fill effects remain unexpanded.
Do not infer that secondary mismatch copies resource defaults merely because the
ordinary resource installer does so.

The ordinary installer947660 copies resource defaults into its live vectors and
rebuilds extension; the saved post-read operation must remain distinct.
[Installer ASM](../../evidence/native/functions/00947660_FootprintComponent_SetResourceLayers.asm)
([annotated pseudocode](../../evidence/native/functions/00947660_FootprintComponent_SetResourceLayers.c)).
The configured loader's optimistic partial-loadAL and key/manager behavior remain
as previously qualified.
[Configured loader ASM](../../evidence/native/functions/00944B70_FootprintComponent_LoadConfiguredResources.asm)
([annotated pseudocode](../../evidence/native/functions/00944B70_FootprintComponent_LoadConfiguredResources.c)).
The common object writer934640 dispatches each actual component's virtual+0C;
[component dispatch ASM](../../evidence/native/functions/00934640_ObjectComponents_WriteSelectedState.asm)
([annotated pseudocode](../../evidence/native/functions/00934640_ObjectComponents_WriteSelectedState.c)).

Database qualification:9465E0/9449B0/945A70/9478E0/C221F0 were undefined when
inspected through explicit GhidrAssist `/TS3W.exe`. Bounded memory windows and
independent pristine-PE decoding cover the stated instruction paths through
their observed RETs, excluding following padding/neighbors. This is not a claim
of owned function bodies, complete exception/indirect CFGs or annotated C exports;
no functions, prototypes, analysis, exports or database saves were created.
Selected256fresh GhidrAssist bytes were independently compared with the PE.
Existing canonical resource/query/flag-setter/Tree exports remain the lookup route.

Open boundaries include malformed counts and integer overflow, native key-store
reference ownership, all outer load/save callbacks and manager ordering,
supplemental resource persistence, matching-count resource replacement with
changed meanings, secondary mismatch insertion semantics, actual routing
publication/notification and lifetime/coherent capture across live mutation.
No retail execution or live save/reload behavior is established by this static
comparison.
