/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_GetRoadBridgeSpline. Export
   ordinal(s): 2572. Entry VA: 0x10996e90. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AFC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldTerrainWrap_GetRoadBridgeSpline(int param_1,int param_2)

{
  int iVar1;
  
                    /* 0x996e90  2572  WorldTerrainWrap_GetRoadBridgeSpline */
  iVar1 = WorldTerrainWrap_GetRoadBridge(param_1,param_2);
  if (iVar1 != 0) {
    return *(undefined4 *)(iVar1 + 0x38);
  }
  return 0;
}

