/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationWrap_ClipIkInfo_GetSlotTargetBone.
   Export ordinal(s): 1665. Entry VA: 0x1097d110. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000312. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
AnimationWrap_ClipIkInfo_GetSlotTargetBone(void *param_1,uint param_2,uint param_3)

{
  undefined4 uVar1;
  
                    /* 0x97d110  1665  AnimationWrap_ClipIkInfo_GetSlotTargetBone */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10373d40(param_1,param_2,param_3);
    return uVar1;
  }
  return 0;
}

