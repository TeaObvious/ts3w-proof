/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl; caller CD17B0 supplies seven DWORDs, seventh unused in
   this body; low AL success. Clears floor patterns then quarter flags, removes region walls,
   retains removed wall pattern map and closes surviving perimeter with those designs. Does NOT
   restore floor elevations. Native pattern-map lifetime is released after wall closure. */

bool __cdecl
BasementRemoval_ApplyRegion
          (void *param_1,undefined4 param_2,char *param_3,char *param_4,int **param_5,void *param_6,
          undefined *unusedCallerContext)

{
  uint *puVar1;
  char cVar2;
  char local_44;
  char local_43;
  char local_42;
  char local_40;
  char local_3f;
  char local_3e;
  void *local_3c;
  undefined4 local_38;
  undefined4 local_34;
  char *local_30;
  void *local_2c;
  undefined4 local_28;
  undefined4 local_24;
  char *local_20;
  undefined1 local_1c [4];
  undefined4 **local_18;
  undefined4 **local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  FUN_00c9cf90((int)param_1,'\x01');
  local_40 = *param_3;
  local_3f = param_3[1];
  local_3e = param_3[2] + -1;
  local_44 = *param_4;
  local_43 = param_4[1];
  local_42 = param_4[2] + -1;
  cVar2 = (char)param_2;
  BasementFloors_ApplyRegionPattern(param_1,cVar2,'\0',&local_40,&local_44,(int *)0x0,param_6);
  BasementRegion_ApplyQuarterFlags(param_1,param_2,&local_40,&local_44,(char *)0x0,param_6);
  local_18 = &local_18;
  local_4 = "UserTool/BasementPlacementHelper/WallLocToPatternInfoMap";
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = 0;
  local_14 = local_18;
  BasementWalls_RemoveInterior(param_1,cVar2,&local_40,&local_44,'\x01',param_6,local_1c);
  puVar1 = (uint *)BasementProducts_GetWallKey();
  local_2c = (void *)0x0;
  local_28 = 0;
  local_24 = 0;
  local_20 = "UserTool/BasementPlacementHelper/walls";
  FUN_00c5d450(cVar2,&local_40,&local_44,'\0',&local_2c);
  local_3c = (void *)0x0;
  local_38 = 0;
  local_34 = 0;
  local_30 = "UserTool/BasementPlacementHelper/walls";
  FUN_00c9ebd0(param_1,(int *)&local_2c,&local_3c);
  BasementWalls_CloseExposedPerimeter
            (param_1,param_2,puVar1,(int *)&local_3c,param_5,param_6,local_1c);
  FUN_00c9cf90((int)param_1,'\0');
  if (local_3c != (void *)0x0) {
    Memory_FreeIfNonNull(local_3c);
  }
  if (local_2c != (void *)0x0) {
    Memory_FreeIfNonNull(local_2c);
  }
  FUN_008b19b0(local_10);
  return true;
}

