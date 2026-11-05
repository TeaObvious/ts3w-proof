/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_RandomizeCloudinessImmediately. Export
   ordinal(s): 1562. Entry VA: 0x10581ec0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CF5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_RandomizeCloudinessImmediately(int param_1)

{
  int *piVar1;
  int *piVar2;
  
                    /* 0x581ec0  1562  World_RandomizeCloudinessImmediately */
  piVar1 = (int *)FUN_108835e0();
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)FUN_10918eb0(0x18,"WorldHost/RandomizeCloudinessImmediately/MsgData",0);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2[4] = 0;
      *piVar2 = (int)&PTR_FUN_10b60b30;
      LOCK();
      piVar2[1] = 0;
      UNLOCK();
      *piVar2 = (int)&PTR_FUN_10b60b30;
      (**(code **)(*piVar2 + 4))();
    }
    piVar2[2] = param_1;
    (**(code **)(*piVar1 + 0x1c))(0xde844be,piVar2,0,0);
    (**(code **)(*piVar2 + 8))();
    return;
  }
  return;
}

