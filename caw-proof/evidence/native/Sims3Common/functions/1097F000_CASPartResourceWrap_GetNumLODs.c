/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartResourceWrap_GetNumLODs. Export
   ordinal(s): 1729. Entry VA: 0x1097f000. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

int __cdecl CASPartResourceWrap_GetNumLODs(int param_1)

{
                    /* 0x97f000  1729  CASPartResourceWrap_GetNumLODs */
  return (*(int *)(param_1 + 0x70) - *(int *)(param_1 + 0x6c)) / 0x18;
}

