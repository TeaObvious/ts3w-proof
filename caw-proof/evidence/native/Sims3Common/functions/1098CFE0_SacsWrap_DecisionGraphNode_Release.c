/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_DecisionGraphNode_Release;
   SacsWrap_State_Destroy. Export ordinal(s): 2128; 2230. Entry VA: 0x1098cfe0. Original managed
   P/Invoke MethodDef(s): none located in the shipped managed assemblies. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SacsWrap_DecisionGraphNode_Release(int *param_1)

{
                    /* 0x98cfe0  2128  SacsWrap_DecisionGraphNode_Release
                       0x98cfe0  2230  SacsWrap_State_Destroy */
  if (param_1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1098cfed. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_1 + 4))();
    return;
  }
  return;
}

