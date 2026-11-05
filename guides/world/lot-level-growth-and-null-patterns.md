# Lot layer insertion and null-pattern rows

Original shipped PC1.67 TS3W.exe, selected in Ghidra and reviewed statically.
Analyst role names and physical signatures are annotations, not original symbols.
Original bytes remain unchanged and the annotated database was saved clean.

## Retained growth and admission

CD2DA0 uses signed expanded candidate bounds, upper5/lower-4 or-1 from4BC.
ACE050/ACE0E0 apply layer changes before publishing bounds/notifications.
ACDA80 calls each retained floor,partition and optional layer owner. B4FA10
sends count/mode to6partition graphs and4room managers, updates band data and
min/max. C076B0 resizes its room grid under its existing criticalsection120
then updates retained room/shape entries. Genuine C still contains reused local
and virtual-call stack artifacts; they do not establish all room topology.

For positive insertion A99300 starts at0 in bottom mode,otherwise old span
(max-min+1). Native mode reads the lowbyte of a DWORD; count is signedInt32.
New rotation/auxiliary bytes initialize0 and the selected flag layer0F.
Ordinary heights use adjacent slice+/-3. Water-lot4B0/source-level branch instead
can use max(localSeaLevel+0.75,below+3), with AB0590 selecting the relevant level.
These facts do not certify every optional layer/callback/houseboat behavior.

## Null quad lookup happens before reference insertion

A99300 supplies the64zero bytes at011EC8E0 (verified original memory) toA8FA00.
That function compares ALL64bytes against implicit defaultquad atowner+40 using
7892B0; equal returns0. Otherwise it looks up the full quad and returns row+40
fullUInt32 ID,or0 if absent. Caller MOVZX EAX,AX truncates to low16 and repeats
the result into four physical quarter lanes. The selected ID is not always0.

Then A90E70 looks up the full null quad independently of the implicit default.
Existing row increments counterDWORD+44; missing row allocates first unused
positiveUInt32 ID usingA8EA30 and initializes reference count1. A90C00 supplies
the address of{id,count} atnode+40. If there are more uses,A99300 adds the
remaining count-1. Total selected pattern uses are4*(managerWidth+1)*
(managerDepth+1)*insertedCount. Additions are rawUInt32, not checked/signed.
A8EA30 starts1 and fills holes; it is not max+1.

The lookup result precedes the new reference ID: when null is missing,cell0
can be selected even though a later reference insertion allocates1 or another
positiveID. An existing null row's counter need not be storage0. Match allfour
16bytekeys, not just catalog key. Unknown or unresolved host handles cannot
serve as evidence for original zero keys. Native maps own their concrete
key/counter nodes; CLR decoded projections and failure guards are host policy.

## ABI and tool limitations

A8FA00/A90E70/A90C00 take ECX owner+onepointer/RET4. First two return fullID;
A90C00 returns a pointer to8byte counters. A8EA30 takes ECX,no stackwords/plainRET.
7892B0 is ECX+onepointer/RET4 and normalizes fullEAX0/1. B4FA10/C076B0 are
thiscall signedcount/modeDWORD/RET8void. The genuine A99300 C still casts the
scalar insertionstart through pointer-typed temporaries despite reviewed local
ABI overrides; raw NEG/SBB/AND instructions establish the numeric start. Do not
port decompiler pointer aliases as original layouts or native source code.
No game execution,layer roundtrip,concurrency or rendered result was tested.

## Canonical complete evidence

- 00CD2DA0: [ASM](../../evidence/native/functions/00CD2DA0_LotLevels_ExpandBounds.asm) ([annotated Ghidra C](../../evidence/native/functions/00CD2DA0_LotLevels_ExpandBounds.c)).
- 00ACDA80: [ASM](../../evidence/native/functions/00ACDA80_Lot_InsertFloorLevelsAndBasementRows.asm) ([annotated Ghidra C](../../evidence/native/functions/00ACDA80_Lot_InsertFloorLevelsAndBasementRows.c)).
- 00A99300: [ASM](../../evidence/native/functions/00A99300_FloorManager_InsertLevelLayers.asm) ([annotated Ghidra C](../../evidence/native/functions/00A99300_FloorManager_InsertLevelLayers.c)).
- 00B4FA10: [ASM](../../evidence/native/functions/00B4FA10_PartitionManager_InsertLevelLayers.asm) ([annotated Ghidra C](../../evidence/native/functions/00B4FA10_PartitionManager_InsertLevelLayers.c)).
- 00C076B0: [ASM](../../evidence/native/functions/00C076B0_RoomManager_InsertLevelLayers.asm) ([annotated Ghidra C](../../evidence/native/functions/00C076B0_RoomManager_InsertLevelLayers.c)).
- 00A8FA00: [ASM](../../evidence/native/functions/00A8FA00_FloorKeyMap_FindStorageIdOrZero.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8FA00_FloorKeyMap_FindStorageIdOrZero.c)).
- 00A90E70: [ASM](../../evidence/native/functions/00A90E70_FloorKeyMap_AddReference.asm) ([annotated Ghidra C](../../evidence/native/functions/00A90E70_FloorKeyMap_AddReference.c)).
- 00A90C00: [ASM](../../evidence/native/functions/00A90C00_FloorKeyMap_GetOrCreateCounters.asm) ([annotated Ghidra C](../../evidence/native/functions/00A90C00_FloorKeyMap_GetOrCreateCounters.c)).
- 007892B0: [ASM](../../evidence/native/functions/007892B0_ResourceKeyQuad_Equals.asm) ([annotated Ghidra C](../../evidence/native/functions/007892B0_ResourceKeyQuad_Equals.c)).
- 00A8EA30: [ASM](../../evidence/native/functions/00A8EA30_FloorKeyMap_FirstFreePositiveId.asm) ([annotated Ghidra C](../../evidence/native/functions/00A8EA30_FloorKeyMap_FirstFreePositiveId.c)).

## Default-key producer and physical support predicates

[Floor-pattern support](floor-pattern-support.md) closes map initialization and the UInt16 cell-to-64-byte-key copy. Its original terrain predicate compares only the first key; its floor predicate compares the entire quad and retains signed bounds-dependent region filtering. Both include additional admission beyond key classification.
