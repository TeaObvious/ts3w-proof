/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorOperationNode_GetOperand;
   SacsWrap_AnimationNode_GetPriority. Export ordinal(s): 2099; 2110. Entry VA: 0x1098d0f0. Original
   managed P/Invoke MethodDef(s): CSHostWrap:0x06000E42; CSHostWrap:0x06000EAC. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SacsWrap_ActorOperationNode_GetOperand(int param_1)

{
                    /* 0x98d0f0  2099  SacsWrap_ActorOperationNode_GetOperand
                       0x98d0f0  2110  SacsWrap_AnimationNode_GetPriority */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x58);
  }
  return 0;
}

