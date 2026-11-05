/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetLODDistanceFactor. Export
   ordinal(s): 2565. Entry VA: 0x10996890. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B0E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldTerrainWrap_GetLODDistanceFactor(int param_1)

{
                    /* 0x996890  2565  WorldTerrainWrap_GetLODDistanceFactor */
  if (param_1 == 0) {
    return 1;
  }
  return *(undefined4 *)(param_1 + 0xf8);
}

