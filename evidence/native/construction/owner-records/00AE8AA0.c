/* Advances the staged detailed-view initialization using stage+24 and substate+28, conditional
   core-lot lock admission and an elapsed-clock budget. Stage3 constructs/binds the floor receiver
   at renderer+230 to this renderer; final stage marks +1E and calls the child-state handlers with
   argument1. AL1 means already/finally initialized; AL0 also covers not admitted, yielded or failed
   paths. No original runtime schedule or complete child initialization contract is established.
   Analyst-assigned name. */

undefined4 __fastcall AdvanceLotRendererDetailInitialization(void *param_1)

{
  uint *puVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  bool bVar5;
  bool bVar6;
  char cVar7;
  undefined4 in_EAX;
  uint3 uVar14;
  void *pvVar8;
  undefined4 uVar9;
  BOOL BVar10;
  undefined4 *puVar11;
  int *piVar12;
  uint extraout_EAX;
  uint uVar13;
  float10 fVar15;
  float10 fVar16;
  undefined8 uVar17;
  char local_bc;
  void *local_b8;
  undefined4 local_b4;
  int local_b0;
  DWORD local_ac;
  int local_a8;
  int local_9c;
  void *local_94;
  undefined4 local_90;
  undefined4 local_8c;
  char *local_88;
  void *local_84;
  undefined4 local_80;
  undefined4 local_7c;
  char *local_78;
  void *local_74;
  undefined4 local_70;
  undefined4 local_6c;
  char *local_68;
  void *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  char *local_58;
  void *local_54;
  undefined4 local_50;
  undefined4 local_4c;
  char *local_48;
  void *local_44;
  undefined4 local_40;
  undefined4 local_3c;
  char *local_38;
  void *local_34;
  undefined4 local_30;
  undefined4 local_2c;
  char *local_28;
  LARGE_INTEGER local_24;
  DWORD local_18 [6];

  uVar14 = (uint3)((uint)in_EAX >> 8);
  if (*(char *)((int)param_1 + 0x1e) != '\0') {
    return CONCAT31(uVar14,1);
  }
  /* 00AE8ABC: Detailed initialization requires byte+1C; the earlier +1E path returns AL1 without rebuilding. Upper EAX bytes are not a normalized Boolean result. */
  if (*(char *)((int)param_1 + 0x1c) == '\0') {
    return (uint)uVar14 << 8;
  }
  local_b0 = 0x14;
  pvVar8 = (void *)FUN_006fdbe0();
  if ((pvVar8 != (void *)0x0) &&
     (uVar9 = FUN_006fda50(pvVar8,*(int *)((int)param_1 + 0x10),*(int *)((int)param_1 + 0x14)),
     (char)uVar9 != '\0')) {
    local_b0 = 0x23;
  }
  if ((DAT_011edbc4 != 0) && (*(int *)(DAT_011edbc4 + 0x1b4) == 0)) {
    local_b0 = 2000;
  }
  ElapsedClock_ConstructAndOptionallyStart(local_18,4,'\0');
  FUN_00408760(local_18);
  iVar3 = *(int *)((int)param_1 + 0x24);
  do {
    if (iVar3 == 0x15) {
      FUN_00ad8da0((int)param_1 + 0x370);
      if ((DAT_011edbc4 != 0) && (pvVar8 = *(void **)(DAT_011edbc4 + 0x74), pvVar8 != (void *)0x0))
      {
        uVar9 = FUN_00d6ac90(pvVar8,0.49999988);
        local_b4 = CONCAT31(local_b4._1_3_,(char)uVar9);
        if ((char)uVar9 != '\0') {
          FUN_00aa4bd0(*(void **)((int)param_1 + 0x230),local_b4);
        }
        uVar9 = FUN_00d6ad10((int)pvVar8);
        local_b4 = CONCAT31(local_b4._1_3_,(char)uVar9);
        if ((char)uVar9 != '\0') {
          FUN_00aa4c70(*(void **)((int)param_1 + 0x230),local_b4);
        }
      }
      if (*(char *)((int)param_1 + 0x3d8) != '\0') {
        FUN_00ae3150(param_1);
      }
      if (*(void **)((int)param_1 + 0x230) != (void *)0x0) {
        FUN_00aa0830(*(void **)((int)param_1 + 0x230),'\x01');
      }
      if (*(void **)((int)param_1 + 0x240) != (void *)0x0) {
        FUN_00be7620(*(void **)((int)param_1 + 0x240),'\x01');
      }
      if (*(void **)((int)param_1 + 0x238) != (void *)0x0) {
        FUN_00c4bee0(*(void **)((int)param_1 + 0x238),'\x01');
      }
      if (*(void **)((int)param_1 + 0x234) != (void *)0x0) {
        FUN_00af84f0(*(void **)((int)param_1 + 0x234),'\x01');
      }
      if (*(void **)((int)param_1 + 0x254) != (void *)0x0) {
        FUN_00b24dd0(*(void **)((int)param_1 + 0x254),'\x01');
      }
      *(undefined1 *)((int)param_1 + 0x1e) = 1;
      LotRenderer_ApplyDisplayLevel(param_1,*(int *)((int)param_1 + 0x29c),'\x01');
      uVar9 = FUN_00ae0a20(param_1,'\x01');
      return CONCAT31((int3)((uint)uVar9 >> 8),1);
    }
    ElapsedClock_ConstructAndOptionallyStart(&local_ac,4,'\0');
    if (local_ac == 0 && local_a8 == 0) {
      if (local_9c == 1) {
        uVar17 = rdtsc();
        local_a8 = (int)((ulonglong)uVar17 >> 0x20);
        local_ac = (DWORD)uVar17;
      }
      else {
        QueryPerformanceCounter(&local_24);
        local_ac = local_24.s.LowPart;
        local_a8 = local_24.s.HighPart;
      }
    }
    cVar2 = *(char *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_01069bc0 +
                     *(int *)((int)param_1 + 0x24));
    if (cVar2 != '\0') {
      BVar10 = TryEnterCriticalSection((LPCRITICAL_SECTION)(*(int *)((int)param_1 + 0x18) + 0xd0));
      uVar13 = 0;
      if (BVar10 == 0) goto LAB_00ae9691;
      cVar7 = FUN_00ab1020(*(int *)((int)param_1 + 0x18));
      if (cVar7 == '\0') {
        LeaveCriticalSection((LPCRITICAL_SECTION)(*(int *)((int)param_1 + 0x18) + 0xd0));
        return extraout_EAX & 0xffffff00;
      }
    }
    bVar5 = true;
    bVar6 = false;
    local_bc = '\x01';
    switch(*(undefined4 *)((int)param_1 + 0x24)) {
    case 0:
      if (*(int *)((int)param_1 + 0x3d0) != 0) {
        FUN_00adf2a0(*(int *)((int)param_1 + 0x3d0));
      }
      pvVar8 = LoadPump_ReadFrameServiceGlobal();
      uVar17 = FUN_00c5f560(DAT_011edbc4);
      if ((((int)uVar17 == *(int *)(*(int *)((int)param_1 + 0x18) + 0x48)) &&
          ((int)((ulonglong)uVar17 >> 0x20) == *(int *)(*(int *)((int)param_1 + 0x18) + 0x4c))) &&
         (*(int *)((int)param_1 + 0x29c) < 0)) {
        FrameService_SetForwardedPointer(pvVar8,0);
        SceneRenderer_SetBasementView(pvVar8,'\0',0,0);
        FUN_006e9280(pvVar8,'\0',0,0);
        FUN_006e92c0(pvVar8,'\0');
        iVar3 = *(int *)(DAT_011edbc4 + 100);
        *(undefined1 *)(iVar3 + 0x218) = 0;
        *(undefined1 *)(iVar3 + 0x219) = 0;
        *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 0;
      }
      iVar3 = *(int *)(*(int *)((int)param_1 + 0x18) + 0x2e8);
      if (iVar3 == 0) {
        uVar13 = 0;
        uVar9 = 0;
      }
      else {
        uVar13 = *(uint *)(iVar3 + 8);
        uVar9 = *(undefined4 *)(iVar3 + 0xc);
      }
      puVar1 = (uint *)((int)param_1 + 0x2f8);
      *(undefined4 *)((int)param_1 + 0x2fc) = uVar9;
      *puVar1 = uVar13;
      if (uVar13 != 0 || *(int *)((int)param_1 + 0x2fc) != 0) {
        pvVar8 = (void *)FUN_006fdbe0();
        FUN_00701850(pvVar8,*puVar1,*(undefined4 *)((int)param_1 + 0x2fc),
                     (uint)*(byte *)((int)param_1 + 0x1d));
      }
      FUN_00ab3c40(*(void **)((int)param_1 + 0x18),puVar1,(undefined4 *)((int)param_1 + 0x300),
                   (undefined1 *)((int)param_1 + 0x31c),(undefined4 *)((int)param_1 + 0x310));
      break;
    case 1:
      if (*(char *)(DAT_011edbc4 + 0x151) != '\0') {
        puVar11 = (undefined4 *)FUN_004e4500(0xd8,"LotRenderer/LotLightingManager",0);
        if (puVar11 == (undefined4 *)0x0) {
          puVar11 = (undefined4 *)0x0;
        }
        else {
          puVar11 = FUN_00adc3e0(puVar11);
        }
        *(undefined4 **)((int)param_1 + 0x23c) = puVar11;
        uVar9 = FUN_00adb420(puVar11,*(int **)((int)param_1 + 0x18));
        local_bc = (char)uVar9;
        if (local_bc != '\0') {
          FUN_00ada820(*(void **)((int)param_1 + 0x23c),(int *)((int)param_1 + 0x29c));
          *(undefined1 *)(*(int *)((int)param_1 + 0x23c) + 0x4f) = 1;
        }
      }
      break;
    case 2:
      pvVar8 = (void *)FUN_004e4500(0x1c,"LotRenderer/TriangulationLayer",0);
      if (pvVar8 == (void *)0x0) {
        pvVar8 = (void *)0x0;
      }
      else {
        pvVar8 = (void *)FUN_00a431e0(pvVar8,"LotRenderer/TriangulationLayer");
      }
      *(void **)((int)param_1 + 0x94) = pvVar8;
      FUN_00a437b0(pvVar8,*(int *)((int)param_1 + 0x60),*(int *)((int)param_1 + 100));
      pvVar8 = *(void **)(*(int *)((int)param_1 + 0x94) + 0xc);
      memset(pvVar8,0,*(int *)(*(int *)((int)param_1 + 0x94) + 0x10) - (int)pvVar8);
      break;
    case 3:
      if (*(int *)((int)param_1 + 0x28) == 0) {
        puVar11 = (undefined4 *)FUN_004e4500(0x160,"LotRenderer/FloorRenderManager",0);
        if (puVar11 == (undefined4 *)0x0) {
          puVar11 = (undefined4 *)0x0;
        }
        else {
          puVar11 = InitializeFloorRenderManager(puVar11);
        }
        /* 00AE8DC3: Stage3/substate0 stores the new AA3080 floor receiver at renderer+230. The following AA0640 call uses this same renderer as its owner argument. */
        *(undefined4 **)((int)param_1 + 0x230) = puVar11;
        /* 00AE8DC9: ECX is the new floor receiver and stack argument is the renderer ESI. AA0640 stores renderer at receiver+8, then registers that exact receiver pointer for event0431BFC9 and the other listed IDs. */
        uVar9 = BindFloorMessageOwnerAndRegister(puVar11,(int)param_1);
        local_bc = (char)uVar9;
        if (local_bc != '\0') {
          FUN_00aa1c10(*(int *)((int)param_1 + 0x230));
          FUN_00aa2690(*(int *)((int)param_1 + 0x230));
          *(int *)((int)param_1 + 0x28) = *(int *)((int)param_1 + 0x28) + 1;
          bVar5 = false;
          break;
        }
      }
      else if (*(int *)((int)param_1 + 0x28) == 1) {
        cVar7 = FUN_00aa3290(*(void **)((int)param_1 + 0x230));
        if (cVar7 != '\0') {
          *(int *)((int)param_1 + 0x28) = *(int *)((int)param_1 + 0x28) + 1;
          bVar5 = false;
          break;
        }
      }
      else {
        FUN_00aa0830(*(void **)((int)param_1 + 0x230),'\0');
        if (DAT_011ede58 != (void *)0x0) {
          uVar13 = FUN_00c7cb90(DAT_011ede58,*(uint *)((int)param_1 + 0x10),
                                *(int *)((int)param_1 + 0x14));
          local_b4 = CONCAT31(local_b4._1_3_,(char)uVar13);
          FUN_00aa1910(*(void **)((int)param_1 + 0x230),(char)uVar13);
        }
        FUN_00adf650((int)param_1);
      }
LAB_00ae8e4f:
      bVar5 = false;
      break;
    case 4:
      puVar11 = (undefined4 *)FUN_004e4500(0x2e40,"LotRenderer/LotWaterRenderer",0);
      if (puVar11 == (undefined4 *)0x0) {
        piVar12 = (int *)0x0;
      }
      else {
        piVar12 = FUN_00af9d40(puVar11);
      }
      puVar11 = (undefined4 *)((int)param_1 + 0x234);
      FUN_008c8d00(puVar11,piVar12);
      uVar9 = FUN_00afb850((void *)*puVar11,param_1);
      local_bc = (char)uVar9;
      if (local_bc != '\0') {
        FUN_00af84f0((void *)*puVar11,'\0');
      }
      break;
    case 5:
      if (*(int *)((int)param_1 + 0x28) == 0) {
        puVar11 = (undefined4 *)FUN_004e4500(0x220,"LotRenderer/RoofRenderManager",0);
        if (puVar11 == (undefined4 *)0x0) {
          pvVar8 = (void *)0x0;
        }
        else {
          pvVar8 = (void *)FUN_00bee400(puVar11);
        }
        *(void **)((int)param_1 + 0x240) = pvVar8;
        uVar9 = FUN_00befda0(pvVar8,(int)param_1);
        local_bc = (char)uVar9;
        if (local_bc == '\0') goto LAB_00ae8e4f;
        *(int *)((int)param_1 + 0x28) = *(int *)((int)param_1 + 0x28) + 1;
        bVar5 = false;
      }
      else {
        uVar9 = FUN_00beb510(*(void **)((int)param_1 + 0x240));
        if ((char)uVar9 == '\0') goto LAB_00ae8e4f;
        FUN_00be7620(*(void **)((int)param_1 + 0x240),'\0');
        FUN_00adf650((int)param_1);
        bVar5 = false;
      }
      break;
    case 6:
      if (*(int *)((int)param_1 + 0x28) == 0) {
        puVar11 = (undefined4 *)FUN_004e4500(0x390,"LotRenderer/WallRenderManager",0);
        if (puVar11 == (undefined4 *)0x0) {
          puVar11 = (undefined4 *)0x0;
        }
        else {
          puVar11 = FUN_00c55890(puVar11);
        }
        *(undefined4 **)((int)param_1 + 0x238) = puVar11;
        uVar9 = FUN_00c4bcb0(puVar11,(int)param_1);
        local_bc = (char)uVar9;
        if (local_bc == '\0') goto LAB_00ae8e4f;
        WallGraph_BuildProductBuckets(*(void **)((int)param_1 + 0x238));
        *(int *)((int)param_1 + 0x28) = *(int *)((int)param_1 + 0x28) + 1;
        bVar5 = false;
      }
      else {
        cVar7 = FUN_00c59240(*(void **)((int)param_1 + 0x238));
        if (cVar7 == '\0') goto LAB_00ae8e4f;
        FUN_00c4bee0(*(void **)((int)param_1 + 0x238),'\0');
        FUN_00adf650((int)param_1);
        bVar5 = false;
      }
      break;
    case 7:
      puVar11 = (undefined4 *)FUN_004e4500(0x8c,"LotRenderer/FenceRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        puVar11 = (undefined4 *)0x0;
      }
      else {
        puVar11 = FUN_00a6d0a0(puVar11);
      }
      *(undefined4 **)((int)param_1 + 0x248) = puVar11;
      uVar9 = FUN_00a67f70(puVar11,(int)param_1);
      local_bc = (char)uVar9;
      if (local_bc != '\0') {
        FUN_00a6fd90(*(void **)((int)param_1 + 0x248));
      }
      break;
    case 8:
      puVar11 = (undefined4 *)FUN_004e4500(0xc0,"LotRenderer/PoolRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        puVar11 = (undefined4 *)0x0;
      }
      else {
        puVar11 = FUN_00b6d770(puVar11);
      }
      *(undefined4 **)((int)param_1 + 0x24c) = puVar11;
      uVar9 = FUN_00b6d200(puVar11,param_1);
      local_bc = (char)uVar9;
      if (local_bc != '\0') {
        PoolRenderManager_CreateLevelGeometry(*(int *)((int)param_1 + 0x24c));
      }
      break;
    case 9:
      puVar11 = (undefined4 *)FUN_004e4500(0x24,"LotRenderer/RoofPreviewRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        pvVar8 = (void *)0x0;
      }
      else {
        pvVar8 = (void *)FUN_00b9b3a0(puVar11);
      }
      *(void **)((int)param_1 + 0x244) = pvVar8;
      uVar9 = FUN_00b9b2f0(pvVar8,param_1);
      local_bc = (char)uVar9;
      break;
    case 10:
      puVar11 = (undefined4 *)FUN_004e4500(0x78,"LotRenderer/CeilingRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        *(undefined4 *)((int)param_1 + 0x250) = 0;
        CeilingRenderManager_BindOwnerAndRegisterMessages((void *)0x0,param_1);
      }
      else {
        puVar11 = CeilingRenderManager_Construct(puVar11);
        *(undefined4 **)((int)param_1 + 0x250) = puVar11;
        CeilingRenderManager_BindOwnerAndRegisterMessages(puVar11,param_1);
      }
      break;
    case 0xb:
      uVar9 = CeilingRenderManager_ResolveMaterialAndRequest(*(int *)((int)param_1 + 0x250));
      if ((char)uVar9 == '\0') {
        bVar5 = false;
        bVar6 = true;
      }
      break;
    case 0xc:
      puVar11 = (undefined4 *)FUN_004e4500(0x144,"LotRenderer/ModularStairsRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        puVar11 = (undefined4 *)0x0;
      }
      else {
        puVar11 = FUN_00b2a590(puVar11);
      }
      *(undefined4 **)((int)param_1 + 0x254) = puVar11;
      uVar9 = FUN_00b22d60(puVar11,(int)param_1);
      local_bc = (char)uVar9;
      if (local_bc != '\0') {
        FUN_00b2c230(*(void **)((int)param_1 + 0x254));
      }
      break;
    case 0xd:
      puVar11 = (undefined4 *)FUN_004e4500(0x40,"LotRenderer/FloorFeatureRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        puVar11 = (undefined4 *)0x0;
      }
      else {
        puVar11 = FUN_00a816a0(puVar11);
      }
      *(undefined4 **)((int)param_1 + 600) = puVar11;
      uVar9 = LotFloorFeatureRenderer_CreateLevels(puVar11,(int)param_1);
      local_bc = (char)uVar9;
      break;
    case 0xe:
      puVar11 = (undefined4 *)FUN_004e4500(0x74,"LotRenderer/StiltedFoundationRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        pvVar8 = (void *)0x0;
      }
      else {
        pvVar8 = (void *)FUN_00c1fa80(puVar11);
      }
      *(void **)((int)param_1 + 0x25c) = pvVar8;
      uVar9 = FUN_00c1eb80(pvVar8,param_1);
      local_bc = (char)uVar9;
      if (local_bc != '\0') {
        FUN_00c1ffd0(*(void **)((int)param_1 + 0x25c));
      }
      break;
    case 0xf:
      puVar11 = (undefined4 *)FUN_004e4500(0x60,"LotRenderer/SeaLifeRenderManager",0);
      if (puVar11 == (undefined4 *)0x0) {
        puVar11 = (undefined4 *)0x0;
      }
      else {
        puVar11 = FUN_00c0ec60(puVar11);
      }
      *(undefined4 **)((int)param_1 + 0x260) = puVar11;
      uVar9 = FUN_00c0e700(puVar11,param_1);
      local_bc = (char)uVar9;
      if (local_bc != '\0') {
        FUN_00c0f450(*(void **)((int)param_1 + 0x260));
      }
      break;
    case 0x10:
      local_34 = (void *)0x0;
      local_30 = 0;
      local_2c = 0;
      local_28 = "LotRenderer/InitDetailedView/sunnyRooms";
      local_54 = (void *)0x0;
      local_50 = 0;
      local_4c = 0;
      local_48 = "LotRenderer/InitDetailedView/lightableRooms";
      local_74 = (void *)0x0;
      local_70 = 0;
      local_6c = 0;
      local_68 = "LotRenderer/InitDetailedView/fogOfExplorationRooms";
      local_94 = (void *)0x0;
      local_90 = 0;
      local_8c = 0;
      local_88 = "LotRenderer/InitDetailedView/blackLitRooms";
      local_64 = (void *)0x0;
      local_60 = 0;
      local_5c = 0;
      local_58 = "LotRenderer/InitDetailedView/strobeLitRooms";
      local_44 = (void *)0x0;
      local_40 = 0;
      local_3c = 0;
      local_38 = "LotRenderer/InitDetailedView/buildableShellRooms";
      pvVar8 = *(void **)(*(int *)((int)param_1 + 0x18) + 0x298);
      if (pvVar8 != (void *)0x0) {
        FUN_00b4e440(pvVar8,&local_34);
        FUN_00ae5ce0(param_1,&local_34,'\x01');
        FUN_00b4e460(pvVar8,&local_54);
        FUN_00ae5e90(param_1,&local_54);
        FUN_00b4e480(pvVar8,&local_74);
        FUN_00ae7890(param_1,&local_74,'\x01');
        FUN_00b4e4a0(pvVar8,&local_94);
        FUN_00ae5d80(param_1,&local_94,'\x01');
        FUN_00b4b610(pvVar8,0,&local_44);
        FUN_00ae7720(param_1,(int *)&local_44,'\x01');
        local_84 = (void *)0x0;
        local_80 = 0;
        local_7c = 0;
        local_78 = "LotRenderer/IncrementDetailedViewInitStage";
        FUN_00b4fb10(pvVar8,(int *)&local_64,(int *)&local_84);
        FUN_00ae5e00(param_1,(int *)&local_64,(int *)&local_84,'\x01');
        if (local_84 != (void *)0x0) {
          Memory_FreeIfNonNull(local_84);
        }
      }
      if (local_44 != (void *)0x0) {
        Memory_FreeIfNonNull(local_44);
      }
      if (local_64 != (void *)0x0) {
        Memory_FreeIfNonNull(local_64);
      }
      if (local_94 != (void *)0x0) {
        Memory_FreeIfNonNull(local_94);
      }
      if (local_74 != (void *)0x0) {
        Memory_FreeIfNonNull(local_74);
      }
      if (local_54 != (void *)0x0) {
        Memory_FreeIfNonNull(local_54);
      }
      if (local_34 != (void *)0x0) {
        Memory_FreeIfNonNull(local_34);
      }
      break;
    case 0x11:
      *(undefined1 *)((int)param_1 + 0x30) = 0;
      piVar12 = JobManager_GetInterface();
      local_b8 = (void *)0x0;
      cVar7 = (**(code **)(*piVar12 + 0x10))(&local_b8);
      if (cVar7 != '\0') {
        FUN_00599c20(local_b8,*(undefined4 **)((int)param_1 + 0x18));
        uVar9 = *(undefined4 *)((int)param_1 + 0x18);
        *(undefined1 **)((int)local_b8 + 8) = &LAB_00acacf0;
        *(undefined4 *)((int)local_b8 + 0xc) = uVar9;
        *(undefined4 *)((int)local_b8 + 0x20) = 4;
        Job_Submit(local_b8);
      }
      if (local_b8 != (void *)0x0) {
        Job_ReleaseReference(local_b8);
      }
      break;
    case 0x12:
      if (*(char *)((int)param_1 + 0x30) == '\0') {
        bVar5 = false;
        bVar6 = true;
      }
      break;
    case 0x13:
      uVar13 = FUN_00c4d390(*(int *)((int)param_1 + 0x238));
      if ((char)uVar13 == '\0') {
        bVar5 = false;
        bVar6 = true;
      }
      break;
    case 0x14:
      uVar9 = FUN_00adac40(*(int *)((int)param_1 + 0x23c));
      if ((char)uVar9 == '\0') {
        bVar5 = false;
        bVar6 = true;
      }
      else {
        *(undefined1 *)(*(int *)((int)param_1 + 0x23c) + 0x4f) = 0;
      }
    }
    if (*(int *)((int)param_1 + 0x3d0) != 0) {
      fVar15 = ElapsedClock_ReadScaledTicks(&local_ac);
      *(float *)(*(int *)((int)param_1 + 0x3d0) + *(int *)((int)param_1 + 0x24) * 4) =
           (float)(fVar15 + (float10)*(float *)(*(int *)((int)param_1 + 0x3d0) +
                                               *(int *)((int)param_1 + 0x24) * 4));
    }
    if (cVar2 != '\0') {
      LeaveCriticalSection((LPCRITICAL_SECTION)(*(int *)((int)param_1 + 0x18) + 0xd0));
    }
    if (local_bc == '\0') {
      *(undefined1 *)((int)param_1 + 0x1f) = 1;
      uVar13 = FUN_00ae0a20(param_1,'\x01');
      return uVar13 & 0xffffff00;
    }
    if (bVar5) {
      iVar3 = *(int *)((int)param_1 + 0x3d0);
      if (iVar3 != 0) {
        iVar4 = *(int *)((int)param_1 + 0x24);
        fVar15 = ElapsedClock_ReadScaledTicks((void *)(iVar3 + 0x108));
        *(float *)(iVar3 + 0x58 + iVar4 * 4) = (float)fVar15;
      }
      /* 00AE9512: Advance stage+24 only on the original local advance condition, then clear substate+28. Yield paths can leave the stage unchanged; this is not a single unconditional initialization pass. */
      *(int *)((int)param_1 + 0x24) = *(int *)((int)param_1 + 0x24) + 1;
      *(undefined4 *)((int)param_1 + 0x28) = 0;
    }
    if (bVar6) {
LAB_00ae967d:
      uVar13 = *(uint *)((int)param_1 + 0x3d0);
      if (uVar13 != 0) {
        piVar12 = (int *)(uVar13 + 0xb0 + *(int *)((int)param_1 + 0x24) * 4);
        *piVar12 = *piVar12 + 1;
      }
LAB_00ae9691:
      return uVar13 & 0xffffff00;
    }
    fVar15 = ElapsedClock_ReadScaledTicks(local_18);
    fVar16 = (float10)local_b0;
    if (local_b0 < 0) {
      fVar16 = fVar16 + (float10)4.2949673e+09;
    }
    if (fVar16 < fVar15) goto LAB_00ae967d;
    iVar3 = *(int *)((int)param_1 + 0x24);
  } while( true );
}
