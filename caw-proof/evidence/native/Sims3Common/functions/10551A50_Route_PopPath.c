/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_PopPath. Export ordinal(s): 679. Entry VA:
   0x10551a50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000188. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_PopPath(uint param_1)

{
  int *piVar1;
  
                    /* 0x551a50  679  Route_PopPath */
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    FUN_1054f130((int)piVar1);
                    /* WARNING: Could not recover jumptable at 0x10551a83. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

