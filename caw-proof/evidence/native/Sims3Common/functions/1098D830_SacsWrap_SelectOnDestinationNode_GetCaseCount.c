/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnDestinationNode_GetCaseCount;
   SacsWrap_SelectOnParameterNode_GetCaseCount. Export ordinal(s): 2175; 2181. Entry VA: 0x1098d830.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000E16; CSHostWrap:0x06000E29. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SacsWrap_SelectOnDestinationNode_GetCaseCount(int param_1)

{
                    /* 0x98d830  2175  SacsWrap_SelectOnDestinationNode_GetCaseCount
                       0x98d830  2181  SacsWrap_SelectOnParameterNode_GetCaseCount */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x3c);
  }
  return 0;
}

