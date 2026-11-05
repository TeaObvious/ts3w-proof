/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011629b0 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_StopVisualEffect [assembly=ScriptCore token=0x060004BA;
   effectHandle: System.UInt64, transitionType: System.Int32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_VisualEffect__Swarm_StopVisualEffect
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  
  iVar2 = FUN_00937570();
  if (iVar2 == 0) {
    return false;
  }
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011e9e90);
    if (this_00 != (void *)0x0) {
      FUN_009436b0(this_00,param_3);
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
    return this_00 != (void *)0x0;
  }
  return false;
}

