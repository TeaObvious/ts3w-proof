/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl6DWORDargs/RET. Inputs lot, lowbytelevel, center
   float2, binary32angle, halfextents float2, output. FSIN/FCOS build and transform four corners,
   reduce bounds. x87 source +/-.001 (binary32operand) passes double to original MSVCR80floor/ceil;
   ceil then floor results are storedfloat. Supplies these rounded bounds to AD1990 with
   append0/inset0. A managed caller using binary32bounds+/-.001 before floor is not proven
   bit-identical at boundaries. This is quarter collection, not persistent floor-hole write.
   
   PC1.67 original static instructions. cdecl6physicalDWORDslots/plainRET;
   actualrotationusingFSIN/FCOS, corners and bounds, floor(min+.001)/ceil(max-.001) throughCRT
   imports; AD1990flags0/0 suppliesquarters. x87epsilon andstoredfloatboundaries differfrom current
   floatMathF adapter. Existing sharedcoverage/predicate closure applies; no persistence or
   meshdrawcompletion inferred. */

void __cdecl
FloorCutout_CollectRotatedRectangleQuarters
          (int param_1,undefined1 param_2,undefined4 *param_3,float param_4,float *param_5,
          undefined4 *param_6)

{
  float *pfVar1;
  float10 fVar2;
  float10 fVar3;
  double dVar4;
  double dVar5;
  float local_ac;
  float local_a8;
  void *local_a4;
  float *local_a0;
  float *local_9c;
  char *local_98;
  void *local_94;
  undefined4 local_90;
  undefined4 local_8c;
  char *local_88;
  float local_84;
  float local_80;
  float local_7c;
  float local_78;
  float local_74;
  float local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  undefined4 local_5c;
  float local_58;
  float local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  float local_44;
  
  fVar2 = (float10)fsin((float10)param_4);
  local_5c = 0;
  local_50 = 0;
  local_44 = 1.0;
  local_4c = *param_3;
  local_48 = param_3[1];
  local_ac = -0.0 - *param_5;
  local_a8 = -0.0 - param_5[1];
  local_a4 = (void *)0x0;
  local_a0 = (float *)0x0;
  local_9c = (float *)0x0;
  local_98 = "Lot/FloorManager/SetFloorCutout/PointList";
  fVar3 = (float10)fcos((float10)param_4);
  local_64 = (float)fVar3;
  local_60 = (float)-fVar2;
  local_58 = (float)fVar2;
  local_54 = (float)fVar3;
  FUN_00405c10(&local_a4,(undefined4 *)0x0,&local_ac);
  local_a8 = param_5[1];
  local_ac = -0.0 - *param_5;
  if (local_a0 < local_9c) {
    pfVar1 = local_a0 + 2;
    if (local_a0 != (float *)0x0) {
      *local_a0 = local_ac;
      local_a0[1] = local_a8;
    }
  }
  else {
    FUN_00405c10(&local_a4,local_a0,&local_ac);
    pfVar1 = local_a0;
  }
  local_a0 = pfVar1;
  local_ac = *param_5;
  local_a8 = param_5[1];
  if (local_a0 < local_9c) {
    pfVar1 = local_a0 + 2;
    if (local_a0 != (float *)0x0) {
      *local_a0 = local_ac;
      local_a0[1] = local_a8;
    }
  }
  else {
    FUN_00405c10(&local_a4,local_a0,&local_ac);
    pfVar1 = local_a0;
  }
  local_a0 = pfVar1;
  local_ac = *param_5;
  local_a8 = -0.0 - param_5[1];
  if (local_a0 < local_9c) {
    pfVar1 = local_a0 + 2;
    if (local_a0 != (float *)0x0) {
      *local_a0 = local_ac;
      local_a0[1] = local_a8;
    }
  }
  else {
    FUN_00405c10(&local_a4,local_a0,&local_ac);
    pfVar1 = local_a0;
  }
  local_a0 = pfVar1;
  local_94 = (void *)0x0;
  local_90 = 0;
  local_8c = 0;
  local_88 = "Lot/FloorManager/SetFloorCutout/TransformedPointList";
  Geometry_TransformPolygonXZByMatrix3((int *)&local_a4,&local_64,(int *)&local_94);
  Geometry_GetPolygonXZBounds((int *)&local_94,&local_84);
  dVar4 = ceil((double)(local_78 - 0.001));
  local_ac = (float)dVar4;
  dVar4 = ceil((double)(local_7c - 0.001));
  dVar5 = floor((double)(local_84 + 0.001));
  local_74 = (float)dVar5;
  dVar5 = floor((double)(local_80 + 0.001));
  local_70 = (float)dVar5;
  local_68 = local_ac;
  local_6c = (float)dVar4;
  LotGeometry_CollectPolygonQuarterCoverage(&local_94,&local_74,param_1,param_2,param_6,'\0','\0');
  if (local_94 != (void *)0x0) {
    Memory_FreeIfNonNull(local_94);
  }
  if (local_a4 != (void *)0x0) {
    Memory_FreeIfNonNull(local_a4);
  }
  return;
}

