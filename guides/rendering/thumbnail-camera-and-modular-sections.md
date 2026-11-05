# Thumbnail camera framing and modular catalog section references

Static original PC1.67 analysis via GhidrAssist, explicit `/TS3W.exe`. Selected
full functions were annotated, exported as canonical original ASM/actual Ghidra C,
byte-checked against pristine input and database saved clean. Decompiler stack
aliasing, float/pointer propagation and bit-select clamp expressions must be
read against original SSE/x87 instructions. No runtime or visual equivalence
is established by this evidence.

Camera settings and modular key-vector formats are independent; their shared
contract here is exact native input decoding before use. The original caller
and consumer pair are retained for each domain.

## ThumbnailCameras_LoadInstalledSources

[ASM 00D57AC0](../../evidence/native/functions/00D57AC0_ThumbnailCameras_LoadInstalledSources.asm) ([annotated Ghidra C](../../evidence/native/functions/00D57AC0_ThumbnailCameras_LoadInstalledSources.c)).

ECX manager. Critical-section protected table replacement: base ThumbnailCameras.ini, EP1 product2, EP2 product4, installed products5..21 own ThumbnailCameras.ini. Callback00D53830 builds sections. Missing resources skipped. Product grouping007D7840 is distinct from section hashing; current dictionary cache is a project lifetime choice.

## ThumbnailCameras_ReadIniSection

[ASM 00D53830](../../evidence/native/functions/00D53830_ThumbnailCameras_ReadIniSection.asm) ([annotated Ghidra C](../../evidence/native/functions/00D53830_ThumbnailCameras_ReadIniSection.c)).

Section callback reads Position/View/Up as three floats; FOV/ScaleModifier as one, clip ranges as pairs. Retain constructor defaults on unsuccessful conversions; zero ScaleModifier ignored. Type supports perspective/orthographic; PositionFromScale true/false; HashType model selects extra hash transform, otherwise direct section hash. PreviewBound accepts two three-tuples or one six-tuple. Decompiled overlapping stack temporaries/pointer-floats are artifacts: original float writes and string query ABI take precedence.

## ThumbnailCamera_InitializeSettings

[ASM 00D4B580](../../evidence/native/functions/00D4B580_ThumbnailCamera_InitializeSettings.asm) ([annotated Ghidra C](../../evidence/native/functions/00D4B580_ThumbnailCamera_InitializeSettings.c)).

ECX settings descriptor. Establishes position0, view replicated negative1, up(0,1,0), field-of-view and near/far constants from data, projection0, scale1, PositionFromScale true and preview-bound flagfalse. Exact numeric data central in thumbnail-camera-literals.tsv. Default settings are not all inferred from a specific installed INI.

## ThumbnailCamera_FindByHash

[ASM 00D4EF30](../../evidence/native/functions/00D4EF30_ThumbnailCamera_FindByHash.asm) ([annotated Ghidra C](../../evidence/native/functions/00D4EF30_ThumbnailCamera_FindByHash.c)).

ECX manager; hash/output two stack args. Hold manager+98 critical section, exact hash lookup in camera table, copy settings00D4B510 on hit, AL1 elseAL0. No guessed section fallback; upper EAX bits incidental unlock return.

## ThumbnailCamera_SelectAndFrameRequest

[ASM 00D57100](../../evidence/native/functions/00D57100_ThumbnailCamera_SelectAndFrameRequest.asm) ([annotated Ghidra C](../../evidence/native/functions/00D57100_ThumbnailCamera_SelectAndFrameRequest.c)).

ECX manager plus request pointer. Union eligible scene-model part AABBs, exclude flags10008, add model displacement; invalid part union becomes(0,0,0)..(1,1,1). Sim head delegates00D56BE0. Household-type families select manager+230 override or4E7BB19B then clear override. Normalize View and Up before fixed00D621D0 or bounds-fit00D624B0 according PositionFromScale. Native model bounds are not necessarily rendered-vertex extrema; unused fourth SIMD lanes are not xyz.

## ThumbnailCamera_FitBounds

[ASM 00D624B0](../../evidence/native/functions/00D624B0_ThumbnailCamera_FitBounds.asm) ([annotated Ghidra C](../../evidence/native/functions/00D624B0_ThumbnailCamera_FitBounds.c)).

ECX render owner, bounds/settings/scale three stack words. Half-diagonal radius; projection0 uses radius/sin(cameraFOV*0.5), orthographic uses2*radius and camera width1. Multiply distance by scale, aspect=requestWidth/requestHeight with UInt32 conversion, center=(min+max)*0.5, eye=center-view*distance. Clamp near(distance-radius)*0.99 to authored range and far(distance+radius)*1.01; bit-select float comparisons in decompiler are not integer clipping. Constants verified in original data/instructions.

## ThumbnailCamera_ApplyFixedPosition

[ASM 00D621D0](../../evidence/native/functions/00D621D0_ThumbnailCamera_ApplyFixedPosition.asm) ([annotated Ghidra C](../../evidence/native/functions/00D621D0_ThumbnailCamera_ApplyFixedPosition.c)).

ECX render owner; authored position/settings stack args. Set projection selector, perspective FOV or orthographic width1, request aspect, normalized axes and authored position, then near-min and far-max. Does not reuse bounds-fit distance clipping. Native00D57100 selected this when PositionFromScale false.

## ModularProduct_ReadOrderedSections

[ASM 00C95A70](../../evidence/native/functions/00C95A70_ModularProduct_ReadOrderedSections.asm) ([annotated Ghidra C](../../evidence/native/functions/00C95A70_ModularProduct_ReadOrderedSections.c)).

ECX resource, stream arg RET4. ReadUInt16 version, reject0 but no exact==1 gate. Load reference table0099D570; readUInt16 kind at+38,UInt16 section count, reserve16-byte output vector at+28 and resolve eachUInt32 ordinal0099A660 in order. On failed ordinal returnsAL0 after cleanup. Duplicate/zero keys preserve positions. Current s3pi version1 policy is stricter.

## ModularProduct_CopySectionKeys

[ASM 00C95A50](../../evidence/native/functions/00C95A50_ModularProduct_CopySectionKeys.asm) ([annotated Ghidra C](../../evidence/native/functions/00C95A50_ModularProduct_CopySectionKeys.c)).

ECX modular product plus one output vector argument RET4. Copy begin/end key vector+28/+2C through0056DD20; no key filtering, sorting or section type validation.

## ReferenceTable_ReadResourceKeys

[ASM 0099D570](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.asm) ([annotated Ghidra C](../../evidence/native/functions/0099D570_ReferenceTable_ReadResourceKeys.c)).

Cdecl streamContext/outputVector. Read twoUInt32 header fields: nonzero relative-offset word required; if second wordzero returnAL1. Otherwise save position after header, seek position+relativeOffset-4, read dense key vector007D9930, append rows and restore saved position even on failure. Success requires vector-read and restored context status. These two words are offset/extent metadata, not a REFS version/handle-width header. Disjoint original ranges/nonowned gap retained.

## ReferenceTable_ReadKeyByOrdinal

[ASM 0099A660](../../evidence/native/functions/0099A660_ReferenceTable_ReadKeyByOrdinal.asm) ([annotated Ghidra C](../../evidence/native/functions/0099A660_ReferenceTable_ReadKeyByOrdinal.c)).

Cdecl three physical words streamContext,keyVector,outputKey. ReadUInt32 ordinal, compare unsigned against vector(end-begin)>>4; copy all four32-bit words from native instance-low/high/type/group layout to output on valid ordinal andAL1, elseAL0. Accumulated stream status and ordinal validity are distinct; current strict array exception protocol differs.

## Camera arithmetic and implementation limits

[Original literals](thumbnail-camera-literals.tsv) retain only the required data
words, with their consumer. The bounds fit uses horizontal FOV in the original
camera convention; its projection supports perspective and orthographic paths.
World/rendered vertex bounds cannot automatically substitute for native eligible
part bounds. Original managed ThumbnailHelper remains owner of family selection,
pose names, household horse count and model ordering; a backend may consume the
resulting operations without copying that gameplay policy.

Current CPU mesh concatenation loses auxiliary material UV streams, while the
original keeps model inputs separate. Current fixed-position family path and
human camera lookup have narrower behavior than the original. These differences
are not evidence of a successful original-derived thumbnail reconstruction.

Modular version input accepts nonzeroUInt16; current s3pi reader restricts1.
The table prefix is twoUInt32 offset/extent words, not version/handle flags.
Its key-vector rows are16bytes; section references areUInt32 ordinals after
UInt16 kind/count. Repeated ordinal positions remain significant.
