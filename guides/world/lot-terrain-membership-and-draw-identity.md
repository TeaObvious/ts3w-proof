# Lot terrain membership memo and lot-bearing draw records

Reference: original PC 1.67 TS3W.exe, identified in the central native evidence
index. Names below are analyst assignments. Static complete-body/instruction/
pristine-byte analysis; no original runtime execution is represented.

## Actual lot-keyed memo

[Membership ASM](../../evidence/native/functions/00C81300_Terrain_GetLotChunkMembership.asm)
([pseudocode](../../evidence/native/functions/00C81300_Terrain_GetLotChunkMembership.c)) consumes ECX terrain
owner and one lot pointer, RET 04. It loads lot+48/+4C as a two-DWORD identity
key for owner+178 map lookup. A found node returns its vector at node+8. A missing
node is created before population, then candidates in owner+B0/B4 are visited as
four-byte pointers and appended only for true AL from existing 00C7E8A0 predicate.
The key and candidate locals that appear float-shaped in the decompiler are
pointer/DWORD storage: the complete instructions use no floating-point arithmetic.
Outer invalidation, map destruction, allocation failures and the membership
predicate's complete geometry remain separate boundaries. No managed reference-key
or globally absent-cache claim follows from this leaf.

## Explicit lot context reaches draw records

[Draw producer ASM](../../evidence/native/functions/00C81E00_Terrain_AppendLotDrawRecords.asm)
([pseudocode](../../evidence/native/functions/00C81E00_Terrain_AppendLotDrawRecords.c)) uses ECX terrain owner
and three stack DWORD slots, RET 0C. The third slot is tested as a low byte. It
first obtains the memoized chunks, then carries the same incoming lot pointer at
stack record+8. Chunk coordinates at +0C/+10 convert signed DWORDs via CVTSI2SS.
The nullable readiness branch occurs after the memo call; it does not make the
whole entry safe for a null lot argument.

For state 4 or nonzero flag it calls the [lot material producer ASM](../../evidence/native/functions/00C81790_Terrain_BuildLotMaterialLayers.asm)
([pseudocode](../../evidence/native/functions/00C81790_Terrain_BuildLotMaterialLayers.c)) with the selected
chunk and same lot pointer. Returned material subset count is signed SAR 4 on
end-minus-begin; rows advance 0x10 bytes. A nonempty output row advances 0x24
bytes. Selected material retain/old-local-release and other state-specific records
retain their original order; no universal row/category or lifetime is invented.
The draw producer owns two ranges, C81E00..C81E5C and C81E60..C822D2. The three
alignment bytes C81E5D..C81E5F are explicitly included as non-owned envelope bytes.

[Record constructor ASM](../../evidence/native/functions/00AF5930_TerrainLotDrawRecord_CopyConstruct.asm)
([pseudocode](../../evidence/native/functions/00AF5930_TerrainLotDrawRecord_CopyConstruct.c)) consumes ECX
destination and one source pointer, RET 04, returning destination in EAX. It copies
source+8 to destination+8; the selected producer placed the lot pointer there.
Destination material +0C is initially zero, then the existing conditional
retain/assignment/release sequence handles source material. Coordinates use x87
FLD/FSTP; other selected DWORDs are copied separately. Flags 1/2/8/4 update only
those bits, preserving other destination bits. This is not an arbitrary bytewise
memcpy or acquisition of ownership of the lot pointer.

## Separate floor ownership

[Floor initializer ASM](../../evidence/native/functions/00A9FD50_FloorRenderer_InitializeLotLevelAndMaterials.asm)
([pseudocode](../../evidence/native/functions/00A9FD50_FloorRenderer_InitializeLotLevelAndMaterials.c)) separately stores the
lot at receiver+0C, its floor manager at +10 and the selected level, and initializes
floors/exteriorfloors material services. This establishes separate explicit
terrain/floor lot context. It does not prove any project's exact room-zero,
shader-name, static-span or reference-change invalidation predicate.
