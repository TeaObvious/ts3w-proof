/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_ClearToBaseLayer. Export
   ordinal(s): 2557. Entry VA: 0x10996930. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B11. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_ClearToBaseLayer(int param_1)

{
  void *pvVar1;
  
                    /* 0x996930  2557  WorldTerrainWrap_ClearToBaseLayer */
  if (((param_1 != 0) && (*(int *)(param_1 + 100) != 0)) &&
     (pvVar1 = (void *)FUN_106b6a50(*(int *)(param_1 + 100)), pvVar1 != (void *)0x0)) {
    FUN_101f1600(pvVar1);
    FUN_101f0490((int)pvVar1);
    return;
  }
  return;
}

