/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_ActorOperationNode_SetOperand;
   SacsWrap_AnimationNode_SetPriority. Export ordinal(s): 2102; 2116. Entry VA: 0x1098d300. Original
   managed P/Invoke MethodDef(s): CSHostWrap:0x06000E43; CSHostWrap:0x06000EAD. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SacsWrap_ActorOperationNode_SetOperand(int param_1,undefined4 param_2)

{
                    /* 0x98d300  2102  SacsWrap_ActorOperationNode_SetOperand
                       0x98d300  2116  SacsWrap_AnimationNode_SetPriority */
  if (param_1 != 0) {
    *(undefined4 *)(param_1 + 0x58) = param_2;
  }
  return;
}

