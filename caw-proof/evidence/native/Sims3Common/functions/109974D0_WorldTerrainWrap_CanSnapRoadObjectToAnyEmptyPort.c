/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort.
   Export ordinal(s): 2556. Entry VA: 0x109974d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B0A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort dispatches
   through 0x10142080 and returns the found type and handle. Both moving object kinds search
   intersections before splines; moving identity is excluded in the array containing that kind.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined4 __cdecl
WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort
          (undefined4 param_1,int *param_2,undefined4 param_3,int *param_4,undefined4 *param_5,
          undefined4 *param_6)

{
  uint uVar1;
  undefined4 uVar2;
  
                    /* 0x9974d0  2556  WorldTerrainWrap_CanSnapRoadObjectToAnyEmptyPort */
  uVar1 = CAW_RoadNetworkFindSnapTarget
                    (*(void **)(DAT_10c700c4 + 0x5c),param_2,param_3,param_4,param_6);
  if ((char)uVar1 != '\0') {
    uVar2 = (**(code **)(*(int *)*param_4 + 0xc))();
    *param_5 = uVar2;
    return 1;
  }
  *param_4 = 0;
  *param_5 = 0;
  return 0;
}

