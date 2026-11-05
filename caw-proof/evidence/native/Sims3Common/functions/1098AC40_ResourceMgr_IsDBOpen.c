/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_IsDBOpen. Export ordinal(s): 2033.
   Entry VA: 0x1098ac40. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000895. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 ResourceMgr_IsDBOpen(void)

{
  int iVar1;
  int *piVar2;
  undefined4 local_8 [2];
  
                    /* 0x98ac40  2033  ResourceMgr_IsDBOpen */
  if (DAT_10cb8078 != (void *)0x0) {
    iVar1 = *(int *)(*(int *)((int)DAT_10cb8078 + 4) + *(int *)((int)DAT_10cb8078 + 8) * 4);
    piVar2 = (int *)FUN_106a8410(DAT_10cb8078,local_8,(uint *)&stack0x00000004);
    if (*piVar2 != iVar1) {
      return 1;
    }
  }
  return 0;
}

