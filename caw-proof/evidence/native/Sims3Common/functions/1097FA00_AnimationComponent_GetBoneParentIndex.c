/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_GetBoneParentIndex. Export
   ordinal(s): 1639. Entry VA: 0x1097fa00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600033C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl AnimationComponent_GetBoneParentIndex(int param_1,uint param_2)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  
                    /* 0x97fa00  1639  AnimationComponent_GetBoneParentIndex */
  if (param_1 != 0) {
    iVar1 = (**(code **)(*(int *)(param_1 + 8) + 0x20))();
    if (iVar1 != 0) {
      uVar2 = FUN_10371690(iVar1 + 0x28);
      if (param_2 < uVar2) {
        uVar3 = FUN_103716f0((void *)(iVar1 + 0x28),param_2);
        return uVar3;
      }
    }
  }
  return 0xffffffff;
}

