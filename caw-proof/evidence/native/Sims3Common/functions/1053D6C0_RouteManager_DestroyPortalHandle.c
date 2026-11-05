/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_DestroyPortalHandle. Export
   ordinal(s): 562. Entry VA: 0x1053d6c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000D3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RouteManager_DestroyPortalHandle(undefined4 param_1)

{
  int *piVar1;
  
                    /* 0x53d6c0  562  RouteManager_DestroyPortalHandle */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1053d6e5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

