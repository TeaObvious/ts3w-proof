/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 SACS migration contract): ECX manager plus request pointer. Union eligible
   scene-model part AABBs, exclude flags10008, add model displacement; invalid part union
   becomes(0,0,0)..(1,1,1). Sim head delegates00D56BE0. Household-type families select manager+230
   override or4E7BB19B then clear override. Normalize View and Up before fixed00D621D0 or
   bounds-fit00D624B0 according PositionFromScale. Native model bounds are not necessarily
   rendered-vertex extrema; unused fourth SIMD lanes are not xyz. */

undefined1 __thiscall ThumbnailCamera_SelectAndFrameRequest(void *this,int *param_1)

{
  int iVar1;
  uint uVar2;
  undefined1 (*pauVar3) [16];
  undefined4 uVar4;
  int iVar5;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 uVar6;
  uint extraout_EDX;
  undefined1 uVar7;
  int iVar8;
  uint uVar9;
  bool bVar10;
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  float fVar15;
  float fVar19;
  float fVar20;
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  float fVar21;
  undefined1 auVar18 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  uint local_140;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  undefined1 local_120 [8];
  float fStack_118;
  float fStack_114;
  undefined1 local_110 [16];
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined4 local_b0;
  float local_ac;
  undefined4 local_a8;
  char local_a4;
  undefined1 local_a3;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  float local_60 [8];
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float local_20;
  
  iVar5 = *param_1;
  FUN_0068bf40(local_60);
  uVar2 = param_1[0x2b] - param_1[0x2a] >> 2;
  local_140 = 0;
  if (uVar2 != 0) {
    local_40 = 1.1920929e-07;
    fStack_3c = 1.1920929e-07;
    fStack_38 = 1.1920929e-07;
    fStack_34 = 1.1920929e-07;
    do {
      iVar1 = *(int *)(param_1[0x2a] + local_140 * 4);
      pauVar3 = (undefined1 (*) [16])FUN_0068bf40(&local_130);
      uVar9 = 0;
      uVar6 = extraout_ECX;
      if (*(int *)(iVar1 + 0x19c) != 0) {
        iVar8 = 0;
        do {
          pauVar3 = (undefined1 (*) [16])(*(int *)(iVar1 + 0x1a0) + iVar8);
          if ((*(uint *)pauVar3[3] & 0x10008) == 0) {
            pauVar3 = (undefined1 (*) [16])FUN_0068be20(&local_130,pauVar3);
            uVar6 = extraout_ECX_00;
          }
          uVar9 = uVar9 + 1;
          iVar8 = iVar8 + 0x40;
        } while (uVar9 < *(uint *)(iVar1 + 0x19c));
      }
      auVar13._4_4_ = fStack_12c;
      auVar13._0_4_ = local_130;
      auVar13._8_4_ = fStack_128;
      auVar13._12_4_ = fStack_124;
      auVar12._0_4_ = local_130 * -1.0;
      auVar12._4_4_ = fStack_12c * -1.0;
      auVar12._8_4_ = fStack_128 * -1.0;
      auVar12._12_4_ = fStack_124 * -1.0;
      auVar13 = maxps(auVar12,auVar13);
      auVar14._4_4_ = -(uint)(auVar13._4_4_ <= fStack_3c);
      auVar14._0_4_ = -(uint)(auVar13._0_4_ <= local_40);
      auVar14._8_4_ = -(uint)(auVar13._8_4_ <= fStack_38);
      auVar14._12_4_ = -(uint)(auVar13._12_4_ <= fStack_34);
      uVar4 = movmskps(pauVar3,auVar14);
      fVar11 = local_120._0_4_;
      if (((byte)uVar4 & 7) == 7) {
        auVar16._0_4_ = fVar11 * -1.0;
        auVar16._4_4_ = local_120._4_4_ * -1.0;
        auVar16._8_4_ = local_120._8_4_ * -1.0;
        auVar16._12_4_ = local_120._12_4_ * -1.0;
        auVar13 = maxps(auVar16,_local_120);
        auVar17._4_4_ = -(uint)(auVar13._4_4_ <= fStack_3c);
        auVar17._0_4_ = -(uint)(auVar13._0_4_ <= local_40);
        auVar17._8_4_ = -(uint)(auVar13._8_4_ <= fStack_38);
        auVar17._12_4_ = -(uint)(auVar13._12_4_ <= fStack_34);
        uVar6 = movmskps(uVar6,auVar17);
        if (((byte)uVar6 & 7) != 7) goto LAB_00d5720f;
LAB_00d57242:
        local_130 = 0.0;
        fStack_12c = 0.0;
        fStack_128 = 0.0;
        fStack_124 = 0.0;
        fStack_118 = 1.0;
        local_120 = (undefined1  [8])0x3f8000003f800000;
        fStack_114 = 1.0;
      }
      else {
LAB_00d5720f:
        local_30 = fVar11;
        local_20 = local_130;
        if (fVar11 < local_130) goto LAB_00d57242;
      }
      local_130 = local_130 + *(float *)(iVar1 + 0xb0);
      fStack_12c = fStack_12c + *(float *)(iVar1 + 0xb4);
      fStack_128 = fStack_128 + *(float *)(iVar1 + 0xb8);
      fStack_124 = fStack_124 + *(float *)(iVar1 + 0xbc);
      fVar11 = local_120._0_4_;
      fVar15 = local_120._8_4_;
      fVar19 = local_120._12_4_;
      local_120._4_4_ = local_120._4_4_ + *(float *)(iVar1 + 0xb4);
      local_120._0_4_ = fVar11 + *(float *)(iVar1 + 0xb0);
      fStack_118 = fVar15 + *(float *)(iVar1 + 0xb8);
      fStack_114 = fVar19 + *(float *)(iVar1 + 0xbc);
      FUN_0068be20(local_60,(undefined1 (*) [16])&local_130);
      local_140 = local_140 + 1;
    } while (local_140 < uVar2);
  }
  local_100 = -1.0;
  iVar1 = param_1[0x88];
  auVar13 = ZEXT816(0);
  local_f0 = 0.0;
  fStack_ec = 1.0;
  fStack_e8 = 0.0;
  fStack_e4 = 0.0;
  local_e0 = 0x3dcccccd;
  local_d8 = 0x3f8ccccd;
  local_d4 = 0x447a0000;
  local_dc = 0x3f800000;
  local_b0 = 0x41400000;
  local_ac = 1.0;
  local_a8 = 0;
  local_a4 = '\x01';
  local_a3 = 0;
  local_110 = auVar13;
  fStack_fc = local_100;
  fStack_f8 = local_100;
  fStack_f4 = local_100;
  if (iVar1 == 0x35) {
    if (((uint)param_1[0x89] >> 0xd & 1) == 0) {
LAB_00d573c1:
      if (*(char *)((int)this + 600) != '\0') {
        uVar6 = FUN_00d568a0(this,(undefined4 *)((int)this + 0x268),*(uint *)((int)this + 0x260),
                             *(uint *)((int)this + 0x264),(undefined4 *)local_110);
        uVar7 = (undefined1)uVar6;
        goto LAB_00d57502;
      }
      iVar5 = FUN_00d4b1e0(iVar5);
      if (iVar5 < -0x2aefe103) {
        if (iVar5 == -0x2aefe104) goto LAB_00d574dd;
        if (-0x65c5117d < iVar5) {
          bVar10 = iVar5 == -0x51f44112;
          goto LAB_00d574c4;
        }
        if (iVar5 == -0x65c5117d) goto LAB_00d574dd;
        if (iVar5 == -0x75a4b414) {
          uVar6 = ThumbnailSim_SelectCameraAndJawBounds
                            (this,*(int **)param_1[0x2a],param_1[0x89],(float *)local_110,local_60,
                             param_1[0x8d]);
          uVar7 = (undefined1)uVar6;
          goto LAB_00d57502;
        }
        if (iVar5 == -0x73755358) {
          uVar6 = FUN_00d50400(this,*(void **)((int)this + 0x240),local_110,local_60);
          uVar7 = (undefined1)uVar6;
          goto LAB_00d57502;
        }
      }
      else {
        if (iVar5 < 0x6283ae8b) {
          if (iVar5 == 0x6283ae8a) {
            uVar6 = FUN_00d568a0(this,param_1 + 0x44,extraout_EDX,param_1[0x89],
                                 (undefined4 *)local_110);
            uVar7 = (undefined1)uVar6;
            goto LAB_00d57502;
          }
          if (iVar5 == 0xe98d566) goto LAB_00d574dd;
          bVar10 = iVar5 == 0x37bf840d;
        }
        else {
          bVar10 = iVar5 == 0x6912f019;
        }
LAB_00d574c4:
        if (bVar10) {
LAB_00d574dd:
          iVar5 = 0x4e7bb19b;
          if (*(int *)((int)this + 0x230) != 0) {
            iVar5 = *(int *)((int)this + 0x230);
          }
          ThumbnailCamera_FindByHash(this,iVar5,local_110);
          *(undefined4 *)((int)this + 0x230) = 0;
          uVar7 = 1;
          goto LAB_00d57502;
        }
      }
      uVar6 = ThumbnailCamera_SelectSettingsForResourceKey(this,(uint *)(param_1 + 0x44),local_110);
      uVar7 = (undefined1)uVar6;
      goto LAB_00d57502;
    }
  }
  else if ((iVar1 != 0x21) && (iVar1 != 0x22)) goto LAB_00d573c1;
  uVar6 = ThumbnailCamera_FindByHash(this,0x42ef5cf6,local_110);
  uVar7 = (undefined1)uVar6;
LAB_00d57502:
  fVar11 = fStack_f8 * fStack_f8 + fStack_fc * fStack_fc + local_100 * local_100;
  auVar22._4_4_ = fVar11;
  auVar22._0_4_ = fVar11;
  auVar22._8_4_ = fVar11;
  auVar22._12_4_ = fVar11;
  auVar13 = rsqrtps(auVar13,auVar22);
  fVar15 = auVar13._0_4_;
  fVar19 = auVar13._4_4_;
  fVar20 = auVar13._8_4_;
  fVar21 = auVar13._12_4_;
  fVar15 = (1.0 - fVar15 * fVar15 * fVar11) * fVar15 * 0.5 + fVar15;
  fVar19 = (1.0 - fVar19 * fVar19 * fVar11) * fVar19 * 0.5 + fVar19;
  fVar20 = (1.0 - fVar20 * fVar20 * fVar11) * fVar20 * 0.5 + fVar20;
  fVar21 = (1.0 - fVar21 * fVar21 * fVar11) * fVar21 * 0.5 + fVar21;
  local_a0 = ((1.0 - fVar15 * fVar15 * fVar11) * fVar15 * 0.5 + fVar15) * local_100;
  fStack_9c = ((1.0 - fVar19 * fVar19 * fVar11) * fVar19 * 0.5 + fVar19) * fStack_fc;
  fStack_98 = ((1.0 - fVar20 * fVar20 * fVar11) * fVar20 * 0.5 + fVar20) * fStack_f8;
  fStack_94 = ((1.0 - fVar21 * fVar21 * fVar11) * fVar21 * 0.5 + fVar21) * fStack_f4;
  fVar11 = local_f0 * local_f0;
  auVar23._4_4_ = fVar11;
  auVar23._0_4_ = fStack_ec * fStack_ec;
  auVar23._8_4_ = fVar11;
  auVar23._12_4_ = fVar11;
  auVar18._0_4_ = fStack_e8 * fStack_e8 + fStack_ec * fStack_ec + fVar11;
  auVar18._4_4_ = auVar18._0_4_;
  auVar18._8_4_ = auVar18._0_4_;
  auVar18._12_4_ = auVar18._0_4_;
  auVar13 = rsqrtps(auVar23,auVar18);
  fVar11 = auVar13._0_4_;
  fVar15 = auVar13._4_4_;
  fVar19 = auVar13._8_4_;
  fVar20 = auVar13._12_4_;
  fVar11 = (1.0 - fVar11 * fVar11 * auVar18._0_4_) * fVar11 * 0.5 + fVar11;
  fVar15 = (1.0 - fVar15 * fVar15 * auVar18._0_4_) * fVar15 * 0.5 + fVar15;
  fVar19 = (1.0 - fVar19 * fVar19 * auVar18._0_4_) * fVar19 * 0.5 + fVar19;
  fVar20 = (1.0 - fVar20 * fVar20 * auVar18._0_4_) * fVar20 * 0.5 + fVar20;
  local_90 = ((1.0 - fVar11 * fVar11 * auVar18._0_4_) * fVar11 * 0.5 + fVar11) * local_f0;
  fStack_8c = ((1.0 - fVar15 * fVar15 * auVar18._0_4_) * fVar15 * 0.5 + fVar15) * fStack_ec;
  fStack_88 = ((1.0 - fVar19 * fVar19 * auVar18._0_4_) * fVar19 * 0.5 + fVar19) * fStack_e8;
  fStack_84 = ((1.0 - fVar20 * fVar20 * auVar18._0_4_) * fVar20 * 0.5 + fVar20) * fStack_e4;
  local_80 = local_e0;
  local_7c = local_dc;
  local_78 = local_d8;
  local_74 = local_d4;
  local_70 = local_b0;
  local_6c = local_a8;
  if (*(char *)((int)this + 0x290) != '\0') {
    local_a0 = 0.0;
    fStack_9c = 0.0;
    fStack_98 = -1.0;
    fStack_94 = 0.0;
  }
  if (local_a4 == '\0') {
    ThumbnailCamera_ApplyFixedPosition
              (*(void **)((int)this + 0x198),(undefined4 *)local_110,&local_a0);
    return uVar7;
  }
  ThumbnailCamera_FitBounds(*(void **)((int)this + 0x198),local_60,&local_a0,local_ac);
  return uVar7;
}

