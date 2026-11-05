/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartDataResourceWrap_GetGender. Export
   ordinal(s): 1711. Entry VA: 0x1097ee20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000817. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASPartDataResourceWrap_GetGender(int param_1)

{
                    /* 0x97ee20  1711  CASPartDataResourceWrap_GetGender */
  return *(uint *)(param_1 + 0x3c) & 0x3000;
}

