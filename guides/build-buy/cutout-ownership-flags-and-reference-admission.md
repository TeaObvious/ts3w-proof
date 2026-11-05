# Cutout ownership, flags and catalog reference admission

PC1.67 static original. Names are analyst-assigned roles. The full placement and
level insertion bodies are retained, with the selected contracts below bounded
explicitly. They do not certify every other branch in those larger functions.

## Conflict and FlagsLayer

A90870 uses ECXFloorManager plus5stack words, RET14hex, lowALBoolean. It collects
rotated rectangle quarters, skips coordinates outside signed live lot/level bounds,
and stops on first different owner OR absent requested flag. Temporary vector is
freed on either result. An empty/no-admitted-cell result is false. This is tile
ownership/quarter flags, not mask-pixel intersection.

A8E000 uses ECXmanager plus packedquarter pointer and ignoredGUIDlow/high,
RET0Chex. Signed level relative to manager minimum selects the tile owner byte
from layer+D0; ID-to-GUID map+1BC supplies owner. Only nonzero fullGUID differing
in either word gives true. Zero owner and identical fullGUID give false. The
physical code reads grid depth before its explicit null test: it is not general
null-pointer-safe validation. The outer caller admits tile/level bounds.

A8CB10 uses ECXmanager+packedquarter pointer, RET4. For bits0..3 it returns true
on ANY bit shared by requestmask and stored FlagsLayer byte. This differs from
requiring every requested bit. The normal quarter collector emits one-hot masks;
a zero request has no matching bit. Coordinate bytes are sign-extended before
relative level and tile indexing; this leaf does not add bounds checks.

A99300 uses ECXmanager+signedcount+modeword, RET8. Only mode lowbyte controls the
selected interval: zero starts0, nonzero starts old max-min+1; end=start+count-1.
Positive count initializes the inserted owner rows to0 and flags bytes to0F.
Eight initial virtual4 calls have explicit ECXlayer plus count,mode,0 and12byte
callee cleanup; actual database prototypes/overrides retain that physical frame.
Count<=0 skips positive initialization, but the function has other work. Full
height/topology/room updates and later helper semantics are not all closed here.

B40C50 is cdecl(context,optionalFeedback), plainRET, lowALacceptance. Its selected
cutout branch passes transformed centre, half extents, yaw and full objectGUID to
A90870. Conflict maps to11hex feedback (or immediate false without feedback).
Positive offset has separate top-level and standard-height checks. Category,
foundation, shell, edit-zone, ceiling and room branches remain distinct; no claim
that this guide ports the entire placement controller follows.

## Original product reference and versions

C98660 reads the surface ordinal immediately after its category processing.
C98DE8 compares unsigned ordinal with reference count; JNC C98DEA branches
C9966F on ordinal>=count, cleans buffers/reader and XOR AL,AL atC996BC. The product
load fails. Converting this to an absent/null mask while accepting the product
is a proved admission difference, including the empty-table index0 case.

Floor cutout fields begin at version17hex. Width equals length below20hex;
version20 reads an independent width; version21 introduces offsets. Signed level
bits and float dimensions are retained. The floor ordinal atC98E33 is multiplied
and dereferenced without the adjacent surface ordinal bounds branch. Safe malformed
floor-index behavior is NOT proved by that unsafe body. Current host floor-null
safety behavior is explicitly different outside valid floor-reference inputs.
The entire product parser has other framing/resource/status gates retained in
its canonical body and existing resource contracts.

## Canonical original bodies

- FloorManager_CutoutIntersectsOwnedOrDisabledTile: [ASM](../../evidence/native/functions/00A90870_FloorManager_CutoutIntersectsOwnedOrDisabledTile.asm) ([pseudocode](../../evidence/native/functions/00A90870_FloorManager_CutoutIntersectsOwnedOrDisabledTile.c)).
- FloorManager_TileHasOtherCutoutOwner: [ASM](../../evidence/native/functions/00A8E000_FloorManager_TileHasOtherCutoutOwner.asm) ([pseudocode](../../evidence/native/functions/00A8E000_FloorManager_TileHasOtherCutoutOwner.c)).
- FloorManager_TileHasAnyRequestedFlag: [ASM](../../evidence/native/functions/00A8CB10_FloorManager_TileHasAnyRequestedFlag.asm) ([pseudocode](../../evidence/native/functions/00A8CB10_FloorManager_TileHasAnyRequestedFlag.c)).
- FloorManager_InsertLevelLayers: [ASM](../../evidence/native/functions/00A99300_FloorManager_InsertLevelLayers.asm) ([pseudocode](../../evidence/native/functions/00A99300_FloorManager_InsertLevelLayers.c)).
- Placement_ValidateBuildSurface: [ASM](../../evidence/native/functions/00B40C50_Placement_ValidateBuildSurface.asm) ([pseudocode](../../evidence/native/functions/00B40C50_Placement_ValidateBuildSurface.c)).
- ObjectProduct_ReadCatalog: [ASM](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.asm) ([pseudocode](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.c)).
