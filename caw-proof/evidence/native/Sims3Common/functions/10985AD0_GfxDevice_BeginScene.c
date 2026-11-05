/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GfxDevice_BeginScene. Export ordinal(s): 1843.
   Entry VA: 0x10985ad0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AD0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 GfxDevice_BeginScene(void)

{
  undefined4 uVar1;
  
                    /* 0x985ad0  1843  GfxDevice_BeginScene */
  if (DAT_10c735e8 != (void *)0x0) {
    uVar1 = FUN_1040c850(DAT_10c735e8);
    if ((char)uVar1 != '\0') {
      return 1;
    }
  }
  return 0;
}

