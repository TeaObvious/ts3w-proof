/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_GetVisualization. Export
   ordinal(s): 1644. Entry VA: 0x1097d170. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000344. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl AnimationComponent_GetVisualization(int param_1)

{
                    /* 0x97d170  1644  AnimationComponent_GetVisualization */
  if (param_1 != 0) {
    return *(uint *)(param_1 + 0x2c) >> 7 & 1;
  }
  return 0;
}

