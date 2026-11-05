/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_PointSlot_GetBoneIndex. Export
   ordinal(s): 2422. Entry VA: 0x1097fe00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600095A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl SlotComponent_PointSlot_GetBoneIndex(int param_1,int param_2)

{
  undefined4 uVar1;
  
                    /* 0x97fe00  2422  SlotComponent_PointSlot_GetBoneIndex */
  if ((param_1 != 0) && (param_2 != 0)) {
    uVar1 = FUN_105ff150(param_2);
    return uVar1;
  }
  return 0xffffffff;
}

