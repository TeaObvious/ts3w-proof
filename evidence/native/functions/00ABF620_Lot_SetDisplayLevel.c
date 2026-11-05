/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC1.67 tomb/diving contract. Signed integer requested level clamped to lot minimum+0x17c
   and maximum+0x180 plus conditionally allowed upper displaylevel. Writes lot+0x39c only when
   changed or forced. Rebuilds per-level visibility and, unless suppressRefresh, refreshes object
   display, lotrender and sends level message0x041f76bb. World.SetDisplayLevel uses false,true,false
   flags. Detailed roof/upper-floor predicate remains open. */

void __thiscall
Lot_SetDisplayLevel(void *this,int level,bool force,bool checkUpper,bool suppressRefresh)

{
  undefined4 *puVar1;
  bool bVar2;
  int iVar3;
  int *piVar4;
  void *this_00;
  int iVar5;
  int iVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  undefined4 *puVar11;
  
  iVar3 = *(int *)((int)this + 0x180);
  if (iVar3 < level) {
    iVar9 = iVar3 + 1;
    if (((*(void **)((int)this + 0x2ac) != (void *)0x0) && (checkUpper)) &&
       (bVar2 = FUN_00b94690(*(void **)((int)this + 0x2ac),iVar3), !bVar2)) {
      iVar9 = *(int *)((int)this + 0x180);
    }
    if (iVar9 < level) {
      level = iVar9;
    }
  }
  if (level < *(int *)((int)this + 0x17c)) {
    level = *(int *)((int)this + 0x17c);
  }
  if ((level != *(int *)((int)this + 0x39c)) || (force)) {
    if (level < *(int *)((int)this + 0x39c)) {
      iVar3 = FUN_00969bd0();
      iVar3 = FUN_00f21ff0(iVar3);
      if ((iVar3 != 0) && (piVar4 = (int *)FUN_00513de0(iVar3), piVar4 != (int *)0x0)) {
        (**(code **)(*piVar4 + 0x54))();
      }
    }
    *(int *)((int)this + 0x39c) = level;
    this_00 = (void *)CollisionService_GetGlobal();
    iVar3 = *(int *)((int)this + 0x39c);
    iVar9 = *(int *)((int)this + 0x17c);
    iVar5 = *(int *)((int)this + 0x184) + 1;
    iVar10 = 0;
    if (0 < iVar5) {
      do {
        iVar6 = (*(int *)((int)this + 0x378) - *(int *)((int)this + 0x37c) >> 2) + iVar10;
        iVar7 = iVar6 + 0x1000000;
        iVar7 = ((int)(iVar7 + (iVar7 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
        FUN_00686f00(this_00,*(int *)(*(int *)(*(int *)((int)this + 900) + iVar7 * 4) +
                                     (iVar6 + iVar7 * -0x40) * 4),iVar10 <= iVar3 - iVar9);
        iVar10 = iVar10 + 1;
      } while (iVar10 < iVar5);
    }
    if (!suppressRefresh) {
      puVar1 = *(undefined4 **)((int)this + 0x18);
      for (puVar11 = *(undefined4 **)((int)this + 0x14); puVar11 != puVar1; puVar11 = puVar11 + 1) {
        Lot_ApplyObjectDisplayDetail(this,(void *)*puVar11,'\0','\0');
      }
      iVar3 = *(int *)((int)this + 0x39c);
      if ((-1 < iVar3) && (DAT_011ec499 == '\0')) {
        if (*(char *)((int)this + 0xc2) == '\0') {
          iVar3 = *(int *)((int)this + 0x180);
        }
        FUN_00ab3260(*(void **)((int)this + 0x2e8),iVar3);
      }
      piVar4 = FloorMessagePool_AcquireStorage();
      if (piVar4 == (int *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        *piVar4 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar4[1] = 0;
        UNLOCK();
        *piVar4 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        (**(code **)(*piVar4 + 4))();
      }
      piVar4[2] = *(int *)((int)this + 0x39c);
      *(bool *)(piVar4 + 3) = force;
      if (((*(char *)((int)this + 0xc9) == '\0') && (*(int *)((int)this + 0x364) != 0)) &&
         (piVar8 = (int *)MessageDispatch_GetCurrent(), piVar8 != (int *)0x0)) {
        (**(code **)(*piVar8 + 0x1c))(0x41f76bb,piVar4,0,*(undefined4 *)((int)this + 0x364));
      }
      FUN_00792460();
      iVar3 = FUN_00cef500();
      if (iVar3 != 0) {
        FUN_00cef800(iVar3);
      }
      (**(code **)(*piVar4 + 8))();
    }
  }
  return;
}

