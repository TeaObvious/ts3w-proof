/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Clears output vector length; traverses typed seed tree and
   inserts each node+0x24 int16 room in sorted unique order. Only room0 excluded. Room-1 is not
   separately filtered, so invalid seed sentinel can enter returned list. Signedshort comparator;
   preserve this observed condition. */

void __thiscall LotRoomSeeds_CollectUniqueNonzeroRooms(void *this,uint markerType,void *roomsOut)

{
  int *piVar1;
  short *psVar2;
  int iVar3;
  short *psVar4;
  int *piVar5;
  
  iVar3 = markerType * 0x1c;
  *(undefined4 *)((int)roomsOut + 4) = *(undefined4 *)roomsOut;
  if (*(int *)((int)this + iVar3 + 0x90) != 0) {
    for (piVar5 = *(int **)((int)this + iVar3 + 0x84); piVar5 != (int *)((int)this + iVar3 + 0x80);
        piVar5 = FUN_004e1030(piVar5)) {
      piVar1 = piVar5 + 9;
      if ((short)piVar5[9] != 0) {
        psVar2 = *(short **)((int)roomsOut + 4);
        psVar4 = (short *)FUN_00aba600(*(int *)roomsOut,(int)psVar2,(short *)piVar1);
        if ((psVar4 == psVar2) || ((short)*piVar1 < *psVar4)) {
          if ((psVar2 == *(short **)((int)roomsOut + 8)) || (psVar4 != psVar2)) {
            FUN_005d2730(roomsOut,psVar4,(undefined2 *)piVar1);
          }
          else {
            *(short **)((int)roomsOut + 4) = psVar2 + 1;
            if (psVar2 != (short *)0x0) {
              *psVar2 = (short)*piVar1;
            }
          }
        }
      }
    }
  }
  return;
}

