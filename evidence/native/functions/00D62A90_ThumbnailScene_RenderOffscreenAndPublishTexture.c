/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): Full original offscreen rendering path, request
   render owner inECX. Retain/create temporary color/depth surfaces, preserve world/scene state and
   specular probe, select per-scene custom rig, clear/draw scene, restore state, derive image/crop
   coordinates, bind texture and execute final thumbnail conversion technique.
   Returns0failure,1success,2retry when renderer unavailable. Repeated model list/material domains
   are scene inputs, not an instruction to merge geometry. Current VulkanMSAA/resolve backend is an
   explicit adaptation; no Direct3D execution is required or retained. */

undefined4 __fastcall ThumbnailScene_RenderOffscreenAndPublishTexture(int param_1)

{
  int iVar1;
  float fVar2;
  void *this;
  bool bVar3;
  char cVar4;
  bool bVar5;
  void *pvVar6;
  undefined4 *puVar7;
  int *piVar8;
  Ts3SkinTexture2D *pTVar9;
  Ts3SkinTexture2D *pTVar10;
  int *piVar11;
  undefined4 uVar12;
  Ts3SkinSceneRenderer *self;
  undefined4 *puVar13;
  Ts3SkinTexture2D **ppTVar14;
  uint uVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  int iVar19;
  int *local_ad4;
  undefined1 uStack_acd;
  Ts3SkinTexture2D *local_acc;
  char local_ac7;
  undefined1 uStack_ac6;
  undefined1 uStack_ac5;
  float fStack_ac4;
  Ts3SkinTexture2D *local_ac0;
  Ts3SkinTexture2D *pTStack_abc;
  Ts3SkinTexture2D *local_ab8;
  uint local_ab4;
  uint local_ab0;
  int *local_aac;
  void *local_aa8;
  uint uStack_aa4;
  float fStack_aa0;
  int iStack_a9c;
  float fStack_a98;
  float fStack_a94;
  float fStack_a90;
  float fStack_a8c;
  float fStack_a88;
  float fStack_a84;
  void *pvStack_a80;
  void *pvStack_a7c;
  void *pvStack_a78;
  int iStack_a74;
  float fStack_a70;
  uint *puStack_a6c;
  int iStack_a68;
  undefined4 uStack_a64;
  void *pvStack_a60;
  undefined4 *puStack_a5c;
  undefined4 *puStack_a58;
  char *pcStack_a54;
  int iStack_a50;
  undefined4 uStack_a4c;
  undefined1 uStack_a48;
  undefined4 uStack_a44;
  undefined1 uStack_a40;
  undefined1 uStack_a3f;
  undefined4 uStack_a3c;
  undefined4 uStack_a38;
  void *pvStack_a34;
  undefined4 uStack_a30;
  undefined4 uStack_a2c;
  char *pcStack_a28;
  undefined4 uStack_a24;
  undefined4 uStack_a20;
  undefined1 uStack_a1c;
  undefined4 uStack_a18;
  undefined1 uStack_a14;
  undefined1 uStack_a13;
  undefined4 uStack_a10;
  undefined4 uStack_a0c;
  undefined4 uStack_a08;
  undefined4 uStack_a04;
  int aiStack_a00 [3];
  undefined4 uStack_9f4;
  undefined4 auStack_9f0 [4];
  float afStack_9e0 [6];
  undefined4 auStack_9c8 [6];
  undefined4 uStack_9b0;
  undefined4 uStack_9ac;
  float fStack_9a0;
  uint uStack_99c;
  uint uStack_998;
  float fStack_994;
  undefined4 uStack_990;
  undefined4 uStack_98c;
  undefined4 uStack_988;
  undefined4 uStack_984;
  undefined4 uStack_980;
  undefined1 uStack_97c;
  float fStack_970;
  undefined4 uStack_96c;
  undefined4 uStack_968;
  undefined4 uStack_964;
  undefined4 auStack_960 [136];
  undefined **appuStack_740 [463];
  
  local_aa8 = DAT_011cfcc8;
  if (*(char *)((int)DAT_011cfcc8 + 0x8d) != '\0') {
    return 2;
  }
  local_ac7 = '\0';
  local_ab0 = 0;
  local_ab4 = 0;
  local_acc = (Ts3SkinTexture2D *)0x0;
  local_aac = (int *)0x0;
  local_ad4 = (int *)0x0;
  pvVar6 = (void *)FUN_00617780();
  local_ab8 = RenderTargets_FindTarget(pvVar6,0x47f8c49a);
  puVar7 = SurfaceRegistry_FindValueByTag(pvVar6,0x76b9af5e);
  pTVar9 = local_ab8;
  piVar8 = (int *)0x0;
  if ((puVar7 != (undefined4 *)0x0) && (local_ab8 != (Ts3SkinTexture2D *)0x0)) {
    FUN_007c8ed0(&local_acc,(int *)*puVar7);
    FUN_007c8ed0(&local_aac,*(int **)pTVar9);
    piVar8 = (int *)FUN_0081d420((int)local_aa8);
    FUN_007c8ed0(&local_ad4,piVar8);
    local_ab0 = local_aac[6];
    local_ab4 = local_aac[7];
    piVar8 = local_aac;
  }
  uVar15 = *(int *)(param_1 + 0x2c) * 2;
  if ((local_ab0 <= uVar15) || (local_ab4 < *(uint *)(param_1 + 0x30))) {
    local_ab4 = *(uint *)(param_1 + 0x30);
    local_ab0 = uVar15;
    puVar7 = (undefined4 *)FUN_004e4500(0x34,"UI/ThumbnailManager/TempRTT",0);
    if (puVar7 == (undefined4 *)0x0) {
      pTVar9 = (Ts3SkinTexture2D *)0x0;
    }
    else {
      pTVar9 = (Ts3SkinTexture2D *)Texture_Construct(puVar7);
    }
    pTVar10 = local_acc;
    if (pTVar9 != local_acc) {
      local_ac0 = local_acc;
      if (pTVar9 != (Ts3SkinTexture2D *)0x0) {
        (**(code **)(*(int *)pTVar9 + 4))();
      }
      pTVar10 = pTVar9;
      local_acc = pTVar9;
      if (local_ac0 != (Ts3SkinTexture2D *)0x0) {
        (**(code **)(*(int *)local_ac0 + 8))();
      }
    }
    pTVar9 = local_acc;
    if (pTVar10 == (Ts3SkinTexture2D *)0x0) {
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      if (piVar8 == (int *)0x0) {
        return 0;
      }
      (**(code **)(*piVar8 + 8))();
      return 0;
    }
    bVar3 = Texture_Create2D(local_acc,local_ab0,local_ab4,1,0x3e,1,
                             "ThumbnailRenderer/PrelimThumbsTex");
    if (!bVar3) {
      FUN_0061a1d0((int)pTVar9);
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      if (piVar8 != (int *)0x0) {
        (**(code **)(*piVar8 + 8))();
      }
      (**(code **)(*(int *)pTVar9 + 8))();
      return 0;
    }
    puVar7 = (undefined4 *)FUN_004e4500(0x28,"UI/ThumbnailManager/TempRTT",0);
    if (puVar7 == (undefined4 *)0x0) {
      piVar8 = (int *)0x0;
    }
    else {
      piVar8 = FUN_00618720(puVar7);
    }
    FUN_007c8ed0(&local_aac,piVar8);
    piVar8 = local_aac;
    if (local_aac == (int *)0x0) {
      FUN_0061a1d0((int)pTVar9);
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      (**(code **)(*(int *)pTVar9 + 8))();
      return 0;
    }
    FUN_00619bf0(pTVar9,0);
    puVar7 = (undefined4 *)FUN_004e4500(0x28,"UI/ThumnnailManager/DepthRTT",0);
    if (puVar7 == (undefined4 *)0x0) {
      piVar11 = (int *)0x0;
    }
    else {
      piVar11 = FUN_006187a0(puVar7);
    }
    FUN_007c8ed0(&local_ad4,piVar11);
    if ((local_ad4 == (int *)0x0) ||
       (cVar4 = FUN_006182f0(local_ad4,local_ab0,local_ab4,0x8d,0x10), cVar4 == '\0')) {
      FUN_0061a1d0((int)pTVar9);
      (**(code **)(*piVar8 + 0x10))();
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      (**(code **)(*piVar8 + 8))();
      (**(code **)(*(int *)pTVar9 + 8))();
      return 0;
    }
    local_ac7 = '\x01';
  }
  pvVar6 = local_aa8;
  FUN_0060f560(local_aa8,0,(int)piVar8);
  FUN_0060f5b0(pvVar6,(int)local_ad4);
  uVar12 = FUN_00611d40(pvVar6);
  if ((char)uVar12 == '\0') {
    if (local_ad4 != (int *)0x0) {
      (**(code **)(*local_ad4 + 8))();
    }
    if (piVar8 != (int *)0x0) {
      (**(code **)(*piVar8 + 8))();
    }
    if (local_acc == (Ts3SkinTexture2D *)0x0) {
      return 0;
    }
    (**(code **)(*(int *)local_acc + 8))();
    return 0;
  }
  bVar3 = *(int *)(param_1 + 0x34) == 0;
  self = *(Ts3SkinSceneRenderer **)(param_1 + 0xc);
  local_ab8 = (Ts3SkinTexture2D *)CONCAT31(local_ab8._1_3_,1);
  FUN_00961920(appuStack_740);
  pvVar6 = DAT_011d8530;
  pvStack_a7c = DAT_011d8530;
  if ((_DAT_011eee48 & 1) == 0) {
    _DAT_011eee48 = _DAT_011eee48 | 1;
    DAT_011eee44 = ShaderParameterRegistry_RegisterNamedRow
                             (DAT_011d8530,"ExteriorSpecularLightProbe",1,5);
  }
  puVar7 = FUN_0068ed30(pvVar6,DAT_011eee44);
  iVar1 = puVar7[3];
  if (bVar3) {
    FUN_005f78c0(pvVar6,DAT_011eee44,*(int *)(DAT_011d2530 + 300));
  }
  iVar19 = *(int *)(param_1 + 0x94);
  pvVar6 = (void *)FUN_006e9640();
  pTVar9 = (Ts3SkinTexture2D *)CustomLightRigCatalog_FindReadyName(pvVar6,iVar19);
  pTStack_abc = pTVar9;
  pvStack_a78 = (void *)FUN_006e8220((int)self);
  fStack_ac4 = (float)DAT_011edbc4;
  pvStack_a80 = (void *)0x0;
  if (DAT_011edbc4 == 0) {
    if (bVar3) {
      FUN_00d62280(pvStack_a78,(int)pTVar9,auStack_9f0,afStack_9e0);
      FUN_006b1dc0();
      goto LAB_00d62f41;
    }
  }
  else {
    pvStack_a80 = *(void **)(DAT_011edbc4 + 100);
    if (bVar3) {
LAB_00d62f41:
      uStack_ac5 = self->field_0x26c;
      uStack_ac6 = self->field_0x268;
      uStack_acd = self->field_0x2a1;
      self->field_0x268 = 0;
      self->field_0x260 = *(undefined1 *)(param_1 + 0x98);
      self->field_0x26c = 0;
      self->field_0x2a1 = 1;
      pvVar6 = (void *)FUN_005361d0((int)self);
      FUN_006e9950(pvVar6,*(int *)(param_1 + 0x10));
      fStack_a94 = 1.0;
      fStack_a98 = 0.0;
      iStack_a9c = 0;
      fStack_aa0 = 1.0;
      fStack_9a0 = 1.0;
      uStack_99c = 0;
      uStack_998 = 0;
      fStack_994 = 1.0;
      if (pTVar9 != (Ts3SkinTexture2D *)0x0) {
        fStack_9a0 = *(float *)&pTVar9->field_0x10;
        uStack_99c = pTVar9->width;
        uStack_998 = pTVar9->height;
        fStack_994 = (float)pTVar9->mipCount;
      }
      fStack_970 = 0.0;
      uStack_96c = 0;
      uStack_968 = 0;
      uStack_964 = 0;
      uStack_990 = 0;
      uStack_98c = 0;
      uStack_988 = 0;
      uStack_984 = 0;
      uStack_980 = 0x41a00000;
      uStack_97c = 1;
      FUN_006eae70(self,&fStack_9a0);
      FUN_006eb920((int)self);
      SceneRenderer_ExecutePreparedPasses(self);
      fStack_9a0 = fStack_970;
      uStack_99c = uStack_96c;
      uStack_998 = uStack_968;
      fStack_994 = (float)uStack_964;
      uStack_97c = 0;
      FUN_006eae70(self,&fStack_9a0);
      goto LAB_00d6303c;
    }
  }
  self = LoadPump_ReadFrameServiceGlobal();
  pvStack_a78 = (void *)FUN_006e8220((int)self);
  uStack_acd = self->field_0x260;
  uStack_ac6 = self->field_0x268;
  uStack_ac5 = self->field_0x26c;
  self->field_0x268 = 0;
  FUN_006e8240(self,&uStack_a38,&uStack_a64);
  pvVar6 = (void *)FUN_005361d0((int)self);
  FUN_006e9950(appuStack_740,(int)pvVar6);
  FUN_006e9950(pvVar6,*(int *)(param_1 + 0x10));
  FUN_00d62280(pvStack_a78,(int)pTStack_abc,auStack_9f0,afStack_9e0);
  if (pvStack_a80 != (void *)0x0) {
    local_ab8 = (Ts3SkinTexture2D *)
                CONCAT31(local_ab8._1_3_,*(undefined1 *)((int)pvStack_a80 + 0x982));
    FUN_00c12100(pvStack_a80,'\0');
  }
  self->field_0x260 = 1;
  self->field_0x26c = 0;
  FUN_006e8260(self,1,0x7fdff000);
  FUN_006eb920((int)self);
  SceneRenderer_ExecutePreparedPasses(self);
LAB_00d6303c:
  fStack_a70 = (float)(*(int *)(param_1 + 0x24) * 2);
  if ((uint)*(float *)(param_1 + 0x2c) <= (uint)fStack_a70) {
    fStack_a70 = *(float *)(param_1 + 0x2c);
  }
  uStack_aa4 = *(int *)(param_1 + 0x28) * 2;
  if (*(uint *)(param_1 + 0x30) <= uStack_aa4) {
    uStack_aa4 = *(uint *)(param_1 + 0x30);
  }
  FUN_0068e930((int)auStack_960);
  iStack_a74 = 0;
  do {
    iStack_a9c = 0;
    if (iStack_a74 == 0) {
      uStack_a04 = 0;
      uStack_a08 = 0;
      uStack_a0c = 0;
      uStack_a10 = 0;
      fVar16 = 0.0;
      fVar17 = 0.0;
      fVar18 = 0.0;
      uVar12 = 0;
      fStack_aa0 = 0.0;
      fStack_a98 = fStack_a70;
    }
    else {
      fStack_a84 = 0.0;
      fStack_a98 = (float)((int)fStack_a70 * 2);
      fStack_a88 = 1.0;
      fStack_a8c = 1.0;
      fStack_a90 = 1.0;
      fVar16 = 1.0;
      fVar17 = 1.0;
      fVar18 = 1.0;
      uVar12 = 0xffffffff;
      fStack_aa0 = fStack_a70;
    }
    fStack_a94 = (float)uStack_aa4;
    *(float *)(param_1 + 0x70) = fVar16;
    *(float *)(param_1 + 0x74) = fVar17;
    *(float *)(param_1 + 0x78) = fVar18;
    *(undefined4 *)(param_1 + 0x7c) = 0;
    if (*(uint *)(param_1 + 0x90) < *(uint *)((int)pvStack_a7c + 8)) {
      piVar8 = (int *)(*(uint *)(param_1 + 0x90) * 0x10 + *(int *)((int)pvStack_a7c + 4));
      *piVar8 = *piVar8 + 1;
      piVar8[2] = 1;
      *(undefined2 *)((int)piVar8 + 6) = 2;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)((int)pvStack_a7c + 0x12);
      piVar8[3] = param_1 + 0x70;
    }
    FUN_00610630(local_aa8,(int *)&fStack_aa0,0,0x3f800000);
    pvVar6 = local_aa8;
    FUN_0060f8b0(local_aa8,7,uVar12);
    fStack_aa0 = (float)((int)fStack_aa0 + 2);
    iStack_a9c = iStack_a9c + 2;
    fStack_a98 = (float)((int)fStack_a98 - 2);
    fStack_a94 = (float)((int)fStack_a94 - 2);
    FUN_00610630(pvVar6,(int *)&fStack_aa0,0,0x3f800000);
    if (bVar3) {
      if ((*(char *)(param_1 + 0x98) != '\0') && (iStack_a74 == 1)) {
        ShaderDefinition_SelectTechniqueOrdinal(*(Ts3SkinPostDefinition **)(param_1 + 0x18),0);
        ShaderDefinition_DrawSelectedTechnique
                  (*(Ts3SkinPostDefinition **)(param_1 + 0x18),(Ts3SkinPostDrawCallback *)0x0,
                   (void *)0x0);
      }
      pvStack_a34 = (void *)0x0;
      uStack_a30 = 0;
      uStack_a2c = 0;
      pcStack_a28 = "Renderer/SceneCullFilter/ObjectList";
      uStack_a18 = 0xffffff7f;
      uStack_a14 = 0;
      uStack_a13 = 0;
      uStack_a20 = 0xffffffff;
      uStack_a24 = 0;
      uStack_a1c = 0;
      FUN_006f20e0(self,auStack_960,*(void **)(param_1 + 0x10),0,0xffffffff,'\x01',(int)&pvStack_a34
                  );
      pvVar6 = pvStack_a34;
    }
    else {
      if (DAT_011edbc4 == 0) {
        uVar12 = 0;
      }
      else {
        uVar12 = *(undefined4 *)(DAT_011edbc4 + 0x8c);
      }
      iStack_a50 = *(int *)(param_1 + 0x34);
      pvStack_a60 = (void *)0x0;
      puStack_a5c = (undefined4 *)0x0;
      puStack_a58 = (undefined4 *)0x0;
      pcStack_a54 = "Renderer/SceneCullFilter/ObjectList";
      uStack_a44 = 0xffffff7f;
      uStack_a40 = 0;
      uStack_a3f = 0;
      uStack_a4c = 0;
      if ((iStack_a50 == 0) || (bVar5 = FUN_006fa5c0(iStack_a50), !bVar5)) {
        uStack_a3c = uVar12;
        if (puStack_a5c < puStack_a58) {
          puVar7 = puStack_a5c + 1;
          if (puStack_a5c != (undefined4 *)0x0) {
            *puStack_a5c = uVar12;
          }
        }
        else {
          FUN_00982420(&pvStack_a60,puStack_a5c,&uStack_a3c);
          puVar7 = puStack_a5c;
        }
      }
      else {
        puVar13 = (undefined4 *)FUN_006fa5b0(*(int *)(param_1 + 0x34));
        puVar7 = puStack_a5c;
        if (puVar13 != (undefined4 *)0x0) {
          puVar13[1] = puVar13[1] + 1;
          if ((puVar13[2] != 0) && (iStack_a68 = FUN_006fa9d0(puVar13[2]), iStack_a68 != 0)) {
            Int32Vector_AppendValue(&pvStack_a60,&iStack_a68);
            pTStack_abc = (Ts3SkinTexture2D *)(iStack_a68 + 0x194);
            if ((*(Ts3SkinTexture2D **)(iStack_a68 + 0x198) != pTStack_abc) &&
               (local_ac0 = *(Ts3SkinTexture2D **)pTStack_abc, local_ac0 != pTStack_abc)) {
              do {
                if (local_ac0 == (Ts3SkinTexture2D *)0x0) {
                  puStack_a6c = (uint *)0x0;
                }
                else {
                  puStack_a6c = &local_ac0[-1].width;
                }
                Int32Vector_AppendValue(&pvStack_a60,&puStack_a6c);
                local_ac0 = *(Ts3SkinTexture2D **)local_ac0;
              } while (local_ac0 != pTStack_abc);
            }
          }
          iVar19 = puVar13[1];
          puVar13[1] = iVar19 + -1;
          puVar7 = puStack_a5c;
          if (iVar19 + -1 == 0) {
            puVar13[1] = 1;
            (**(code **)*puVar13)(1);
            puVar7 = puStack_a5c;
          }
        }
      }
      puStack_a5c = puVar7;
      uStack_a48 = 1;
      FUN_006f20e0(self,auStack_960,*(void **)(param_1 + 0x10),1,0x7fdff000,'\x01',(int)&pvStack_a60
                  );
      pvVar6 = pvStack_a60;
    }
    if (pvVar6 != (void *)0x0) {
      Memory_FreeIfNonNull(pvVar6);
    }
    pvVar6 = pvStack_a78;
    iStack_a74 = iStack_a74 + 1;
  } while (iStack_a74 < 2);
  self->field_0x26c = uStack_ac5;
  self->field_0x268 = uStack_ac6;
  if (bVar3) {
    if ((fStack_ac4 == 0.0) && (pvStack_a78 != (void *)0x0)) {
      FUN_006acff0(pvStack_a78,auStack_9f0,afStack_9e0,'\x01');
      *(undefined1 *)((int)pvVar6 + 0x180) = 0;
    }
    if (DAT_011eee44 < *(uint *)((int)pvStack_a7c + 8)) {
      piVar8 = (int *)(DAT_011eee44 * 0x10 + *(int *)((int)pvStack_a7c + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)((int)pvStack_a7c + 0x12);
      piVar8[3] = iVar1;
    }
    self->field_0x2a1 = uStack_acd;
  }
  else {
    pvVar6 = (void *)FUN_005361d0((int)self);
    FUN_006e9950(pvVar6,(int)appuStack_740);
    self->field_0x260 = uStack_acd;
    FUN_006e8260(self,uStack_a38,uStack_a64);
    pvVar6 = pvStack_a78;
    if (pvStack_a78 != (void *)0x0) {
      FUN_006acff0(pvStack_a78,auStack_9f0,afStack_9e0,'\x01');
      *(undefined1 *)((int)pvVar6 + 0x180) = 0;
    }
    if (pvStack_a80 != (void *)0x0) {
      FUN_00c12100(pvStack_a80,(char)local_ab8);
    }
  }
  pvVar6 = pvStack_a7c;
  FUN_0079a0e0((int)pvStack_a7c);
  fVar16 = (float)*(int *)(param_1 + 0x2c);
  if (*(int *)(param_1 + 0x2c) < 0) {
    fVar16 = fVar16 + 4.2949673e+09;
  }
  fVar17 = (float)*(int *)(param_1 + 0x30);
  if (*(int *)(param_1 + 0x30) < 0) {
    fVar17 = fVar17 + 4.2949673e+09;
  }
  iVar1 = *(int *)(param_1 + 0x28);
  iVar19 = *(int *)(param_1 + 0x24);
  fVar18 = (float)iVar1;
  if (iVar1 < 0) {
    fVar18 = fVar18 + 4.2949673e+09;
  }
  fVar2 = (float)iVar19;
  if (iVar19 < 0) {
    fVar2 = fVar2 + 4.2949673e+09;
  }
  fStack_a90 = (float)(int)local_ab0;
  *(float *)(param_1 + 0x40) = fVar2 * (1.0 / fVar16);
  *(float *)(param_1 + 0x44) = fVar18 * (1.0 / fVar17);
  *(float *)(param_1 + 0x48) = (((float)iVar19 - fVar16) - 1.0) * (1.0 / fVar16);
  *(float *)(param_1 + 0x4c) = -((((float)iVar1 - fVar17) - 1.0) * (1.0 / fVar17));
  if ((int)local_ab0 < 0) {
    fStack_a90 = fStack_a90 + 4.2949673e+09;
  }
  fStack_a90 = 1.0 / fStack_a90;
  fStack_a8c = (float)(int)local_ab4;
  if ((int)local_ab4 < 0) {
    fStack_a8c = fStack_a8c + 4.2949673e+09;
  }
  fStack_a8c = 1.0 / fStack_a8c;
  fVar16 = (float)(int)(uStack_aa4 - 4);
  if ((int)(uStack_aa4 - 4) < 0) {
    fVar16 = fVar16 + 4.2949673e+09;
  }
  fVar17 = (float)(int)((int)fStack_a70 - 4U);
  if ((int)((int)fStack_a70 - 4U) < 0) {
    fVar17 = fVar17 + 4.2949673e+09;
  }
  fStack_ac4 = (float)(int)fStack_a70;
  *(float *)(param_1 + 0x50) = fVar17 * fStack_a90;
  *(float *)(param_1 + 0x54) = fVar16 * fStack_a8c;
  *(float *)(param_1 + 0x58) = fStack_a8c;
  *(float *)(param_1 + 0x5c) = fStack_a90;
  if ((int)fStack_a70 < 0) {
    fStack_ac4 = fStack_ac4 + 4.2949673e+09;
  }
  fStack_a84 = fStack_ac4 * fStack_a90;
  fStack_a8c = fStack_a8c * 2.0;
  fStack_a88 = 0.0;
  fStack_a90 = fStack_a90 * 2.0;
  *(float *)(param_1 + 0x60) = fStack_a90;
  *(float *)(param_1 + 100) = fStack_a8c;
  *(undefined4 *)(param_1 + 0x68) = 0;
  *(float *)(param_1 + 0x6c) = fStack_a84;
  ShaderParameterRegistry_SetTexturePayload(pvVar6,*(uint *)(param_1 + 0x80),(int)local_acc);
  if (*(uint *)(param_1 + 0x88) < *(uint *)((int)pvVar6 + 8)) {
    piVar8 = (int *)(*(uint *)(param_1 + 0x88) * 0x10 + *(int *)((int)pvVar6 + 4));
    *piVar8 = *piVar8 + 1;
    piVar8[2] = 1;
    *(undefined2 *)((int)piVar8 + 6) = 2;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)((int)pvVar6 + 0x12);
    piVar8[3] = param_1 + 0x50;
  }
  if (*(uint *)(param_1 + 0x8c) < *(uint *)((int)pvVar6 + 8)) {
    piVar8 = (int *)(*(uint *)(param_1 + 0x8c) * 0x10 + *(int *)((int)pvVar6 + 4));
    *piVar8 = *piVar8 + 1;
    piVar8[2] = 1;
    *(undefined2 *)((int)piVar8 + 6) = 2;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)((int)pvVar6 + 0x12);
    piVar8[3] = param_1 + 0x60;
  }
  if (*(uint *)(param_1 + 0x84) < *(uint *)((int)pvVar6 + 8)) {
    piVar8 = (int *)(*(uint *)(param_1 + 0x84) * 0x10 + *(int *)((int)pvVar6 + 4));
    *piVar8 = *piVar8 + 1;
    piVar8[2] = 1;
    *(undefined2 *)((int)piVar8 + 6) = 2;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)((int)pvVar6 + 0x12);
    piVar8[3] = param_1 + 0x40;
  }
  FUN_00618720(auStack_9c8);
  FUN_00619bf0(*(void **)(param_1 + 0x1c),0);
  this = local_aa8;
  FUN_0060f560(local_aa8,0,(int)auStack_9c8);
  FUN_0060f5b0(this,(int)local_ad4);
  aiStack_a00[0] = 0;
  aiStack_a00[1] = 0;
  uStack_9f4 = uStack_9ac;
  aiStack_a00[2] = uStack_9b0;
  FUN_00610630(this,aiStack_a00,0,0x3f800000);
  uVar15 = *(uint *)(param_1 + 0x9c);
  if (uVar15 == 0) {
    fVar16 = (float)*(int *)(param_1 + 0x28);
    if (*(int *)(param_1 + 0x28) < 0) {
      fVar16 = fVar16 + 4.2949673e+09;
    }
    fVar17 = (float)(int)uStack_aa4;
    if ((int)uStack_aa4 < 0) {
      fVar17 = fVar17 + 4.2949673e+09;
    }
    local_ab8 = (Ts3SkinTexture2D *)(fVar16 / fVar17);
    fVar18 = (float)*(int *)(param_1 + 0x24);
    if (*(int *)(param_1 + 0x24) < 0) {
      fVar18 = fVar18 + 4.2949673e+09;
    }
    ppTVar14 = &local_ab8;
    pTStack_abc = (Ts3SkinTexture2D *)(fVar18 / fStack_ac4);
    if (fVar18 / fStack_ac4 <= fVar16 / fVar17) {
      ppTVar14 = &pTStack_abc;
    }
    uVar15 = 1;
    if ((float)*ppTVar14 < 0.99) {
      uVar15 = 2;
    }
  }
  ShaderDefinition_SelectTechniqueOrdinal(*(Ts3SkinPostDefinition **)(param_1 + 0x14),uVar15);
  ShaderDefinition_DrawSelectedTechnique
            (*(Ts3SkinPostDefinition **)(param_1 + 0x14),(Ts3SkinPostDrawCallback *)0x0,(void *)0x0)
  ;
  FUN_0079a130((int)pvVar6);
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  piVar8 = local_aac;
  if (local_ac7 != '\0') {
    (**(code **)(*local_aac + 0x10))();
    FUN_0061a1d0((int)local_acc);
    (**(code **)(*local_ad4 + 0x10))();
  }
  bVar3 = FUN_00610d80(this,*(void **)(param_1 + 0x20),0,(int *)0x0,0,0);
  if (bVar3) {
    FUN_006183f0(auStack_9c8);
    FUN_0068e890((int)auStack_960);
    appuStack_740[0] = &PTR_FUN_0102bba4;
    if (local_ad4 != (int *)0x0) {
      (**(code **)(*local_ad4 + 8))();
    }
    if (piVar8 != (int *)0x0) {
      (**(code **)(*piVar8 + 8))();
    }
    if (local_acc != (Ts3SkinTexture2D *)0x0) {
      (**(code **)(*(int *)local_acc + 8))();
    }
    return 1;
  }
  if (*(char *)((int)this + 0x8d) != '\0') {
    FUN_006183f0(auStack_9c8);
    FUN_0068e890((int)auStack_960);
    appuStack_740[0] = &PTR_FUN_0102bba4;
    if (local_ad4 != (int *)0x0) {
      (**(code **)(*local_ad4 + 8))();
    }
    if (piVar8 != (int *)0x0) {
      (**(code **)(*piVar8 + 8))();
    }
    if (local_acc != (Ts3SkinTexture2D *)0x0) {
      (**(code **)(*(int *)local_acc + 8))();
    }
    return 2;
  }
  FUN_006183f0(auStack_9c8);
  FUN_0068e890((int)auStack_960);
  appuStack_740[0] = &PTR_FUN_0102bba4;
  if (local_ad4 != (int *)0x0) {
    (**(code **)(*local_ad4 + 8))();
  }
  if (piVar8 != (int *)0x0) {
    (**(code **)(*piVar8 + 8))();
  }
  if (local_acc == (Ts3SkinTexture2D *)0x0) {
    return 0;
  }
  (**(code **)(*(int *)local_acc + 8))();
  return 0;
}

