# Rug resource rows, ordering and admission

Original PC1.67 TS3W.exe, identified centrally. Analyst names describe static
instruction-backed roles. Actual saved annotated Ghidra pseudocode and complete
original owned ASM (explicit nonowned gaps where present) form canonical pairs.
No original runtime or host gameplay/fixture acceptance is claimed.

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 00C08610 | RugRecord_WriteCompactFields | [ASM](../../evidence/native/functions/00C08610_RugRecord_WriteCompactFields.asm) ([C](../../evidence/native/functions/00C08610_RugRecord_WriteCompactFields.c)) |
| 00C08710 | RugRecord_ReadCompactFields | [ASM](../../evidence/native/functions/00C08710_RugRecord_ReadCompactFields.asm) ([C](../../evidence/native/functions/00C08710_RugRecord_ReadCompactFields.c)) |
| 00C08B90 | RugManager_WriteOrderedRow | [ASM](../../evidence/native/functions/00C08B90_RugManager_WriteOrderedRow.asm) ([C](../../evidence/native/functions/00C08B90_RugManager_WriteOrderedRow.c)) |
| 00C08CF0 | RugManager_WriteSavedResource | [ASM](../../evidence/native/functions/00C08CF0_RugManager_WriteSavedResource.asm) ([C](../../evidence/native/functions/00C08CF0_RugManager_WriteSavedResource.c)) |
| 00C091C0 | RugManager_ReadSavedResource | [ASM](../../evidence/native/functions/00C091C0_RugManager_ReadSavedResource.asm) ([C](../../evidence/native/functions/00C091C0_RugManager_ReadSavedResource.c)) |
| 00C09090 | RugManager_GetOrCreateOwnerSlot | [ASM](../../evidence/native/functions/00C09090_RugManager_GetOrCreateOwnerSlot.asm) ([C](../../evidence/native/functions/00C09090_RugManager_GetOrCreateOwnerSlot.c)) |
| 00C08F20 | RugManager_RecomputeOverlapLayer | [ASM](../../evidence/native/functions/00C08F20_RugManager_RecomputeOverlapLayer.asm) ([C](../../evidence/native/functions/00C08F20_RugManager_RecomputeOverlapLayer.c)) |
| 00C09650 | RugManager_AddRugRecord | [ASM](../../evidence/native/functions/00C09650_RugManager_AddRugRecord.asm) ([C](../../evidence/native/functions/00C09650_RugManager_AddRugRecord.c)) |
| 00C097A0 | RugManager_RemoveAndRelayer | [ASM](../../evidence/native/functions/00C097A0_RugManager_RemoveAndRelayer.asm) ([C](../../evidence/native/functions/00C097A0_RugManager_RemoveAndRelayer.c)) |
| 006FFB10 | RenderObject_ApplyRugSortNotification | [ASM](../../evidence/native/functions/006FFB10_RenderObject_ApplyRugSortNotification.asm) ([C](../../evidence/native/functions/006FFB10_RenderObject_ApplyRugSortNotification.c)) |
| 006F60B0 | RenderComponent_BuildDrawPacket | [ASM](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.asm) ([C](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.c)) |
| 00ACB9C0 | Lot_CollectObjectsIntersectingObjectFootprints | [ASM](../../evidence/native/functions/00ACB9C0_Lot_CollectObjectsIntersectingObjectFootprints.asm) ([C](../../evidence/native/functions/00ACB9C0_Lot_CollectObjectsIntersectingObjectFootprints.c)) |
| 00C087D0 | RugRecord_RemapCompactCorners | [ASM](../../evidence/native/functions/00C087D0_RugRecord_RemapCompactCorners.asm) ([C](../../evidence/native/functions/00C087D0_RugRecord_RemapCompactCorners.c)) |

## Saved wire and actual writer

C08CF0 receives ECXmanager and four stackDWORDs (context and three key words),
RET10hex, resultAL. It opens resource06393F5D with mode1, writes UInt32version1,
counts ordered list entries as UInt32, and enumerates them through C08B90.
That stdcall two-argument callback writes UInt64owner then C08610's eight bytes:
four corner bytes+18..+1B, UInt16layer+1E, raw byte+20 and flagsbyte+21. Primitives
honor context endian and accumulate status. The insertion serial+1C is NOT saved.
Native resource mode/context status is separate from the callback's return type;
upper EAX bits in a decompiler CONCAT expression are not Boolean output data.

C091C0 is the matching ECXmanager/four-stack-DWORD/RET10hex reader. It resets the
map/list/count/serial, opens mode0, consumes the version DWORD WITHOUT comparing
its value, then reads UInt32count. Each successful row reads full ownerGUID then
C08710's compact fields, checking accumulated status before admission. No65535
row limit, nonzero-owner predicate, duplicate rejection or terminal exact-length
test appears. Required truncation fails status. Version1 is what the writer
emits; it is not an admission branch in this reader.

The owner map helperC09090 returns an existing slot or inserts one. The saved
reader writes the new row into that slot, so duplicate GUID map lookup is last
successful row. EVERY successfully read row still appends to the ordered list.
It increments a UInt32 serial and stores its LOW16bits in row+1C. Consequently
saved list order/identity cannot be inferred from a dictionary alone, and a
live-add gate cannot be substituted for saved-load admission.

The reader failure cleanup contains an unresolved virtual-destructor stack
tracking artifact in actual C (unaff_retaddr). Physical C093D1 reloads context
from ESP+28 before Close; the outer RET10hex is unchanged. Actual C is retained
with this instruction-backed qualification, not hand-edited. Native allocation,
partial-list restoration and reference counting are not a managed exception API.

## Separate live and imported-object paths

C09650 LIVE add rejects zero/duplicateGUID, allocates0x28bytes (40decimal), sets
location/category/flags, increments/truncates insertion serial, recomputes layer
and notifies. These live predicates do not occur in C091C0. C097A0 removal uses
matching raw categorybyte+20 and affected compact bounds to propagate relayering.
The imported object-index row path instead goes through C08A00 and C087D0: resolve
an index through the supplied owner array, read compact fields and remap two
unsigned corner pairs into min/max mapped bytes. The ordinary saved resource
uses fullGUID and does not call that coordinate remapper.

## Layer and real rendering consumer

C08F20 asks the lot's actual footprint query ACB9C0 for intersections. That query
uses enabled primary mask5 and per-area signed level handling; a saved tile-AABB
alone does not establish actual footprint intersection. Earlier insertion rank is
an UNSIGNED16 comparison at+1C. Contribution is UInt16(otherlayer+1), wrapped
BEFORE max. A vector index ordered beyond65535 does not have the same rank rule.
Native callbacks notify only actual admitted object/component owners.

6FFB10 receives GUIDlo/GUIDhi/layer as three stackDWORDs, RET0C. It publishes
ordinal=layer+1 to the render component. 6F60B0's006F6927..6949 uses unsigned-DWORD
FILD correction, multiplies original binary32 B3800001, and stores binary32 packet
bias. The coefficient is not exactly -2^-24. It does not relocate physical object
pose. Existing [depth/state contract](../shaders/depth-and-overlapping-surfaces.md)
and [necessary original constants](../../evidence/shaders/overlap-native-constants.tsv)
retain the selected shader/PASS consumer without duplicating those data.

## Boundaries

Raw field+20 is preserved as a byte; selected removal compares it for equality.
The host's signed-level projection and every native category/lot transition are
not automatically proved by this compact reader. Full footprint component/native
query parity, renderer world-height adapters and resource-manager concurrency
remain separate. Static original bytes, owned bounds, complete pair links and
lookup indexes were checked; metadata was saved cleanly and original bytes did
not change. The evidence does not establish host source receipts, CLR lock/order
policy, save-write/reload success or GPU output.
