/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Selected floor cell pattern ID; descriptive label, not recovered original symbol.
   ECX floor manager plus packedcell, RET4, result in AX. Mask bit10 selects manager+48 instead of+2C. Null selected grid returnsFFFF. Signed X/Z/level minus managerMin+10 feed A8B410. Walks lowfour selected quarters with sentinelFFFF; leadingFFFF is skipped, later differing numeric ID rejects. No catalog-kind compatibility and no own bounds guard. */

short __thiscall FUN_00a8d1c0(void *this,char *param_1)

{
  byte bVar1;
  short sVar2;
  int iVar3;
  void *this_00;
  int iVar4;
  
  bVar1 = param_1[3];
  if ((~bVar1 & 0x10) == 0) {
    this_00 = *(void **)((int)this + 0x48);
  }
  else {
    this_00 = *(void **)((int)this + 0x2c);
  }
  if (this_00 == (void *)0x0) {
    return -1;
  }
  iVar3 = RoomGrid_GetLogicalCell
                    (this_00,(int)*param_1,(int)param_1[1],
                     (int)param_1[2] - *(int *)((int)this + 0x10));
  sVar2 = -1;
  iVar4 = 0;
  do {
    if (((int)(char)bVar1 & 1 << ((byte)iVar4 & 0x1f)) != 0) {
      if ((sVar2 != -1) && (sVar2 != *(short *)(iVar3 + iVar4 * 2))) {
        return -1;
      }
      sVar2 = *(short *)(iVar3 + iVar4 * 2);
    }
    iVar4 = iVar4 + 1;
    if (3 < iVar4) {
      return sVar2;
    }
  } while( true );
}
