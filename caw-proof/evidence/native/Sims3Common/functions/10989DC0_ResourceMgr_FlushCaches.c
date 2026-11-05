/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_FlushCaches. Export ordinal(s): 2022.
   Entry VA: 0x10989dc0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008A5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 ResourceMgr_FlushCaches(void)

{
  int *piVar1;
  undefined4 uVar2;
  
                    /* 0x989dc0  2022  ResourceMgr_FlushCaches */
  piVar1 = (int *)FUN_108e50d0();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  uVar2 = (**(code **)(*piVar1 + 0x60))(0,0);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

