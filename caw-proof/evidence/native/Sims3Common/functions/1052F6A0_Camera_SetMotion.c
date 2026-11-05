/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_SetMotion. Export ordinal(s): 301. Entry
   VA: 0x1052f6a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A3B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Camera_SetMotion(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x52f6a0  301  Camera_SetMotion */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_1075c950(iVar1);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x40))(param_1,param_2);
      }
    }
  }
  return;
}

