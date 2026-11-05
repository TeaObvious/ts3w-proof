/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl; caller CD1700 supplies nine DWORDs, ninth unused in
   this body; low AL success. Copies compact corners and subtracts one level; orders elevation,
   quarter flags, interior wall removal, perimeter closure, floor patterns. Native child undo
   operations own mutations. Optional design pointers are separate from error context. */

bool __cdecl
BasementExcavation_ApplyRegion
          (undefined4 *param_1,undefined4 param_2,char *param_3,char *param_4,float param_5,
          void *param_6,int *param_7,int **param_8,undefined *unusedCallerContext)

{
  uint *puVar1;
  char cVar2;
  char local_18;
  char local_17;
  char local_16;
  char local_14;
  char local_13;
  char local_12;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  FUN_00c9cf90((int)param_1,'\x01');
  local_14 = *param_3;
  local_13 = param_3[1];
  local_12 = param_3[2] + -1;
  local_18 = *param_4;
  local_17 = param_4[1];
  local_16 = param_4[2] + -1;
  cVar2 = (char)param_2;
  BasementExcavation_ApplyVertexHeights(param_1,cVar2,&local_14,&local_18,param_5,param_6);
  BasementRegion_ApplyQuarterFlags(param_1,param_2,&local_14,&local_18,(char *)0x1,param_6);
  BasementWalls_RemoveInterior(param_1,cVar2,&local_14,&local_18,'\0',param_6,(void *)0x0);
  puVar1 = (uint *)BasementProducts_GetWallKey();
  local_10 = (void *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "UserTool/BasementPlacementHelper/walls";
  FUN_00c5d450(cVar2,&local_14,&local_18,'\0',&local_10);
  BasementWalls_CloseExposedPerimeter
            (param_1,param_2,puVar1,(int *)&local_10,param_8,param_6,(void *)0x0);
  BasementFloors_ApplyRegionPattern(param_1,cVar2,'\x01',&local_14,&local_18,param_7,param_6);
  FUN_00c9cf90((int)param_1,'\0');
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  return true;
}

