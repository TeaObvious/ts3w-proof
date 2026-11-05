/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetReference. Export
   ordinal(s): 1976. Entry VA: 0x10996070. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000259. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetReference(int *param_1)

{
  undefined4 uVar1;
  
                    /* 0x996070  1976  ObjectManagerWrap_GetReference */
  if (param_1 != (int *)0x0) {
    uVar1 = (**(code **)(*param_1 + 0x48))(&stack0x00000008);
    return uVar1;
  }
  return 0;
}

