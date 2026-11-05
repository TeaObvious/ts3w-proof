/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_GetBoneLocalOrientation.
   Export ordinal(s): 1635. Entry VA: 0x10980d90. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600033A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
AnimationComponent_GetBoneLocalOrientation(undefined4 *param_1,int param_2,uint param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  
                    /* 0x980d90  1635  AnimationComponent_GetBoneLocalOrientation */
  if (param_2 != 0) {
    iVar4 = (**(code **)(*(int *)(param_2 + 8) + 0x20))();
    if (iVar4 != 0) {
      uVar5 = FUN_10371690(iVar4 + 0x28);
      if (param_3 < uVar5) {
        iVar4 = FUN_10371680((void *)(iVar4 + 0x28),param_3);
        uVar1 = *(undefined4 *)(iVar4 + 0x24);
        uVar2 = *(undefined4 *)(iVar4 + 0x28);
        uVar3 = *(undefined4 *)(iVar4 + 0x2c);
        *param_1 = *(undefined4 *)(iVar4 + 0x20);
        param_1[1] = uVar1;
        param_1[2] = uVar2;
        param_1[3] = uVar3;
        return;
      }
    }
  }
  uVar1 = DAT_10b96340;
  *param_1 = DAT_10b9633c;
  uVar2 = DAT_10b96344;
  param_1[1] = uVar1;
  uVar1 = DAT_10b96348;
  param_1[2] = uVar2;
  param_1[3] = uVar1;
  return;
}

