/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 room-manager thiscall signedcount/modeDWORD RET8void. Nonzero count locks existing
   criticalsection120 around grid14 virtual resize(count,mode,0), releases it, then updates retained
   room/shape map across inserted/deleted level rows; positive rows use default room object C07650
   and AA3330 writes. Lower-origin10 adjusts only lowmodebyte0. Genuine C still has reused
   this/local aliases and unresolved virtual-stack propagation; do not read those as reliable
   layouts or infer all auxiliary room topology is zeroed from a displayed pointer alias. */

void __thiscall RoomManager_InsertLevelLayers(void *this,int count,uint modeBits)

{
  int *piVar1;
  LPCRITICAL_SECTION lpCriticalSection;
  int iVar2;
  void *this_00;
  int iVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint uStack_3c;
  int iStack_38;
  int iStack_34;
  int iStack_30;
  void *pvStack_2c;
  int iStack_28;
  int local_1c;
  int iStack_18;
  
  if (count != 0) {
    local_1c = *(int *)(*(int *)((int)this + 0x14) + 4) + -1;
    lpCriticalSection = (LPCRITICAL_SECTION)((int)this + 0x120);
    iVar5 = *(int *)(*(int *)((int)this + 0x14) + 8) + -1;
    EnterCriticalSection(lpCriticalSection);
    (**(code **)(**(int **)((int)this + 0x14) + 4))(count,modeBits,0);
    LeaveCriticalSection(lpCriticalSection);
    iVar3 = *(int *)((int)this + 0x10);
    iStack_34 = iVar3;
    if ((char)modeBits == '\0') {
      iStack_34 = iVar3 - count;
    }
    if (count < 1) {
      if ((char)modeBits == '\0') {
        iVar5 = (iVar3 - count) + -1;
        iStack_30 = iVar3;
      }
      else {
        iVar5 = iStack_30;
        iStack_30 = iStack_30 + 1 + count;
      }
      PickCandidateMap_Begin((void *)((int)this + 0x34),&local_1c);
      iVar3 = *(int *)(*(int *)((int)this + 0x38) + *(int *)((int)this + 0x3c) * 4);
      iVar2 = local_1c;
      while (iVar2 != iVar3) {
        for (iVar6 = iStack_30; iVar6 <= iVar5; iVar6 = iVar6 + 1) {
          FUN_00c31f20((void *)(iVar2 + 4),iVar6);
        }
        SpanShape_TrimEmptyLevelBounds((void *)(iVar2 + 4));
        iVar2 = *(int *)(iVar2 + 0x68);
        while (this = pvStack_2c, iVar2 == 0) {
          piVar1 = (int *)(iStack_18 + 4);
          iStack_18 = iStack_18 + 4;
          iVar2 = *piVar1;
        }
      }
    }
    else {
      local_1c = 0;
      iStack_18 = 0;
      this_00 = FUN_00c07650((int)this);
      if ((char)modeBits == '\0') {
        iVar3 = *(int *)((int)this + 0x10) + -1;
        iStack_38 = iStack_34;
      }
      else {
        iVar3 = iStack_30 + count;
        iStack_38 = iStack_30 + 1;
      }
      if (iStack_38 <= iVar3) {
        iStack_34 = iStack_38 - iStack_34;
        do {
          uStack_3c = 0;
          if (-1 < iStack_28) {
            do {
              uVar4 = 0;
              if (-1 < iVar5) {
                do {
                  FUN_00c32770(this_00,&stack0xffffffc0);
                  EnterCriticalSection(lpCriticalSection);
                  FUN_00aa3330(*(void **)((int)pvStack_2c + 0x14),&local_1c,uStack_3c,uVar4,
                               iStack_34);
                  LeaveCriticalSection(lpCriticalSection);
                  uVar4 = uVar4 + 1;
                } while ((int)uVar4 <= iVar5);
              }
              uStack_3c = uStack_3c + 1;
              this = pvStack_2c;
            } while ((int)uStack_3c <= iStack_28);
          }
          iStack_34 = iStack_34 + 1;
          iStack_38 = iStack_38 + 1;
        } while (iStack_38 <= iVar3);
      }
    }
    if ((char)modeBits == '\0') {
      *(int *)((int)this + 0x10) = *(int *)((int)this + 0x10) - count;
    }
  }
  return;
}

