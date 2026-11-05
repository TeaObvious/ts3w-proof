/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011620a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_EnableSlotImpl [assembly=ScriptCore token=0x06000D35; handle:
   System.UInt64, slotNameHash: System.UInt32, enable: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_Slots__Slots_EnableSlotImpl
          (undefined4 param_1,undefined4 param_2,int param_3,char param_4)

{
  int iVar1;
  void *pvVar2;
  int *this;
  int *piVar3;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
  piVar3 = this;
  if (this != (int *)0x0) {
    piVar3 = this + 1;
    LOCK();
    *piVar3 = *piVar3 + 1;
    UNLOCK();
    pvVar2 = Object_GetComponentByMask(this,DAT_011ea114);
    if (pvVar2 != (void *)0x0) {
      SlotComponent_SetFlagMaskByName(pvVar2,param_3,1,param_4 == '\0');
      LOCK();
      iVar1 = *piVar3;
      *piVar3 = *piVar3 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar3 = 1;
        UNLOCK();
        piVar3 = (int *)(**(code **)*this)(1);
      }
      return CONCAT31((int3)((uint)piVar3 >> 8),1);
    }
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      piVar3 = (int *)(**(code **)*this)(1);
    }
  }
  return (uint)piVar3 & 0xffffff00;
}

