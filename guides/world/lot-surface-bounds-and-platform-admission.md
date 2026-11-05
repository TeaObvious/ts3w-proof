# PC1.67 world surface bounds and lot platform admission

Reference: original PC1.67 TS3W.exe, identified centrally in the proof reference index.
Analyst names describe supported roles, not recovered original symbols.
All five selected pairs are complete actual annotated C and owned Ghidra Listing;
original physical bytes, retained ABI and body boundaries were guarded.

| Entry | C / ASM | Established contract |
| --- | --- | --- |
| AB77E0 | [ASM](../../evidence/native/functions/00AB77E0_Lot_SampleLevelWorldHeightWithEdgeAllowance.asm) ([annotated C](../../evidence/native/functions/00AB77E0_Lot_SampleLevelWorldHeightWithEdgeAllowance.c)) | ECX lot; three stack words; RET0x0C; sequential0.01 edge allowance; inclusive floor sample plus origin Y; -100 miss; binary32 local to x87ST0. |
| B051D0 | [ASM](../../evidence/native/functions/00B051D0_Lot_TestPlatformAtWorldXZLevel.asm) ([annotated C](../../evidence/native/functions/00B051D0_Lot_TestPlatformAtWorldXZLevel.c)) | Four caller-cleaned words; nullable lot; AL boolean; original world point inverse-transformed without floor edge allowance. |
| B04EA0 | [ASM](../../evidence/native/functions/00B04EA0_Lot_TestPlatformAtLocalXZLevel.asm) ([annotated C](../../evidence/native/functions/00B04EA0_Lot_TestPlatformAtLocalXZLevel.c)) | Local X/Z/level pointer; vertex/centre/edge/interior branches; epsilon2^-16; selected children are closed by [platform point selection](platform-point-selection.md). |
| C88D00 | [ASM](../../evidence/native/functions/00C88D00_GameProducts_TestCachedMask40000.asm) ([annotated C](../../evidence/native/functions/00C88D00_GameProducts_TestCachedMask40000.c)) | Cached Boolean mask0x40000 from flag owner011CEDE0; cached byte011EDEEE, validity011EDEEF. No pack-name inference. |
| C67020 | [ASM](../../evidence/native/functions/00C67020_WorldManager_Construct.asm) ([annotated C](../../evidence/native/functions/00C67020_WorldManager_Construct.c)) | Retained WorldManager_Construct identity/prior plate; C67421..C67437 stores extension0 or binary32 2048 at+C4. |

Physical010F682C bytes00000045 are float2048, independently checked against the
raw PE section. The exported011CEDE0/011EDEEE/011EDEEF initial data windows lie
in virtual zero-fill: their zero bytes are original image initialization, never
an observation of live installed flags or runtime cache state.

Complete C6A090 applies world lower X/Z, upper X, then binary32 extension+farZ
before lot buckets (C6A0A9..C6A0FE). It calls AB77E0, stores binary32 result,
then calls B051D0 unconditionally, including after a floor miss. A true platform
answer adds0.1875 in binary32 before subtracting -100 and testing absolute
2^-16 epsilon. The platform transform receives the original world point;
AB77E0's corrected local point is not forwarded to it. The native first usable
bucket answer and later mesh/terrain branches remain present in complete
[ASM](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.asm) ([annotated C](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.c)).

The same product flag owner is reached by registered GameUtils_GetProductFlags
EC1760 through5360C0; its complete leaf returns owner+4. C88D00 calls the retained
FlagWord_TestAnyMask523DA0 with0x40000. This closes mask identity, not a pack name.

793420 selects the unextended smaller far edge, saves CW, ORs0xC00, FISTP QWORD,
then consumes its low DWORD with unsigned compare (793593..7935C5). Decompiler
ROUND alone does not establish ties-to-even. A clear sphere query only succeeds
when output storage is nonnull (7936D0 onward); output and hint stores are in
that branch. Existing actual complete C/ASM remains the evidence for edge order,
unchecked hint progression and radius1/mask0xC. The separate
[platform point selection contract](platform-point-selection.md) establishes
B04EA0's vertex iterator, strict/partial quarter predicate and centre encoder.
Native spatial bucket production/order and arbitrary FPU environment remain unresolved.


## Current prepared corner authority

LotCornerSurfaceLoader/Preparation prepares all supplied LDES lots and retains a
LotCornerSurfaceSnapshot. Physical resource denominator/unique rows, file stamp,
mount generation and precedence-object identity gate this host preparation.
Current candidate analysis requires exactly one usable surface, refuses unknown
bucket members/platform touch/terrain fallback and can over-report platform
uncertainty by a level-independent3x3 neighborhood. Native C6A090 selects its
first usable bucket surface and actually adds0.1875 for B051D0; those policies
are not equivalent merely because the same constant/address is cited.

Original registered78AB40 calls C6A090 four times with lots-on/bridges-off and
level0 for each query; current registry GetLotCorners returns retained startup
corners under its Gate. Full actual edit invalidation and post-edit managed
consumer timing remain open; an immutable/read-only snapshot is not proof that
it was retired or refreshed on terrain/foundation changes. Prepared FrozenDictionary
copies membership, not arbitrary supplied result list contents. Zero for unknown
lot, user-world refusal→zero and original null-world/missing-lot output initialization
must be distinguished from successful current corners.
