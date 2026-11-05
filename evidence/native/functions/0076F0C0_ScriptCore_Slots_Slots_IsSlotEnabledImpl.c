/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_IsSlotEnabledImpl [assembly=ScriptCore token=0x06000D36; handle:
   System.UInt64, slotNameHash: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_Slots__Slots_IsSlotEnabledImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  void *pvVar4;
  undefined4 *this;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(param_2,param_1));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar4 = Object_GetComponentByMask(this,DAT_011ea114);
    if (pvVar4 != (void *)0x0) {
      bVar3 = SlotComponent_HasAllFlagBitsByName(pvVar4,param_3,1);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*this)(1);
      }
      return !bVar3;
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return false;
}

