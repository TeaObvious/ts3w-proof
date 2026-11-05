/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Physical ECX hand tool plus five stack DWORDs, RET14h. Resolves the candidate slot by native
   INDEX, applies its pose/placement path, and uses slot/product PlacementOnly04000000 to select
   parenting versus movement behavior. The managed placement callback uses the actual slot NAMEHASH
   at slot+4 and two-word object GUID arguments. Native index, name hash, object pointers and GUIDs
   retain distinct physical meanings; additional placement/tool-state branches remain part of this
   complete function. */

uint __thiscall
HandTool_ApplySlotCandidatePlacement
          (void *this,int *param_1,void *param_2,uint param_3,float param_4,float *param_5)

{
  undefined1 auVar1 [16];
  void *in_EAX;
  void *pvVar2;
  int *piVar3;
  uint uVar4;
  float *pfVar5;
  int iVar6;
  void *unaff_EDI;
  float10 fVar7;
  float10 fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  float fVar20;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  char cVar28;
  TS3WPortalXZLevel TStack_3dc;
  float fStack_3d0;
  float fStack_3cc;
  float fStack_3c8;
  float fStack_3c4;
  float fStack_3c0;
  float fStack_3bc;
  float fStack_3b8;
  float fStack_3b4;
  float fStack_3b0;
  float fStack_3ac;
  float fStack_3a8;
  float fStack_3a4;
  float fStack_3a0;
  float fStack_39c;
  float fStack_398;
  float fStack_394;
  float fStack_390;
  float fStack_38c;
  float fStack_388;
  float fStack_384;
  float local_380;
  float fStack_37c;
  float fStack_378;
  float fStack_374;
  float local_370;
  float fStack_36c;
  float fStack_368;
  float fStack_364;
  float local_360;
  float fStack_35c;
  float fStack_358;
  float fStack_354;
  float local_350;
  float fStack_34c;
  float fStack_348;
  float fStack_344;
  float local_340;
  float fStack_33c;
  float fStack_338;
  float fStack_334;
  float fStack_330;
  float fStack_32c;
  float fStack_328;
  float fStack_324;
  float fStack_320;
  float fStack_31c;
  float fStack_318;
  float fStack_314;
  float fStack_310;
  float fStack_30c;
  float fStack_308;
  float fStack_304;
  float fStack_300;
  float fStack_2fc;
  float fStack_2f8;
  float fStack_2f4;
  float fStack_2f0;
  float fStack_2ec;
  float fStack_2e8;
  float fStack_2e4;
  float fStack_2e0;
  float fStack_2dc;
  float fStack_2d8;
  float fStack_2d4;
  float fStack_2d0;
  float fStack_2cc;
  float fStack_2c8;
  float fStack_2c4;
  float fStack_2c0;
  float fStack_2bc;
  float fStack_2b8;
  float fStack_2b4;
  float fStack_2b0;
  float fStack_2a0;
  float afStack_290 [4];
  float fStack_280;
  float fStack_270;
  float fStack_260;
  float fStack_250;
  float fStack_24c;
  float fStack_240;
  float fStack_230;
  float fStack_220;
  float fStack_210;
  uint uStack_20c;
  uint uStack_208;
  uint uStack_204;
  uint uStack_200;
  uint uStack_1fc;
  uint uStack_1f8;
  uint uStack_1f4;
  uint uStack_1f0;
  uint uStack_1ec;
  uint uStack_1e8;
  uint uStack_1e4;
  float fStack_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float fStack_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float fStack_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float fStack_160;
  float fStack_15c;
  float fStack_158;
  float fStack_154;
  float fStack_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_50 [19];
  
  if ((((param_2 != (void *)0x0) &&
       (pvVar2 = Object_GetComponentByMask(param_2,DAT_011ea114), in_EAX = pvVar2,
       pvVar2 != (void *)0x0)) && (*(int *)((int)this + 0x58) != 0)) &&
     (in_EAX = (void *)FUN_00950290((int)pvVar2), (int)param_3 < (int)in_EAX)) {
    piVar3 = (int *)FUN_009502a0(pvVar2,param_3);
    if ((((((piVar3[6] & 0x4000000U) == 0) &&
          (uVar4 = Object_ReadSlotPlacementFlags(*(int *)((int)this + 0x58)),
          (uVar4 & 0x4000000) == 0)) &&
         ((*(char *)((int)this + 0x4d) != '\0' &&
          ((*(int *)(DAT_011edbc4 + 0x154) == 200 &&
           ((*(uint *)(*(int *)((int)this + 0x58) + 0x2c) & DAT_011ea0f8) != 0)))))) &&
        ((*(uint *)((int)param_2 + 0x2c) & DAT_011ea0f8) != 0)) &&
       (pvVar2 = (void *)FUN_0078fb80(), ((uint)pvVar2 & 1) == 0)) {
LAB_00d26c79:
      return (uint)pvVar2 & 0xffffff00;
    }
    pvVar2 = Object_GetComponentByMask(param_2,DAT_011ea158);
    pfVar5 = TransformComponent_GetWorldMatrix(pvVar2,local_50);
    local_380 = *pfVar5;
    fStack_37c = pfVar5[1];
    fStack_378 = pfVar5[2];
    fStack_374 = pfVar5[3];
    local_370 = pfVar5[4];
    fStack_36c = pfVar5[5];
    fStack_368 = pfVar5[6];
    fStack_364 = pfVar5[7];
    local_360 = pfVar5[8];
    fStack_35c = pfVar5[9];
    fStack_358 = pfVar5[10];
    fStack_354 = pfVar5[0xb];
    local_350 = pfVar5[0xc];
    fStack_34c = pfVar5[0xd];
    fStack_348 = pfVar5[0xe];
    fStack_344 = pfVar5[0xf];
    cVar28 = (char)((uint)&local_340 >> 0x18);
    (**(code **)(*piVar3 + 0x14))();
    (**(code **)(*piVar3 + 0x20))(&fStack_384,&fStack_344,0);
    fVar9 = local_350 * fStack_38c;
    fVar10 = local_350 * fStack_388;
    fVar11 = local_350 * fStack_384;
    fVar14 = fStack_34c * fStack_378;
    fVar15 = fStack_34c * fStack_374;
    fVar12 = fStack_348 * fStack_364;
    local_350 = fStack_34c * local_380 + local_350 * fStack_390 + fStack_348 * local_370 +
                fStack_344 * local_360;
    fStack_34c = fStack_34c * fStack_37c + fVar9 + fStack_348 * fStack_36c + fStack_344 * fStack_35c
    ;
    fStack_348 = fVar14 + fVar10 + fStack_348 * fStack_368 + fStack_344 * fStack_358;
    fStack_344 = fVar15 + fVar11 + fVar12 + fStack_344 * fStack_354;
    fVar12 = fStack_33c * fStack_378;
    fVar14 = fStack_33c * fStack_374;
    fVar9 = local_340 * fStack_38c;
    fVar10 = local_340 * fStack_388;
    fVar11 = local_340 * fStack_384;
    fVar15 = fStack_338 * fStack_364;
    local_340 = local_340 * fStack_390 + fStack_33c * local_380 + fStack_338 * local_370 +
                fStack_334 * local_360;
    fStack_33c = fVar9 + fStack_33c * fStack_37c + fStack_338 * fStack_36c + fStack_334 * fStack_35c
    ;
    fStack_338 = fVar10 + fVar12 + fStack_338 * fStack_368 + fStack_334 * fStack_358;
    fStack_334 = fVar11 + fVar14 + fVar15 + fStack_334 * fStack_354;
    fVar12 = fStack_32c * fStack_378;
    fVar14 = fStack_32c * fStack_374;
    fVar9 = fStack_330 * fStack_38c;
    fVar10 = fStack_330 * fStack_388;
    fVar11 = fStack_330 * fStack_384;
    fVar15 = fStack_328 * fStack_364;
    fStack_330 = fStack_330 * fStack_390 + fStack_32c * local_380 + fStack_328 * local_370 +
                 fStack_324 * local_360;
    fStack_32c = fVar9 + fStack_32c * fStack_37c + fStack_328 * fStack_36c + fStack_324 * fStack_35c
    ;
    fStack_328 = fVar10 + fVar12 + fStack_328 * fStack_368 + fStack_324 * fStack_358;
    fStack_324 = fVar11 + fVar14 + fVar15 + fStack_324 * fStack_354;
    fStack_38c = fStack_320 * fStack_38c;
    fStack_388 = fStack_320 * fStack_388;
    fStack_384 = fStack_320 * fStack_384;
    fVar10 = fStack_31c * fStack_378;
    fVar11 = fStack_31c * fStack_374;
    fVar9 = fStack_318 * fStack_364;
    fStack_320 = fStack_320 * fStack_390 + fStack_31c * local_380 + fStack_318 * local_370 +
                 fStack_314 * local_360;
    fStack_31c = fStack_38c + fStack_31c * fStack_37c + fStack_318 * fStack_36c +
                 fStack_314 * fStack_35c;
    fStack_318 = fStack_388 + fVar10 + fStack_318 * fStack_368 + fStack_314 * fStack_358;
    fStack_314 = fStack_384 + fVar11 + fVar9 + fStack_314 * fStack_354;
    auVar25._4_4_ = local_350;
    auVar25._0_4_ = local_350;
    auVar25._8_4_ = local_350;
    auVar25._12_4_ = local_350;
    auVar22._4_4_ = fStack_33c;
    auVar22._0_4_ = fStack_33c;
    auVar22._8_4_ = fStack_33c;
    auVar22._12_4_ = fStack_33c;
    fStack_150 = local_350 + fStack_33c;
    fStack_14c = local_350 + fStack_33c;
    fStack_148 = local_350 + fStack_33c;
    fStack_144 = local_350 + fStack_33c;
    fStack_270 = fStack_328 + fStack_150;
    fStack_2b0 = DAT_010f4ccc;
    fStack_2c0 = _DAT_00f9b5b4;
    fStack_2bc = _DAT_00f9b5b4;
    fStack_2b8 = _DAT_00f9b5b4;
    fStack_2b4 = _DAT_00f9b5b4;
    if (fStack_270 <= DAT_010f4ccc) {
      fStack_260 = local_350;
      fStack_240 = fStack_33c;
      if ((local_350 <= fStack_33c) ||
         (fStack_230 = fStack_328, fStack_220 = local_350, local_350 <= fStack_328)) {
        fStack_2a0 = fStack_328;
        fStack_280 = fStack_33c;
        if (fStack_33c <= fStack_328) {
          fStack_f0 = fStack_328 - fStack_150;
          fStack_ec = fStack_328 - fStack_14c;
          fStack_e8 = fStack_328 - fStack_148;
          fStack_e4 = fStack_328 - fStack_144;
          auVar1._4_4_ = fStack_ec + FLOAT_00f998f8;
          auVar1._0_4_ = fStack_f0 + FLOAT_00f998f8;
          auVar1._8_4_ = fStack_e8 + FLOAT_00f998f8;
          auVar1._12_4_ = fStack_e4 + FLOAT_00f998f8;
          auVar22 = sqrtps(auVar25,auVar1);
          fStack_180 = fStack_34c - local_340;
          fStack_17c = fStack_34c - local_340;
          fStack_178 = fStack_34c - local_340;
          fStack_174 = fStack_34c - local_340;
          fStack_160 = fStack_338 + fStack_32c;
          fStack_15c = fStack_338 + fStack_32c;
          fStack_158 = fStack_338 + fStack_32c;
          fStack_154 = fStack_338 + fStack_32c;
          fStack_140 = fStack_348 + fStack_330;
          fStack_13c = fStack_348 + fStack_330;
          fStack_138 = fStack_348 + fStack_330;
          fStack_134 = fStack_348 + fStack_330;
          auVar27._4_4_ = _DAT_00f9b5b4;
          auVar27._0_4_ = _DAT_00f9b5b4;
          auVar27._8_4_ = _DAT_00f9b5b4;
          auVar27._12_4_ = _DAT_00f9b5b4;
          auVar25 = divps(auVar27,auVar22);
          fStack_2f0 = fStack_140 * auVar25._0_4_;
          fStack_2ec = fStack_15c * auVar25._4_4_;
          fStack_2e8 = auVar22._8_4_ * _DAT_00f9b5b4;
          fStack_2e4 = fStack_174 * auVar25._12_4_;
          fStack_b0 = fStack_150;
          fStack_ac = fStack_14c;
          fStack_a8 = fStack_148;
          fStack_a4 = fStack_144;
        }
        else {
          fStack_190 = fStack_328 + local_350;
          fStack_18c = fStack_328 + local_350;
          fStack_188 = fStack_328 + local_350;
          fStack_184 = fStack_328 + local_350;
          fStack_d0 = fStack_33c - fStack_190;
          fStack_cc = fStack_33c - fStack_18c;
          fStack_c8 = fStack_33c - fStack_188;
          fStack_c4 = fStack_33c - fStack_184;
          auVar19._0_4_ = fStack_d0 + FLOAT_00f998f8;
          auVar19._4_4_ = fStack_cc + FLOAT_00f998f8;
          auVar19._8_4_ = fStack_c8 + FLOAT_00f998f8;
          auVar19._12_4_ = fStack_c4 + FLOAT_00f998f8;
          auVar25 = sqrtps(ZEXT416((uint)fStack_33c),auVar19);
          fStack_130 = fStack_330 - fStack_348;
          fStack_12c = fStack_330 - fStack_348;
          fStack_128 = fStack_330 - fStack_348;
          fStack_124 = fStack_330 - fStack_348;
          fStack_90 = fStack_338 + fStack_32c;
          fStack_8c = fStack_338 + fStack_32c;
          fStack_88 = fStack_338 + fStack_32c;
          fStack_84 = fStack_338 + fStack_32c;
          fStack_110 = fStack_34c + local_340;
          fStack_10c = fStack_34c + local_340;
          fStack_108 = fStack_34c + local_340;
          fStack_104 = fStack_34c + local_340;
          auVar24._4_4_ = _DAT_00f9b5b4;
          auVar24._0_4_ = _DAT_00f9b5b4;
          auVar24._8_4_ = _DAT_00f9b5b4;
          auVar24._12_4_ = _DAT_00f9b5b4;
          auVar22 = divps(auVar24,auVar25);
          fStack_2f0 = fStack_110 * auVar22._0_4_;
          fStack_2ec = auVar25._4_4_ * _DAT_00f9b5b4;
          fStack_2e8 = fStack_88 * auVar22._8_4_;
          fStack_2e4 = fStack_124 * auVar22._12_4_;
        }
      }
      else {
        fStack_c0 = fStack_328 + fStack_33c;
        fStack_bc = fStack_328 + fStack_33c;
        fStack_b8 = fStack_328 + fStack_33c;
        fStack_b4 = fStack_328 + fStack_33c;
        fStack_a0 = local_350 - fStack_c0;
        fStack_9c = local_350 - fStack_bc;
        fStack_98 = local_350 - fStack_b8;
        fStack_94 = local_350 - fStack_b4;
        auVar23._0_4_ = fStack_a0 + FLOAT_00f998f8;
        auVar23._4_4_ = fStack_9c + FLOAT_00f998f8;
        auVar23._8_4_ = fStack_98 + FLOAT_00f998f8;
        auVar23._12_4_ = fStack_94 + FLOAT_00f998f8;
        auVar22 = sqrtps(auVar22,auVar23);
        fStack_80 = fStack_338 - fStack_32c;
        fStack_7c = fStack_338 - fStack_32c;
        fStack_78 = fStack_338 - fStack_32c;
        fStack_74 = fStack_338 - fStack_32c;
        fStack_170 = fStack_348 + fStack_330;
        fStack_16c = fStack_348 + fStack_330;
        fStack_168 = fStack_348 + fStack_330;
        fStack_164 = fStack_348 + fStack_330;
        fStack_70 = fStack_34c + local_340;
        fStack_6c = fStack_34c + local_340;
        fStack_68 = fStack_34c + local_340;
        fStack_64 = fStack_34c + local_340;
        auVar26._4_4_ = _DAT_00f9b5b4;
        auVar26._0_4_ = _DAT_00f9b5b4;
        auVar26._8_4_ = _DAT_00f9b5b4;
        auVar26._12_4_ = _DAT_00f9b5b4;
        auVar25 = divps(auVar26,auVar22);
        fStack_2f0 = auVar22._0_4_ * _DAT_00f9b5b4;
        fStack_2ec = fStack_6c * auVar25._4_4_;
        fStack_2e8 = fStack_168 * auVar25._8_4_;
        fStack_2e4 = fStack_74 * auVar25._12_4_;
      }
    }
    else {
      auVar18._0_4_ = fStack_270 + FLOAT_00f998f8;
      auVar18._4_4_ = fStack_328 + fStack_14c + FLOAT_00f998f8;
      auVar18._8_4_ = fStack_328 + fStack_148 + FLOAT_00f998f8;
      auVar18._12_4_ = fStack_328 + fStack_144 + FLOAT_00f998f8;
      auVar25 = sqrtps(ZEXT416((uint)fStack_270),auVar18);
      fStack_120 = fStack_34c - local_340;
      fStack_11c = fStack_34c - local_340;
      fStack_118 = fStack_34c - local_340;
      fStack_114 = fStack_34c - local_340;
      fStack_100 = fStack_330 - fStack_348;
      fStack_fc = fStack_330 - fStack_348;
      fStack_f8 = fStack_330 - fStack_348;
      fStack_f4 = fStack_330 - fStack_348;
      fStack_e0 = fStack_338 - fStack_32c;
      fStack_dc = fStack_338 - fStack_32c;
      fStack_d8 = fStack_338 - fStack_32c;
      fStack_d4 = fStack_338 - fStack_32c;
      auVar21._4_4_ = _DAT_00f9b5b4;
      auVar21._0_4_ = _DAT_00f9b5b4;
      auVar21._8_4_ = _DAT_00f9b5b4;
      auVar21._12_4_ = _DAT_00f9b5b4;
      auVar22 = divps(auVar21,auVar25);
      fStack_2f0 = fStack_e0 * auVar22._0_4_;
      fStack_2ec = fStack_fc * auVar22._4_4_;
      fStack_2e8 = fStack_118 * auVar22._8_4_;
      fStack_2e4 = auVar25._12_4_ * _DAT_00f9b5b4;
    }
    fStack_3c0 = FLOAT_00f998f8;
    TStack_3dc.x = FLOAT_00fab218;
    TStack_3dc.z = FLOAT_00fab218;
    TStack_3dc.level = 0;
    fStack_3bc = fStack_3c0;
    fStack_3b8 = fStack_3c0;
    fStack_3b4 = fStack_3c0;
    fStack_2e0 = fStack_320;
    fStack_2dc = fStack_31c;
    fStack_2d8 = fStack_318;
    fStack_2d4 = fStack_314;
    fStack_1d0 = local_350;
    fStack_1cc = fStack_34c;
    fStack_1c8 = fStack_348;
    fStack_1c4 = fStack_344;
    fStack_1c0 = local_340;
    fStack_1bc = fStack_33c;
    fStack_1b8 = fStack_338;
    fStack_1b4 = fStack_334;
    fStack_1b0 = fStack_330;
    fStack_1ac = fStack_32c;
    fStack_1a8 = fStack_328;
    fStack_1a4 = fStack_324;
    fStack_1a0 = fStack_320;
    fStack_19c = fStack_31c;
    fStack_198 = fStack_318;
    fStack_194 = fStack_314;
    Lot_WorldPositionToPortalLocalXZLevel(param_1,&fStack_2e0,&TStack_3dc);
    LotPoint_ResolveLevelPosition((undefined *)param_1,(LotPaintPoint *)&TStack_3dc,afStack_290);
    Lot_LocalPositionToWorldVector(param_1,afStack_290,&fStack_250);
    fVar10 = fStack_2e4;
    fVar9 = fStack_2f0;
    fStack_2d0 = fStack_2dc - fStack_24c;
    fStack_2cc = fStack_2dc - fStack_24c;
    fStack_2c8 = fStack_2dc - fStack_24c;
    fStack_2c4 = fStack_2dc - fStack_24c;
    if (*(int **)((int)unaff_EDI + 0xe0) != piVar3) {
      fStack_3b0 = fStack_2f0;
      fStack_3ac = fStack_2ec;
      fStack_3a8 = fStack_2e8;
      fStack_3a4 = fStack_2e4;
      fStack_3d0 = fStack_2f0;
      fStack_3cc = fStack_2ec;
      fStack_3c8 = fStack_2e8;
      fStack_3c4 = fStack_2e4;
      fVar14 = fStack_2e8 * fStack_2e8;
      fVar20 = fStack_2ec * fStack_2ec;
      fVar11 = fStack_2f0 * fStack_2f0;
      fVar17 = fStack_2e4 * fStack_2e4;
      fVar12 = fStack_2e4 * fStack_2e8 + fStack_2ec * fStack_2f0;
      fVar15 = fVar14 + fVar20 + fVar11 + fVar17;
      if (fVar12 <= fVar15 * DAT_00fc2434) {
        if (fVar15 * DAT_00fc242c <= fVar12) {
          fStack_3a0 = ((fVar11 - fVar20) - fVar14) + fVar17;
          fVar8 = (float10)fpatan((float10)(fStack_2e4 * fStack_2ec * DAT_0103fd88 -
                                           fStack_2e8 * fStack_2f0 * DAT_0103fd88),
                                  (float10)fStack_3a0);
          fVar12 = (float)fVar8;
          fStack_39c = fVar12;
          fStack_398 = fStack_3a0;
          fStack_394 = fStack_3a0;
          _CIasin();
          fStack_3a0 = fVar10 * fVar9 * DAT_0103fd88 - fStack_3a8 * fStack_3cc * DAT_0103fd88;
          fpatan((float10)fStack_3a0,(float10)(((fVar20 - fVar11) - fVar14) + fVar17));
          fStack_39c = fStack_3a0;
          fStack_398 = fStack_3a0;
          fStack_394 = fStack_3a0;
        }
        else {
          fVar8 = (float10)fpatan((float10)fStack_2f0,(float10)fStack_2e4);
          fVar12 = (float)fVar8 * DAT_00fc2428;
        }
      }
      else {
        fVar8 = (float10)fpatan((float10)fStack_2f0,(float10)fStack_2e4);
        fVar12 = (float)fVar8 * DAT_0103fd88;
      }
      fVar8 = (float10)(**(code **)(*param_1 + 0x68))();
      fVar7 = Placement_QuantizeYawToEightDirections(fVar12 - (float)fVar8);
      fVar7 = (float10)(fVar12 - (float)fVar8) - fVar7;
      *(float *)((int)unaff_EDI + 0xe4) = (float)fVar7;
      fVar8 = Placement_QuantizeYawToEightDirections((float)((float10)param_4 - fVar7));
      FUN_00d25e00(unaff_EDI,(float)(fVar8 + (float10)*(float *)((int)unaff_EDI + 0xe4)));
    }
    in_EAX = (void *)FUN_00d265b0(unaff_EDI,param_1,(undefined1 (*) [12])&TStack_3dc,fStack_2d0,
                                  cVar28 == '\0',0);
    *(int **)((int)unaff_EDI + 0xe0) = piVar3;
    if (cVar28 != '\0') {
      if (param_5 == (float *)0x0) {
        FUN_00b3e140(param_2,piVar3,param_4,&fStack_310);
      }
      else {
        fStack_310 = *param_5;
        fStack_30c = param_5[1];
        fStack_308 = param_5[2];
        fStack_304 = param_5[3];
        fStack_300 = param_5[4];
        fStack_2fc = param_5[5];
        fStack_2f8 = param_5[6];
        fStack_2f4 = param_5[7];
      }
      fVar9 = DAT_01086d34 * fStack_310;
      fVar11 = DAT_01086d34 * fStack_30c;
      fVar12 = DAT_01086d34 * fStack_308;
      fVar14 = DAT_01086d34 * fStack_304;
      fVar15 = (0.0 - fVar9) * fVar9 + fStack_2c0;
      fVar17 = (0.0 - fVar11) * fVar11 + fStack_2bc;
      fVar20 = (0.0 - fVar12) * fVar12 + fStack_2b8;
      fVar10 = fVar14 * fVar12 + fVar11 * fVar9;
      fVar13 = fVar11 * fVar9 - fVar14 * fVar12;
      fVar16 = fVar17 + fVar15;
      fStack_210 = (float)((uint)(fVar20 + fVar17) & _DAT_011b0670);
      uStack_20c = (uint)fVar10 & uRam011b0674;
      uStack_208 = (uint)(fVar9 * fVar12 - fVar14 * fVar11) & uRam011b0678;
      uStack_204 = (uint)fVar13 & uRam011b067c;
      uStack_200 = (uint)fVar13 & _DAT_011b0670;
      uStack_1fc = (uint)(fVar15 + fVar20) & uRam011b0674;
      uStack_1f8 = (uint)(fVar14 * fVar9 + fVar12 * fVar11) & uRam011b0678;
      uStack_1f4 = (uint)fVar10 & uRam011b067c;
      uStack_1f0 = (uint)(fVar14 * fVar11 + fVar9 * fVar12) & _DAT_011b0670;
      uStack_1ec = (uint)(fVar12 * fVar11 - fVar14 * fVar9) & uRam011b0674;
      uStack_1e8 = (uint)fVar16 & uRam011b0678;
      uStack_1e4 = (uint)fVar16 & uRam011b067c;
      fStack_1d4 = fStack_3b4;
      fStack_1e0 = fStack_300;
      fStack_1dc = fStack_2fc;
      fStack_1d8 = fStack_2f8;
      if (*(void **)((int)unaff_EDI + 0x58) == (void *)0x0) {
        pvVar2 = (void *)0x0;
      }
      else {
        pvVar2 = Object_GetComponentByMask(*(void **)((int)unaff_EDI + 0x58),DAT_011ea158);
      }
      iVar6 = FUN_00958d90(pvVar2,param_2,piVar3,&fStack_210,'\x01','\x01','\0','\0');
      pvVar2 = unaff_EDI;
      if (*(char *)((int)unaff_EDI + 0x4d) != '\0') {
        pvVar2 = (void *)FUN_00790850();
      }
      if ((iVar6 != 0) && (iVar6 != 1)) goto LAB_00d26c79;
      iVar6 = FUN_0066dce0(param_2);
      in_EAX = (void *)0x0;
      if (iVar6 != 0) {
        if (*(int *)(iVar6 + 8) == 0) {
          iVar6 = 0;
        }
        else {
          iVar6 = *(int *)(*(int *)(iVar6 + 8) + 0x50);
        }
        in_EAX = (void *)0x0;
        if (iVar6 != 0) {
          in_EAX = (void *)FUN_00d25b70(*(void **)((int)unaff_EDI + 0x58),iVar6);
        }
      }
    }
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

