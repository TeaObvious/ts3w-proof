/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620e8 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetParentIdImpl [assembly=ScriptCore token=0x06000D40; handle:
   System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_Slots__Slots_GetParentIdImpl(void)

{
  int *piVar1;
  undefined8 uVar2;
  int iVar3;
  undefined4 *this;
  
  iVar3 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar3);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar3 = FUN_00934260(this,DAT_011ea158);
    if ((iVar3 != 0) && (*(int *)(iVar3 + 0x30) != 0)) {
      uVar2 = *(undefined8 *)(*(int *)(iVar3 + 0x30) + 8);
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
      return uVar2;
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
  return 0;
}

