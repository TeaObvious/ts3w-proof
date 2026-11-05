/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_SetMotionAccumulationState.
   Export ordinal(s): 1649. Entry VA: 0x1097fa40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600033E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl AnimationComponent_SetMotionAccumulationState(int param_1,char param_2)

{
                    /* 0x97fa40  1649  AnimationComponent_SetMotionAccumulationState */
  if (param_1 != 0) {
    if (param_2 == '\x01') {
      *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) | 8;
      return;
    }
    *(uint *)(param_1 + 0x2c) = *(uint *)(param_1 + 0x2c) & 0xfffffff7;
  }
  return;
}

