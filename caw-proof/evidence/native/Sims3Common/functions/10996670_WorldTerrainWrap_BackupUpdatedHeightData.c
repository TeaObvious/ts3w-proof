/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_BackupUpdatedHeightData. Export
   ordinal(s): 2554. Entry VA: 0x10996670. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AEC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_BackupUpdatedHeightData(int param_1)

{
  int iVar1;
  
                    /* 0x996670  2554  WorldTerrainWrap_BackupUpdatedHeightData */
  iVar1 = *(int *)(*(int *)(param_1 + 100) + 8);
  if (iVar1 != 0) {
    FUN_10068d00(iVar1);
    return;
  }
  return;
}

