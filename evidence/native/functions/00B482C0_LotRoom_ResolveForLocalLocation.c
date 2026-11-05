/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: selects a room-query object from the array at this+0x44 indexed by the caller's
   room-definition argument, transforms the local location into a compact key, then calls
   0x00c03fc0. No instruction overwrites EAX after that call before RET 0x0c; registered
   World_GetLotLocationImpl and AtFloorImpl consume AX as the room value. The original AX return is
   interpreted as signed16 in Ghidra. The indexed array bound is not checked in this wrapper.
   Original signed16 return ABI: CALL00c03fc0 followed by unchangedEAX and RET12. World_GetRoomId
   interprets AX as Int16; storedroom ushortuses retain same low16bits. Invalid-location fallback
   flag1 yieldsffff(-1); no room-definition array boundcheck is added. */

short __thiscall
LotRoom_ResolveForLocalLocation(void *this,float *param_1,int param_2,undefined4 param_3)

{
  void *this_00;
  short sVar1;
  
  this_00 = *(void **)((int)this + param_2 * 4 + 0x44);
  param_2 = -0xff0001;
  LotLocation_EncodeCellAndQuadrant(param_1,(char *)&param_2);
  sVar1 = LotRoomGrid_ReadRoomForCell(this_00,(char *)&param_2,(char)param_3);
  return sVar1;
}

