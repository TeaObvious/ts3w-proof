/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartLODInfo_GetNumAssets. Export ordinal(s):
   1721. Entry VA: 0x1097f040. Original managed P/Invoke MethodDef(s): none located in the shipped
   managed assemblies. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl CASPartLODInfo_GetNumAssets(int param_1)

{
                    /* 0x97f040  1721  CASPartLODInfo_GetNumAssets */
  return (*(int *)(param_1 + 0xc) - *(int *)(param_1 + 8)) / 0x1c;
}

