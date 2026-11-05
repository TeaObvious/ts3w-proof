# Original CAW native binding contracts

Reference: shipped CAW 1.22.10.024037, the original module identities in the
[module identities](../README.md#original-module-identities). These are static original-code
contracts; analyst names and annotations are retained in actual Ghidra pseudocode.
Use the [internal-helper index](../INTERNAL-INDEX.tsv) with the exported
[API index](../API-INDEX.tsv). This guide does not describe implementation status.

## Absolute surface heights and bounded normals

The [above-water height export](../evidence/native/Sims3Common/functions/10997C40_WorldWrap_GetTerrainHeightAboveWater.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10997C40_WorldWrap_GetTerrainHeightAboveWater.c)) passes zero optional flags and
output pointers to the [surface query](../evidence/native/Sims3Common/functions/1023EC20_CAW_WorldQuerySurfaceAboveSea.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1023EC20_CAW_WorldQuerySurfaceAboveSea.c)). It returns an absolute
eligible elevation, raised to Sea level when water is higher; it does not return
height minus water level. Covering lot/other-surface paths remain in the worker.
The original managed PlaceNewLotTool uses this value directly as corner Y.

The [ordinary height export](../evidence/native/Sims3Common/functions/10997C10_WorldWrap_GetTerrainHeight.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10997C10_WorldWrap_GetTerrainHeight.c)) calls the
[bounded world-height query](../evidence/native/Sims3Common/functions/1023E930_CAW_WorldQueryTerrainHeight.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1023E930_CAW_WorldQueryTerrainHeight.c)). World lower bounds are inclusive,
upper bounds exclusive; an outside request retains height sentinel -100. The original ordered COMISS gates also retain this default for NaN or either infinity; they do not throw a coordinate exception.
The [normal export](../evidence/native/Sims3Common/functions/10999CB0_WorldWrap_GetTerrainNormal.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10999CB0_WorldWrap_GetTerrainNormal.c)) calls the
[bounded world-normal query](../evidence/native/Sims3Common/functions/1023F270_CAW_WorldQueryTerrainNormal.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1023F270_CAW_WorldQueryTerrainNormal.c)), which starts with upward normal
(0,1,0) and replaces it only for in-world eligible surfaces.

The bounds use world fields: minimum X/Z at +B4/+B8, maximum X at +BC,
and maximum Z at (+C0 +C4). The [world-size reader](../evidence/native/Sims3Common/functions/1023A450_CAW_WorldReadSizeInfoResource.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1023A450_CAW_WorldReadSizeInfoResource.c)) loads
origin binary32 and world tile counts uint32 from type 90624C1B. Its
[resource reader](../evidence/native/Sims3Common/functions/105CC2D0_CAW_ResourceReaderOpenFirstOfType.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/105CC2D0_CAW_ResourceReaderOpenFirstOfType.c)) uses the
[first matching key](../evidence/native/Sims3Common/functions/105CC150_CAW_DatabaseOpenFirstResourceOfType.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/105CC150_CAW_DatabaseOpenFirstResourceOfType.c)) returned by the database's type filter;
no fixed instance/group is supplied. For versions 2..12 one uint32 follows the
version before the origins; the next fields are X/Z tile counts.
The [terrain initialization](../evidence/native/Sims3Common/functions/102364D0_CAW_WorldInitializeTerrainAndBounds.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/102364D0_CAW_WorldInitializeTerrainAndBounds.c)) multiplies each world tile count
by terrain tile size with 32-bit wrap, widens the product as unsigned for origin
addition and stores binary32 upper bounds. Heightmap sample dimensions alone do
not establish this world extent. The
[terrain header/chunk reader](../evidence/native/Sims3Common/functions/101FEB80_CAW_TerrainReadHeaderAndChunkIndex.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FEB80_CAW_TerrainReadHeaderAndChunkIndex.c)) selects type 9063660D and reads
version followed by five uint32 fields: terrain +10, tile counts +3C/+40,
tile size +38 and height extent +34. Its chunk counts +CC/+D0 are
`(terrainTiles + 255) >> 8`, separately from world tile counts.

The [world constructor](../evidence/native/Sims3Common/functions/1023B8C0_CAW_WorldManagerConstructBoundsExtension.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1023B8C0_CAW_WorldManagerConstructBoundsExtension.c)) initializes +C4 to zero or binary32 2048.
The latter applies when the [cached product-bit query](../evidence/native/Sims3Common/functions/1025EAD0_CAW_QueryCachedProductWorldExtensionFlag.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025EAD0_CAW_QueryCachedProductWorldExtensionFlag.c))
finds installed-product flag 40000 through the
[GameConfig mask test](../evidence/native/Sims3Common/functions/1038E6E0_CAW_GameConfigHasInstalledProductBits.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1038E6E0_CAW_GameConfigHasInstalledProductBits.c)). This conditional extension is separate
from resource dimensions; base terrain collision and eligible covering surfaces
still have their own selection and failure behavior. No assumption that every
CAW host has a zero extension follows from these functions.

For ordinary terrain, [collision height](../evidence/native/Sims3Common/functions/101FA9B0_CAW_TerrainCollisionHeight.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FA9B0_CAW_TerrainCollisionHeight.c)) and
[collision normal](../evidence/native/Sims3Common/functions/101FAB10_CAW_TerrainCollisionNormal.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FAB10_CAW_TerrainCollisionNormal.c)) select a terrain chunk and use its vertical-ray
collision result. This is a collision-surface height/normal contract. The original [editable collision producer and KD consumer](editable-terrain-collision.md)
establish adaptive topology, packed coordinates, traversal and tie order.
Raw height-field and authored collision modes have separate producers.
These collision queries select `floor(coordinate) >> 8` and compare unsigned
chunk indices with terrain +CC/+D0 before querying a chunk. A resource-derived
world upper bound, including its product-dependent Z extension, therefore does
not prove that terrain collision exists throughout that rectangle. Partial or
missing chunks, mismatched headers, nonunit tile sizes and covering lots need
their own producer evidence.

## Sculpt storage is quantized during the edit

The [component dispatcher](../evidence/native/Sims3Common/functions/1006A380_CAW_SculptDispatchComponents.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1006A380_CAW_SculptDispatchComponents.c)) iterates authored components in order,
chooses each action and routes profiled raster work through the
[profile worker](../evidence/native/Sims3Common/functions/10068E90_CAW_SculptApplyProfileRaster.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10068E90_CAW_SculptApplyProfileRaster.c)). The
[RaiseLower action](../evidence/native/Sims3Common/functions/10069510_CAW_SculptRaiseLowerSample.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10069510_CAW_SculptRaiseLowerSample.c)) and [Level action](../evidence/native/Sims3Common/functions/100698E0_CAW_SculptLevelSample.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/100698E0_CAW_SculptLevelSample.c)) read from the
[stored sample getter](../evidence/native/Sims3Common/functions/10068730_CAW_HeightRasterReadSample.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10068730_CAW_HeightRasterReadSample.c)) and write through the
[quantized setter](../evidence/native/Sims3Common/functions/10068C40_CAW_HeightRasterStoreQuantized.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10068C40_CAW_HeightRasterStoreQuantized.c)).

The setter rejects negative candidate heights. It divides an accepted height
by the owned quantum, saturates values above raw 65535, truncates with CVTTSS2SI,
and stores uint16 immediately. Every accepted in-bounds store updates dirty bounds
and sets the raster dirty flag, even if the quantized sample equals its prior value.
The getter returns that uint16 times the quantum.
The [cell-bound expansion](../evidence/native/Sims3Common/functions/10068BD0_CAW_DirtyRectIncludeRasterCell.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10068BD0_CAW_DirtyRectIncludeRasterCell.c)) publishes a half-open integer
rectangle, with exclusive maxima at cell X/Z plus one. The
[raster rectangle getter](../evidence/native/Sims3Common/functions/100688A0_CAW_HeightRasterGetDirtyRect.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/100688A0_CAW_HeightRasterGetDirtyRect.c)) and
[terrain rectangle copy](../evidence/native/Sims3Common/functions/101FA460_CAW_TerrainGetHeightRasterDirtyRect.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FA460_CAW_TerrainGetHeightRasterDirtyRect.c)) expose it to the
[terrain update consumer](../evidence/native/Sims3Common/functions/1025A0B0_CAW_WorldTerrainUpdateVisibleAndDirtyTiles.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1025A0B0_CAW_WorldTerrainUpdateVisibleAndDirtyTiles.c)). An eligible nonempty rectangle is
unioned into pending terrain bounds before acknowledgement through the
[terrain clear wrapper](../evidence/native/Sims3Common/functions/101FA030_CAW_TerrainClearHeightRasterDirtyRect.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/101FA030_CAW_TerrainClearHeightRasterDirtyRect.c)) and
[raster rectangle/flag reset](../evidence/native/Sims3Common/functions/10068CC0_CAW_HeightRasterClearDirtyRect.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10068CC0_CAW_HeightRasterClearDirtyRect.c)). Other world states can defer
consumption; raster invalidation is distinct from persistent content equality.

Consequently the next component/stamp observes the quantized sample. A later
save-time conversion alone cannot establish the same arithmetic state.

## Resource-name syntax and filename fallback

[CreateKeyFromName export](../evidence/native/Sims3Common/functions/1098A040_ResourceMgr_CreateKeyFromName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098A040_ResourceMgr_CreateKeyFromName.c)) delegates to the
[name parser](../evidence/native/Sims3Common/functions/108E4830_CAW_ResourceKeyParseName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E4830_CAW_ResourceKeyParseName.c)). It splits the first period and optional
`group!instance` prefix. The [numeric recognizer](../evidence/native/Sims3Common/functions/108E4780_CAW_ResourceNameRecognizeHex.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E4780_CAW_ResourceNameRecognizeHex.c)) distinguishes
encoded hexadecimal IDs from ordinary names; it includes the original optional
underscore suffix/0x and eight/sixteen-digit rules. Plain instance stems use the
[FNV1-64 hash](../evidence/native/Sims3Common/functions/105C3840_CAW_ResourceNameHash64.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/105C3840_CAW_ResourceNameHash64.c)); ordinary groups use the
[24-bit group hash](../evidence/native/Sims3Common/functions/108E4760_CAW_ResourceGroupHash24.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E4760_CAW_ResourceGroupHash24.c)).

An explicit type zero starts as FFFFFFFF. An extension may provide a numeric
type, a registered mapping, or the [32-bit extension hash](../evidence/native/Sims3Common/functions/108E4710_CAW_ResourceNameHash32.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E4710_CAW_ResourceNameHash32.c))
fallback. For a nonnumeric extension, a supplied database's extension table is
queried first; a miss proceeds to the global manager, then the hash fallback.
The exported CreateKeyFromName passes no database and no explicit manager.
The [global reverse type-name lookup](../evidence/native/Sims3Common/functions/108E61F0_CAW_ResourceManagerFindTypeByName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E61F0_CAW_ResourceManagerFindTypeByName.c)) scans the owned TNMap with
`_wcsicmp` and returns FFFFFFFF on a miss. The
[manager constructor](../evidence/native/Sims3Common/functions/108E8990_CAW_ResourceManagerConstructEmptyRegistries.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E8990_CAW_ResourceManagerConstructEmptyRegistries.c)) initializes this map empty; the
[resource-system initialization](../evidence/native/Sims3Common/functions/1052B070_CAW_InitializeConfiguredResourceSystem.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1052B070_CAW_InitializeConfiguredResourceSystem.c)) installs the global manager.
Database-local extension registrations are a separate registry.

The [type-name registration method](../evidence/native/Sims3Common/functions/108E7A90_CAW_ResourceManagerRegisterTypeName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E7A90_CAW_ResourceManagerRegisterTypeName.c)) inserts an absent type/name
association. For an existing type it uses
[UTF-16 equality](../evidence/native/Sims3Common/functions/1087D770_CAW_Utf16OwnedStringEquals.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1087D770_CAW_Utf16OwnedStringEquals.c)) to accept only the identical registered name;
a conflicting name returns false without replacement. The constructor does not
establish a fixed built-in alias table, and these functions do not establish all
later runtime registrations. Case folding preserves the original runtime/locale
assumptions.

[GetFilenameForKey export](../evidence/native/Sims3Common/functions/1098A7C0_ResourceMgr_GetFilenameForKey.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098A7C0_ResourceMgr_GetFilenameForKey.c)) calls the
[filename lookup/formatter](../evidence/native/Sims3Common/functions/105CC690_CAW_ResourceFilenameLookupOrInstance.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/105CC690_CAW_ResourceFilenameLookupOrInstance.c)). Its
[associated-name lookup](../evidence/native/Sims3Common/functions/105CBF00_CAW_ResourceAssociatedFilenameLookup.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/105CBF00_CAW_ResourceAssociatedFilenameLookup.c)) queries registry entries by instance.
If no filename is found, the formatter emits `%08x'%08x`: high instance word,
apostrophe, low instance word, lowercase hexadecimal. Type/group do not enter
that fallback. [Filename ownership and manager registries](resource-filename-ownership.md)
establish map admission, key precedence, first duplicate retention, raw encoding
and lifetime; exported directory names and associated NMAP names are separate APIs.

## Road command result and candidate priority

[TranslateKnots export](../evidence/native/Sims3Common/functions/1098C470_RoadSplineWrap_TranslateKnots.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098C470_RoadSplineWrap_TranslateKnots.c)) normalizes the AL result from the
[knot-delta worker](../evidence/native/Sims3Common/functions/1013D2E0_CAW_RoadSplineTranslateKnotsAndValidate.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1013D2E0_CAW_RoadSplineTranslateKnotsAndValidate.c)). The unlocked worker mutates knots and refreshes
geometry before testing endpoint curvature and virtual validity. The
[endpoint-curvature helper](../evidence/native/Sims3Common/functions/1013B4D0_CAW_RoadSplineEndpointCurvature.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1013B4D0_CAW_RoadSplineEndpointCurvature.c)) returns -1 for a handle shorter than
1e-5, so the worker returns false for a collapsed endpoint. The
[runtime curvature initializer](../evidence/native/Sims3Common/functions/10A96C10_CAW_InitializeSplineCurvatureLimit.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10A96C10_CAW_InitializeSplineCurvatureLimit.c)) divides binary32 1.0 by 6.0 and
stores the limit at 0x10C6F7C8. The endpoint-curvature helper uses binary32 two-thirds. The original
readonly operands are:

| Native VA | Original little-endian bytes | Binary32 value |
| --- | --- | --- |
| `0x10ACB0D4` | `00 00 80 3F` | 1.0 |
| `0x10C0F38C` | `00 00 C0 40` | 6.0 |
| `0x10ABEF98` | `AB AA 2A 3F` | nearest binary32 to two-thirds |

The worker rejects either negative or excessive endpoint curvature and an overlap
reported by virtual slot +5C. The [self-overlap method](../evidence/native/Sims3Common/functions/1013E5D0_CAW_RoadSplineHasSelfOverlap.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1013E5D0_CAW_RoadSplineHasSelfOverlap.c)) compares
cached tessellated quads after shrinking each by -0.05. The original
[adaptive polyline and width-quad producers](roads/native-spline-geometry.md)
establish subdivision, normalization, widths, corner order and clipping.
The [absolute knot setter](../evidence/native/Sims3Common/functions/1013C7A0_CAW_RoadSplineSetKnotsWhenUnlocked.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1013C7A0_CAW_RoadSplineSetKnotsWhenUnlocked.c)) respects lock byte +24, and nudges
coincident planar endpoints/handles using binary32 0.01 before refreshing geometry.
The retained [CmdTranslateSplineKnots](roads/managed/CmdTranslateSplineKnots.cs)
restores its saved knot arrays when this result is false.

[snap export](../evidence/native/Sims3Common/functions/109974D0_WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/109974D0_WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort.c)) delegates to
[object-kind dispatch](../evidence/native/Sims3Common/functions/10142080_CAW_RoadNetworkFindSnapTarget.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10142080_CAW_RoadNetworkFindSnapTarget.c)). Both moving splines and moving intersections
search matching intersections first and splines second. The helpers differ in
self-exclusion: [moving-spline search](../evidence/native/Sims3Common/functions/10141F00_CAW_RoadSnapExcludeSelfInSecondArray.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10141F00_CAW_RoadSnapExcludeSelfInSecondArray.c)) excludes the moving
identity in the second array; [moving-intersection search](../evidence/native/Sims3Common/functions/10141FC0_CAW_RoadSnapExcludeSelfInFirstArray.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10141FC0_CAW_RoadSnapExcludeSelfInFirstArray.c))
excludes it in the first array. For the latter call the dispatcher pushes spline
array +30 before intersection array +78, so cdecl argument order supplies the
intersection array first. Candidate empty-port queries receive a
squared-distance threshold of binary32 one. The existing spline constructor
inserts into network arrays +30/+54; the
[intersection constructor](../evidence/native/Sims3Common/functions/10146AE0_CAW_RoadNetworkCreateIntersectionAndInsert.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10146AE0_CAW_RoadNetworkCreateIntersectionAndInsert.c)) inserts into +78/+9C. These arrays
establish the candidate kinds and priority. The managed EditRoadTool accepts a
RoadSpline result when snapping an intersection.

## Original camera API clip depth

[Camera Finalize](../evidence/native/Sims3Common/functions/1098EC70_CameraWrap_Finalize.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098EC70_CameraWrap_Finalize.c)) reaches the
[finalization worker](../evidence/native/Sims3Common/functions/10753C10_CAW_CameraFinalizeProjectionAndView.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10753C10_CAW_CameraFinalizeProjectionAndView.c)) and
[projection builder](../evidence/native/Sims3Common/functions/107538A0_CAW_CameraBuildNativeProjection.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/107538A0_CAW_CameraBuildNativeProjection.c)). With near n and far f, perspective depth
uses M33=f/(n-f), M34=-1, M43=n*f/(n-f); orthographic uses M33=-1/(f-n),
M43=-n/(f-n). Both map the near plane to depth0 and far plane to depth1.
[view-to-clip getter](../evidence/native/Sims3Common/functions/1098F480_CameraWrap_GetViewToClipSpaceMatrix.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098F480_CameraWrap_GetViewToClipSpaceMatrix.c)) copies the retained matrix at camera+70
through [pure sixteen-word matrix copy](../evidence/native/Sims3Common/functions/10980020_CAW_CopyMatrix16Words.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10980020_CAW_CopyMatrix16Words.c)); the copy neither
transposes nor remaps depth. Rendering API conversions are a separate boundary.

## DXT1 eligibility is a packed-pixel rule

[texture-engine factory](../evidence/native/Sims3PipelineHelper/functions/100044E0_CreateTextureEngine.asm) ([annotated pseudocode](../evidence/native/Sims3PipelineHelper/functions/100044E0_CreateTextureEngine.c)) reaches
[constructor](../evidence/native/Sims3PipelineHelper/functions/10004120_CAW_TextureEngineConstruct.asm) ([annotated pseudocode](../evidence/native/Sims3PipelineHelper/functions/10004120_CAW_TextureEngineConstruct.c)) installing vtable103A4C18. Slot+3C is the
[CanCompressWithDXT1 method](../evidence/native/Sims3PipelineHelper/functions/10003D60_CAW_TextureCanCompressWithDXT1.asm) ([annotated pseudocode](../evidence/native/Sims3PipelineHelper/functions/10003D60_CAW_TextureCanCompressWithDXT1.c)), using stdcall engine/buffer stack
arguments and RET8. It first requires format3D(A8R8G8B8), then reads base
mip/face/slice with the actual row stride. A packed pixel is accepted only when
it equals zero or is unsigned >=FF000000. Transparent nonblack RGB pixels and
other source formats fail. Decompiler `unaff_EBX` is an unresolved register
rendering artifact; the original row instructions govern traversal.
