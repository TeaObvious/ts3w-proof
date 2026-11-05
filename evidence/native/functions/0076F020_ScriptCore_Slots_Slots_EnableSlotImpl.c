/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620a0 (original PC 1.67 TS3W.exe).
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
  int *this;
  void *this_00;
  int *piVar2;
  
  iVar1 = FUN_00937570();
  this = (int *)FUN_00937f80(iVar1);
  piVar2 = this;
  if (this != (int *)0x0) {
    piVar2 = this + 1;
    LOCK();
    *piVar2 = *piVar2 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011ea114);
    if (this_00 != (void *)0x0) {
      FUN_00950350(this_00,param_3,1,param_4 == '\0');
      LOCK();
      iVar1 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        piVar2 = (int *)(**(code **)*this)(1);
      }
      return CONCAT31((int3)((uint)piVar2 >> 8),1);
    }
    LOCK();
    iVar1 = *piVar2;
    *piVar2 = *piVar2 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar2 = 1;
      UNLOCK();
      piVar2 = (int *)(**(code **)*this)(1);
    }
  }
  return (uint)piVar2 & 0xffffff00;
}

