/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationWrap_ClipIkInfo_GetNumIkSlots. Export
   ordinal(s): 1664. Entry VA: 0x1097d0f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000311. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl AnimationWrap_ClipIkInfo_GetNumIkSlots(void *param_1,uint param_2)

{
  int iVar1;
  
                    /* 0x97d0f0  1664  AnimationWrap_ClipIkInfo_GetNumIkSlots */
  if (param_1 != (void *)0x0) {
    iVar1 = FUN_10373ce0(param_1,param_2);
    return iVar1;
  }
  return 0;
}

