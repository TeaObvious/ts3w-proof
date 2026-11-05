/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartResourceWrap_GetNumTextureBuilders. Export
   ordinal(s): 1730. Entry VA: 0x1097eff0. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

int __cdecl CASPartResourceWrap_GetNumTextureBuilders(int param_1)

{
                    /* 0x97eff0  1730  CASPartResourceWrap_GetNumTextureBuilders */
  return *(int *)(param_1 + 0x60) - *(int *)(param_1 + 0x5c) >> 5;
}

