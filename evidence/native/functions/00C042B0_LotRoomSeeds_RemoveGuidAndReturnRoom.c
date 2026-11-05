/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Find full64GUID in typed seed map; absent AX0xffff.
   Existing node decrements treecount, unlinks/frees node and returns former int16 room atnode+0x24.
   Original RET12 proves markerType+uint64 GUID, not one pointer parameter. */

short __thiscall
LotRoomSeeds_RemoveGuidAndReturnRoom(void *this,uint markerType,ulonglong objectGuid)

{
  void *this_00;
  short sVar1;
  uint uVar2;
  
  this_00 = (void *)((int)this + markerType * 0x1c + 0x7c);
  LotRoomSeedTree_FindGuidNode(this_00,&markerType,&objectGuid);
  uVar2 = markerType;
  if ((int *)markerType != (int *)((int)this_00 + 4)) {
    sVar1 = *(short *)(markerType + 0x24);
    *(int *)((int)this_00 + 0x14) = *(int *)((int)this_00 + 0x14) + -1;
    FUN_004e1030((int *)markerType);
    FUN_004e1330((int *)uVar2,(int *)((int)this_00 + 4));
    FUN_004e44e0(uVar2);
    return sVar1;
  }
  return -1;
}

