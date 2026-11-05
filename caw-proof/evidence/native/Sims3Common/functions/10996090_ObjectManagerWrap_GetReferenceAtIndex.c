/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetReferenceAtIndex. Export
   ordinal(s): 1977. Entry VA: 0x10996090. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600025A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetReferenceAtIndex(int *param_1)

{
  undefined4 uVar1;
  
                    /* 0x996090  1977  ObjectManagerWrap_GetReferenceAtIndex */
  if (param_1 != (int *)0x0) {
    uVar1 = (**(code **)(*param_1 + 0x4c))(&stack0x00000008);
    return uVar1;
  }
  return 0;
}

