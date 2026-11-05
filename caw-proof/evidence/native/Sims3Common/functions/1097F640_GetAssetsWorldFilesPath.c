/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GetAssetsWorldFilesPath. Export ordinal(s): 1837.
   Entry VA: 0x1097f640. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009AA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 GetAssetsWorldFilesPath(void)

{
  uint uVar1;
  undefined4 *puVar2;
  uint uVar3;
  int local_4;
  
                    /* 0x97f640  1837  GetAssetsWorldFilesPath */
  uVar3 = 0;
  uVar1 = FUN_1038eb70(0x10c726c0);
  if (uVar1 != 0) {
    do {
      puVar2 = (undefined4 *)FUN_1038eb90(&DAT_10c726c0,uVar3,&local_4);
      if (local_4 == 1) {
        return *puVar2;
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 < uVar1);
  }
  return 0;
}

