# Floor-feature cells and bridge admission

Reference: original PC1.67 TS3W.exe. Analyst names describe selected verified
responsibilities; they are not recovered source symbols. Instructions, complete
bodies and actual callers establish the flag domains and return differences.

## Canonical functions

| Responsibility | Original ASM (annotated Ghidra C) |
| --- | --- |
| Set/clear and native transition dispatch | [0x00abb5f0](../../evidence/native/functions/00ABB5F0_LotFloorFeatures_SetTile.asm) ([pseudocode](../../evidence/native/functions/00ABB5F0_LotFloorFeatures_SetTile.c)) |
| Any requested byte flag | [0x00ab6550](../../evidence/native/functions/00AB6550_LotFloorFeatures_TestAny.asm) ([pseudocode](../../evidence/native/functions/00AB6550_LotFloorFeatures_TestAny.c)) |
| All requested DWORD flags | [0x00ab6600](../../evidence/native/functions/00AB6600_LotFloorFeatures_TestAll.asm) ([pseudocode](../../evidence/native/functions/00AB6600_LotFloorFeatures_TestAll.c)) |
| Stored puddle mask | [0x00ab6750](../../evidence/native/functions/00AB6750_LotFloorFeatures_ReadPuddleMask.asm) ([pseudocode](../../evidence/native/functions/00AB6750_LotFloorFeatures_ReadPuddleMask.c)) |
| Signed live-lot bounds | [0x00868970](../../evidence/native/functions/00868970_Lot_IsSignedTileInBounds.asm) ([pseudocode](../../evidence/native/functions/00868970_Lot_IsSignedTileInBounds.c)) |
| World setter, complete physical wrapper | [0x00785a40](../../evidence/native/functions/00785A40_ScriptCore_World_World_SetFloorFeaturesImpl.asm) ([pseudocode](../../evidence/native/functions/00785A40_ScriptCore_World_World_SetFloorFeaturesImpl.c)) |
| World All query, complete physical wrapper | [0x00785aa0](../../evidence/native/functions/00785AA0_ScriptCore_World_World_HasFloorFeaturesImpl.asm) ([pseudocode](../../evidence/native/functions/00785AA0_ScriptCore_World_World_HasFloorFeaturesImpl.c)) |
| World mask query, complete physical wrapper | [0x00785b60](../../evidence/native/functions/00785B60_ScriptCore_World_World_GetFloorFeatureMaskImpl.asm) ([pseudocode](../../evidence/native/functions/00785B60_ScriptCore_World_World_GetFloorFeatureMaskImpl.c)) |
| Present layer resource writer | [0x00ac4fa0](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.c)) |
| Layer resource reader | [0x00ac91d0](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm) ([pseudocode](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c)) |

## Raw cell transitions

ABB5F0 checks sign-extended byte X/Z/level against current lot bounds before
access. Set ORs raw byte flags; clear removes requested bits. Unnamed bits are
retained. A set containing Puddle1 replaces the ushort mask for a first puddle,
but ORs it when old flags already held a puddle. A clear requesting bit1 resets
maskFFFF regardless of old flags and input mask; other flag edits retain it.

Native allocation happens on any set when the flag layer is absent, including
flags0. The all-zero free scan occurs only after old flags were nonzero and new
flags became zero. Thus a newly created all-zero layer differs from no layer.
AC4FA0 writes present flag/mask pointers and AC91D0 retains allocated zero bodies;
there is no successful-read zero-normalization at that boundary.

Puddle1 transitions, burnt2 transitions and leaves8 transitions post messages
143DDCCF,0CF1F010,06592B57 in that order, when a dispatcher exists. Changing a
puddle mask posts too. Puddle payload retains the requested mask and set byte;
other feature messages use maskFFFF. Request flags4 alone are not an additional
message family in this setter. No broad claim is made that unnamed bits or the
separate rain manager are unused elsewhere.

## Queries, widths and masks

AB6550 consumes a BYTE flag request. At least one requested bit must be present.
AB6600 consumes a full DWORD request and requires ALL requested bits in the
zero-extended stored byte; a high request bit therefore fails. Both require
present flag layer and signed live bounds before the cell test. Any0 is false;
All0 is true only after those prerequisites.

If a mask layer exists and the REQUEST contains bit1, either query additionally
requires storedMask&requestedMask nonzero. In Any, a hit from leaves or another
requested bit still goes through that shared gate. A missing mask layer bypasses
that gate. Their complete semantic return is AL Boolean; absent-layer/bounds
paths clear only AL and do not establish an arbitrary full-EAX value. Both are
thiscall ECX lot plus three stack words, RET0C.

AB6750 is thiscall ECX lot plus location and UNUSED requested-flags word, RET8.
AX returns the stored ushort only for a bounded puddle with both layers present;
otherwise FFFF. Its unused second argument is established by cleanup and785B60's
actual two pushes, despite the initial decompiler seed having omitted it.

## World wrapper ABI and absent-lot distinction

| Wrapper | Physical cdecl DWORD slots | Selected return |
| --- | --- | --- |
| 785A40 | GUIDlow/high,X,Z,level,flags,set,mask | void |
| 785AA0 | GUIDlow/high,X,Z,level,flags,mask | AL Boolean; absent world/lot false |
| 785B60 | GUIDlow/high,X,Z,level,unused flags | AX ushort; absent world/lot ZERO |

All end in plain RET. Each copies LOW coordinate bytes into a local compact
cell before the lot helper sign-extends them. The setter forwards only byte
flags and set plus ushort mask; the All wrapper retains the full flags DWORD.
A managed LotLocation must not be treated as a pointer formal at these physical
wrapper entries. Complete bodies84/83/79bytes exclude following CC alignment.

Existing lot with no puddle yieldsFFFF from AB6750; nonexistent lot yields0000
from the outer wrapper. Confusing those distinct paths changes observable output.

## Independent cell cases and limits

| Input | Result |
| --- | --- |
| Flags80/mask1234; set02 | Flags82/mask1234 |
| Flags00/maskFFFF; set01/mask0001 | Flags01/mask0001 |
| Flags01/mask0001; set01/mask0004 | Flags01/mask0005 |
| Flags81/mask0002; clear01 | Flags80/maskFFFF |
| Flags08/mask0000; Any09/maskFFFF, mask layer exists | False |
| Same Any request with no mask layer | True |
| Present bounded flag layer; All00000100 | False |
| Absent layer then Set0 on bounded tile; All0 | True; retained empty layer, no transition message |
| DWORD X256 passed through a wrapper | Byte0 then signed bounds |
| DWORD X128 passed through a wrapper | Signed byte-128 then refusal |

These are static instruction-derived expectations. They are not executed gameplay
or original-process measurements. Package header interpretation, legacy mask
versions, complete rain enumeration, native allocation failure and scheduler
lifetime need their own reader/consumer contracts; cell math does not prove them.

## Whole-layer enumeration and packed result

World_GetTilesWithFloorFeaturesImpl at7965D0 has a complete799byte body with248
instructions: [ASM](../../evidence/native/functions/007965D0_ScriptCore_World_World_GetTilesWithFloorFeaturesImpl.asm) ([pseudocode](../../evidence/native/functions/007965D0_ScriptCore_World_World_GetTilesWithFloorFeaturesImpl.c)).
It is cdecl with lotGUID64, room definition32, full requestedFlags32 and final
mask word in five physical DWORD slots; EAX returns the managed array handle/0.

After world/lot/room-manager admission it walks every live level from bottom
through top, X then Z, testing AB6600 with the complete requested DWORD and mask.
Thus a PRESENT flag layer queried with flags0 accepts even zero-valued cells;
a sparse list of nonzero stored cells cannot replace that query. Missing layer
still fails All0 before any value predicate. Nonzero queries may use a sparse
representation equivalently, since an implicit zero byte cannot contain a
nonzero requested word. All selected cells preserve level/X/Z result order.

Room lookup uses the requested definition. Native shifts pack X/Z low16 into
bits0/16, signed level masked to16 into bits32..47 and room ushort into48..63.
Coordinates have already passed compact signed live lot bounds. A negative level
or room retains its low16 pattern; this is not float-to-integer conversion.
An empty selection returns null; nonempty vector uses runtime virtual88 allocate
andA0 copy before freeing its native temporary storage.

After an All failure only, requested bit4 and an existing world rain manager
activate a SEPARATE branch: requested-definition room must be0, a local tile
position is mapped into world space and D6DFF0 supplies rain-puddle admission.
Stored feature bit4 alone is not that fallback; cell/query proofs do not establish
full Seasons enumeration or its world-state producer.

These are static instruction and caller facts. No original or project game was
run, and no concurrency, corrupt-file or allocation-failure execution is claimed.
