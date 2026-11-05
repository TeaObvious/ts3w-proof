/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: reads one of four 16-bit room values from the room grid for a four-byte encoded local
   cell key. MOVSX sign-extends key bytes 0, 1 and 2 into X, Z and level; byte 3 is a quadrant/flag
   mask. It adjusts level by -1 when bit 0x10 is set, checks signed X/Z/level against grid extents,
   fetches the eight-byte cell, and returns the first of four enabled 16-bit quadrant values in AX.
   No enabled quadrant returns 0xffff. For invalid/out-of-range input, NEG AL; SBB EAX,EAX returns 0
   when the final flag is zero and 0xffffffff otherwise. The caller consumes AX; Ghidra's char types
   must not erase the MOVSX semantics. */

short __thiscall LotRoomGrid_ReadRoomForCell(void *this,char *param_1,char param_2)

{
  byte bVar1;
  void *this_00;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  uint uVar5;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar2 = (int)param_1[2] - *(int *)((int)this + 0x10);
  bVar1 = param_1[3];
  uVar4 = (uint)*param_1;
  uVar5 = (uint)param_1[1];
  if ((bVar1 & 0x10) != 0) {
    iVar2 = iVar2 + -1;
  }
  this_00 = *(void **)((int)this + 0x14);
  if ((((this_00 != (void *)0x0) && (-1 < (int)uVar4)) && ((int)uVar4 < *(int *)((int)this_00 + 4)))
     && (((-1 < (int)uVar5 && ((int)uVar5 < *(int *)((int)this_00 + 8))) &&
         ((-1 < iVar2 && (iVar2 < *(int *)((int)this_00 + 0xc))))))) {
    puVar3 = (undefined4 *)RoomGrid_GetLogicalCell(this_00,uVar4,uVar5,iVar2);
    local_8 = *puVar3;
    local_4 = puVar3[1];
    iVar2 = 0;
    do {
      if ((bVar1 & '\x01' << ((byte)iVar2 & 0x1f)) != 0) {
        return *(short *)((int)&local_8 + iVar2 * 2);
      }
      iVar2 = iVar2 + 1;
    } while (iVar2 < 4);
    return -1;
  }
  return -(ushort)(param_2 != '\0');
}

