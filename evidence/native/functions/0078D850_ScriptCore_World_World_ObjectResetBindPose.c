/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163690 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectResetBindPose [assembly=ScriptCore token=0x060007D7; objId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.World::World_ObjectResetBindPose(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    iVar2 = FUN_00934260(this,DAT_011dd484);
    if (iVar2 != 0) {
      FUN_0093cbf0(iVar2);
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
  return;
}

