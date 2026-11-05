/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_GetContainedObjectImpl [assembly=ScriptCore token=0x06000D41; handle:
   System.UInt64, slotNameHash: System.UInt32; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8
ScriptCore_Slots__Slots_GetContainedObjectImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  undefined8 uVar2;
  void *pvVar3;
  undefined4 *this;
  int iVar4;
  undefined4 *puStack_4;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  puStack_4 = this;
  if (this == (undefined4 *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    pvVar3 = Object_GetComponentByMask(this,DAT_011ea114);
  }
  GetGlobalInterfacePointer_11D5BBC();
  if (pvVar3 != (void *)0x0) {
    iVar4 = FUN_009502e0(pvVar3,param_3);
    if ((iVar4 != 0) && (*(int *)(iVar4 + 0x1c) != 0)) {
      uVar2 = *(undefined8 *)(*(int *)(iVar4 + 0x1c) + 8);
      FUN_007462e0((int *)&puStack_4);
      return uVar2;
    }
  }
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    iVar4 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar4 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return 0;
}

