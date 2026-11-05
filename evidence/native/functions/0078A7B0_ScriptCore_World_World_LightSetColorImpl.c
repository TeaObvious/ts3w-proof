/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632d8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LightSetColorImpl [assembly=ScriptCore token=0x06000758; scriptHandle:
   System.UInt64, r: System.Single, g: System.Single, b: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_LightSetColorImpl
               (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011e9fc0);
    if (this_00 != (void *)0x0) {
      FUN_00948190(this_00,param_3,param_4,param_5);
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

