/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  undefined4 *puVar4;
  short *psVar5;
  uint uVar7;
  int *piVar8;
  undefined4 uVar9;
  LPCWSTR pWVar10;
  uint uVar11;
  LPCWSTR pWVar12;
  undefined3 extraout_var;
  uint uVar13;
  void *this;
  undefined4 *local_428;
  void *local_424;
  uint local_420 [3];
  char *local_414;
  undefined2 local_410 [520];
  short *psVar6;
  
  if (param_1[8] != 0) {
    return in_EAX & 0xffffff00;
  }
  local_428 = param_1;
  local_424 = (void *)FUN_00aa99c0();
  if (local_424 != (void *)0x0) {
    FUN_00aa99e0(1);
  }
  pWVar12 = (LPCWSTR)param_1[4];
  puVar4 = (undefined4 *)FUN_004e4520(0x3e0,0x10,0,"World",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_00c67020(puVar4);
  }
  param_1[8] = puVar4;
  psVar5 = (short *)&DAT_010f57e0;
  do {
    psVar6 = psVar5;
    psVar5 = psVar6 + 1;
  } while (*psVar5 != 0);
  uVar7 = FUN_00aaa750(param_1 + 4,(short *)&DAT_010f57e0,0xffffffff,(int)(psVar6 + -0x87abef) >> 1)
  ;
  this = local_424;
  if (uVar7 == 0xffffffff) {
    FUN_004ec7e0(local_410);
    FUN_004ee400(local_410,pWVar12,0);
    uVar7 = FUN_004dbd70(pWVar12);
    if ((char)uVar7 == '\0') {
      FUN_004edf60(local_410,(ushort *)pWVar12);
      uVar13 = 0;
      uVar7 = FUN_00595590(0x11cede0);
      param_1 = local_428;
      if (uVar7 != 0) {
        do {
          puVar4 = (undefined4 *)FUN_005955b0(&DAT_011cede0,uVar13,(undefined4 *)0x0);
          FUN_004ee3e0(local_410,(short *)*puVar4,0);
          pWVar10 = (LPCWSTR)FUN_007e51a0(local_410);
          uVar11 = FUN_004dbd70(pWVar10);
          if ((char)uVar11 != '\0') {
            pWVar12 = (LPCWSTR)FUN_007e51a0(local_410);
            param_1 = local_428;
            break;
          }
          uVar13 = uVar13 + 1;
          param_1 = local_428;
        } while (uVar13 < uVar7);
      }
    }
    uVar7 = FUN_00aa99c0();
    this = local_424;
    if ((uVar7 != 0) && (*(char *)(uVar7 + 0x1d) == '\0')) {
      cVar3 = FUN_00c6d7b0((void *)param_1[8],pWVar12);
      uVar7 = CONCAT31(extraout_var,cVar3);
      this = local_424;
      if (cVar3 != '\0') {
        uVar9 = LoadSave_ConfigureCurrentTravelDatabases('\x01',0);
        if (local_424 != (void *)0x0) {
          uVar9 = FUN_00aa99e0(0);
        }
        return CONCAT31((int3)((uint)uVar9 >> 8),1);
      }
    }
  }
  else if (local_424 != (void *)0x0) {
    local_420[0] = 0;
    local_420[1] = 0;
    local_420[2] = 0;
    local_414 = "UI/MainMenu";
    FUN_0040b590(local_420,pWVar12);
    local_428 = (undefined4 *)0x0;
    piVar8 = FUN_009348e0((int *)&local_428);
    uVar9 = FUN_00aab460(local_420,piVar8);
    if (((char)uVar9 != '\0') && (bVar2 = LoadSaveManager_DispatchLoad(this,local_428), bVar2)) {
      LoadSave_ConfigureCurrentTravelDatabases('\x01',0);
      FUN_00565d20((int *)&local_428);
      FUN_004ef8f0((int *)local_420);
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
    uVar7 = local_420[0];
    if ((2 < (int)(local_420[2] - local_420[0] & 0xfffffffe)) && (local_420[0] != 0)) {
      uVar7 = FUN_004e44e0(local_420[0]);
    }
  }
  if ((void *)param_1[8] != (void *)0x0) {
    uVar7 = FUN_00c6b5c0((void *)param_1[8]);
    if ((undefined4 *)param_1[8] != (undefined4 *)0x0) {
      uVar7 = (*(code *)**(undefined4 **)param_1[8])(1);
    }
    param_1[8] = 0;
  }
  if (this != (void *)0x0) {
    uVar7 = FUN_00aa99e0(0);
  }
  return uVar7 & 0xffffff00;
}

