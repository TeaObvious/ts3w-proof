/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 scene-request model preparation. Receiver ECX, request pointer Stack4, RET4. All eleven
   physical returns write AL0 or AL1; upper EAX is unspecified, so existing raw undefined4/EAX
   metadata is retained. Reuses an existing manager-held scene object or prepares
   pending/direct/catalog model collections, material and geometry state, transforms and request
   vector references. The additional appended-model branch assigns standard rig E1C27CD7 with
   override1 at D5521B; it is not the ordinary model selection. Ordinary setup probes the resolved
   model instance low DWORD through6AD190, selects that name on a nonnull row, otherwise the
   category fallback: normally E1C27CD7; OBJD garden classification viaA8B160 selects368392A7.
   Fence/model-array and other catalog branches have separate rigs/transforms. This body does not
   establish provider readiness producers, resource factory completeness, allocator failure
   containment or shader/GPU lifecycle parity. Analyst name and previously empty PLATE only;
   existing ABI, locals, references, instructions and bytes are preserved. */

undefined4 __thiscall ThumbnailScene_PrepareRequestModels(void *this,int *param_1)

{
  int *piVar1;
  int iVar2;
  undefined1 auVar3 [16];
  char cVar4;
  int iVar5;
  int *piVar6;
  undefined4 uVar7;
  void *pvVar8;
  int *piVar9;
  undefined4 *puVar10;
  uint uVar11;
  undefined3 extraout_var;
  float *pfVar12;
  void *pvVar13;
  undefined4 *puVar14;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  undefined3 extraout_var_03;
  undefined3 extraout_var_04;
  int *piVar15;
  float10 fVar16;
  float fVar17;
  float fVar18;
  float fVar20;
  float fVar21;
  undefined1 auVar19 [16];
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  int *local_460;
  int *piStack_45c;
  float fStack_458;
  float fStack_454;
  uint local_444;
  int *local_440;
  int *local_43c;
  int *local_438;
  float local_434;
  float local_430;
  float fStack_42c;
  float fStack_428;
  float fStack_424;
  int *piStack_420;
  int *apiStack_41c [2];
  int *local_414;
  int *local_410;
  uint *local_40c;
  undefined4 uStack_408;
  int *local_404;
  int local_400;
  int local_3fc;
  float local_3f8;
  int local_3f4;
  int *local_3f0;
  int *local_3ec;
  int *local_3e8;
  int *piStack_3e4;
  float fStack_3e0;
  float fStack_3dc;
  undefined4 uStack_3d8;
  undefined4 uStack_3d4;
  int local_3d0;
  int local_3cc;
  undefined4 local_3c8;
  float local_3c4;
  int *piStack_3c0;
  int *piStack_3bc;
  int *piStack_3b8;
  int *apiStack_3b4 [3];
  int *local_3a8;
  int *piStack_3a4;
  int *local_3a0;
  int *piStack_39c;
  int *local_398;
  int *local_394;
  uint auStack_390 [5];
  int local_37c;
  undefined4 local_378;
  uint local_374;
  uint local_370;
  int local_36c;
  undefined4 local_368;
  uint local_364;
  uint local_360;
  int local_35c;
  undefined4 local_358;
  uint local_354;
  uint local_350;
  int local_34c;
  undefined4 local_348;
  undefined1 local_344 [16];
  float local_334;
  float fStack_330;
  float fStack_32c;
  float fStack_328;
  float fStack_324;
  int *piStack_320;
  undefined4 uStack_31c;
  float fStack_318;
  undefined4 uStack_310;
  undefined4 uStack_30c;
  undefined4 uStack_308;
  undefined1 auStack_304 [16];
  undefined4 uStack_2f4;
  undefined4 uStack_2e4;
  int *piStack_2e0;
  undefined4 uStack_2dc;
  undefined4 uStack_2d8;
  float fStack_2c4;
  int *piStack_2c0;
  undefined4 uStack_2bc;
  float fStack_2b8;
  float fStack_2a4;
  float fStack_2a0;
  float fStack_29c;
  float fStack_298;
  undefined4 uStack_290;
  undefined4 uStack_28c;
  undefined4 uStack_288;
  undefined4 uStack_284;
  undefined4 uStack_280;
  float fStack_27c;
  undefined4 uStack_278;
  undefined4 uStack_274;
  undefined4 uStack_270;
  undefined4 uStack_26c;
  undefined4 uStack_268;
  undefined4 uStack_264;
  undefined4 uStack_260;
  undefined4 uStack_25c;
  undefined4 uStack_258;
  undefined4 uStack_254;
  undefined4 uStack_250;
  float fStack_24c;
  float fStack_248;
  float fStack_244;
  undefined4 auStack_240 [2];
  undefined1 auStack_238 [24];
  undefined4 uStack_220;
  undefined4 uStack_21c;
  undefined4 uStack_218;
  undefined4 uStack_214;
  undefined4 uStack_210;
  undefined4 uStack_20c;
  undefined4 uStack_208;
  undefined4 uStack_204;
  float local_200 [6];
  undefined4 uStack_1e8;
  undefined4 uStack_1e4;
  undefined4 local_1e0;
  undefined4 uStack_1dc;
  float fStack_1d8;
  undefined4 uStack_1d4;
  undefined4 local_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  float fStack_1c4;
  float local_1c0 [6];
  undefined4 uStack_1a8;
  undefined4 uStack_1a4;
  undefined4 local_1a0;
  undefined4 uStack_19c;
  float fStack_198;
  undefined4 uStack_194;
  undefined4 local_190;
  undefined4 uStack_18c;
  undefined4 uStack_188;
  float fStack_184;
  float afStack_180 [6];
  undefined4 uStack_168;
  undefined4 uStack_164;
  undefined4 uStack_160;
  undefined4 uStack_15c;
  float fStack_158;
  undefined4 uStack_154;
  undefined4 uStack_150;
  undefined4 uStack_14c;
  float fStack_148;
  float fStack_144;
  undefined4 uStack_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  float fStack_134;
  undefined4 uStack_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  float fStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined4 uStack_110;
  float fStack_10c;
  float afStack_100 [6];
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  float fStack_d8;
  uint uStack_d4;
  uint uStack_d0;
  uint uStack_cc;
  uint uStack_c8;
  float fStack_c4;
  uint uStack_c0;
  uint uStack_bc;
  uint uStack_b8;
  uint uStack_b4;
  uint uStack_b0;
  uint uStack_ac;
  uint uStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float afStack_80 [6];
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  
  local_3ec = this;
  if (*(int *)((int)this + 0x1d0) != 0 || *(int *)((int)this + 0x1d4) != 0) {
    iVar5 = FUN_006fdbe0();
    piVar6 = (int *)FUN_006fe120(iVar5);
    uVar7 = 0;
    if (piVar6 != (int *)0x0) {
      piVar6 = (int *)(**(code **)(*piVar6 + 0xc))(0x17f1d88);
      uVar7 = 0;
      if (piVar6 != (int *)0x0) {
        local_410 = piVar6;
        (**(code **)*piVar6)();
        piVar9 = (int *)param_1[0x2b];
        if (piVar9 < (int *)param_1[0x2c]) {
          param_1[0x2b] = (int)(piVar9 + 1);
          uVar7 = 0;
          if (piVar9 != (int *)0x0) {
            *piVar9 = (int)piVar6;
            uVar7 = (**(code **)*piVar6)();
          }
        }
        else {
          uVar7 = FUN_00c65ad0(param_1 + 0x2a,piVar9,(int *)&local_410);
          piVar6 = local_410;
        }
        if (piVar6 != (int *)0x0) {
          uVar7 = (**(code **)(*piVar6 + 4))();
        }
      }
    }
    *(undefined4 *)((int)this + 0x1d0) = 0;
    *(undefined4 *)((int)this + 0x1d4) = 0;
    return CONCAT31((int3)((uint)uVar7 >> 8),1);
  }
  piVar6 = *(int **)((int)this + 0x1d8);
  local_40c = (uint *)((int)this + 0x1d8);
  if (piVar6 == *(int **)((int)this + 0x1dc)) {
    puVar10 = (undefined4 *)FUN_00d4a9d0((int)param_1);
    pvVar8 = DAT_011ee034;
    if ((char)puVar10 != '\0') {
      local_3a8 = *(int **)((int)this + 0x1c8);
      if (local_3a8 != (int *)0x0) {
        (**(code **)*local_3a8)();
        FUN_00b27450(param_1 + 0x2a,(int *)&local_3a8);
        if (local_3a8 != (int *)0x0) {
          (**(code **)(*local_3a8 + 4))();
        }
        uVar7 = FUN_006faae0(*(int *)((int)this + 0x1c8));
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
      goto LAB_00d564d0;
    }
    iVar5 = param_1[0x46];
    if (iVar5 != 0x418fe2a) {
      local_440 = (int *)0x0;
      local_43c = (int *)0x0;
      local_438 = (int *)0x0;
      local_434 = 0.0;
      local_414 = (int *)0xe1c27cd7;
      if (iVar5 == 0x1661233) {
        local_440 = (int *)param_1[0x44];
        local_43c = (int *)param_1[0x45];
        local_434 = (float)param_1[0x47];
        local_438 = (int *)0x1661233;
      }
      else if (iVar5 == 0x49ca4cd) {
        local_350 = param_1[0x44];
        local_34c = param_1[0x45];
        local_348 = 0x49ca4cd;
        local_344._0_4_ = param_1[0x47] & 0xff000000;
        iVar5 = FUN_00c8e7d0(DAT_011ee034,&local_350,'\x01');
        uVar11 = 0;
        if (iVar5 == 0) goto LAB_00d550b3;
        puVar10 = (undefined4 *)FUN_00c969c0(iVar5);
        local_440 = (int *)*puVar10;
        local_43c = (int *)puVar10[1];
        local_438 = (int *)puVar10[2];
        local_434 = (float)puVar10[3];
        local_414 = (int *)0x622f1a85;
      }
      else if (iVar5 == 0x4c58103) {
        local_344._4_4_ = param_1[0x44];
        local_344._8_4_ = param_1[0x45];
        local_334 = (float)(param_1[0x47] & 0xff000000);
        local_344._12_4_ = 0x4c58103;
        iVar5 = FUN_00c8e830(DAT_011ee034,(uint *)(local_344 + 4),'\x01');
        uVar11 = 0;
        if (iVar5 == 0) goto LAB_00d550b3;
        puVar10 = (undefined4 *)FUN_00c969c0(iVar5);
        local_440 = (int *)*puVar10;
        local_43c = (int *)puVar10[1];
        local_438 = (int *)puVar10[2];
        local_434 = (float)puVar10[3];
      }
      else if (iVar5 == 0x316c78f2) {
        local_360 = param_1[0x44];
        local_35c = param_1[0x45];
        local_354 = param_1[0x47] & 0xff000000;
        local_358 = 0x316c78f2;
        iVar5 = FUN_00c8eb60(DAT_011ee034,&local_360);
        uVar11 = 0;
        if (iVar5 == 0) goto LAB_00d550b3;
        local_440 = *(int **)(iVar5 + 0xb0);
        local_43c = *(int **)(iVar5 + 0xb4);
        local_438 = *(int **)(iVar5 + 0xb8);
        local_434 = *(float *)(iVar5 + 0xbc);
      }
      else {
        local_400 = 0;
        local_3fc = 0;
        local_3f8 = 0.0;
        local_3f4 = 0;
        if (iVar5 == 0x319e4f1d) {
          auStack_390[4] = param_1[0x44];
          local_37c = param_1[0x45];
          local_374 = param_1[0x47] & 0xff000000;
          local_378 = 0x319e4f1d;
          iVar5 = ObjectCatalog_FindByTypedKey(DAT_011ee034,auStack_390 + 4);
          uVar11 = 0;
          if (iVar5 == 0) goto LAB_00d550b3;
          local_400 = *(int *)(iVar5 + 0x88);
          local_3fc = *(int *)(iVar5 + 0x8c);
          local_3f8 = *(float *)(iVar5 + 0x90);
          local_3f4 = *(int *)(iVar5 + 0x94);
          uVar7 = Catalog_TestGardenCategoryOrLowFunctionBit31(iVar5);
          if ((char)uVar7 != '\0') {
            local_414 = (int *)0x368392a7;
          }
        }
        else if (iVar5 == 0x4f3cc01) {
          local_370 = param_1[0x44];
          local_36c = param_1[0x45];
          local_364 = param_1[0x47] & 0xff000000;
          local_368 = 0x4f3cc01;
          pvVar13 = (void *)FUN_00c8e890(DAT_011ee034,&local_370,'\x01');
          uVar11 = 0;
          if (pvVar13 == (void *)0x0) {
LAB_00d550b3:
            return uVar11 & 0xffffff00;
          }
          pfVar12 = ObjectField_Address90(pvVar13);
          local_430 = *pfVar12;
          fStack_42c = pfVar12[1];
          fStack_428 = pfVar12[2];
          fStack_424 = pfVar12[3];
          iVar5 = ObjectCatalog_FindByTypedKey(pvVar8,(uint *)&local_430);
          uVar11 = 0;
          if (iVar5 == 0) goto LAB_00d550b3;
          local_400 = *(int *)(iVar5 + 0x88);
          local_3fc = *(int *)(iVar5 + 0x8c);
          local_3f8 = *(float *)(iVar5 + 0x90);
          local_3f4 = *(int *)(iVar5 + 0x94);
        }
        else if (iVar5 == 0x2dc343f) {
          local_400 = param_1[0x44];
          local_3fc = param_1[0x45];
          local_3f8 = (float)param_1[0x46];
          local_3f4 = param_1[0x47];
        }
        puVar10 = (undefined4 *)FUN_0072f140();
        local_3f0 = (int *)0x0;
        puVar10 = (undefined4 *)*puVar10;
        piVar6 = FUN_0074efa0((int *)&local_3f0);
        uVar11 = (*(code *)*puVar10)(&local_400,0x2dc3450,piVar6);
        if ((char)uVar11 == '\0') {
          if (local_3f0 != (int *)0x0) {
            uVar11 = (**(code **)(*local_3f0 + 4))();
            return uVar11 & 0xffffff00;
          }
          goto LAB_00d55090;
        }
        uVar7 = FUN_00936290(local_3f0,(int *)0xa6e5f629,(int *)&local_440);
        if ((char)uVar7 == '\0') {
          local_440 = DAT_01159e98;
          local_438 = DAT_01159ea0;
          iVar5 = *param_1;
          local_434 = DAT_01159ea4;
          iVar2 = param_1[1];
          local_43c = DAT_01159e9c;
          for (; iVar5 != iVar2; iVar5 = iVar5 + 0x20) {
            *(undefined1 *)(iVar5 + 0x1c) = 1;
          }
        }
        if (local_3f0 != (int *)0x0) {
          (**(code **)(*local_3f0 + 4))();
        }
      }
      if ((local_438 == (int *)0xb552ea) || (local_438 == (int *)0x21d7e8c)) {
        puVar10 = (undefined4 *)FUN_0072f140();
        if (puVar10 != (undefined4 *)0x0) {
          local_460 = local_440;
          piStack_45c = local_43c;
          fStack_454 = local_434;
          fStack_458 = 1.1570855e-37;
          local_444 = 0;
          FUN_00d4bf00(&local_444,&local_460,0,0,0);
          FUN_007f6050(&local_444);
          uVar7 = FUN_0056d0c0(&local_444);
          if ((char)uVar7 == '\0') goto LAB_00d5622e;
          puVar10 = (undefined4 *)*puVar10;
          local_404 = (int *)0x0;
          piVar6 = FUN_0074efa0((int *)&local_404);
          cVar4 = (*(code *)*puVar10)(&local_440,0x1a59301,piVar6);
          if (cVar4 != '\0') {
            uStack_310 = *(undefined4 *)(local_444 + 0x30);
            uStack_30c = *(undefined4 *)(local_444 + 0x34);
            uStack_308 = *(undefined4 *)(local_444 + 0x38);
            auStack_304 = *(undefined1 (*) [16])(local_444 + 0x3c);
            uStack_2f4 = *(undefined4 *)(local_444 + 0x4c);
            FUN_007b73c0(auStack_240);
            uStack_290 = 0;
            uStack_28c = 0;
            uStack_288 = 0;
            uStack_284 = 0;
            fStack_424 = 0.0;
            fStack_428 = 0.0;
            local_430 = 0.0;
            fStack_42c = FLOAT_00f998f8;
            uStack_250 = 0;
            uStack_220 = uStack_310;
            uStack_21c = uStack_30c;
            uStack_218 = uStack_308;
            uStack_214 = auStack_304._0_4_;
            uStack_210 = auStack_304._4_4_;
            uStack_20c = auStack_304._8_4_;
            uStack_208 = auStack_304._12_4_;
            uStack_204 = uStack_2f4;
            uStack_280 = 0;
            fStack_27c = FLOAT_00f998f8;
            uStack_278 = 0;
            uStack_274 = 0;
            uStack_270 = uStack_310;
            uStack_26c = uStack_30c;
            uStack_268 = uStack_308;
            uStack_264 = auStack_304._0_4_;
            uStack_260 = auStack_304._4_4_;
            uStack_25c = auStack_304._8_4_;
            uStack_258 = auStack_304._12_4_;
            uStack_254 = uStack_2f4;
            fStack_24c = FLOAT_00f998f8;
            fStack_248 = FLOAT_00f998f8;
            fStack_244 = _DAT_00f9b5b4;
            FUN_0095b570(auStack_238,&uStack_290);
            puVar10 = auStack_240;
            piStack_3e4 = (int *)0x0;
            iVar5 = *local_404;
            uVar7 = 0;
            piVar6 = FUN_0074efa0((int *)&piStack_3e4);
            cVar4 = (**(code **)(iVar5 + 0x10))(0,0,piVar6,uVar7,puVar10);
            if (cVar4 != '\0') {
              FUN_007fd370(&local_3e8,piStack_3e4);
              FUN_00b27450(param_1 + 0x2a,(int *)&local_3e8);
              if (local_3e8 != (int *)0x0) {
                (**(code **)(*local_3e8 + 4))();
              }
              if (piStack_3e4 != (int *)0x0) {
                (**(code **)(*piStack_3e4 + 4))();
              }
              FUN_007b73f0(auStack_240);
              if (local_404 != (int *)0x0) {
                (**(code **)(*local_404 + 4))();
              }
              FUN_00ec60d0(&local_444);
              goto LAB_00d563eb;
            }
            if (piStack_3e4 != (int *)0x0) {
              (**(code **)(*piStack_3e4 + 4))();
            }
            FUN_007b73f0(auStack_240);
          }
          if (local_404 != (int *)0x0) {
            (**(code **)(*local_404 + 4))();
          }
LAB_00d5622e:
          uVar11 = FUN_00ec60d0(&local_444);
          return uVar11 & 0xffffff00;
        }
      }
      else {
        pvVar8 = (void *)FUN_004e4520(0x2d0,0x10,0,"UI/ThumbnailManager/SceneModel",0);
        if (pvVar8 == (void *)0x0) {
          puVar10 = (undefined4 *)0x0;
        }
        else {
          puVar10 = RenderComponent_InitializeSceneModel(pvVar8,0,0);
        }
        FUN_007fd370(&local_398,puVar10);
        cVar4 = FUN_006f46f0(local_398,&local_440,0,0,0);
        uVar11 = CONCAT31(extraout_var_04,cVar4);
        local_394 = local_398;
        if (cVar4 == '\0') goto LAB_00d555c3;
        local_398[0xa9] = param_1[0x8a];
        local_398[0x99] = param_1[0x8b];
        FUN_007fd370(&local_3ec,local_398);
        FUN_00b27450(param_1 + 0x2a,(int *)&local_3ec);
        if (local_3ec != (int *)0x0) {
          (**(code **)(*local_3ec + 4))();
        }
        (**(code **)(*local_398 + 4))();
      }
LAB_00d563eb:
      piVar6 = local_440;
      pvVar8 = (void *)FUN_006e9640();
      piVar9 = CustomLightRigCatalog_FindReadyName(pvVar8,(int)piVar6);
      piVar6 = local_440;
      if (piVar9 == (int *)0x0) {
        piVar6 = local_414;
      }
      (**(code **)(**(int **)param_1[0x2a] + 0x6c))(piVar6,1);
      fStack_148 = FLOAT_00f998f8;
      fStack_144 = 0.0;
      uStack_140 = 0;
      uStack_13c = 0;
      uStack_138 = 0;
      fStack_134 = FLOAT_00f998f8;
      uStack_130 = 0;
      uStack_12c = 0;
      fStack_42c = FLOAT_00f998f8;
      local_430 = 0.0;
      local_434 = 0.0;
      local_438 = (int *)0x0;
      uStack_128 = 0;
      uStack_124 = 0;
      fStack_120 = FLOAT_00f998f8;
      uStack_11c = 0;
      uStack_118 = 0;
      uStack_114 = 0;
      uStack_110 = 0;
      fStack_10c = FLOAT_00f998f8;
      puVar10 = (undefined4 *)(**(code **)(**(int **)param_1[0x2a] + 0x20))(&fStack_148);
      goto LAB_00d564d0;
    }
    local_3d0 = param_1[0x44];
    local_3cc = param_1[0x45];
    local_3c4 = (float)(param_1[0x47] & 0xff000000);
    local_3c8 = 0x418fe2a;
    pvVar8 = ProductCatalog_LookupFenceProduct(DAT_011ee034,&local_3d0,1);
    uVar11 = 0;
    if (pvVar8 == (void *)0x0) goto LAB_00d550b3;
    fVar16 = FUN_00c94480((int)pvVar8);
    local_410 = (int *)(float)fVar16;
    puVar10 = (undefined4 *)FUN_00c969d0((int)pvVar8);
    if (*(int *)((int)pvVar8 + 0xe0) == 0) {
LAB_00d55743:
      puVar10 = (undefined4 *)FUN_00c969d0((int)pvVar8);
      pvVar13 = (void *)FUN_004e4520(0x2d0,0x10,0,"UI/ThumbnailManager/SceneModel",0);
      if (pvVar13 == (void *)0x0) {
        puVar14 = (undefined4 *)0x0;
      }
      else {
        puVar14 = RenderComponent_InitializeSceneModel(pvVar13,0,0);
      }
      FUN_007fd370(&local_3a0,puVar14);
      cVar4 = FUN_006f46f0(local_3a0,puVar10,0,0,0);
      uVar11 = CONCAT31(extraout_var_01,cVar4);
      local_394 = local_3a0;
      if (cVar4 == '\0') goto LAB_00d555c3;
      local_1c0[0] = FLOAT_00f998f8;
      local_1c0[1] = 0.0;
      local_1c0[2] = 0.0;
      local_1c0[3] = 0.0;
      local_1c0[4] = 0.0;
      local_1c0[5] = FLOAT_00f998f8;
      uStack_1a8 = 0;
      uStack_1a4 = 0;
      fStack_454 = FLOAT_00f998f8;
      fStack_458 = 0.0;
      piStack_45c = (int *)0x0;
      local_460 = (int *)0x0;
      local_1a0 = 0;
      uStack_19c = 0;
      fStack_198 = FLOAT_00f998f8;
      uStack_194 = 0;
      local_190 = 0;
      uStack_18c = 0;
      uStack_188 = 0;
      fStack_184 = FLOAT_00f998f8;
      (**(code **)(*local_3a0 + 0x20))(local_1c0);
      FUN_007fd370(&piStack_3bc,local_3a0);
      FUN_00b27450(param_1 + 0x2a,(int *)&piStack_3bc);
      if (piStack_3bc != (int *)0x0) {
        (**(code **)(*piStack_3bc + 4))();
      }
      (**(code **)(*local_3a0 + 0x6c))(0x59679982,1);
      FUN_006faae0((int)local_3a0);
LAB_00d558a0:
      (**(code **)(*local_394 + 4))();
    }
    else if (puVar10[2] != 0) {
      if ((*(int *)((int)pvVar8 + 0xe0) == 0) || (*(char *)((int)pvVar8 + 0x151) == '\0'))
      goto LAB_00d55743;
      pvVar13 = (void *)FUN_004e4520(0x340,0x10,0,"UI/ThumbnailManager/SceneModelArray",0);
      if (pvVar13 == (void *)0x0) {
        puVar14 = (undefined4 *)0x0;
      }
      else {
        puVar14 = FUN_006f9730(pvVar13,0,0);
      }
      FUN_007fd370(&local_394,puVar14);
      cVar4 = FUN_006f46f0(local_394,puVar10,0,0,0);
      uVar11 = CONCAT31(extraout_var_00,cVar4);
      if (cVar4 == '\0') goto LAB_00d555c3;
      local_200[0] = FLOAT_00f998f8;
      local_200[1] = 0.0;
      local_200[2] = 0.0;
      local_200[3] = 0.0;
      local_430 = FLOAT_00f998f8;
      fStack_42c = 0.0;
      fStack_428 = 0.0;
      fStack_424 = 0.0;
      local_200[4] = 0.0;
      local_200[5] = FLOAT_00f998f8;
      uStack_1e8 = 0;
      uStack_1e4 = 0;
      fStack_454 = FLOAT_00f998f8;
      fStack_458 = 0.0;
      piStack_45c = (int *)0x0;
      local_460 = (int *)0x0;
      local_1e0 = 0;
      uStack_1dc = 0;
      fStack_1d8 = FLOAT_00f998f8;
      uStack_1d4 = 0;
      local_1d0 = 0;
      uStack_1cc = 0;
      uStack_1c8 = 0;
      fStack_1c4 = FLOAT_00f998f8;
      (**(code **)(*local_394 + 0x20))(local_200);
      FUN_006faae0((int)local_394);
      fStack_2a4 = 0.0 - local_434;
      fStack_2a0 = 0.0 - local_430;
      fStack_29c = 0.0 - fStack_42c;
      fStack_298 = 0.0 - fStack_428;
      piStack_45c = (int *)0x0;
      fStack_458 = FLOAT_00f998f8;
      local_460 = local_414;
      fStack_2c4 = FLOAT_00f998f8;
      piStack_2c0 = local_414;
      uStack_2bc = 0;
      fStack_2b8 = FLOAT_00f998f8;
      FUN_006f9830(local_394,&fStack_2c4,&fStack_2a4,0,0);
      (**(code **)(*local_394 + 0x6c))(0x59679982,1);
      FUN_007fd370(&piStack_3b8,local_394);
      FUN_00b27450(param_1 + 0x2a,(int *)&piStack_3b8);
      if (piStack_3b8 != (int *)0x0) {
        (**(code **)(*piStack_3b8 + 4))();
      }
      goto LAB_00d558a0;
    }
    puVar10 = (undefined4 *)FUN_00c94460((int)pvVar8);
    if (puVar10[2] != 0) {
      pvVar13 = (void *)FUN_004e4520(0x340,0x10,0,"UI/ThumbnailManager/SceneModelArray",0);
      if (pvVar13 == (void *)0x0) {
        puVar14 = (undefined4 *)0x0;
      }
      else {
        puVar14 = FUN_006f9730(pvVar13,0,0);
      }
      FUN_007fd370(&piStack_3a4,puVar14);
      cVar4 = FUN_006f46f0(piStack_3a4,puVar10,0,0,0);
      uVar11 = CONCAT31(extraout_var_02,cVar4);
      local_394 = piStack_3a4;
      if (cVar4 == '\0') {
LAB_00d555c3:
        if (local_394 != (int *)0x0) {
          uVar11 = (**(code **)(*local_394 + 4))();
        }
        return uVar11 & 0xffffff00;
      }
      afStack_100[0] = FLOAT_00f998f8;
      afStack_100[1] = 0.0;
      afStack_100[2] = 0.0;
      afStack_100[3] = 0.0;
      local_430 = FLOAT_00f998f8;
      fStack_42c = 0.0;
      fStack_428 = 0.0;
      fStack_424 = 0.0;
      afStack_100[4] = 0.0;
      afStack_100[5] = FLOAT_00f998f8;
      uStack_e8 = 0;
      uStack_e4 = 0;
      fStack_454 = FLOAT_00f998f8;
      fStack_458 = 0.0;
      piStack_45c = (int *)0x0;
      local_460 = (int *)0x0;
      uStack_e0 = 0;
      uStack_dc = 0;
      fStack_d8 = FLOAT_00f998f8;
      uStack_d4 = 0;
      uStack_d0 = 0;
      uStack_cc = 0;
      uStack_c8 = 0;
      fStack_c4 = FLOAT_00f998f8;
      (**(code **)(*piStack_3a4 + 0x20))(afStack_100);
      FUN_006faae0((int)piStack_3a4);
      local_334 = 0.0 - local_434;
      fStack_330 = 0.0 - local_430;
      fStack_32c = 0.0 - fStack_42c;
      fStack_328 = 0.0 - fStack_428;
      fStack_458 = 0.0;
      piStack_45c = (int *)0x0;
      local_460 = local_414;
      uStack_2e4 = 0;
      piStack_2e0 = local_414;
      uStack_2dc = 0;
      uStack_2d8 = 0;
      FUN_006f9830(piStack_3a4,&uStack_2e4,&local_334,0,0);
      piStack_45c = (int *)0x0;
      fStack_458 = FLOAT_00f998f8;
      local_460 = local_414;
      fStack_324 = FLOAT_00f998f8;
      piStack_320 = local_414;
      uStack_31c = 0;
      fStack_318 = FLOAT_00f998f8;
      FUN_006f9830(piStack_3a4,&fStack_324,&local_334,1,0);
      (**(code **)(*piStack_3a4 + 0x6c))(0x59679982,1);
      FUN_007fd370(&piStack_3c0,piStack_3a4);
      FUN_00b27450(param_1 + 0x2a,(int *)&piStack_3c0);
      if (piStack_3c0 != (int *)0x0) {
        (**(code **)(*piStack_3c0 + 4))();
      }
      puVar10 = (undefined4 *)(**(code **)(*piStack_3a4 + 4))();
    }
    if (*(int *)((int)pvVar8 + 0xe0) != 0) {
      auStack_390[0] = FUN_007d0050((wint_t *)L"halfWallThumbnailStraight");
      auStack_390[1] = 0;
      auStack_390[2] = 0x1661233;
      auStack_390[3] = 1;
      pvVar8 = (void *)FUN_004e4520(0x2d0,0x10,0,"UI/ThumbnailManager/SceneModel",0);
      if (pvVar8 == (void *)0x0) {
        puVar10 = (undefined4 *)0x0;
      }
      else {
        puVar10 = RenderComponent_InitializeSceneModel(pvVar8,0,0);
      }
      FUN_007fd370(&piStack_39c,puVar10);
      cVar4 = FUN_006f46f0(piStack_39c,auStack_390,0,0,0);
      puVar10 = (undefined4 *)CONCAT31(extraout_var_03,cVar4);
      if (cVar4 != '\0') {
        afStack_80[0] = FLOAT_00f998f8;
        afStack_80[1] = 0.0;
        afStack_80[2] = 0.0;
        afStack_80[3] = 0.0;
        afStack_80[4] = 0.0;
        afStack_80[5] = FLOAT_00f998f8;
        uStack_68 = 0;
        uStack_64 = 0;
        fStack_454 = FLOAT_00f998f8;
        fStack_458 = 0.0;
        piStack_45c = (int *)0x0;
        local_460 = (int *)0x0;
        uStack_60 = 0;
        uStack_5c = 0;
        fStack_58 = FLOAT_00f998f8;
        fStack_54 = 0.0;
        fStack_50 = 0.0;
        fStack_4c = 0.0;
        fStack_48 = 0.0;
        fStack_44 = FLOAT_00f998f8;
        (**(code **)(*piStack_39c + 0x20))(afStack_80);
        FUN_007fd370(&piStack_3c0,piStack_39c);
        FUN_00b27450(param_1 + 0x2a,(int *)&piStack_3c0);
        if (piStack_3c0 != (int *)0x0) {
          (**(code **)(*piStack_3c0 + 4))();
        }
        (**(code **)(*piStack_39c + 0x6c))(0x59679982,1);
        puVar10 = (undefined4 *)FUN_006faae0((int)piStack_39c);
      }
      if (piStack_39c != (int *)0x0) {
        uVar7 = (**(code **)(*piStack_39c + 4))();
        return CONCAT31((int3)((uint)uVar7 >> 8),1);
      }
    }
    goto LAB_00d564d0;
  }
  local_3e8 = *(int **)((int)this + 0x1dc);
  if (piVar6 != local_3e8) {
    do {
      puVar10 = (undefined4 *)*piVar6;
      pvVar8 = (void *)FUN_004e4520(0x2e0,0x10,0,"UI/ThumbnailManager/SceneModelFur",0);
      if (pvVar8 == (void *)0x0) {
        piVar9 = (int *)0x0;
LAB_00d5509d:
        uVar11 = FUN_00d4d2a0(local_40c);
        if (piVar9 != (int *)0x0) {
          uVar11 = (**(code **)(*piVar9 + 4))();
        }
        goto LAB_00d550b3;
      }
      piVar9 = FUN_006f9d60(pvVar8,0,0);
      if (piVar9 == (int *)0x0) goto LAB_00d5509d;
      (**(code **)*piVar9)();
      uVar7 = FUN_006f47a0(piVar9,puVar10,(int *)0x0,(int *)0x0);
      if ((char)uVar7 == '\0') goto LAB_00d5509d;
      fStack_454 = 0.0;
      fStack_458 = 0.0;
      piStack_45c = (int *)0x0;
      local_460 = (int *)FLOAT_00f998f8;
      afStack_180[0] = FLOAT_00f998f8;
      afStack_180[1] = 0.0;
      afStack_180[2] = 0.0;
      afStack_180[3] = 0.0;
      uStack_3d4 = 0;
      uStack_3d8 = 0;
      fStack_3e0 = 0.0;
      fStack_3dc = FLOAT_00f998f8;
      local_3f4 = 0;
      local_3fc = 0;
      local_400 = 0;
      afStack_180[4] = 0.0;
      afStack_180[5] = FLOAT_00f998f8;
      uStack_168 = 0;
      uStack_164 = 0;
      local_3f8 = FLOAT_00f998f8;
      local_3c4 = FLOAT_00f998f8;
      local_3c8 = 0;
      local_3cc = 0;
      local_3d0 = 0;
      uStack_160 = 0;
      uStack_15c = 0;
      fStack_158 = FLOAT_00f998f8;
      uStack_154 = 0;
      uStack_150 = 0;
      uStack_14c = 0;
      fStack_148 = 0.0;
      fStack_144 = FLOAT_00f998f8;
      (**(code **)(*piVar9 + 0x20))(afStack_180);
      apiStack_3b4[0] = piVar9;
      (**(code **)*piVar9)();
      piVar1 = (int *)param_1[0x2b];
      if (piVar1 < (int *)param_1[0x2c]) {
        param_1[0x2b] = (int)(piVar1 + 1);
        piVar15 = piVar9;
        if (piVar1 != (int *)0x0) {
          *piVar1 = (int)piVar9;
          (**(code **)*piVar9)();
        }
      }
      else {
        FUN_00c65ad0(param_1 + 0x2a,piVar1,(int *)apiStack_3b4);
        piVar15 = apiStack_3b4[0];
      }
      if (piVar15 != (int *)0x0) {
        (**(code **)(*piVar15 + 4))();
      }
      (**(code **)(*piVar9 + 4))();
      piVar6 = piVar6 + 1;
    } while (piVar6 != local_3e8);
  }
  puVar10 = (undefined4 *)FUN_00d4d2a0(local_40c);
  piVar6 = local_3ec;
  if (local_3ec[0x94] == 0) goto LAB_00d564d0;
  puVar10 = (undefined4 *)FUN_0072f140();
  uStack_408 = 0;
  uVar11 = (**(code **)*puVar10)(piVar6 + 0x92,0x2dc3450,&uStack_408);
  if ((char)uVar11 == '\0') {
    if (local_414 != (int *)0x0) {
      uVar11 = (**(code **)(*local_414 + 4))();
    }
LAB_00d55090:
    return uVar11 & 0xffffff00;
  }
  local_3ec = (int *)0x0;
  local_3e8 = (int *)0x0;
  piStack_3e4 = (int *)0x0;
  fStack_3e0 = 0.0;
  uVar7 = FUN_00936290(local_414,(int *)0xa6e5f629,(int *)&local_3ec);
  if ((char)uVar7 == '\0') {
    local_3ec = DAT_01159e98;
    piStack_3e4 = DAT_01159ea0;
    iVar5 = *param_1;
    fStack_3e0 = DAT_01159ea4;
    iVar2 = param_1[1];
    local_3e8 = DAT_01159e9c;
    for (; iVar5 != iVar2; iVar5 = iVar5 + 0x20) {
      *(undefined1 *)(iVar5 + 0x1c) = 1;
    }
  }
  pvVar8 = (void *)FUN_004e4520(0x2d0,0x10,0,"UI/ThumbnailManager/SceneModel",0);
  if (pvVar8 == (void *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = RenderComponent_InitializeSceneModel(pvVar8,0,0);
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
    }
  }
  cVar4 = FUN_006f46f0(piVar6,&local_3ec,0,0,0);
  uVar11 = CONCAT31(extraout_var,cVar4);
  if (cVar4 == '\0') {
    if (piVar6 != (int *)0x0) {
      uVar11 = (**(code **)(*piVar6 + 4))();
    }
    if (local_414 != (int *)0x0) {
      uVar11 = (**(code **)(*local_414 + 4))();
    }
    return uVar11 & 0xffffff00;
  }
  apiStack_41c[0] = piVar6;
  if (piVar6 != (int *)0x0) {
    (**(code **)*piVar6)();
  }
  piVar1 = (int *)param_1[0x2b];
  piVar9 = param_1 + 0x2a;
  if (piVar1 < (int *)param_1[0x2c]) {
    param_1[0x2b] = (int)(piVar1 + 1);
    if (piVar1 == (int *)0x0) goto LAB_00d551fb;
    *piVar1 = (int)piVar6;
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
      goto LAB_00d551fb;
    }
  }
  else {
    FUN_00c65ad0(piVar9,piVar1,(int *)apiStack_41c);
LAB_00d551fb:
    if (apiStack_41c[0] != (int *)0x0) {
      (**(code **)(*apiStack_41c[0] + 4))();
    }
  }
  (**(code **)(**(int **)(param_1[0x2b] + -4) + 0x6c))(0xe1c27cd7,1);
  if (((param_1[0x2b] - *piVar9 ^ param_1[0x33] - param_1[0x32]) & 0xfffffffcU) == 0) {
    uVar7 = *(undefined4 *)(param_1[0x33] + -4);
  }
  else {
    uVar7 = 0;
  }
  uStack_3d8 = 0;
  fStack_3dc = 0.0;
  piStack_3e4 = (int *)0x0;
  fStack_3e0 = FLOAT_00f998f8;
  uStack_2e4 = 0;
  piStack_2e0 = (int *)FLOAT_00f998f8;
  uStack_2dc = 0;
  uStack_2d8 = 0;
  auVar19._4_4_ = uVar7;
  auVar19._0_4_ = uVar7;
  auVar19._8_4_ = uVar7;
  auVar19._12_4_ = uVar7;
  auVar3._4_4_ = DAT_0103fd88;
  auVar3._0_4_ = DAT_0103fd88;
  auVar3._8_4_ = DAT_0103fd88;
  auVar3._12_4_ = DAT_0103fd88;
  local_344 = divps(auVar19,auVar3);
  fVar16 = (float10)fsin((float10)(float)local_344._0_4_);
  fVar18 = (float)fVar16;
  fVar16 = (float10)fcos((float10)(float)local_344._0_4_);
  fStack_34 = fVar18 * 0.0;
  fStack_30 = fVar18 * 0.0;
  fStack_2c = fVar18 * 0.0;
  fStack_28 = fVar18 * 0.0;
  fStack_44 = fVar18 * 0.0;
  fStack_40 = fVar18 * 0.0;
  fStack_3c = fVar18 * 0.0;
  fStack_38 = fVar18 * 0.0;
  fStack_54 = FLOAT_00f998f8 * fVar18;
  fStack_50 = FLOAT_00f998f8 * fVar18;
  fStack_4c = FLOAT_00f998f8 * fVar18;
  fStack_48 = FLOAT_00f998f8 * fVar18;
  fStack_428 = (float)fVar16;
  if (((param_1[0x33] - param_1[0x32] ^ param_1[0x2b] - *piVar9) & 0xfffffffcU) == 0) {
    pfVar12 = (float *)(param_1[0x2f] + -0x10);
  }
  else {
    fStack_2c4 = 0.0;
    piStack_2c0 = (int *)0x0;
    uStack_2bc = 0;
    fStack_2b8 = 0.0;
    pfVar12 = &fStack_2c4;
  }
  fVar17 = DAT_01089394 * fVar18 * 0.0;
  fVar20 = DAT_01089394 * FLOAT_00f998f8 * fVar18;
  fVar21 = DAT_01089394 * fVar18 * 0.0;
  fVar22 = DAT_01089394 * fStack_428;
  fVar23 = (0.0 - fVar17) * fVar17 + _DAT_00f9b5b4;
  fVar24 = (0.0 - fVar20) * fVar20 + _DAT_00f9b5b4;
  fVar25 = (0.0 - fVar21) * fVar21 + _DAT_00f9b5b4;
  fVar18 = fVar22 * fVar21 + fVar20 * fVar17;
  fStack_c4 = fVar20 * fVar17 - fVar22 * fVar21;
  fVar26 = fVar24 + fVar23;
  fStack_a4 = *pfVar12;
  fStack_a0 = pfVar12[1];
  fStack_9c = pfVar12[2];
  uStack_d4 = (uint)(fVar25 + fVar24) & _DAT_011b0670;
  uStack_d0 = (uint)fVar18 & uRam011b0674;
  uStack_cc = (uint)(fVar17 * fVar21 - fVar22 * fVar20) & uRam011b0678;
  uStack_c8 = (uint)fStack_c4 & uRam011b067c;
  fStack_c4 = (float)((uint)fStack_c4 & _DAT_011b0670);
  uStack_c0 = (uint)(fVar23 + fVar25) & uRam011b0674;
  uStack_bc = (uint)(fVar22 * fVar17 + fVar21 * fVar20) & uRam011b0678;
  uStack_b8 = (uint)fVar18 & uRam011b067c;
  uStack_b4 = (uint)(fVar22 * fVar20 + fVar17 * fVar21) & _DAT_011b0670;
  uStack_b0 = (uint)(fVar21 * fVar20 - fVar22 * fVar17) & uRam011b0674;
  uStack_ac = (uint)fVar26 & uRam011b0678;
  uStack_a8 = (uint)fVar26 & uRam011b067c;
  fStack_98 = FLOAT_00f998f8;
  auStack_304 = local_344;
  puVar10 = (undefined4 *)(**(code **)(**(int **)(param_1[0x2b] + -4) + 0x20))(&uStack_d4);
  if (piVar6 != (int *)0x0) {
    puVar10 = (undefined4 *)(**(code **)(*piVar6 + 4))();
  }
  if (piStack_420 != (int *)0x0) {
    uVar7 = (**(code **)(*piStack_420 + 4))();
    return CONCAT31((int3)((uint)uVar7 >> 8),1);
  }
LAB_00d564d0:
  return CONCAT31((int3)((uint)puVar10 >> 8),1);
}

