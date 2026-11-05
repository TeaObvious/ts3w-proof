/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetUserDataPath. Export ordinal(s):
   2030. Entry VA: 0x10989e20. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008A6. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 ResourceMgr_GetUserDataPath(void)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x989e20  2030  ResourceMgr_GetUserDataPath */
  piVar1 = (int *)FUN_105219c0();
  if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x10989e30. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar2 = (**(code **)(*piVar1 + 0x24))();
    return uVar2;
  }
  return 0;
}

