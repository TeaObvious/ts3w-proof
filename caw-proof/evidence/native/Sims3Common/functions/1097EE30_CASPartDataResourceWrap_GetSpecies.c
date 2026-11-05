/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartDataResourceWrap_GetSpecies. Export
   ordinal(s): 1712. Entry VA: 0x1097ee30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000818. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASPartDataResourceWrap_GetSpecies(int param_1)

{
                    /* 0x97ee30  1712  CASPartDataResourceWrap_GetSpecies */
  return *(uint *)(param_1 + 0x3c) & 0xcf00;
}

