/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetRoadBridge. Export
   ordinal(s): 2571. Entry VA: 0x10996e40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AFB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl WorldTerrainWrap_GetRoadBridge(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  
                    /* 0x996e40  2571  WorldTerrainWrap_GetRoadBridge */
  piVar2 = *(int **)(*(int *)(DAT_10c700c4 + 0x5c) + 0xf0);
  while( true ) {
    if (piVar2 == *(int **)(*(int *)(DAT_10c700c4 + 0x5c) + 0xf4)) {
      return 0;
    }
    iVar1 = *piVar2;
    if ((*(int *)(iVar1 + 0x30) == param_1) && (*(int *)(iVar1 + 0x34) == param_2)) break;
    piVar2 = piVar2 + 1;
  }
  return iVar1;
}

