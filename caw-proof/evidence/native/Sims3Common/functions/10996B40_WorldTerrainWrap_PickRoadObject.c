/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_PickRoadObject. Export
   ordinal(s): 2582. Entry VA: 0x10996b40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000AF5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
WorldTerrainWrap_PickRoadObject
          (undefined4 param_1,float param_2,float param_3,undefined4 *param_4,int *param_5,
          undefined4 *param_6)

{
  void *this;
  void *pvVar1;
  int iVar2;
  
                    /* 0x996b40  2582  WorldTerrainWrap_PickRoadObject */
  this = *(void **)(DAT_10c700c4 + 0x5c);
  pvVar1 = FUN_10142d20(this,param_2,param_3);
  *param_5 = (int)pvVar1;
  if (pvVar1 != (void *)0x0) {
    *param_4 = 5;
    *param_6 = 0xffffffff;
    return;
  }
  iVar2 = FUN_10143d50(this,param_2,param_3);
  *param_5 = iVar2;
  if (iVar2 != 0) {
    *param_4 = 4;
    *param_6 = 0xffffffff;
    return;
  }
  iVar2 = FUN_10143d00(this,param_2,param_3,param_6);
  *param_5 = iVar2;
  if (iVar2 != 0) {
    *param_4 = 2;
    return;
  }
  iVar2 = FUN_10143d30(this,param_2,param_3);
  *param_5 = iVar2;
  if (iVar2 != 0) {
    *param_4 = 3;
    *param_6 = 0xffffffff;
    return;
  }
  iVar2 = FUN_10143cd0(this,param_2,param_3,param_6);
  *param_5 = iVar2;
  if (iVar2 != 0) {
    *param_4 = 1;
  }
  return;
}

