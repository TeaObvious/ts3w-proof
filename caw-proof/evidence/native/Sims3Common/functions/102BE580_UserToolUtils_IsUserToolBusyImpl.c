/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_IsUserToolBusyImpl. Export
   ordinal(s): 1217. Entry VA: 0x102be580. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AB8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint UserToolUtils_IsUserToolBusyImpl(void)

{
  uint uVar1;
  
                    /* 0x2be580  1217  UserToolUtils_IsUserToolBusyImpl */
  uVar1 = FUN_102c72b0();
  if ((uVar1 != 0) && (*(int **)(uVar1 + 0x2c) != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x102be595. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(**(int **)(uVar1 + 0x2c) + 0x30))();
    return uVar1;
  }
  return uVar1 & 0xffffff00;
}

