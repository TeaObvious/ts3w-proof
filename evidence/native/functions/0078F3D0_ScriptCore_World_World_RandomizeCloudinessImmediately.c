/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163d50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_RandomizeCloudinessImmediately [assembly=ScriptCore token=0x0600089D;
   value: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_RandomizeCloudinessImmediately(int param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)MessageDispatch_GetCurrent();
  if (piVar1 == (int *)0x0) {
    return;
  }
  piVar2 = (int *)FUN_004e4500(0x18,"WorldHost/RandomizeCloudinessImmediately/MsgData",0);
  if (piVar2 == (int *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2[4] = 0;
    *piVar2 = (int)&PTR_FUN_0106c91c;
    LOCK();
    piVar2[1] = 0;
    UNLOCK();
    *piVar2 = (int)&PTR_FUN_0106c91c;
    (**(code **)(*piVar2 + 4))();
  }
  piVar2[2] = param_1;
  (**(code **)(*piVar1 + 0x1c))(0xde844be,piVar2,0,0);
  (**(code **)(*piVar2 + 8))();
  return;
}

