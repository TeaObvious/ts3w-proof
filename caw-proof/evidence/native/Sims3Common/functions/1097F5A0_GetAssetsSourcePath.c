/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GetAssetsSourcePath. Export ordinal(s): 1836.
   Entry VA: 0x1097f5a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009A7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 GetAssetsSourcePath(void)

{
  undefined4 *puVar1;
  
                    /* 0x97f5a0  1836  GetAssetsSourcePath */
  puVar1 = (undefined4 *)FUN_1038ec90(0x10c726c0);
  if (puVar1 == (undefined4 *)0x0) {
    return 0;
  }
  return *puVar1;
}

