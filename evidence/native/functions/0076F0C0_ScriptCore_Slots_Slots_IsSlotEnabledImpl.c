/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620a8 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_IsSlotEnabledImpl [assembly=ScriptCore token=0x06000D36; handle:
   System.UInt64, slotNameHash: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_Slots__Slots_IsSlotEnabledImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  bool bVar2;
  int iVar3;
  undefined4 *this;
  void *this_00;
  
  iVar3 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar3);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011ea114);
    if (this_00 != (void *)0x0) {
      bVar2 = FUN_00950390(this_00,param_3,1);
      LOCK();
      iVar3 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar3 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*this)(1);
      }
      return !bVar2;
    }
    LOCK();
    iVar3 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar3 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return false;
}

