/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163d50 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_RandomizeCloudinessImmediately [assembly=ScriptCore token=0x0600089D;
   value: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_RandomizeCloudinessImmediately(int param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)FUN_0044c4f0();
  if (piVar1 != (int *)0x0) {
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
  return;
}

