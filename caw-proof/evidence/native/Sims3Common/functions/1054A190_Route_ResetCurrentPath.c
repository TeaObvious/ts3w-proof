/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_ResetCurrentPath. Export ordinal(s): 686.
   Entry VA: 0x1054a190. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000169. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_ResetCurrentPath(uint param_1)

{
  int *piVar1;
  
                    /* 0x54a190  686  Route_ResetCurrentPath */
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    FUN_10547b90((int)piVar1);
                    /* WARNING: Could not recover jumptable at 0x1054a1c3. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

