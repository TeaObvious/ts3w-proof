/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Native type
   switch0fog,1tomb,2blacklight,3publicroom,4strobe. Fog refresh only when partition byte+0x11
   nonzero. This dispatch consumes SimIFace.RoomMarkerTypes domain; no route/world travel operation.
    */

void __thiscall LotPartition_RefreshRoomMarkerType(void *this,uint markerType)

{
  switch(markerType) {
  case 0:
    if (*(char *)((int)this + 0x11) != '\0') {
      LotPartition_RefreshFoggedRoomList(this,false);
      return;
    }
    break;
  case 1:
    FUN_00b50730(this,'\0');
    return;
  case 2:
    FUN_00b52df0(this,'\0');
    return;
  case 3:
    FUN_00b507b0(this,0);
    return;
  case 4:
    FUN_00b52f10(this,0);
    return;
  }
  return;
}

