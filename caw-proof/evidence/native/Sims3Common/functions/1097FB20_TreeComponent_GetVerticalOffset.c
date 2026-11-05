/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TreeComponent_GetVerticalOffset. Export
   ordinal(s): 2542. Entry VA: 0x1097fb20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000656. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl TreeComponent_GetVerticalOffset(int param_1)

{
  float10 fVar1;
  
                    /* 0x97fb20  2542  TreeComponent_GetVerticalOffset */
  if (param_1 != 0) {
    fVar1 = FUN_1074cee0(param_1);
    return fVar1;
  }
  return (float10)0.0;
}

