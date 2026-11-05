/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 map/lot detail contract. Camera supplies distinct vectors via direct camera+60
   and helper0095fde0. Calls Terrain_UpdateStreamingTilesFromCamera before lot arbitration using
   helper vector and boolean(camera+64<=manager+e8 || manager+da); exact original vector names are
   not assigned here. Unless manager+258 suppresses lot arbitration, pass deltaSeconds, camera
   vector, !camera+6df, camera pointer to WorldManager_UpdateLotDetailRequests. Freeze+d9 affects
   that subcall, not prior terrain streaming or remaining subsystem updates. The remaining body
   updates other world subsystems and handles pending world commands; no blanket residency guarantee
   is inferred. */

uint __thiscall WorldManager_UpdateFrame(void *this,float deltaSeconds,float simulationSeconds)

{
  uint *puVar1;
  bool bVar2;
  char cVar3;
  void *pvVar4;
  int iVar5;
  float *pfVar6;
  void *this_00;
  undefined *puVar7;
  undefined4 *puVar8;
  int *piVar9;
  uint uVar10;
  uint uVar11;
  float fVar12;
  uchar local_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined4 local_60;
  float fStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  float local_50;
  float local_40;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  if (*(int *)((int)this + 0x1b4) == 0) {
    fVar12 = *(float *)((int)this + 0x128) * simulationSeconds + *(float *)((int)this + 0x124);
    *(float *)((int)this + 0x124) = fVar12;
    if (86400.0 < fVar12) {
      *(float *)((int)this + 0x124) = fVar12 - 86400.0;
    }
  }
  pvVar4 = LoadPump_ReadFrameServiceGlobal();
  iVar5 = FUN_005361d0((int)pvVar4);
  local_60 = *(undefined4 *)(iVar5 + 0x60);
  fStack_5c = *(float *)(iVar5 + 100);
  uStack_58 = *(undefined4 *)(iVar5 + 0x68);
  uStack_54 = *(undefined4 *)(iVar5 + 0x6c);
  pfVar6 = (float *)FUN_0095fde0(iVar5);
  local_70 = *pfVar6;
  fStack_6c = pfVar6[1];
  fStack_68 = pfVar6[2];
  fStack_64 = pfVar6[3];
  if (*(int *)((int)this + 0x58) != 0) {
    pvVar4 = (void *)FUN_006e9660();
    this_00 = (void *)FUN_006fdbe0();
    if ((*(int *)((int)this + 0x1b4) != 0) &&
       (((pvVar4 != (void *)0x0 && (bVar2 = FUN_006b58d0(pvVar4,'\x01'), bVar2)) ||
        ((this_00 != (void *)0x0 && (bVar2 = FUN_006fdb80(this_00,'\x01'), bVar2)))))) {
      TerrainData_LoadHeightMap
                (*(void **)(*(int *)((int)this + 0x58) + 100),*(void **)((int)this + 0x80),
                 (uint)(*(char *)((int)this + 0x43) == '\0'),true);
    }
    local_40 = fStack_5c;
    local_50 = *(float *)((int)this + 0xe8);
    if ((fStack_5c <= local_50) || (local_74 = '\0', *(char *)((int)this + 0xda) != '\0')) {
      local_74 = '\x01';
    }
    Terrain_UpdateStreamingTilesFromCamera(*(void **)((int)this + 0x58),&local_70,local_74);
  }
  if (*(char *)((int)this + 600) == '\0') {
    pvVar4 = LoadPump_ReadFrameServiceGlobal();
    pvVar4 = (void *)FUN_005361d0((int)pvVar4);
    if (pvVar4 != (void *)0x0) {
      FUN_00960ca0(pvVar4,local_20,local_30);
    }
    cVar3 = FUN_0095fe30((int)pvVar4);
    WorldManager_UpdateLotDetailRequests(this,deltaSeconds,&local_70,cVar3 == '\0',pvVar4);
  }
  if (*(void **)((int)this + 0x5c) != (void *)0x0) {
    FUN_00b87950(*(void **)((int)this + 0x5c));
  }
  if (*(int *)((int)this + 0x60) != 0) {
    if (*(int *)((int)this + 0x110) != 0) {
      FUN_00c09f70(*(void **)((int)this + 0x60),(int *)((int)this + 0x114));
      LOCK();
      *(undefined4 *)((int)this + 0x110) = 0;
      UNLOCK();
      *(int *)((int)this + 0x114) = 0;
      *(undefined4 *)((int)this + 0x118) = 0;
      *(undefined4 *)((int)this + 0x11c) = 0;
      *(undefined4 *)((int)this + 0x120) = 0;
    }
    FUN_00c0c780(*(void **)((int)this + 0x60),simulationSeconds);
  }
  uVar11 = 0;
  uVar10 = *(int *)((int)this + 0x104) - *(int *)((int)this + 0x100) >> 2;
  if (uVar10 != 0) {
    do {
      FUN_00b5c710(*(void **)(*(int *)((int)this + 0x100) + uVar11 * 4),simulationSeconds);
      uVar11 = uVar11 + 1;
    } while (uVar11 < uVar10);
  }
  if (*(void **)((int)this + 0x74) != (void *)0x0) {
    WeatherManager_Update(*(void **)((int)this + 0x74),simulationSeconds,deltaSeconds);
  }
  if (*(void **)((int)this + 100) != (void *)0x0) {
    FUN_00c14760(*(void **)((int)this + 100),simulationSeconds,deltaSeconds);
  }
  if (*(void **)((int)this + 0x68) != (void *)0x0) {
    FUN_00a4f680(*(void **)((int)this + 0x68),simulationSeconds);
  }
  puVar1 = (uint *)((int)this + 0x98);
  uVar10 = 0;
  if (*(int *)((int)this + 0x98) != 0) {
    if (((*puVar1 == 2) && (*(int *)((int)this + 0x74) != 0)) &&
       (pvVar4 = (void *)FUN_004b3790(*(int *)((int)this + 0x74)), pvVar4 != (void *)0x0)) {
      FUN_00c17290(pvVar4);
    }
    if (*puVar1 == 5) {
      ScriptCore.Animation::Animation_SetMissingAnimationCallback();
    }
    if ((*puVar1 == 1) && (*(int *)((int)this + 0x60) != 0)) {
      FUN_00c0ac00(*(int *)((int)this + 0x60));
    }
    if (*puVar1 == 3) {
      FUN_00af9310();
    }
    if (*puVar1 == 4) {
      FUN_00c112a0(*(int *)((int)this + 100));
    }
    if (*puVar1 == 6) {
      iVar5 = FUN_006e9640();
      FUN_006afe50(iVar5);
    }
    if ((*puVar1 == 7) || (*puVar1 == 8)) {
      FUN_00964f90();
    }
    if (*puVar1 == 0xe) {
      FUN_006ac740();
    }
    if (*puVar1 == 0xf) {
      FUN_00c5f950((int)this);
      *(undefined1 *)((int)this + 4) = 1;
    }
    if (*puVar1 == 9) {
      puVar7 = FUN_00688bd0();
      FUN_006887a0((int)puVar7);
      puVar8 = (undefined4 *)FUN_004e4500(0x18,"World/MessageBasicRC",0);
      if (puVar8 == (undefined4 *)0x0) {
        puVar8 = (undefined4 *)0x0;
      }
      else {
        puVar8[4] = 0;
        *puVar8 = &PTR_FUN_0106c91c;
        LOCK();
        puVar8[1] = 0;
        UNLOCK();
        *puVar8 = &PTR_FUN_0106c91c;
      }
      piVar9 = (int *)MessageDispatch_GetCurrent();
      (**(code **)(*piVar9 + 0x1c))(0x486519d,puVar8,0,0);
    }
    if ((*puVar1 == 10) && (DAT_011eec30 != 0)) {
      ThumbnailCameras_LoadInstalledSources(DAT_011eec30);
    }
    if ((*puVar1 == 0xc) && (DAT_011eec30 != 0)) {
      ThumbnailSizes_LoadSource(DAT_011eec30);
    }
    if (*puVar1 == 0xb) {
      FUN_006de1b0();
    }
    if (*puVar1 == 0xd) {
      FUN_00ab1010();
    }
    switch(*puVar1) {
    case 2:
    case 4:
    case 5:
    case 6:
    case 0xe:
      iVar5 = FUN_006e9640();
      FUN_006aca60(iVar5);
    }
    LOCK();
    uVar10 = *puVar1;
    *puVar1 = 0;
    UNLOCK();
  }
  return uVar10;
}

