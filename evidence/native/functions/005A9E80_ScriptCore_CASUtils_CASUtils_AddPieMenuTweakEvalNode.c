/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01156500 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_AddPieMenuTweakEvalNode [assembly=ScriptCore token=0x0600033D;
   scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_AddPieMenuTweakEvalNode(void)

{
  int *piVar1;
  int iVar2;
  undefined8 uVar3;
  void *pvVar4;
  undefined4 *this;
  void *pvVar5;
  void *this_00;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined8 uStack_10;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar4 = Object_GetComponentByMask(this,DAT_011ea0fc);
    pvVar5 = Object_GetComponentByMask(this,DAT_011dd484);
    this_00 = Object_GetComponentByMask(this,DAT_011ea0f0);
    if (pvVar4 != (void *)0x0) {
      FUN_0094f2b0((int)pvVar4);
    }
    uVar3 = CONCAT44(uStack_10._4_4_,(int)uStack_10);
    uStack_10 = CONCAT44(DAT_011cf424,DAT_011cf420);
    if (this_00 != (void *)0x0) {
      if ((_DAT_011cf428 & 1) == 0) {
        _DAT_011cf428 = _DAT_011cf428 | 1;
        uStack_10 = FUN_007d0090("cas_idle");
      }
      DAT_011cf424 = (undefined4)((ulonglong)uStack_10 >> 0x20);
      DAT_011cf420 = (undefined4)uStack_10;
      uStack_8 = 0x2d5df13;
      uStack_4 = 0;
      pvVar4 = FUN_0094d110(this_00,(int *)&uStack_10);
      if (pvVar4 != (void *)0x0) {
        (*(code *)**(undefined4 **)((int)pvVar4 + 8))();
      }
      FUN_007ffe10((int)pvVar4);
      SACS_ScheduleDriverImmediate(DAT_011d9d40,(int)pvVar4,1);
      uVar3 = uStack_10;
      if (pvVar4 != (void *)0x0) {
        (**(code **)(*(int *)((int)pvVar4 + 8) + 4))();
        uVar3 = uStack_10;
      }
    }
    if (pvVar5 != (void *)0x0) {
      *(uint *)((int)pvVar5 + 0x2c) = *(uint *)((int)pvVar5 + 0x2c) | 0x1000;
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      uStack_10 = uVar3;
      (**(code **)*this)(1);
    }
  }
  return;
}

