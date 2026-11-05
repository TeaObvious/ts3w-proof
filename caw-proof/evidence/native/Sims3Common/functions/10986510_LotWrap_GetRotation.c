/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetRotation. Export ordinal(s): 1917.
   Entry VA: 0x10986510. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A8D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 __cdecl LotWrap_GetRotation(int *param_1)

{
  float10 fVar1;
  
                    /* 0x986510  1917  LotWrap_GetRotation */
  if (param_1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1098651d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    fVar1 = (float10)(**(code **)(*param_1 + 0x68))();
    return fVar1;
  }
  return (float10)0;
}

