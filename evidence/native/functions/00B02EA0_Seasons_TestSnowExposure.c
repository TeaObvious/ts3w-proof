/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Snow exposure point predicate. Returns exposed flag and separate allowance
   byte: streets reject exposure but allow retained snow, water/localpond reject both,
   interior/roof/floor filters reject. It is not equivalent to a generic terrain-height query or
   camera ground acceptance. */

bool __cdecl Seasons_TestSnowExposure(float *param_1,undefined1 *param_2)

{
  bool bVar1;
  ushort uVar2;
  void *lot;
  undefined4 uVar3;
  void *pvVar4;
  float10 fVar5;
  float local_34;
  TS3WPortalXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar4 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    lot = (void *)0x0;
  }
  else {
    local_30.x = *param_1;
    local_30.z = param_1[1];
    local_30.level = (int)param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30.x;
    fStack_1c = local_30.z;
    fStack_18 = (float)local_30.level;
    fStack_14 = fStack_24;
    lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,local_30.x,(float)local_30.level);
  }
  *param_2 = 0;
  if (lot == (void *)0x0) {
    if (*(void **)((int)pvVar4 + 0x5c) != (void *)0x0) {
      local_30.x = *param_1;
      local_30.z = param_1[1];
      local_30.level = (int)param_1[2];
      fStack_24 = param_1[3];
      local_20 = local_30.x;
      fStack_1c = local_30.z;
      fStack_18 = (float)local_30.level;
      fStack_14 = fStack_24;
      uVar3 = FUN_00b865c0(*(void **)((int)pvVar4 + 0x5c),local_30.x,(float)local_30.level,'\0','\0'
                          );
      if ((char)uVar3 != '\0') {
        *param_2 = 1;
        return false;
      }
    }
    fVar5 = WorldWater_GetSeaLevel((int)pvVar4);
    local_34 = (float)fVar5;
    local_30.x = *param_1;
    local_30.z = param_1[1];
    local_30.level = (int)param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30.x;
    fStack_1c = local_30.z;
    fStack_18 = (float)local_30.level;
    fStack_14 = fStack_24;
    fVar5 = WorldSurface_QueryHeight
                      (pvVar4,local_30.x,(float)local_30.level,0,'\x01','\0',(undefined1 *)0x0,
                       (undefined1 *)0x0,'\0','\0');
    if (fVar5 - (float10)1.0 <= (float10)local_34) {
      *param_2 = 0;
      return false;
    }
    local_30.x = *param_1;
    local_30.z = param_1[1];
    local_30.level = (int)param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30.x;
    fStack_1c = local_30.z;
    fStack_18 = (float)local_30.level;
    fStack_14 = fStack_24;
    pvVar4 = FUN_00c60880(pvVar4,local_30.x,(float)local_30.level,'\x01');
    if (pvVar4 != (void *)0x0) {
      *param_2 = 0;
      return false;
    }
    *param_2 = 1;
  }
  else {
    pvVar4 = *(void **)((int)lot + 0x298);
    if (pvVar4 != (void *)0x0) {
      local_30.x = -1.0;
      local_30.z = -1.0;
      local_30.level = 0;
      Lot_WorldPositionToPortalLocalXZLevel(lot,param_1,&local_30);
      uVar2 = LotRoom_ResolveForLocalLocation(pvVar4,&local_30.x,0,0);
      bVar1 = LotRoom_TestOutsideClassification(pvVar4,(uint)uVar2,1);
      if (bVar1) {
        local_34 = -1.714704e+38;
        LotLocation_EncodeCellAndQuadrant(&local_30.x,(char *)&local_34);
        bVar1 = FUN_00abc5d0(lot,(char *)&local_34);
        return bVar1;
      }
      return false;
    }
  }
  return true;
}

