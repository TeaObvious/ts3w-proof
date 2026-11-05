/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationClipIkInfo_SetObjectForNamespace. Export
   ordinal(s): 1628. Entry VA: 0x1097fa80. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600031E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl AnimationClipIkInfo_SetObjectForNamespace(void *param_1,char *param_2)

{
  int iVar1;
  uint uVar2;
  
                    /* 0x97fa80  1628  AnimationClipIkInfo_SetObjectForNamespace */
  if (param_1 != (void *)0x0) {
    iVar1 = FUN_1072a1a0();
    if (iVar1 != 0) {
      uVar2 = FUN_1072abb0(iVar1);
      FUN_10373fb0(param_1,param_2,uVar2);
    }
  }
  return;
}

