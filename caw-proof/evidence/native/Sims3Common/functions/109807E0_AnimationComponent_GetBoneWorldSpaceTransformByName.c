/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   AnimationComponent_GetBoneWorldSpaceTransformByName. Export ordinal(s): 1641. Entry VA:
   0x109807e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000342. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
AnimationComponent_GetBoneWorldSpaceTransformByName(undefined4 *param_1,void *param_2,byte *param_3)

{
  uint uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 local_90 [16];
  undefined4 local_50 [19];
  
                    /* 0x9807e0  1641  AnimationComponent_GetBoneWorldSpaceTransformByName */
  if (param_2 != (void *)0x0) {
    uVar1 = FUN_1072fbb0(param_2,param_3);
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

