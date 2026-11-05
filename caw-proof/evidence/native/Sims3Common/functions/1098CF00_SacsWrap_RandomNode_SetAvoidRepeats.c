/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_RandomNode_SetAvoidRepeats. Export
   ordinal(s): 2168. Entry VA: 0x1098cf00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DED. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_RandomNode_SetAvoidRepeats(int param_1,int param_2)

{
                    /* 0x98cf00  2168  SacsWrap_RandomNode_SetAvoidRepeats */
  if (param_1 != 0) {
    *(bool *)(param_1 + 0x44) = param_2 != 0;
  }
  return;
}

