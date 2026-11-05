# Generated lot-pond footprint and retained-helper refresh

This is a static original PC1.67 instruction contract. Analyst-assigned names
identify observed responsibilities, not recovered original symbols. Stored
Ghidra signatures and C stack/SIMD aliases remain inferred; physical arguments,
branches, writes and cleanup govern the facts below. Reference binary identity
is centralized in [the proof overview](../../references/retained-proof-overview.md).

| Entry / analyst name | Complete canonical pair |
| --- | --- |
| `00b64ce0` — `LotPonds_SetHelperRectangleFootprint` | [ASM](../../evidence/native/functions/00B64CE0_LotPonds_SetHelperRectangleFootprint.asm) ([pseudocode](../../evidence/native/functions/00B64CE0_LotPonds_SetHelperRectangleFootprint.c)) |
| `00b65e20` — `LotPonds_RefreshExistingHelperFootprints` | [ASM](../../evidence/native/functions/00B65E20_LotPonds_RefreshExistingHelperFootprints.asm) ([pseudocode](../../evidence/native/functions/00B65E20_LotPonds_RefreshExistingHelperFootprints.c)) |

`00B64CE0` owns `00B64CE0..00B6521F`: 1,344bytes/300instructions.
`00B65E20` owns `00B65E20..00B65E4E` and `00B65E50..00B65EB3`:
147bytes/62instructions. The one byte at `00B65E4F` is **nonowned and not
exported**. Its148-byte bounding envelope does not imply148 owned bytes.
Together the two Listings contain1,491owned bytes and362instructions.

## Admission, physical arguments and generated name

`00B64CE0` receives object and pond-row pointers as two stack arguments and ends
with `RET8`. A null object or absent component selected by mask `011E9FA8`
returns before allocation. A component pointer is required; no requirement that
an old footprint resource already exist follows. Row+10/+14 are signed Int32
seed coordinates converted with CVTSI2SS.

At `00B64D30`, row+18 is loaded into ECX; `00B64D33` pushes that signed pond ID.
The `Pond_%i` format pointer is then pushed at `00B64D66`, followed by the string
builder; `00B64D7F` calls `00930FA0`. The inferred formatter C expression omits
the variadic ID. The physical PUSH and subsequent `ADD ESP,30h` at `00B64DA8`
control interpretation, not the missing decompiler argument. No formatter
prototype repair is inferred. `00B64D8C` hashes the actual formatted name through
`007D00F0`.

## Ordered corners, polygon fields and bounds

Row+30/+34/+38/+3C hold the best rectangle. Four ordered seed-relative corners are:

1. `((X1 - 1) + 0.1 - seedX, (Z1 - 1) + 0.1 - seedZ)`.
2. `((X1 - 1) + 0.1 - seedX, Z0 - 0.1 - seedZ)`.
3. `(X0 - 0.1 - seedX, Z0 - 0.1 - seedZ)`.
4. `(X0 - 0.1 - seedX, (Z1 - 1) + 0.1 - seedZ)`.

These expressions describe the observed binary32 conversion/subtraction/addition
stages, with seed subtraction last. Replacing `(value - 1) + 0.1` by a single
pre-rounded0.9 subtraction is not justified. Temporary vectors occupy16bytes;
appending writes only the first two lanes as8-byte float2 vertices.

A fresh resource's primary polygon vector is cleared. The temporary0x40-byte
polygon carries hash+0, byte+5=0, DWORD+8=1, +C/+10=0, +14=4, +18=8 and raw
binary32 value0.25 at+1C. No meaning for unclassified fields or initialization of
byte+4 is inferred. Lower bound lanes start at positive FLT_MAX and upper lanes
at positive MIN_NORMAL. Actual subtraction/sign-bit-mask selections update them;
this is not a generic Math.Min/Max or negative-FLT_MAX initialization.

[Necessary format and bound data](../../evidence/native/data/lot-pond-generated-footprint.tsv)
retains16 physically mapped bytes. Existing durable data carries0.1 and1.0 in
[map-view/lot data](../../evidence/native/map-view-lot-detail-data.tsv) and0.25 in
[water/pond data](../../evidence/native/water-pond-resource-data.tsv). No virtual
zero-fill, runtime-initialization identity or broader floating-point/FPU behavior
is inferred from these selected constants.

## Resource install and retained-object refresh

The polygon and float2 vertices are deep-copied through `0082B7B0` or the growth
path `0082F220`. The call at `00B651F1` invokes `00947660` with primary resource,
null, null and literal replaceNull1. Temporary vertices are freed and the local
resource reference released through its existing virtual slot. The full resource
replacement child's retain/rebuild behavior is a separate established contract.

`00B65E20` receives the manager in ECX, no stack arguments, and uses plain RET.
It walks manager+C..+10 at stride0x60. For each row with nonzero GUID+48/+4C it
queries the actual registry. A found object is atomically retained at object+4,
pushed with its row and passed to `00B64CE0`, then atomically released. Prior
count1 restores the original counter convention to1 before the virtual destructor
call with argument1. Missing objects are skipped; this loop does not create them.
The separate native rebuild calls the setter at `00B65C39` after publishing the
helper transform. These native retain/release and registry effects do not imply
a whole-rebuild lock, transaction or universal thread affinity.

## Existing original producer/consumer context

| Entry / responsibility | Canonical pair |
| --- | --- |
| `00b65220` record/helper rebuild producer | [ASM](../../evidence/native/functions/00B65220_LotPonds_RebuildAndUpdateNativeHelpers.asm) ([pseudocode](../../evidence/native/functions/00B65220_LotPonds_RebuildAndUpdateNativeHelpers.c)) |
| `00b63f90` largest rectangle with first equal-area tie | [ASM](../../evidence/native/functions/00B63F90_LotPonds_FindLargestRectangle.asm) ([pseudocode](../../evidence/native/functions/00B63F90_LotPonds_FindLargestRectangle.c)) |
| `00b636f0` world-point compact pond lookup | [ASM](../../evidence/native/functions/00B636F0_LotPonds_FindIdAtWorldPoint.asm) ([pseudocode](../../evidence/native/functions/00B636F0_LotPonds_FindIdAtWorldPoint.c)) |
| `00b636b0` signed-short ID record lookup | [ASM](../../evidence/native/functions/00B636B0_LotPonds_TryWriteInfoForId.asm) ([pseudocode](../../evidence/native/functions/00B636B0_LotPonds_TryWriteInfoForId.c)) |
| `00b62ed0` descriptor and corner output | [ASM](../../evidence/native/functions/00B62ED0_LotPonds_WriteScriptInfo.asm) ([pseudocode](../../evidence/native/functions/00B62ED0_LotPonds_WriteScriptInfo.c)) |
| `00aea420` water vertex value | [ASM](../../evidence/native/functions/00AEA420_LotWater_GetVertexHeight.asm) ([pseudocode](../../evidence/native/functions/00AEA420_LotWater_GetVertexHeight.c)) |
| `00aea5d0` strict water-over-floor predicate | [ASM](../../evidence/native/functions/00AEA5D0_LotWater_IsVertexUnderWater.asm) ([pseudocode](../../evidence/native/functions/00AEA5D0_LotWater_IsVertexUnderWater.c)) |
| `00947660` resource replacement and rebuilding | [ASM](../../evidence/native/functions/00947660_FootprintComponent_SetResourceLayers.asm) ([pseudocode](../../evidence/native/functions/00947660_FootprintComponent_SetResourceLayers.c)) |
| `0082b7b0` deep polygon and vertex copy | [ASM](../../evidence/native/functions/0082B7B0_FootprintPolygon_CopyConstruct.asm) ([pseudocode](../../evidence/native/functions/0082B7B0_FootprintPolygon_CopyConstruct.c)) |
| `007d00f0` lowercase C-string hash entry | [ASM](../../evidence/native/functions/007D00F0_HashLowercasedCStringFNV1.asm) ([pseudocode](../../evidence/native/functions/007D00F0_HashLowercasedCStringFNV1.c)) |

The [installed-water and pond boundary guide](../bridge/water-pond-resource-boundaries.md)
retains the record producer, helper create/destroy path and original managed
LotPond interaction authority. This selected footprint contract does not close
unreviewed allocation-failure behavior, every registry caller, hidden-state or
callback policy, original gameplay timing, full native object-layout semantics,
FPU/SIMD platform equivalence or arbitrary concurrent teardown.

[Incoming references](../../evidence/native/lot-pond-footprint-incoming.tsv) list
the captured four transfer sites: three physical E8 CALLs and an E9 tail JMP
at `00B65F1B`. Ghidra labels that jump reference UNCONDITIONAL_CALL; the table
keeps this metadata distinct from physical opcode classification. No CALL is
invented for it. `paired_direct_call` joins an exact CALL site/target in
the canonical [direct-call index](../../evidence/native/direct-calls.tsv);
`reference_only` asserts no reviewed containing function. Computed virtual calls
retain their actual instructions without invented targets. This is selected
static coverage, not an exhaustive runtime call graph.
