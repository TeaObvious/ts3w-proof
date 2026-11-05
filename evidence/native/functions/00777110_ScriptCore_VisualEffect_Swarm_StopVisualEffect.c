/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011629b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar3;
  undefined4 *this;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  if (pvVar3 == (void *)0x0) {
    return false;
  }
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (this == (undefined4 *)0x0) {
    return false;
  }
  piVar1 = this + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  pvVar3 = Object_GetComponentByMask(this,DAT_011e9e90);
  if (pvVar3 != (void *)0x0) {
    FUN_009436b0(pvVar3,param_3);
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
  return pvVar3 != (void *)0x0;
}

