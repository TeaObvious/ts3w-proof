/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_GetBoneCount. Export
   ordinal(s): 1634. Entry VA: 0x1097f990. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000337. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl AnimationComponent_GetBoneCount(int param_1)

{
  int iVar1;
  
                    /* 0x97f990  1634  AnimationComponent_GetBoneCount */
  if (param_1 != 0) {
    iVar1 = (**(code **)(*(int *)(param_1 + 8) + 0x20))();
    if (iVar1 != 0) {
      iVar1 = FUN_10371690(iVar1 + 0x28);
      return iVar1;
    }
  }
  return 0;
}

