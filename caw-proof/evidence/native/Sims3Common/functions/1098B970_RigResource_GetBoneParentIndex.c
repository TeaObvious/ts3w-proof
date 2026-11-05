/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RigResource_GetBoneParentIndex. Export
   ordinal(s): 2045. Entry VA: 0x1098b970. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A44. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl RigResource_GetBoneParentIndex(int param_1,uint param_2)

{
  uint uVar1;
  undefined4 uVar2;
  
                    /* 0x98b970  2045  RigResource_GetBoneParentIndex */
  if (param_1 != 0) {
    uVar1 = FUN_10371690(param_1 + 0x28);
    if (param_2 < uVar1) {
      uVar2 = FUN_103716f0((void *)(param_1 + 0x28),param_2);
      return uVar2;
    }
  }
  return 0xffffffff;
}

