/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: GfxDevice_DrawCallCount. Export ordinal(s): 1845.
   Entry VA: 0x10985b10. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AD5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int GfxDevice_DrawCallCount(void)

{
  int iVar1;
  int iVar2;
  
                    /* 0x985b10  1845  GfxDevice_DrawCallCount */
  iVar1 = FUN_1070b380(DAT_10c735e8);
  iVar2 = iVar1 - _DAT_10cb7f48;
  _DAT_10cb7f48 = iVar1;
  return iVar2;
}

