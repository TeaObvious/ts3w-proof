/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Samples candidate positions along radius/cone interval, spacing
   and vertical ray offset. Builds64-byte candidate, computes level/height and calls00759bb0: AL0
   accepted,1 rejected. Candidate weight=destinationWeight*validatorMultiplier,
   additionally*0074faa0(score) when positiveScoreCount!=0. Unvalidated
   floats/normalization/degenerate cone behavior remain original-instruction-defined. */

void __thiscall
RadialRangeDestination_GenerateRadiusCandidates
          (void *this,float param_1,void *param_2,int param_3,float *param_4,float param_5,
          undefined4 param_6,float param_7,float param_8,void *param_9,void *param_10,
          undefined4 *param_11,int param_12,float *param_13,float *param_14,void *param_15)

{
  int iVar1;
  float *pfVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [12];
  ulonglong uVar5;
  bool bVar6;
  uint *puVar7;
  void *pvVar8;
  uint uVar9;
  undefined4 uVar10;
  float10 fVar11;
  float10 fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined1 auVar21 [16];
  uint local_274;
  LotXZLevel local_270;
  undefined4 uStack_264;
  uint local_25c;
  float local_258;
  void *local_254;
  float local_250;
  int local_24c;
  undefined8 local_248;
  float local_240;
  float fStack_23c;
  float fStack_238;
  float fStack_234;
  float local_230;
  float fStack_22c;
  float fStack_228;
  float fStack_224;
  float local_220;
  float local_21c;
  float local_218;
  float local_214;
  float local_210;
  void *local_1fc;
  uint local_1f8;
  uint local_1f4;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float local_1e0;
  undefined4 uStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float local_1d0;
  undefined4 uStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float local_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float local_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float local_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float local_190;
  float local_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float local_170;
  float local_160;
  float fStack_15c;
  float fStack_158;
  float fStack_154;
  float local_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float local_110;
  float local_100;
  undefined4 local_f0;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined4 local_b0;
  float local_a0;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  float local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_254 = DAT_011edbc4;
  if ((DAT_011d5ba4 & 1) == 0) {
    DAT_011d5ba4 = DAT_011d5ba4 | 1;
    _DAT_011d5ba0 = DAT_00fc2420;
  }
  if ((DAT_011d5ba4 & 2) == 0) {
    DAT_011d5ba4 = DAT_011d5ba4 | 2;
    _DAT_011d5b90 = 0;
    fRam011d5b94 = _DAT_00f9b5b4;
    uRam011d5b98 = 0;
    uRam011d5b9c = 0;
  }
  local_1f8 = 1;
  local_248 = (longlong)
              ROUND((_DAT_011d5ba0 * (param_8 - param_7) * param_5 * DAT_010051a8) /
                    *(float *)((int)this + 0x6c) + _DAT_00f9b5b4);
  local_1f4 = (uint)local_248;
  puVar7 = &local_1f4;
  if ((uint)local_248 < 2) {
    puVar7 = &local_1f8;
  }
  local_25c = *puVar7;
  local_250 = 0.0;
  if (1 < local_25c) {
    iVar1 = local_25c - 1;
    uVar5 = (ulonglong)local_248 >> 0x20;
    local_248 = CONCAT44((int)uVar5,iVar1);
    local_250 = (float)iVar1;
    if (iVar1 < 0) {
      local_250 = local_250 + _DAT_00f99948;
    }
    local_250 = (param_8 - param_7) / local_250;
  }
  local_e0 = DAT_00f998f8;
  fStack_dc = 0.0;
  fStack_d8 = 0.0;
  fStack_d4 = 0.0;
  local_1a0 = 0.0;
  fStack_19c = 0.0;
  fStack_198 = DAT_00f998f8;
  fStack_194 = 0.0;
  local_70 = *param_4;
  fStack_6c = param_4[1];
  fStack_68 = param_4[2];
  fStack_64 = param_4[3];
  uStack_264 = 0;
  local_270.level = 0;
  local_270.z = 0.0;
  local_270.x = 0.0;
  local_180 = 0.0;
  fStack_17c = 0.0;
  fStack_178 = 0.0;
  fStack_174 = 0.0;
  local_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  local_50 = DAT_00f998f8;
  local_4c = param_6;
  local_48 = 0;
  local_44 = 0;
  local_40 = 0;
  local_274 = 0;
  if (local_25c != 0) {
    local_30 = param_5;
    fStack_2c = param_5;
    fStack_28 = param_5;
    fStack_24 = param_5;
    local_1fc = this;
    do {
      fVar11 = (float10)(int)local_274;
      local_220 = DAT_00f998f8;
      local_21c = (float)param_6;
      local_218 = 0.0;
      local_214 = 0.0;
      local_210 = 0.0;
      if ((int)local_274 < 0) {
        fVar11 = fVar11 + (float10)_DAT_00f99948;
      }
      fVar11 = fVar11 * (float10)local_250 + (float10)param_7;
      fVar12 = (float10)fsin(fVar11);
      fVar18 = (float)fVar12;
      fVar11 = (float10)fcos(fVar11);
      fVar15 = (float)fVar11;
      local_240 = (fVar18 * local_1a0 + fVar15 * local_e0) * local_30 + *param_4;
      fStack_23c = (fVar18 * fStack_19c + fVar15 * fStack_dc) * fStack_2c + param_4[1];
      fStack_238 = (fVar18 * fStack_198 + fVar15 * fStack_d8) * fStack_28 + param_4[2];
      fStack_234 = (fVar18 * fStack_194 + fVar15 * fStack_d4) * fStack_24 + param_4[3];
      local_230 = local_180;
      fStack_22c = fStack_17c;
      fStack_228 = fStack_178;
      fStack_224 = fStack_174;
      if ((local_254 == (void *)0x0) ||
         (local_160 = local_240, fStack_15c = fStack_23c, fStack_158 = fStack_238,
         fStack_154 = fStack_234, local_90 = local_240, fStack_8c = fStack_23c,
         fStack_88 = fStack_238, fStack_84 = fStack_234,
         pvVar8 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_254,local_240,fStack_238),
         pvVar8 == (void *)0x0)) {
        local_21c = 0.0;
        local_120 = local_240;
        fStack_11c = fStack_23c;
        fStack_118 = fStack_238;
        fStack_114 = fStack_234;
        local_80 = local_240;
        fStack_7c = fStack_23c;
        fStack_78 = fStack_238;
        fStack_74 = fStack_234;
        uVar10 = RoutingOptions_TestMask(param_2,1,0,'\x01');
        local_248 = CONCAT71(local_248._1_7_,(char)uVar10 == '\0');
        pvVar8 = (void *)thunk_FUN_00835d40();
        if (pvVar8 == (void *)0x0) {
          fStack_23c = 0.0;
        }
        else {
          fVar11 = RoutingSystem_QueryHeightForLevel
                             (pvVar8,local_80,fStack_118,0,(char)local_248,'\x01');
          fStack_23c = (float)fVar11;
        }
        local_1f0 = local_240;
        fStack_1e8 = fStack_238;
        fStack_1e4 = fStack_234;
        fStack_1ec = fStack_23c;
        uVar10 = RoutingOptions_TestMask(param_2,1,0,'\x01');
        if ((char)uVar10 == '\0') {
          fStack_14 = param_4[1];
          local_a0 = fStack_14 + DAT_00fa2b9c;
          fStack_1c = fStack_14 + DAT_00fa2b9c;
          fStack_18 = fStack_14 + DAT_00fa2b9c;
          fStack_14 = fStack_14 + DAT_00fa2b9c;
          local_100 = fStack_23c;
          local_20 = local_a0;
          if (local_a0 < fStack_23c) {
            fVar11 = FUN_00c61090((int)local_254);
            fVar18 = local_21c;
            local_190 = param_4[1];
            local_170 = (float)(fVar11 - (float10)DAT_00f998f8);
            if (local_170 < local_190) {
              local_150 = local_240;
              fStack_14c = fStack_23c;
              fStack_148 = fStack_238;
              fStack_144 = fStack_234;
              local_130 = local_240;
              fStack_12c = fStack_23c;
              fStack_128 = fStack_238;
              fStack_124 = fStack_234;
              pvVar8 = (void *)thunk_FUN_00835d40();
              if (pvVar8 == (void *)0x0) {
                fStack_23c = 0.0;
              }
              else {
                fVar11 = RoutingSystem_QueryHeightForLevel
                                   (pvVar8,local_130,fStack_148,(int)fVar18,'\0','\x01');
                fStack_23c = (float)fVar11;
              }
              local_1c0 = local_240;
              fStack_1b8 = fStack_238;
              fStack_1b4 = fStack_234;
              fStack_1bc = fStack_23c;
            }
          }
        }
      }
      else {
        local_270.x = DAT_00fab218;
        local_270.z = DAT_00fab218;
        local_270.level = 0;
        Lot_WorldPositionToLocalXZLevel(pvVar8,&local_240,&local_270);
        local_21c = (float)local_270.level;
        if ((local_270.level < 0) &&
           (bVar6 = Lot_TestProperty15AtLocalLocation(pvVar8,&local_270), bVar6)) {
          bVar6 = true;
        }
        else {
          bVar6 = false;
        }
        uVar9 = Lot_TestNextLevelAtLocalLocation(pvVar8,&local_270,1);
        if ((((int)local_21c < 0) && (!bVar6)) && ((char)uVar9 == '\0')) {
          local_21c = 0.0;
        }
        fVar18 = local_21c;
        if ((((*(int *)((int)pvVar8 + 0x408) == 1) && (*(int *)((int)pvVar8 + 0x40c) == 0x50)) &&
            (local_21c == 0.0)) || ((bVar6 && ((char)uVar9 == '\0')))) {
          local_24c = (uint)local_24c._1_3_ << 8;
        }
        else {
          local_24c = CONCAT31(local_24c._1_3_,1);
        }
        local_140 = local_240;
        fStack_13c = fStack_23c;
        fStack_138 = fStack_238;
        fStack_134 = fStack_234;
        local_c0 = local_240;
        fStack_bc = fStack_23c;
        fStack_b8 = fStack_238;
        fStack_b4 = fStack_234;
        pvVar8 = (void *)thunk_FUN_00835d40();
        if (pvVar8 == (void *)0x0) {
          fStack_23c = 0.0;
        }
        else {
          fVar11 = RoutingSystem_QueryHeightForLevel
                             (pvVar8,local_c0,fStack_138,(int)fVar18,'\x01',(char)local_24c);
          fStack_23c = (float)fVar11;
        }
        local_1b0 = local_240;
        fStack_1a8 = fStack_238;
        fStack_1a4 = fStack_234;
        fStack_1ac = fStack_23c;
      }
      pvVar8 = local_1fc;
      if (*(int *)((int)local_1fc + 0x58) == 1) {
        fVar15 = *param_4 - local_240;
        fVar16 = param_4[2] - fStack_238;
        fVar17 = param_4[3] - fStack_234;
        uStack_1cc = 0;
        fVar13 = fVar15 * fVar15;
        fVar14 = fVar16 * fVar16;
        auVar4._4_4_ = fVar13;
        auVar4._0_4_ = fVar13;
        auVar4._8_4_ = fVar13;
        local_d0 = fVar14 + 0.0 + fVar13;
        local_b0 = 0;
        local_1d0 = fVar15;
        fStack_1c8 = fVar16;
        fStack_1c4 = fVar17;
        fVar18 = local_d0;
LAB_0075bd54:
        auVar21._12_4_ = 0;
        auVar21._0_12_ = auVar4;
        if (0.0 < fVar18) {
          fVar13 = fVar14 + 0.0 + fVar13;
          auVar3._4_4_ = fVar13;
          auVar3._0_4_ = fVar13;
          auVar3._8_4_ = fVar13;
          auVar3._12_4_ = fVar13;
          auVar21 = rsqrtps(auVar21 << 0x20,auVar3);
          fVar18 = auVar21._0_4_;
          fVar14 = auVar21._4_4_;
          fVar19 = auVar21._8_4_;
          fVar20 = auVar21._12_4_;
          fVar18 = (DAT_00f998f8 - fVar18 * fVar18 * fVar13) * fVar18 * _DAT_00f9b5b4 + fVar18;
          fVar14 = (DAT_00f998f8 - fVar14 * fVar14 * fVar13) * fVar14 * _DAT_00f9b5b4 + fVar14;
          fVar19 = (DAT_00f998f8 - fVar19 * fVar19 * fVar13) * fVar19 * _DAT_00f9b5b4 + fVar19;
          fVar20 = (DAT_00f998f8 - fVar20 * fVar20 * fVar13) * fVar20 * _DAT_00f9b5b4 + fVar20;
          local_230 = ((DAT_00f998f8 - fVar18 * fVar18 * fVar13) * fVar18 * _DAT_00f9b5b4 + fVar18)
                      * fVar15;
          fStack_22c = ((DAT_00f998f8 - fVar14 * fVar14 * fVar13) * fVar14 * _DAT_00f9b5b4 + fVar14)
                       * 0.0;
          fStack_228 = ((DAT_00f998f8 - fVar19 * fVar19 * fVar13) * fVar19 * _DAT_00f9b5b4 + fVar19)
                       * fVar16;
          fStack_224 = ((DAT_00f998f8 - fVar20 * fVar20 * fVar13) * fVar20 * _DAT_00f9b5b4 + fVar20)
                       * fVar17;
        }
      }
      else if (*(int *)((int)local_1fc + 0x58) == 2) {
        fVar15 = local_240 - *param_4;
        fVar16 = fStack_238 - param_4[2];
        fVar17 = fStack_234 - param_4[3];
        uStack_1dc = 0;
        fVar13 = fVar15 * fVar15;
        fVar14 = fVar16 * fVar16;
        auVar4._4_4_ = fVar13;
        auVar4._0_4_ = fVar13;
        auVar4._8_4_ = fVar13;
        local_110 = fVar14 + 0.0 + fVar13;
        local_f0 = 0;
        local_1e0 = fVar15;
        fStack_1d8 = fVar16;
        fStack_1d4 = fVar17;
        fVar18 = local_110;
        goto LAB_0075bd54;
      }
      if ((local_274 == 0) && (local_25c != 1)) {
LAB_0075bddd:
        *param_13 = local_240;
        param_13[1] = fStack_23c;
        param_13[2] = fStack_238;
        param_13[3] = fStack_234;
      }
      else {
        *param_14 = local_240;
        param_14[1] = fStack_23c;
        param_14[2] = fStack_238;
        param_14[3] = fStack_234;
        if (local_274 == 0) goto LAB_0075bddd;
      }
      local_258 = DAT_00f998f8;
      uVar10 = RadialRangeDestination_ShouldRejectCandidateEarly
                         (local_1fc,param_1,&local_70,&local_240,param_2,param_10,param_11,param_12,
                          &local_258);
      if ((char)uVar10 == '\0') {
        if (param_3 == 0) {
          local_220 = *(float *)((int)pvVar8 + 0x2c) * local_258;
        }
        else {
          fVar18 = *(float *)((int)pvVar8 + 0x2c);
          fVar11 = RadialRangeDestination_EvaluateScore(pvVar8,&local_240);
          local_220 = (float)(fVar11 * (float10)fVar18 * (float10)local_258);
        }
        pfVar2 = *(float **)((int)param_9 + 4);
        if (pfVar2 < *(float **)((int)param_9 + 8)) {
          *(float **)((int)param_9 + 4) = pfVar2 + 0x10;
          if (pfVar2 != (float *)0x0) {
            *pfVar2 = local_240;
            pfVar2[1] = fStack_23c;
            pfVar2[2] = fStack_238;
            pfVar2[3] = fStack_234;
            pfVar2[4] = local_230;
            pfVar2[5] = fStack_22c;
            pfVar2[6] = fStack_228;
            pfVar2[7] = fStack_224;
            pfVar2[8] = local_220;
            pfVar2[9] = local_21c;
            pfVar2[10] = local_218;
            pfVar2[0xb] = local_214;
            pfVar2[0xc] = local_210;
          }
        }
        else {
          FUN_00654070(param_9,pfVar2,&local_240);
        }
      }
      else {
        FUN_0074c860(param_15,(int)&local_240,1);
      }
      local_274 = local_274 + 1;
    } while (local_274 < local_25c);
  }
  return;
}

