/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_RedoHeightData. Export
   ordinal(s): 2585. Entry VA: 0x109966c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AEE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_RedoHeightData(void *param_1)

{
  int iVar1;
  
                    /* 0x9966c0  2585  WorldTerrainWrap_RedoHeightData */
  if ((param_1 != (void *)0x0) && (iVar1 = *(int *)(*(int *)((int)param_1 + 100) + 8), iVar1 != 0))
  {
    FUN_10068df0(iVar1);
    FUN_1025ad40(param_1);
    return;
  }
  return;
}

