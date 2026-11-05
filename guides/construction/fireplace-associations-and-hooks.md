# Fireplace associations and public World hooks

Original shipped PC1.67 TS3W.exe; reference identity is recorded centrally.
Names below are analyst roles except the registered ScriptCore identities.
Complete actual Ghidra-owned instructions, envelope gap bytes and annotated
pseudocode form the canonical pairs. No original bytes were changed.

## Normal save versus export

A75930 is the normal lot writer called at AC523E from AC4FA0: UInt32 version1,
UInt32 group count; each A756F0 callback writes group ID32, low byte of vector
length and every actual uint64 object ID. A76520 is the matching direct-ID reader:
consumes but never compares version, then key32/count8/IDs64. It has no trailing
EOF validation.4DDA50 has FOUR cdecl words: stream/output/count/byteOrder; the
fourth word controls byte swapping unless1. The former seeded three-word
prototype incorrectly treated the output pointer as the byte-order test.

A76320, called from ACAF70 at ACB093, is an export path. A76110 maps each GUID
through934840 and emits uint32 indices. A76720 imports those indices through a
provided GUID vector; only signed indices>=0 and<provided count are appended.
Both format paths write version1; the caller, not a version bit, selects them.
Normal duplicate groups resize/overwrite an existing vector. Import duplicate
keys append valid converted entries to that group's vector. A failed stream
operation accumulates context failure; successful load is not inferred from a
plausible header or from a readable prefix.

## Keys, insertion and traversal

A76AC0 reads raw Float32 X/Z bits, hashes them with AFC710, then hashes low EAX
and the signed level DWORD. No float conversion, random seed, zero rejection
or collision probing occurs. C894E0 supplies X/Z/level fields10/14/18;
D20430 records the requested key/vector separately for editing.

A769F0 deep-copies and inserts without replacing an existing key. A76430 hashes
full UInt32 key modulo capacity and returns an existing node unchanged. Normal
A76520 load deliberately follows insertion with lookup/vector resize and read,
so the last decoded vector replaces previous contents. Empty vectors, key0 and
repeated object IDs are admitted by these paths.

A76280 initializes bucketCount1/count0, load factor1.0f and growth2.0f.4E0EC0
selects the next prime capacity. New nodes prepend into a bucket; C61BD0 rehash
walks old buckets ascending and head chains, prepending each node into its new
key%capacity bucket. A75A70/A75B00 traverse those buckets/chains, not wire or
insertion order. This matters when a GUID belongs to multiple groups.

AFC710 mixes each unsigned word with modulo32 shifts15/10/6/11/16 and multiply9.
Its child AFC670 receives second mixed word low and first high. Verified carry
arithmetic is key+=~(key<<32), xor>>22, +=~(key<<13), xor>>8, +=key<<3,
xor>>15, +=~(key<<27). Identity is low EAX32 of final key xor key>>31. Physical
EDX retains only the pre-final shifted top bit; the stored undefined8 return is
not evidence for a complete64bit final hash. Real identity callers consume EAX.

## Query and external-hook distinction

A75A70 returns the last ID of the first group containing the requested ID.
A75B00 considers the first occurrence in each vector only when not index0:
its previous ID must resolve through C6DC80 on the exact manager lot and have
catalog+D0 bit6 (Fireplace40). C6DC80 is ECXlot plus a stack uint64 GUID, RET8;
the prior fastcall/one-parameter seed concealed that preceding ID in pseudocode.
Object references are retained around catalog inspection and released afterward.

786D50 admits current world, lot GUID and manager, calls A75A70, then immediately
RETs with EDX:EAX. Missing admission returns0.

**786D90 behaves differently:** it calls A75B00 at786DC5, then falls through
XOR EAX,EAX at786DCA; XOR EDX,EDX at786DCC; RET at786DCE. The registered
World_FireplaceObjectFromChimneyObjectImpl therefore always returns0, even if
the internal helper found a mantle. This is verified original control flow,
not a decompiler guess and not an instruction to patch the game. The registered
managed identity returns UInt64; its misleading usefulness must not overwrite
the actual return instructions during reconstruction.

## Canonical functions

| Address | Analyst role / registered identity | Complete original code |
| --- | --- | --- |
| 00A75930 | FireplaceGroups_SaveDirectIds | [ASM](../../evidence/native/functions/00A75930_FireplaceGroups_SaveDirectIds.asm) ([pseudocode](../../evidence/native/functions/00A75930_FireplaceGroups_SaveDirectIds.c)) |
| 00A756F0 | FireplaceGroups_WriteDirectGroup | [ASM](../../evidence/native/functions/00A756F0_FireplaceGroups_WriteDirectGroup.asm) ([pseudocode](../../evidence/native/functions/00A756F0_FireplaceGroups_WriteDirectGroup.c)) |
| 00A76520 | FireplaceGroups_LoadDirectIds | [ASM](../../evidence/native/functions/00A76520_FireplaceGroups_LoadDirectIds.asm) ([pseudocode](../../evidence/native/functions/00A76520_FireplaceGroups_LoadDirectIds.c)) |
| 00A76430 | FireplaceGroups_InsertIfAbsent | [ASM](../../evidence/native/functions/00A76430_FireplaceGroups_InsertIfAbsent.asm) ([pseudocode](../../evidence/native/functions/00A76430_FireplaceGroups_InsertIfAbsent.c)) |
| 00A769F0 | FireplaceGroups_AddIfAbsent | [ASM](../../evidence/native/functions/00A769F0_FireplaceGroups_AddIfAbsent.asm) ([pseudocode](../../evidence/native/functions/00A769F0_FireplaceGroups_AddIfAbsent.c)) |
| 00A76AC0 | FireplaceGroups_AddFromLocation | [ASM](../../evidence/native/functions/00A76AC0_FireplaceGroups_AddFromLocation.asm) ([pseudocode](../../evidence/native/functions/00A76AC0_FireplaceGroups_AddFromLocation.c)) |
| 00A75A70 | FireplaceGroups_FindCap | [ASM](../../evidence/native/functions/00A75A70_FireplaceGroups_FindCap.asm) ([pseudocode](../../evidence/native/functions/00A75A70_FireplaceGroups_FindCap.c)) |
| 00A75B00 | FireplaceGroups_FindMantle | [ASM](../../evidence/native/functions/00A75B00_FireplaceGroups_FindMantle.asm) ([pseudocode](../../evidence/native/functions/00A75B00_FireplaceGroups_FindMantle.c)) |
| 00C6DC80 | ObjectRegistry_FindBorrowedInLot | [ASM](../../evidence/native/functions/00C6DC80_ObjectRegistry_FindBorrowedInLot.asm) ([pseudocode](../../evidence/native/functions/00C6DC80_ObjectRegistry_FindBorrowedInLot.c)) |
| 00A76320 | FireplaceGroups_ExportObjectIndices | [ASM](../../evidence/native/functions/00A76320_FireplaceGroups_ExportObjectIndices.asm) ([pseudocode](../../evidence/native/functions/00A76320_FireplaceGroups_ExportObjectIndices.c)) |
| 00A76110 | FireplaceGroups_WriteExportGroup | [ASM](../../evidence/native/functions/00A76110_FireplaceGroups_WriteExportGroup.asm) ([pseudocode](../../evidence/native/functions/00A76110_FireplaceGroups_WriteExportGroup.c)) |
| 00A76720 | FireplaceGroups_ImportObjectIndices | [ASM](../../evidence/native/functions/00A76720_FireplaceGroups_ImportObjectIndices.asm) ([pseudocode](../../evidence/native/functions/00A76720_FireplaceGroups_ImportObjectIndices.c)) |
| 004DDA50 | Stream_ReadUInt64ArrayByByteOrder | [ASM](../../evidence/native/functions/004DDA50_Stream_ReadUInt64ArrayByByteOrder.asm) ([pseudocode](../../evidence/native/functions/004DDA50_Stream_ReadUInt64ArrayByByteOrder.c)) |
| 004DE100 | Stream_WriteUInt64ArrayByByteOrder | [ASM](../../evidence/native/functions/004DE100_Stream_WriteUInt64ArrayByByteOrder.asm) ([pseudocode](../../evidence/native/functions/004DE100_Stream_WriteUInt64ArrayByByteOrder.c)) |
| 00AFC710 | MixTwoWordsAndForwardHash | [ASM](../../evidence/native/functions/00AFC710_MixTwoWordsAndForwardHash.asm) ([pseudocode](../../evidence/native/functions/00AFC710_MixTwoWordsAndForwardHash.c)) |
| 00AFC670 | HashWordPair_Finalize | [ASM](../../evidence/native/functions/00AFC670_HashWordPair_Finalize.asm) ([pseudocode](../../evidence/native/functions/00AFC670_HashWordPair_Finalize.c)) |
| 00D20430 | FireplaceEdit_RecordAddedGroup | [ASM](../../evidence/native/functions/00D20430_FireplaceEdit_RecordAddedGroup.asm) ([pseudocode](../../evidence/native/functions/00D20430_FireplaceEdit_RecordAddedGroup.c)) |
| 00C894E0 | ObjectLocation_CopyXZLevel | [ASM](../../evidence/native/functions/00C894E0_ObjectLocation_CopyXZLevel.asm) ([pseudocode](../../evidence/native/functions/00C894E0_ObjectLocation_CopyXZLevel.c)) |
| 00786D50 | ScriptCore.World::World_ChimneyCapObjectFromFireplaceObjectImpl | [ASM](../../evidence/native/functions/00786D50_ScriptCore_World_World_ChimneyCapObjectFromFireplaceObjectImpl.asm) ([pseudocode](../../evidence/native/functions/00786D50_ScriptCore_World_World_ChimneyCapObjectFromFireplaceObjectImpl.c)) |
| 00786D90 | ScriptCore.World::World_FireplaceObjectFromChimneyObjectImpl | [ASM](../../evidence/native/functions/00786D90_ScriptCore_World_World_FireplaceObjectFromChimneyObjectImpl.asm) ([pseudocode](../../evidence/native/functions/00786D90_ScriptCore_World_World_FireplaceObjectFromChimneyObjectImpl.c)) |
| 00A76280 | FireplaceGroups_Construct | [ASM](../../evidence/native/functions/00A76280_FireplaceGroups_Construct.asm) ([pseudocode](../../evidence/native/functions/00A76280_FireplaceGroups_Construct.c)) |
| 00C61BD0 | FireplaceGroups_Rehash | [ASM](../../evidence/native/functions/00C61BD0_FireplaceGroups_Rehash.asm) ([pseudocode](../../evidence/native/functions/00C61BD0_FireplaceGroups_Rehash.c)) |
| 004E0EC0 | HashGrowth_SelectPrimeCapacity | [ASM](../../evidence/native/functions/004E0EC0_HashGrowth_SelectPrimeCapacity.asm) ([pseudocode](../../evidence/native/functions/004E0EC0_HashGrowth_SelectPrimeCapacity.c)) |

All statements above are static code evidence. No original game, gameplay test,
corrupt-file injection, concurrency test or cross-endian package test was run.
Library object mapping and full chimney geometry remain distinct contracts.
