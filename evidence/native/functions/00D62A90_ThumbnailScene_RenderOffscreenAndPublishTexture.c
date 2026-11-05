/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  float fVar3;
  float fVar4;
  char cVar5;
  bool bVar6;
  void *pvVar7;
  undefined4 *puVar8;
  int *piVar9;
  undefined4 uVar10;
  int *piVar11;
  int *piVar12;
  void *pvVar13;
  undefined4 *puVar14;
  int **ppiVar15;
  uint uVar16;
  bool bVar17;
  float fVar18;
  int iVar19;
  int *local_ad4;
  undefined1 uStack_acd;
  int *local_acc;
  char local_ac7;
  undefined1 uStack_ac6;
  undefined1 uStack_ac5;
  float fStack_ac4;
  int *local_ac0;
  int *piStack_abc;
  int *local_ab8;
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
  int *piStack_a6c;
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
  int iStack_99c;
  int iStack_998;
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
  local_acc = (int *)0x0;
  local_aac = (int *)0x0;
  local_ad4 = (int *)0x0;
  pvVar7 = (void *)FUN_00617780();
  local_ab8 = (int *)FUN_00617c50(pvVar7);
  puVar8 = SurfaceRegistry_FindValueByTag(pvVar7,0x76b9af5e);
  piVar9 = local_ab8;
  piVar11 = (int *)0x0;
  if ((puVar8 != (undefined4 *)0x0) && (local_ab8 != (int *)0x0)) {
    FUN_007c8ed0(&local_acc,(int *)*puVar8);
    FUN_007c8ed0(&local_aac,(int *)*piVar9);
    piVar9 = (int *)FUN_0081d420((int)local_aa8);
    FUN_007c8ed0(&local_ad4,piVar9);
    local_ab0 = local_aac[6];
    local_ab4 = local_aac[7];
    piVar11 = local_aac;
  }
  uVar16 = *(int *)(param_1 + 0x2c) * 2;
  if ((local_ab0 <= uVar16) || (local_ab4 < *(uint *)(param_1 + 0x30))) {
    local_ab4 = *(uint *)(param_1 + 0x30);
    local_ab0 = uVar16;
    puVar8 = (undefined4 *)FUN_004e4500(0x34,"UI/ThumbnailManager/TempRTT",0);
    if (puVar8 == (undefined4 *)0x0) {
      piVar9 = (int *)0x0;
    }
    else {
      piVar9 = Texture_Construct(puVar8);
    }
    piVar12 = local_acc;
    if (piVar9 != local_acc) {
      local_ac0 = local_acc;
      if (piVar9 != (int *)0x0) {
        (**(code **)(*piVar9 + 4))();
      }
      piVar12 = piVar9;
      local_acc = piVar9;
      if (local_ac0 != (int *)0x0) {
        (**(code **)(*local_ac0 + 8))();
      }
    }
    piVar9 = local_acc;
    if (piVar12 == (int *)0x0) {
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      if (piVar11 == (int *)0x0) {
        return 0;
      }
      (**(code **)(*piVar11 + 8))();
      return 0;
    }
    uVar10 = Texture_Create2D(local_acc,local_ab0,local_ab4,1,0x3e,1);
    if ((char)uVar10 == '\0') {
      FUN_0061a1d0((int)piVar9);
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      if (piVar11 != (int *)0x0) {
        (**(code **)(*piVar11 + 8))();
      }
      (**(code **)(*piVar9 + 8))();
      return 0;
    }
    puVar8 = (undefined4 *)FUN_004e4500(0x28,"UI/ThumbnailManager/TempRTT",0);
    if (puVar8 == (undefined4 *)0x0) {
      piVar11 = (int *)0x0;
    }
    else {
      piVar11 = FUN_00618720(puVar8);
    }
    FUN_007c8ed0(&local_aac,piVar11);
    piVar11 = local_aac;
    if (local_aac == (int *)0x0) {
      FUN_0061a1d0((int)piVar9);
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      (**(code **)(*piVar9 + 8))();
      return 0;
    }
    FUN_00619bf0(piVar9,0);
    puVar8 = (undefined4 *)FUN_004e4500(0x28,"UI/ThumnnailManager/DepthRTT",0);
    if (puVar8 == (undefined4 *)0x0) {
      piVar12 = (int *)0x0;
    }
    else {
      piVar12 = FUN_006187a0(puVar8);
    }
    FUN_007c8ed0(&local_ad4,piVar12);
    if ((local_ad4 == (int *)0x0) ||
       (cVar5 = FUN_006182f0(local_ad4,local_ab0,local_ab4,0x8d,0x10), cVar5 == '\0')) {
      FUN_0061a1d0((int)piVar9);
      (**(code **)(*piVar11 + 0x10))();
      if (local_ad4 != (int *)0x0) {
        (**(code **)(*local_ad4 + 8))();
      }
      (**(code **)(*piVar11 + 8))();
      (**(code **)(*piVar9 + 8))();
      return 0;
    }
    local_ac7 = '\x01';
  }
  pvVar7 = local_aa8;
  FUN_0060f560(local_aa8,0,(int)piVar11);
  FUN_0060f5b0(pvVar7,(int)local_ad4);
  uVar10 = FUN_00611d40(pvVar7);
  if ((char)uVar10 == '\0') {
    if (local_ad4 != (int *)0x0) {
      (**(code **)(*local_ad4 + 8))();
    }
    if (piVar11 != (int *)0x0) {
      (**(code **)(*piVar11 + 8))();
    }
    if (local_acc == (int *)0x0) {
      return 0;
    }
    (**(code **)(*local_acc + 8))();
    return 0;
  }
  bVar17 = *(int *)(param_1 + 0x34) == 0;
  pvVar7 = *(void **)(param_1 + 0xc);
  local_ab8 = (int *)CONCAT31(local_ab8._1_3_,1);
  FUN_00961920(appuStack_740);
  pvVar13 = DAT_011d8530;
  pvStack_a7c = DAT_011d8530;
  if ((_DAT_011eee48 & 1) == 0) {
    _DAT_011eee48 = _DAT_011eee48 | 1;
    DAT_011eee44 = ShaderParameterRegistry_RegisterNamedRow
                             (DAT_011d8530,"ExteriorSpecularLightProbe",1,5);
  }
  puVar8 = FUN_0068ed30(pvVar13,DAT_011eee44);
  iVar1 = puVar8[3];
  if (bVar17) {
    FUN_005f78c0(pvVar13,DAT_011eee44,*(int *)(DAT_011d2530 + 300));
  }
  iVar19 = *(int *)(param_1 + 0x94);
  pvVar13 = (void *)FUN_006e9640();
  piVar9 = FUN_006ad190(pvVar13,iVar19);
  piStack_abc = piVar9;
  pvStack_a78 = (void *)FUN_006e8220((int)pvVar7);
  fStack_ac4 = (float)DAT_011edbc4;
  pvStack_a80 = (void *)0x0;
  if (DAT_011edbc4 == 0) {
    if (bVar17) {
      FUN_00d62280(pvStack_a78,(int)piVar9,auStack_9f0,afStack_9e0);
      FUN_006b1dc0();
      goto LAB_00d62f41;
    }
  }
  else {
    pvStack_a80 = *(void **)(DAT_011edbc4 + 100);
    if (bVar17) {
LAB_00d62f41:
      uStack_ac5 = *(undefined1 *)((int)pvVar7 + 0x26c);
      uStack_ac6 = *(undefined1 *)((int)pvVar7 + 0x268);
      uStack_acd = *(undefined1 *)((int)pvVar7 + 0x2a1);
      *(undefined1 *)((int)pvVar7 + 0x268) = 0;
      *(undefined1 *)((int)pvVar7 + 0x260) = *(undefined1 *)(param_1 + 0x98);
      *(undefined1 *)((int)pvVar7 + 0x26c) = 0;
      *(undefined1 *)((int)pvVar7 + 0x2a1) = 1;
      pvVar13 = (void *)FUN_005361d0((int)pvVar7);
      FUN_006e9950(pvVar13,*(int *)(param_1 + 0x10));
      fStack_a94 = FLOAT_00f998f8;
      fStack_a98 = 0.0;
      iStack_a9c = 0;
      fStack_aa0 = FLOAT_00f998f8;
      iStack_99c = 0;
      iStack_998 = 0;
      fStack_9a0 = FLOAT_00f998f8;
      fStack_994 = FLOAT_00f998f8;
      if (piVar9 != (int *)0x0) {
        fStack_9a0 = (float)piVar9[4];
        iStack_99c = piVar9[5];
        iStack_998 = piVar9[6];
        fStack_994 = (float)piVar9[7];
      }
      fStack_970 = 0.0;
      uStack_96c = 0;
      uStack_968 = 0;
      uStack_964 = 0;
      uStack_990 = 0;
      uStack_98c = 0;
      uStack_988 = 0;
      uStack_984 = 0;
      uStack_980 = DAT_010690d4;
      uStack_97c = 1;
      FUN_006eae70(pvVar7,&fStack_9a0);
      FUN_006eb920((int)pvVar7);
      SceneRenderer_ExecutePreparedPasses(pvVar7);
      fStack_9a0 = fStack_970;
      iStack_99c = uStack_96c;
      iStack_998 = uStack_968;
      fStack_994 = (float)uStack_964;
      uStack_97c = 0;
      FUN_006eae70(pvVar7,&fStack_9a0);
      goto LAB_00d6303c;
    }
  }
  pvVar7 = LoadPump_ReadFrameServiceGlobal();
  pvStack_a78 = (void *)FUN_006e8220((int)pvVar7);
  uStack_acd = *(undefined1 *)((int)pvVar7 + 0x260);
  uStack_ac6 = *(undefined1 *)((int)pvVar7 + 0x268);
  uStack_ac5 = *(undefined1 *)((int)pvVar7 + 0x26c);
  *(undefined1 *)((int)pvVar7 + 0x268) = 0;
  FUN_006e8240(pvVar7,&uStack_a38,&uStack_a64);
  pvVar13 = (void *)FUN_005361d0((int)pvVar7);
  FUN_006e9950(appuStack_740,(int)pvVar13);
  FUN_006e9950(pvVar13,*(int *)(param_1 + 0x10));
  FUN_00d62280(pvStack_a78,(int)piStack_abc,auStack_9f0,afStack_9e0);
  if (pvStack_a80 != (void *)0x0) {
    local_ab8 = (int *)CONCAT31(local_ab8._1_3_,*(undefined1 *)((int)pvStack_a80 + 0x982));
    FUN_00c12100(pvStack_a80,'\0');
  }
  *(undefined1 *)((int)pvVar7 + 0x260) = 1;
  *(undefined1 *)((int)pvVar7 + 0x26c) = 0;
  FUN_006e8260(pvVar7,1,0x7fdff000);
  FUN_006eb920((int)pvVar7);
  SceneRenderer_ExecutePreparedPasses(pvVar7);
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
      uVar10 = 0;
      fStack_aa0 = 0.0;
      fStack_a98 = fStack_a70;
      fVar18 = 0.0;
    }
    else {
      fStack_a84 = 0.0;
      fStack_a98 = (float)((int)fStack_a70 * 2);
      fStack_a88 = FLOAT_00f998f8;
      fStack_a8c = FLOAT_00f998f8;
      fStack_a90 = FLOAT_00f998f8;
      uVar10 = 0xffffffff;
      fStack_aa0 = fStack_a70;
      fVar18 = FLOAT_00f998f8;
    }
    fStack_a94 = (float)uStack_aa4;
    *(float *)(param_1 + 0x70) = fVar18;
    *(float *)(param_1 + 0x74) = fVar18;
    *(float *)(param_1 + 0x78) = fVar18;
    *(undefined4 *)(param_1 + 0x7c) = 0;
    if (*(uint *)(param_1 + 0x90) < *(uint *)((int)pvStack_a7c + 8)) {
      piVar9 = (int *)(*(uint *)(param_1 + 0x90) * 0x10 + *(int *)((int)pvStack_a7c + 4));
      *piVar9 = *piVar9 + 1;
      piVar9[2] = 1;
      *(undefined2 *)((int)piVar9 + 6) = 2;
      *(undefined2 *)(piVar9 + 1) = *(undefined2 *)((int)pvStack_a7c + 0x12);
      piVar9[3] = param_1 + 0x70;
    }
    FUN_00610630(local_aa8,(int *)&fStack_aa0,0,0x3f800000);
    pvVar13 = local_aa8;
    FUN_0060f8b0(local_aa8,7,uVar10);
    fStack_aa0 = (float)((int)fStack_aa0 + 2);
    iStack_a9c = iStack_a9c + 2;
    fStack_a98 = (float)((int)fStack_a98 - 2);
    fStack_a94 = (float)((int)fStack_a94 - 2);
    FUN_00610630(pvVar13,(int *)&fStack_aa0,0,0x3f800000);
    if (bVar17) {
      if ((*(char *)(param_1 + 0x98) != '\0') && (iStack_a74 == 1)) {
        FUN_0079a6a0(*(void **)(param_1 + 0x18),0);
        ShaderDefinition_DrawSelectedTechnique(*(void **)(param_1 + 0x18),(undefined *)0x0,0);
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
      FUN_006f20e0(pvVar7,auStack_960,*(void **)(param_1 + 0x10),0,0xffffffff,'\x01',
                   (int)&pvStack_a34);
      pvVar13 = pvStack_a34;
    }
    else {
      if (DAT_011edbc4 == 0) {
        uVar10 = 0;
      }
      else {
        uVar10 = *(undefined4 *)(DAT_011edbc4 + 0x8c);
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
      if ((iStack_a50 == 0) || (bVar6 = FUN_006fa5c0(iStack_a50), !bVar6)) {
        uStack_a3c = uVar10;
        if (puStack_a5c < puStack_a58) {
          puVar8 = puStack_a5c + 1;
          if (puStack_a5c != (undefined4 *)0x0) {
            *puStack_a5c = uVar10;
          }
        }
        else {
          FUN_00982420(&pvStack_a60,puStack_a5c,&uStack_a3c);
          puVar8 = puStack_a5c;
        }
      }
      else {
        puVar14 = (undefined4 *)FUN_006fa5b0(*(int *)(param_1 + 0x34));
        puVar8 = puStack_a5c;
        if (puVar14 != (undefined4 *)0x0) {
          puVar14[1] = puVar14[1] + 1;
          if ((puVar14[2] != 0) && (iStack_a68 = FUN_006fa9d0(puVar14[2]), iStack_a68 != 0)) {
            Int32Vector_AppendValue(&pvStack_a60,&iStack_a68);
            piStack_abc = (int *)(iStack_a68 + 0x194);
            if ((*(int **)(iStack_a68 + 0x198) != piStack_abc) &&
               (local_ac0 = (int *)*piStack_abc, local_ac0 != piStack_abc)) {
              do {
                if (local_ac0 == (int *)0x0) {
                  piStack_a6c = (int *)0x0;
                }
                else {
                  piStack_a6c = local_ac0 + -8;
                }
                Int32Vector_AppendValue(&pvStack_a60,&piStack_a6c);
                local_ac0 = (int *)*local_ac0;
              } while (local_ac0 != piStack_abc);
            }
          }
          iVar19 = puVar14[1];
          puVar14[1] = iVar19 + -1;
          puVar8 = puStack_a5c;
          if (iVar19 + -1 == 0) {
            puVar14[1] = 1;
            (**(code **)*puVar14)(1);
            puVar8 = puStack_a5c;
          }
        }
      }
      puStack_a5c = puVar8;
      uStack_a48 = 1;
      FUN_006f20e0(pvVar7,auStack_960,*(void **)(param_1 + 0x10),1,0x7fdff000,'\x01',
                   (int)&pvStack_a60);
      pvVar13 = pvStack_a60;
    }
    if (pvVar13 != (void *)0x0) {
      Memory_FreeIfNonNull(pvVar13);
    }
    pvVar13 = pvStack_a78;
    iStack_a74 = iStack_a74 + 1;
  } while (iStack_a74 < 2);
  *(undefined1 *)((int)pvVar7 + 0x26c) = uStack_ac5;
  *(undefined1 *)((int)pvVar7 + 0x268) = uStack_ac6;
  if (bVar17) {
    if ((fStack_ac4 == 0.0) && (pvStack_a78 != (void *)0x0)) {
      FUN_006acff0(pvStack_a78,auStack_9f0,afStack_9e0,'\x01');
      *(undefined1 *)((int)pvVar13 + 0x180) = 0;
    }
    if (DAT_011eee44 < *(uint *)((int)pvStack_a7c + 8)) {
      piVar9 = (int *)(DAT_011eee44 * 0x10 + *(int *)((int)pvStack_a7c + 4));
      *piVar9 = *piVar9 + 1;
      *(undefined2 *)(piVar9 + 1) = *(undefined2 *)((int)pvStack_a7c + 0x12);
      piVar9[3] = iVar1;
    }
    *(undefined1 *)((int)pvVar7 + 0x2a1) = uStack_acd;
  }
  else {
    pvVar13 = (void *)FUN_005361d0((int)pvVar7);
    FUN_006e9950(pvVar13,(int)appuStack_740);
    *(undefined1 *)((int)pvVar7 + 0x260) = uStack_acd;
    FUN_006e8260(pvVar7,uStack_a38,uStack_a64);
    pvVar7 = pvStack_a78;
    if (pvStack_a78 != (void *)0x0) {
      FUN_006acff0(pvStack_a78,auStack_9f0,afStack_9e0,'\x01');
      *(undefined1 *)((int)pvVar7 + 0x180) = 0;
    }
    if (pvStack_a80 != (void *)0x0) {
      FUN_00c12100(pvStack_a80,(char)local_ab8);
    }
  }
  pvVar7 = pvStack_a7c;
  FUN_0079a0e0((int)pvStack_a7c);
  fVar18 = (float)*(int *)(param_1 + 0x2c);
  if (*(int *)(param_1 + 0x2c) < 0) {
    fVar18 = fVar18 + FLOAT_00f99948;
  }
  fVar3 = (float)*(int *)(param_1 + 0x30);
  if (*(int *)(param_1 + 0x30) < 0) {
    fVar3 = fVar3 + FLOAT_00f99948;
  }
  iVar1 = *(int *)(param_1 + 0x28);
  iVar19 = *(int *)(param_1 + 0x24);
  fVar4 = (float)iVar1;
  if (iVar1 < 0) {
    fVar4 = fVar4 + FLOAT_00f99948;
  }
  fVar2 = (float)iVar19;
  if (iVar19 < 0) {
    fVar2 = fVar2 + FLOAT_00f99948;
  }
  fStack_a90 = (float)(int)local_ab0;
  *(float *)(param_1 + 0x40) = fVar2 * (1.0 / fVar18);
  *(float *)(param_1 + 0x44) = fVar4 * (1.0 / fVar3);
  *(float *)(param_1 + 0x48) = (((float)iVar19 - fVar18) - 1.0) * (1.0 / fVar18);
  *(float *)(param_1 + 0x4c) = -((((float)iVar1 - fVar3) - 1.0) * (1.0 / fVar3));
  if ((int)local_ab0 < 0) {
    fStack_a90 = fStack_a90 + FLOAT_00f99948;
  }
  fStack_a90 = 1.0 / fStack_a90;
  fStack_a8c = (float)(int)local_ab4;
  if ((int)local_ab4 < 0) {
    fStack_a8c = fStack_a8c + FLOAT_00f99948;
  }
  fStack_a8c = 1.0 / fStack_a8c;
  fVar18 = (float)(int)(uStack_aa4 - 4);
  if ((int)(uStack_aa4 - 4) < 0) {
    fVar18 = fVar18 + FLOAT_00f99948;
  }
  fVar3 = (float)(int)((int)fStack_a70 - 4U);
  if ((int)((int)fStack_a70 - 4U) < 0) {
    fVar3 = fVar3 + FLOAT_00f99948;
  }
  fStack_ac4 = (float)(int)fStack_a70;
  *(float *)(param_1 + 0x50) = fVar3 * fStack_a90;
  *(float *)(param_1 + 0x54) = fVar18 * fStack_a8c;
  *(float *)(param_1 + 0x58) = fStack_a8c;
  *(float *)(param_1 + 0x5c) = fStack_a90;
  uVar10 = DAT_010f4ccc;
  if ((int)fStack_a70 < 0) {
    fStack_ac4 = fStack_ac4 + FLOAT_00f99948;
  }
  fStack_a84 = fStack_ac4 * fStack_a90;
  fStack_a8c = fStack_a8c * DAT_0103fd88;
  fStack_a88 = (float)DAT_010f4ccc;
  fStack_a90 = DAT_0103fd88 * fStack_a90;
  *(float *)(param_1 + 0x60) = fStack_a90;
  *(float *)(param_1 + 100) = fStack_a8c;
  *(undefined4 *)(param_1 + 0x68) = uVar10;
  *(float *)(param_1 + 0x6c) = fStack_a84;
  ShaderParameterRegistry_SetTexturePayload(pvVar7,*(uint *)(param_1 + 0x80),(int)local_acc);
  if (*(uint *)(param_1 + 0x88) < *(uint *)((int)pvVar7 + 8)) {
    piVar9 = (int *)(*(uint *)(param_1 + 0x88) * 0x10 + *(int *)((int)pvVar7 + 4));
    *piVar9 = *piVar9 + 1;
    piVar9[2] = 1;
    *(undefined2 *)((int)piVar9 + 6) = 2;
    *(undefined2 *)(piVar9 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
    piVar9[3] = param_1 + 0x50;
  }
  if (*(uint *)(param_1 + 0x8c) < *(uint *)((int)pvVar7 + 8)) {
    piVar9 = (int *)(*(uint *)(param_1 + 0x8c) * 0x10 + *(int *)((int)pvVar7 + 4));
    *piVar9 = *piVar9 + 1;
    piVar9[2] = 1;
    *(undefined2 *)((int)piVar9 + 6) = 2;
    *(undefined2 *)(piVar9 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
    piVar9[3] = param_1 + 0x60;
  }
  if (*(uint *)(param_1 + 0x84) < *(uint *)((int)pvVar7 + 8)) {
    piVar9 = (int *)(*(uint *)(param_1 + 0x84) * 0x10 + *(int *)((int)pvVar7 + 4));
    *piVar9 = *piVar9 + 1;
    piVar9[2] = 1;
    *(undefined2 *)((int)piVar9 + 6) = 2;
    *(undefined2 *)(piVar9 + 1) = *(undefined2 *)((int)pvVar7 + 0x12);
    piVar9[3] = param_1 + 0x40;
  }
  FUN_00618720(auStack_9c8);
  FUN_00619bf0(*(void **)(param_1 + 0x1c),0);
  pvVar13 = local_aa8;
  FUN_0060f560(local_aa8,0,(int)auStack_9c8);
  FUN_0060f5b0(pvVar13,(int)local_ad4);
  aiStack_a00[0] = 0;
  aiStack_a00[1] = 0;
  uStack_9f4 = uStack_9ac;
  aiStack_a00[2] = uStack_9b0;
  FUN_00610630(pvVar13,aiStack_a00,0,0x3f800000);
  uVar16 = *(uint *)(param_1 + 0x9c);
  if (uVar16 == 0) {
    fVar18 = (float)*(int *)(param_1 + 0x28);
    if (*(int *)(param_1 + 0x28) < 0) {
      fVar18 = fVar18 + FLOAT_00f99948;
    }
    fVar3 = (float)(int)uStack_aa4;
    if ((int)uStack_aa4 < 0) {
      fVar3 = fVar3 + FLOAT_00f99948;
    }
    local_ab8 = (int *)(fVar18 / fVar3);
    fVar4 = (float)*(int *)(param_1 + 0x24);
    if (*(int *)(param_1 + 0x24) < 0) {
      fVar4 = fVar4 + FLOAT_00f99948;
    }
    ppiVar15 = &local_ab8;
    piStack_abc = (int *)(fVar4 / fStack_ac4);
    if (fVar4 / fStack_ac4 <= fVar18 / fVar3) {
      ppiVar15 = &piStack_abc;
    }
    uVar16 = 1;
    if ((float)*ppiVar15 < DAT_0107ebd4) {
      uVar16 = 2;
    }
  }
  FUN_0079a6a0(*(void **)(param_1 + 0x14),uVar16);
  ShaderDefinition_DrawSelectedTechnique(*(void **)(param_1 + 0x14),(undefined *)0x0,0);
  FUN_0079a130((int)pvVar7);
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  piVar9 = local_aac;
  if (local_ac7 != '\0') {
    (**(code **)(*local_aac + 0x10))();
    FUN_0061a1d0((int)local_acc);
    (**(code **)(*local_ad4 + 0x10))();
  }
  bVar17 = FUN_00610d80(pvVar13,*(void **)(param_1 + 0x20),0,(int *)0x0,0,0);
  if (bVar17) {
    FUN_006183f0(auStack_9c8);
    FUN_0068e890((int)auStack_960);
    appuStack_740[0] = &PTR_FUN_0102bba4;
    if (local_ad4 != (int *)0x0) {
      (**(code **)(*local_ad4 + 8))();
    }
    if (piVar9 != (int *)0x0) {
      (**(code **)(*piVar9 + 8))();
    }
    if (local_acc != (int *)0x0) {
      (**(code **)(*local_acc + 8))();
    }
    return 1;
  }
  if (*(char *)((int)pvVar13 + 0x8d) != '\0') {
    FUN_006183f0(auStack_9c8);
    FUN_0068e890((int)auStack_960);
    appuStack_740[0] = &PTR_FUN_0102bba4;
    if (local_ad4 != (int *)0x0) {
      (**(code **)(*local_ad4 + 8))();
    }
    if (piVar9 != (int *)0x0) {
      (**(code **)(*piVar9 + 8))();
    }
    if (local_acc != (int *)0x0) {
      (**(code **)(*local_acc + 8))();
    }
    return 2;
  }
  FUN_006183f0(auStack_9c8);
  FUN_0068e890((int)auStack_960);
  appuStack_740[0] = &PTR_FUN_0102bba4;
  if (local_ad4 != (int *)0x0) {
    (**(code **)(*local_ad4 + 8))();
  }
  if (piVar9 != (int *)0x0) {
    (**(code **)(*piVar9 + 8))();
  }
  if (local_acc == (int *)0x0) {
    return 0;
  }
  (**(code **)(*local_acc + 8))();
  return 0;
}

