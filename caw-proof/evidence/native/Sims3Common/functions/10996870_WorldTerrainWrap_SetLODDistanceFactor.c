/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_SetLODDistanceFactor. Export
   ordinal(s): 2590. Entry VA: 0x10996870. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B0D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_SetLODDistanceFactor(void *param_1,undefined4 param_2)

{
                    /* 0x996870  2590  WorldTerrainWrap_SetLODDistanceFactor */
  if (param_1 != (void *)0x0) {
    *(undefined4 *)((int)param_1 + 0xf8) = param_2;
    FUN_10258a00(param_1,'\x01');
  }
  return;
}

