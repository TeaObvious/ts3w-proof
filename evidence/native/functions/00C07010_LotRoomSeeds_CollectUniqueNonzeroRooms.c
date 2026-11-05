/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC1.67 tomb/diving contract. Clears output vector length; traverses typed seed tree and
   inserts each node+0x24 int16 room in sorted unique order. Only room0 excluded. Room-1 is not
   separately filtered, so invalid seed sentinel can enter returned list. Signedshort comparator;
   preserve this observed condition. */

void __thiscall LotRoomSeeds_CollectUniqueNonzeroRooms(void *this,uint markerType,void *roomsOut)

{
  int *roomId;
  int iVar1;
  short *end;
  short *psVar2;
  int *piVar3;
  
  iVar1 = markerType * 0x1c;
  *(undefined4 *)((int)roomsOut + 4) = *(undefined4 *)roomsOut;
  if (*(int *)((int)this + iVar1 + 0x90) != 0) {
    for (piVar3 = *(int **)((int)this + iVar1 + 0x84); piVar3 != (int *)((int)this + iVar1 + 0x80);
        piVar3 = FUN_004e1030(piVar3)) {
      roomId = piVar3 + 9;
      if ((short)piVar3[9] != 0) {
        end = *(short **)((int)roomsOut + 4);
        psVar2 = RoomIdRange_LowerBoundSigned16
                           (*(short **)roomsOut,end,(short *)roomId,*(uchar *)((int)roomsOut + 0x10)
                           );
        if ((psVar2 == end) || ((short)*roomId < *psVar2)) {
          if ((end == *(short **)((int)roomsOut + 8)) || (psVar2 != end)) {
            FUN_005d2730(roomsOut,psVar2,(undefined2 *)roomId);
          }
          else {
            *(short **)((int)roomsOut + 4) = end + 1;
            if (end != (short *)0x0) {
              *end = (short)*roomId;
            }
          }
        }
      }
    }
  }
  return;
}

