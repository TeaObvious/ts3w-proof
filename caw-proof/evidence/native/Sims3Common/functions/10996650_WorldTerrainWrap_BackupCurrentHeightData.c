/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_BackupCurrentHeightData. Export
   ordinal(s): 2553. Entry VA: 0x10996650. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AEB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_BackupCurrentHeightData(int param_1)

{
  int iVar1;
  
                    /* 0x996650  2553  WorldTerrainWrap_BackupCurrentHeightData */
  iVar1 = *(int *)(*(int *)(param_1 + 100) + 8);
  if (iVar1 != 0) {
    FUN_1006b010(iVar1);
    return;
  }
  return;
}

