/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintCell_CollectRecordsRecursive.
   Original Ghidra database symbol: FUN_00669e00; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669e00,00669e5a); 0 envelope gap bytes are not owned instructions.
*/

/* A storage node whose low two tag bits are zero delegates to the leaf collector; otherwise nonnull child slots+0C,+10,+14,+18 are recursively visited in order. This is generic storage traversal, not an independent segment/polygon intersection test. */

void __thiscall
FootprintCell_CollectRecordsRecursive(void *this,int param_1,void *param_3_00,undefined4 param_4_00,undefined4 param_5_00,
            undefined4 param_5)

{
  undefined4 *puVar1;
  int local_4;
  
  if ((*(byte *)((int)this + 4) & 3) == 0) {
    FootprintCell_CollectLeafRecords(this,param_1,param_3_00,(char)param_4_00,(char)param_5_00,(char)param_5);
    return;
  }
  puVar1 = (undefined4 *)((int)this + 0xc);
  local_4 = 4;
  do {
    if ((void *)*puVar1 != (void *)0x0) {
      FootprintCell_CollectRecordsRecursive((void *)*puVar1,param_1,param_3_00,param_4_00,param_5_00,param_5);
    }
    puVar1 = puVar1 + 1;
    local_4 = local_4 + -1;
  } while (local_4 != 0);
  return;
}
