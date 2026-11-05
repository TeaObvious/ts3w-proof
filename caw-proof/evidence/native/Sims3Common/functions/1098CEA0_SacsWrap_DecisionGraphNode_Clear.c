/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_DecisionGraphNode_Clear. Export
   ordinal(s): 2125. Entry VA: 0x1098cea0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DCE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_DecisionGraphNode_Clear(int *param_1)

{
                    /* 0x98cea0  2125  SacsWrap_DecisionGraphNode_Clear */
  if (param_1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1098cead. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_1 + 0x1c))();
    return;
  }
  return;
}

