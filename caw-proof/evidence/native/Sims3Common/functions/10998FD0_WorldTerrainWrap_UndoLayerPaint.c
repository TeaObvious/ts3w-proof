/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_UndoLayerPaint. Export
   ordinal(s): 2597. Entry VA: 0x10998fd0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004EE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void WorldTerrainWrap_UndoLayerPaint(void)

{
  void *pvVar1;
  
                    /* 0x998fd0  2597  WorldTerrainWrap_UndoLayerPaint */
  if ((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 0x54) != 0)) {
    pvVar1 = (void *)FUN_106b6a50(*(int *)(DAT_10c700c4 + 0x54));
    if (pvVar1 != (void *)0x0) {
      FUN_101f2140(pvVar1);
      return;
    }
  }
  return;
}

