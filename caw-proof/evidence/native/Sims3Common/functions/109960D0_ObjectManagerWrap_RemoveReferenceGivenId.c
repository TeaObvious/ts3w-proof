/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_RemoveReferenceGivenId. Export
   ordinal(s): 1990. Entry VA: 0x109960d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600025C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_RemoveReferenceGivenId(int *param_1)

{
  char cVar1;
  
                    /* 0x9960d0  1990  ObjectManagerWrap_RemoveReferenceGivenId */
  if (param_1 != (int *)0x0) {
    cVar1 = (**(code **)(*param_1 + 0x50))(&stack0x00000008,1);
    return cVar1 != '\0';
  }
  return false;
}

