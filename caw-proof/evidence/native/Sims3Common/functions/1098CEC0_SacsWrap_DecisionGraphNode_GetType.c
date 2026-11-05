/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_DecisionGraphNode_GetType. Export
   ordinal(s): 2127. Entry VA: 0x1098cec0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DC2. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SacsWrap_DecisionGraphNode_GetType(int *param_1)

{
  undefined4 uVar1;
  
                    /* 0x98cec0  2127  SacsWrap_DecisionGraphNode_GetType */
  if (param_1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1098cecd. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(*param_1 + 0x38))();
    return uVar1;
  }
  return 0;
}

