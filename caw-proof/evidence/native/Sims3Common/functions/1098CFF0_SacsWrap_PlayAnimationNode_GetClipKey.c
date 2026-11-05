/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_PlayAnimationNode_GetClipKey. Export
   ordinal(s): 2154. Entry VA: 0x1098cff0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E6F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_PlayAnimationNode_GetClipKey(undefined4 *param_1,void *param_2,uint param_3)

{
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x98cff0  2154  SacsWrap_PlayAnimationNode_GetClipKey */
  if (param_2 != (void *)0x0) {
    FUN_105e6d10(param_2,&local_10,param_3);
    *param_1 = local_8;
    param_1[1] = local_4;
    param_1[2] = local_10;
    param_1[3] = local_c;
    return;
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  return;
}

