/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_AnimationNode_SetTimingPriority. Export
   ordinal(s): 2117. Entry VA: 0x1098d110. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E45. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_AnimationNode_SetTimingPriority(int param_1,undefined4 param_2)

{
                    /* 0x98d110  2117  SacsWrap_AnimationNode_SetTimingPriority */
  if (param_1 != 0) {
    *(undefined4 *)(param_1 + 0x5c) = param_2;
  }
  return;
}

