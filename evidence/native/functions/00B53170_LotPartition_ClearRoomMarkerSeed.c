/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Selects same partition; removes typed GUID seed. AX old
   room or0xffff. StrobeLight(4) additionally removes per-room strobe delay for a valid room, then
   affected room list is rebuilt. Decompiled markerType-pointer and omitted GUID arguments were ABI
   artifacts; RET12 confirms type plus two GUID words. */

void __thiscall LotPartition_ClearRoomMarkerSeed(void *this,uint markerType,ulonglong objectGuid)

{
  void *this_00;
  uint markerType_00;
  ushort uVar1;
  
  markerType_00 = markerType;
  this_00 = *(void **)((int)this + ((markerType != 3) - 1 & 2) * 4 + 0x44);
  if (this_00 != (void *)0x0) {
    uVar1 = LotRoomSeeds_RemoveGuidAndReturnRoom(this_00,markerType,objectGuid);
    markerType = (uint)uVar1;
    if ((uVar1 != 0xffff) && (markerType_00 == 4)) {
      FUN_00b49020((void *)((int)this + 0x210),(short *)&markerType);
    }
    LotPartition_RefreshRoomMarkerType(this,markerType_00);
  }
  return;
}

