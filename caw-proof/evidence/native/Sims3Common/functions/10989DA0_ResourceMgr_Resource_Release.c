/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_Resource_Release. Export ordinal(s):
   2041. Entry VA: 0x10989da0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008A1. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl ResourceMgr_Resource_Release(int *param_1)

{
  undefined4 uVar1;
  
                    /* 0x989da0  2041  ResourceMgr_Resource_Release */
  if (param_1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x10989dad. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(*param_1 + 4))();
    return uVar1;
  }
  return 0;
}

