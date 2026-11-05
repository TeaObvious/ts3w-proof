/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original instruction review: this in ECX state object; AL Boolean. Rejectsalready loaded world
   at+20, constructsWorld0x3e0; filename+10 ischecked for colon. No-colon loads world via00c6d7b0;
   colon resolves SaveInfo thenexisting00aafb40 load. Successful paths
   configuretravel/exportdatabases00aad150(1,0), release save guard andreturn AL=1. Failure
   unloads/deletesnew World andclears+20; no runtime load test. */

uint __fastcall GameState_LoadRequestedWorldOrSave(undefined4 *param_1)

{
  int iVar1;
  bool bVar2;
  char cVar3;
  uint in_EAX;
  void *pvVar4;
  short *psVar6;
  short *psVar5;
  void *pvVar7;
  int *piVar8;
  undefined4 uVar9;
  void *extraout_EAX;
  uint uVar10;
  undefined4 *puVar11;
  LPCWSTR pWVar12;
  uint uVar13;
  LPCWSTR pWVar14;
  undefined3 extraout_var;
  uint uVar15;
  undefined4 *local_428;
  void *local_424;
  void *local_420;
  undefined4 local_41c;
  int local_418;
  char *local_414;
  undefined2 local_410 [520];
  
  if (param_1[8] != 0) {
    return in_EAX & 0xffffff00;
  }
  local_428 = param_1;
  local_424 = (void *)FUN_00aa99c0();
  if (local_424 != (void *)0x0) {
    FUN_00aa99e0(1);
  }
  pWVar14 = (LPCWSTR)param_1[4];
  pvVar4 = (void *)FUN_004e4520(0x3e0,0x10,0,"World",0);
  if (pvVar4 == (void *)0x0) {
    pvVar4 = (void *)0x0;
  }
  else {
    pvVar4 = WorldManager_Construct(pvVar4);
  }
  param_1[8] = pvVar4;
  psVar5 = (short *)&DAT_010f57e0;
  do {
    psVar6 = psVar5;
    psVar5 = psVar6 + 1;
  } while (*psVar5 != 0);
  pvVar7 = (void *)FUN_00aaa750(param_1 + 4,(short *)&DAT_010f57e0,0xffffffff,
                                (int)(psVar6 + -0x87abef) >> 1);
  pvVar4 = local_424;
  if (pvVar7 == (void *)0xffffffff) {
    FUN_004ec7e0(local_410);
    FUN_004ee400(local_410,pWVar14,0);
    uVar10 = FUN_004dbd70(pWVar14);
    if ((char)uVar10 == '\0') {
      FUN_004edf60(local_410,(ushort *)pWVar14);
      uVar15 = 0;
      uVar10 = FUN_00595590(0x11cede0);
      if (uVar10 != 0) {
        do {
          puVar11 = (undefined4 *)FUN_005955b0(&DAT_011cede0,uVar15,(undefined4 *)0x0);
          FUN_004ee3e0(local_410,(short *)*puVar11,0);
          pWVar12 = (LPCWSTR)FUN_007e51a0(local_410);
          uVar13 = FUN_004dbd70(pWVar12);
          if ((char)uVar13 != '\0') {
            pWVar14 = (LPCWSTR)FUN_007e51a0(local_410);
            break;
          }
          uVar15 = uVar15 + 1;
        } while (uVar15 < uVar10);
      }
      param_1 = local_428;
    }
    pvVar7 = (void *)FUN_00aa99c0();
    if ((pvVar7 != (void *)0x0) && (*(char *)((int)pvVar7 + 0x1d) == '\0')) {
      cVar3 = FUN_00c6d7b0((void *)param_1[8],pWVar14);
      pvVar7 = (void *)CONCAT31(extraout_var,cVar3);
      if (cVar3 != '\0') {
        uVar9 = LoadSave_ConfigureCurrentTravelDatabases('\x01',0);
        if (local_424 != (void *)0x0) {
          uVar9 = FUN_00aa99e0(0);
        }
        return CONCAT31((int3)((uint)uVar9 >> 8),1);
      }
    }
    pvVar4 = local_424;
  }
  else if (local_424 != (void *)0x0) {
    local_420 = (void *)0x0;
    local_41c = 0;
    local_418 = 0;
    local_414 = "UI/MainMenu";
    FUN_0040b590(&local_420,pWVar14);
    local_428 = (undefined4 *)0x0;
    piVar8 = FUN_009348e0((int *)&local_428);
    uVar9 = FUN_00aab460(&local_420,piVar8);
    if (((char)uVar9 != '\0') && (bVar2 = LoadSaveManager_DispatchLoad(pvVar4,local_428), bVar2)) {
      LoadSave_ConfigureCurrentTravelDatabases('\x01',0);
      FUN_00565d20((int *)&local_428);
      FUN_004ef8f0((int *)&local_420);
      uVar9 = FUN_00aa99e0(0);
      return CONCAT31((int3)((uint)uVar9 >> 8),1);
    }
    if (local_428 != (undefined4 *)0x0) {
      iVar1 = local_428[1];
      local_428[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        local_428[1] = 1;
        (**(code **)*local_428)(1);
      }
    }
    pvVar7 = local_420;
    if ((2 < (int)(local_418 - (int)local_420 & 0xfffffffeU)) && (local_420 != (void *)0x0)) {
      Memory_FreeIfNonNull(local_420);
      pvVar7 = extraout_EAX;
    }
  }
  if ((void *)param_1[8] != (void *)0x0) {
    pvVar7 = (void *)FUN_00c6b5c0((void *)param_1[8]);
    if ((undefined4 *)param_1[8] != (undefined4 *)0x0) {
      pvVar7 = (void *)(*(code *)**(undefined4 **)param_1[8])(1);
    }
    param_1[8] = 0;
  }
  if (pvVar4 != (void *)0x0) {
    pvVar7 = (void *)FUN_00aa99e0(0);
  }
  return (uint)pvVar7 & 0xffffff00;
}

