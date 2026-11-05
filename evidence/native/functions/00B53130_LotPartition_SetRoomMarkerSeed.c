/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Selects partition pointer+0x4c for PublicRoom(3),+0x44
   otherwise. Inserts/updates typed uint64 GUID seed then rebuilds room list for that type. No
   visible bounds validation of markerType at this level; managed enum0..4 is producer domain. */

void __thiscall
LotPartition_SetRoomMarkerSeed(void *this,uint markerType,ulonglong objectGuid,LotXZLevel *location)

{
  void *this_00;
  
  this_00 = *(void **)((int)this + ((markerType != 3) - 1 & 2) * 4 + 0x44);
  if (this_00 != (void *)0x0) {
    LotRoomSeeds_SetGuidLocationAndRoom(this_00,markerType,objectGuid,location);
    LotPartition_RefreshRoomMarkerType(this,markerType);
  }
  return;
}

