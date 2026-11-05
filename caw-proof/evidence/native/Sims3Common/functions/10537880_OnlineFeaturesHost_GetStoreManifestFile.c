/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_GetStoreManifestFile. Export
   ordinal(s): 506. Entry VA: 0x10537880. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000589. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint OnlineFeaturesHost_GetStoreManifestFile(void)

{
  undefined4 uVar1;
  
                    /* 0x537880  506  OnlineFeaturesHost_GetStoreManifestFile */
  if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
    uVar1 = FUN_1067fc60();
    return CONCAT31((int3)((uint)uVar1 >> 8),1);
  }
  return DAT_10c788dc & 0xffffff00;
}

