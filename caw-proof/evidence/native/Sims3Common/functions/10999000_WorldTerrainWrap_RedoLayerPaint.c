/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_RedoLayerPaint. Export
   ordinal(s): 2586. Entry VA: 0x10999000. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004EF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void WorldTerrainWrap_RedoLayerPaint(void)

{
  void *pvVar1;
  
                    /* 0x999000  2586  WorldTerrainWrap_RedoLayerPaint */
  if ((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 0x54) != 0)) {
    pvVar1 = (void *)FUN_106b6a50(*(int *)(DAT_10c700c4 + 0x54));
    if (pvVar1 != (void *)0x0) {
      FUN_101f21a0(pvVar1);
      return;
    }
  }
  return;
}

