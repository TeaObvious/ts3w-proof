/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_SetVisualization. Export
   ordinal(s): 1651. Entry VA: 0x1097d150. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000343. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl AnimationComponent_SetVisualization(int param_1,char param_2)

{
                    /* 0x97d150  1651  AnimationComponent_SetVisualization */
  if (param_1 != 0) {
    if (param_2 != '\0') {
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 0x80;
      return;
    }
    *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) & 0xffffff7f;
  }
  return;
}

