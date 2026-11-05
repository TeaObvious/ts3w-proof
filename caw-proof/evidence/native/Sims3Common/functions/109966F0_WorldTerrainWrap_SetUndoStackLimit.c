/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_SetUndoStackLimit. Export
   ordinal(s): 2594. Entry VA: 0x109966f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AEF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_SetUndoStackLimit(int param_1,undefined4 param_2)

{
  int iVar1;
  
                    /* 0x9966f0  2594  WorldTerrainWrap_SetUndoStackLimit */
  if ((param_1 != 0) && (iVar1 = *(int *)(param_1 + 100), iVar1 != 0)) {
    if (*(int *)(iVar1 + 8) != 0) {
      *(undefined4 *)(*(int *)(iVar1 + 8) + 0x3c) = param_2;
    }
    iVar1 = FUN_106b6a50(iVar1);
    if (iVar1 != 0) {
      *(undefined4 *)(iVar1 + 0x70) = param_2;
    }
  }
  return;
}

