/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_RandomNode_GetAvoidRepeats. Export
   ordinal(s): 2163. Entry VA: 0x1098cee0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DEC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SacsWrap_RandomNode_GetAvoidRepeats(int param_1)

{
                    /* 0x98cee0  2163  SacsWrap_RandomNode_GetAvoidRepeats */
  if (param_1 != 0) {
    return *(char *)(param_1 + 0x44) != '\0';
  }
  return false;
}

