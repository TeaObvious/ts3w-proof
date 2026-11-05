/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_AnimationNode_SetBlendInTime. Export
   ordinal(s): 2113. Entry VA: 0x1098d190. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E3F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_AnimationNode_SetBlendInTime(void *param_1,float param_2)

{
  float local_10 [2];
  float local_8;
  float local_4;
  
                    /* 0x98d190  2113  SacsWrap_AnimationNode_SetBlendInTime */
  if (param_1 != (void *)0x0) {
    FUN_105e6c90(param_1,local_10);
    FUN_105e6cb0(param_1,local_10[0],param_2,local_8,local_4);
  }
  return;
}

