/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_GetBoneLocalPosition. Export
   ordinal(s): 1636. Entry VA: 0x10980ce0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000339. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl AnimationComponent_GetBoneLocalPosition(undefined4 *param_1,int param_2,uint param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  
                    /* 0x980ce0  1636  AnimationComponent_GetBoneLocalPosition */
  if (param_2 != 0) {
    iVar3 = (**(code **)(*(int *)(param_2 + 8) + 0x20))();
    if (iVar3 != 0) {
      uVar4 = FUN_10371690(iVar3 + 0x28);
      if (param_3 < uVar4) {
        iVar3 = FUN_10371680((void *)(iVar3 + 0x28),param_3);
        uVar1 = *(undefined4 *)(iVar3 + 0x14);
        uVar2 = *(undefined4 *)(iVar3 + 0x18);
        *param_1 = *(undefined4 *)(iVar3 + 0x10);
        param_1[1] = uVar1;
        param_1[2] = uVar2;
        return;
      }
    }
  }
  uVar1 = DAT_10b96328;
  *param_1 = DAT_10b96324;
  uVar2 = DAT_10b9632c;
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  return;
}

