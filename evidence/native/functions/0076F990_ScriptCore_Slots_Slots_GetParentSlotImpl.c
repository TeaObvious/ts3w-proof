/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011620f8 (original PC 1.67 TS3W.exe).
   ScriptCore.Slots::Slots_GetParentSlotImpl [assembly=ScriptCore token=0x06000D42; handle:
   System.UInt64, connectToBone: System.Boolean&; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl
ScriptCore.Slots::Slots_GetParentSlotImpl(undefined4 param_1,undefined4 param_2,char *param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  undefined4 uVar3;
  undefined1 local_9;
  int local_8 [2];
  
  GetGlobalInterfacePointer_11D5BBC();
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this == (undefined4 *)0x0) {
    return 0;
  }
  piVar1 = this + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  this_00 = (void *)FUN_00934260(this,DAT_011ea158);
  uVar3 = FUN_00956340(this_00,param_3,&local_9,local_8);
  if ((char)uVar3 != '\0') {
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
    return local_8[0];
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
  return 0;
}

