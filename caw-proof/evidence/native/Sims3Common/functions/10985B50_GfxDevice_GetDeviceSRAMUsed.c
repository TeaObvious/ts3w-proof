/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GfxDevice_GetDeviceSRAMUsed. Export ordinal(s):
   1847. Entry VA: 0x10985b50. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AD4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int GfxDevice_GetDeviceSRAMUsed(void)

{
  int iVar1;
  
                    /* 0x985b50  1847  GfxDevice_GetDeviceSRAMUsed */
  iVar1 = FUN_104094c0();
  if (iVar1 != 0) {
    iVar1 = FUN_1040b770(iVar1);
    return iVar1;
  }
  return 0;
}

