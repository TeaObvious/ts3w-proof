/* Updates selected UInt16 room-ID lanes in the optional grid at receiver +7C. Bit 10h in the input
   mask adjusts the selected level by -1. Changed lanes are written through AA3330, then optional
   lot service +234 is notified. Analyst-assigned name. */

void __thiscall UpdateFloorQuarterRoomIds(void *this,char *param_1,short param_2)

{
  byte bVar1;
  char cVar2;
  void *this_00;
  bool bVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  undefined4 local_8;
  undefined4 local_4;

  /* 00AA36A0: Only the optional room-ID grid +7C is guarded here; packed coordinate bounds belong to the caller. AA3890 passes message cell +10 and zero-extended message room word +5E. */
  if (*(void **)((int)this + 0x7c) != (void *)0x0) {
    bVar1 = param_1[3];
    cVar2 = param_1[1];
    iVar6 = ((((~bVar1 & 0x10) != 0) - 1) + (int)param_1[2]) - *(int *)((int)this + 0xc);
    puVar4 = (undefined4 *)
             RoomGrid_GetLogicalCell(*(void **)((int)this + 0x7c),(int)*param_1,(int)cVar2,iVar6);
    local_8 = *puVar4;
    bVar3 = false;
    local_4 = puVar4[1];
    iVar5 = 0;
    do {
      if (((bVar1 & '\x01' << ((byte)iVar5 & 0x1f)) != 0) &&
         (*(short *)((int)&local_8 + iVar5 * 2) != param_2)) {
        *(short *)((int)&local_8 + iVar5 * 2) = param_2;
        bVar3 = true;
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 < 4);
    if (bVar3) {
      FUN_00aa3330(*(void **)((int)this + 0x7c),&local_8,(int)*param_1,(int)cVar2,iVar6);
      this_00 = *(void **)(*(int *)((int)this + 8) + 0x234);
      if (this_00 != (void *)0x0) {
        FUN_00afb0c0(this_00,*param_1,param_1[1]);
      }
    }
  }
  return;
}
