/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetObjMgrType. Export ordinal(s): 2641.
   Entry VA: 0x10997da0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004B7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetObjMgrType(int *param_1)

{
  undefined4 uVar1;
  
                    /* 0x997da0  2641  WorldWrap_GetObjMgrType */
  if (param_1 == (int *)0x0) {
    return 0;
  }
                    /* WARNING: Could not recover jumptable at 0x10997db0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  uVar1 = (**(code **)(*param_1 + 0x40))();
  return uVar1;
}

