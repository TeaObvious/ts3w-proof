/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC1.67 tomb/diving contract. Find full64GUID in typed seed map; absent AX0xffff.
   Existing node decrements treecount, unlinks/frees node and returns former int16 room atnode+0x24.
   Original RET12 proves markerType+uint64 GUID, not one pointer parameter. */

short __thiscall
LotRoomSeeds_RemoveGuidAndReturnRoom(void *this,uint markerType,ulonglong objectGuid)

{
  void *this_00;
  short sVar1;
  uint allocation;
  
  this_00 = (void *)((int)this + markerType * 0x1c + 0x7c);
  LotRoomSeedTree_FindGuidNode(this_00,&markerType,&objectGuid);
  allocation = markerType;
  if ((int *)markerType == (int *)((int)this_00 + 4)) {
    return -1;
  }
  sVar1 = *(short *)(markerType + 0x24);
  *(int *)((int)this_00 + 0x14) = *(int *)((int)this_00 + 0x14) + -1;
  FUN_004e1030((int *)markerType);
  FUN_004e1330((int *)allocation,(int *)((int)this_00 + 4));
  Memory_FreeIfNonNull((void *)allocation);
  return sVar1;
}

