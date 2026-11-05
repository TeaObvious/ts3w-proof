/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_GetBoneWorldSpaceTransform.
   Export ordinal(s): 1640. Entry VA: 0x10980770. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000341. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
AnimationComponent_GetBoneWorldSpaceTransform(undefined4 *param_1,int param_2,uint *param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 local_90 [16];
  undefined4 local_50 [19];
  
                    /* 0x980770  1640  AnimationComponent_GetBoneWorldSpaceTransform */
  if (param_2 != 0) {
    uVar1 = FUN_1072fb60(param_3);
    if ((char)uVar1 != '\0') {
      puVar2 = (undefined4 *)FUN_10980020(local_50,local_90);
      for (iVar3 = 0x10; iVar3 != 0; iVar3 = iVar3 + -1) {
        *param_1 = *puVar2;
        puVar2 = puVar2 + 1;
        param_1 = param_1 + 1;
      }
      return;
    }
  }
  puVar2 = &DAT_10b96350;
  for (iVar3 = 0x10; iVar3 != 0; iVar3 = iVar3 + -1) {
    *param_1 = *puVar2;
    puVar2 = puVar2 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

