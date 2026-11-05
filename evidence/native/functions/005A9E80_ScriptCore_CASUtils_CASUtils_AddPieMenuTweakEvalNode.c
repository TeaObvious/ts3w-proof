/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01156500 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_AddPieMenuTweakEvalNode [assembly=ScriptCore token=0x0600033D;
   scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_AddPieMenuTweakEvalNode(void)

{
  int *piVar1;
  undefined8 uVar2;
  int iVar3;
  undefined4 *this;
  int iVar4;
  void *pvVar5;
  undefined8 uStack_10;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  iVar3 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar3);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar3 = FUN_00934260(this,DAT_011ea0fc);
    iVar4 = FUN_00934260(this,DAT_011dd484);
    pvVar5 = (void *)FUN_00934260(this,DAT_011ea0f0);
    if (iVar3 != 0) {
      FUN_0094f2b0(iVar3);
    }
    uVar2 = CONCAT44(uStack_10._4_4_,(int)uStack_10);
    uStack_10 = CONCAT44(DAT_011cf424,DAT_011cf420);
    if (pvVar5 != (void *)0x0) {
      if ((_DAT_011cf428 & 1) == 0) {
        _DAT_011cf428 = _DAT_011cf428 | 1;
        uStack_10 = FUN_007d0090("cas_idle");
      }
      DAT_011cf424 = (undefined4)((ulonglong)uStack_10 >> 0x20);
      DAT_011cf420 = (undefined4)uStack_10;
      uStack_8 = 0x2d5df13;
      uStack_4 = 0;
      pvVar5 = FUN_0094d110(pvVar5,(int *)&uStack_10);
      if (pvVar5 != (void *)0x0) {
        (*(code *)**(undefined4 **)((int)pvVar5 + 8))();
      }
      FUN_007ffe10((int)pvVar5);
      SACS_ScheduleDriverImmediate(DAT_011d9d40,(int)pvVar5,1);
      uVar2 = uStack_10;
      if (pvVar5 != (void *)0x0) {
        (**(code **)(*(int *)((int)pvVar5 + 8) + 4))();
        uVar2 = uStack_10;
      }
    }
    if (iVar4 != 0) {
      *(uint *)(iVar4 + 0x2c) = *(uint *)(iVar4 + 0x2c) | 0x1000;
    }
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      uStack_10 = uVar2;
      (**(code **)*this)(1);
    }
  }
  return;
}

