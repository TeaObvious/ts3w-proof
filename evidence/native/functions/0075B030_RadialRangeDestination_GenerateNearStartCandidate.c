/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Optional radial near-start candidate generator. Caller gates
   abs(startY-centerY)<1 and this helper checks option DoNotEmitDegenerateRoutesForRadialRangeGoals.
   It derives candidate/facing from start, center, cone and facing preference, rejects early
   via00759bb0 (AL0 accepted,1 rejected), appends record and optional diagnostic entries. Floating
   SIMD normalization and cone boundary handling remain original-instruction-defined. */

undefined4 __thiscall
RadialRangeDestination_GenerateNearStartCandidate
          (void *this,float param_1,void *param_2,float *param_3,float *param_4,
          undefined1 (*param_5) [16],float param_6,void *param_7,undefined4 *param_8,int param_9,
          void *param_10,void *param_11)

{
  float fVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  bool bVar7;
  undefined1 auVar8 [16];
  float fVar9;
  float fVar10;
  float fVar11;
  float *pfVar12;
  float *extraout_EAX;
  undefined4 uVar13;
  float10 fVar14;
  undefined1 auVar15 [16];
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  float fVar25;
  float fVar30;
  float fVar31;
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  float fVar32;
  double dVar33;
  float local_174;
  float local_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float fStack_160;
  float local_15c;
  float fStack_158;
  float local_154;
  undefined1 local_150 [8];
  undefined8 uStack_148;
  undefined1 local_140 [16];
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float local_fc;
  float local_f8;
  float local_f4;
  float fStack_f0;
  float local_e0;
  undefined4 uStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
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
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float fStack_30;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  
  pfVar12 = (float *)RoutingOptions_TestMask(param_2,0x1000000,0,'\0');
  if ((char)pfVar12 == '\0') {
    local_90 = *param_4;
    fStack_8c = param_4[1];
    fStack_88 = param_4[2];
    fStack_84 = param_4[3];
    local_b0 = *param_3;
    fStack_ac = param_3[1];
    fStack_a8 = param_3[2];
    fStack_a4 = param_3[3];
    fVar1 = param_3[9];
    local_170 = local_90 - local_b0;
    fStack_168 = fStack_88 - fStack_a8;
    fStack_164 = fStack_84 - fStack_a4;
    local_e0 = local_b0 - local_90;
    fStack_d8 = fStack_a8 - fStack_88;
    fStack_d4 = fStack_a4 - fStack_84;
    fStack_16c = 0.0;
    uStack_dc = 0;
    bVar7 = false;
    pfVar12 = param_4;
    if (fVar1 == param_6) {
      fVar16 = local_170 * local_170;
      auVar27._0_4_ = fStack_168 * fStack_168 + 0.0 + fVar16;
      auVar27._4_4_ = auVar27._0_4_;
      auVar27._8_4_ = auVar27._0_4_;
      auVar27._12_4_ = auVar27._0_4_;
      _local_150 = sqrtps(auVar27,auVar27);
      local_174 = *(float *)((int)this + 0x60) - _DAT_00fb35b4;
      local_154 = 0.0;
      pfVar12 = &local_174;
      if (local_174 <= 0.0) {
        pfVar12 = &local_154;
      }
      uVar13 = local_150._0_4_;
      if (*pfVar12 <= (float)local_150._0_4_) {
        fVar17 = *(float *)((int)this + 100);
        if (*(float *)((int)this + 100) < *(float *)((int)this + 0x60)) {
          fVar17 = *(float *)((int)this + 0x60);
        }
        if ((float)local_150._0_4_ <= fVar17 + _DAT_00fb35b4) {
          auVar27 = *param_5;
          uStack_148 = auVar27._8_8_;
          local_150._0_4_ = SUB124(*(undefined1 (*) [12])*param_5,0);
          local_150._4_4_ = 0;
          auVar8 = _local_150;
          fVar17 = local_e0;
          fVar18 = 0.0;
          fVar19 = fStack_d8;
          fVar20 = fStack_d4;
          fVar25 = local_170;
          fVar30 = 0.0;
          fVar31 = fStack_168;
          fVar32 = fStack_164;
          if (0.0 < (float)uVar13) {
            auVar4._4_4_ = fVar16;
            auVar4._0_4_ = fVar16;
            auVar4._8_4_ = fVar16;
            auVar4._12_4_ = 0;
            fVar16 = fStack_168 * fStack_168 + 0.0 + fVar16;
            auVar26._4_4_ = fVar16;
            auVar26._0_4_ = fVar16;
            auVar26._8_4_ = fVar16;
            auVar26._12_4_ = fVar16;
            auVar21 = rsqrtps(auVar4 << 0x20,auVar26);
            fVar17 = auVar21._0_4_;
            fVar18 = auVar21._4_4_;
            fVar19 = auVar21._8_4_;
            fVar20 = auVar21._12_4_;
            auVar15._4_4_ = DAT_00f998f8;
            auVar15._0_4_ = DAT_00f998f8;
            auVar15._8_4_ = DAT_00f998f8;
            auVar15._12_4_ = DAT_00f998f8;
            fVar17 = (DAT_00f998f8 - fVar17 * fVar17 * fVar16) * fVar17 * _DAT_00f9b5b4 + fVar17;
            fVar18 = (DAT_00f998f8 - fVar18 * fVar18 * fVar16) * fVar18 * _DAT_00f9b5b4 + fVar18;
            fVar19 = (DAT_00f998f8 - fVar19 * fVar19 * fVar16) * fVar19 * _DAT_00f9b5b4 + fVar19;
            fVar20 = (DAT_00f998f8 - fVar20 * fVar20 * fVar16) * fVar20 * _DAT_00f9b5b4 + fVar20;
            local_60 = ((DAT_00f998f8 - fVar17 * fVar17 * fVar16) * fVar17 * _DAT_00f9b5b4 + fVar17)
                       * local_170;
            fStack_5c = ((DAT_00f998f8 - fVar18 * fVar18 * fVar16) * fVar18 * _DAT_00f9b5b4 + fVar18
                        ) * 0.0;
            fStack_58 = ((DAT_00f998f8 - fVar19 * fVar19 * fVar16) * fVar19 * _DAT_00f9b5b4 + fVar19
                        ) * fStack_168;
            fStack_54 = ((DAT_00f998f8 - fVar20 * fVar20 * fVar16) * fVar20 * _DAT_00f9b5b4 + fVar20
                        ) * fStack_164;
            fVar16 = local_e0 * local_e0;
            auVar5._4_4_ = fVar16;
            auVar5._0_4_ = fVar16;
            auVar5._8_4_ = fVar16;
            auVar5._12_4_ = 0;
            fVar16 = fStack_d8 * fStack_d8 + 0.0 + fVar16;
            auVar21._4_4_ = fVar16;
            auVar21._0_4_ = fVar16;
            auVar21._8_4_ = fVar16;
            auVar21._12_4_ = fVar16;
            auVar21 = rsqrtps(auVar5 << 0x20,auVar21);
            fVar17 = auVar21._0_4_;
            fVar18 = auVar21._4_4_;
            fVar19 = auVar21._8_4_;
            fVar20 = auVar21._12_4_;
            fVar17 = (DAT_00f998f8 - fVar17 * fVar17 * fVar16) * fVar17 * _DAT_00f9b5b4 + fVar17;
            fVar18 = (DAT_00f998f8 - fVar18 * fVar18 * fVar16) * fVar18 * _DAT_00f9b5b4 + fVar18;
            fVar19 = (DAT_00f998f8 - fVar19 * fVar19 * fVar16) * fVar19 * _DAT_00f9b5b4 + fVar19;
            fVar20 = (DAT_00f998f8 - fVar20 * fVar20 * fVar16) * fVar20 * _DAT_00f9b5b4 + fVar20;
            local_15c = *(float *)((int)this + 0x5c);
            local_c0 = ((DAT_00f998f8 - fVar17 * fVar17 * fVar16) * fVar17 * _DAT_00f9b5b4 + fVar17)
                       * local_e0;
            fStack_bc = ((DAT_00f998f8 - fVar18 * fVar18 * fVar16) * fVar18 * _DAT_00f9b5b4 + fVar18
                        ) * 0.0;
            fStack_b8 = ((DAT_00f998f8 - fVar19 * fVar19 * fVar16) * fVar19 * _DAT_00f9b5b4 + fVar19
                        ) * fStack_d8;
            fStack_b4 = ((DAT_00f998f8 - fVar20 * fVar20 * fVar16) * fVar20 * _DAT_00f9b5b4 + fVar20
                        ) * fStack_d4;
            bVar7 = true;
            fVar17 = local_c0;
            fVar18 = fStack_bc;
            fVar19 = fStack_b8;
            fVar20 = fStack_b4;
            fVar25 = local_60;
            fVar30 = fStack_5c;
            fVar31 = fStack_58;
            fVar32 = fStack_54;
            if (local_15c < DAT_010051a8) {
              uStack_148._0_4_ = auVar27._8_4_;
              uStack_148._4_4_ = auVar27._12_4_;
              fVar16 = (float)local_150._0_4_ * (float)local_150._0_4_;
              local_a0 = (float)uStack_148 * (float)uStack_148 + 0.0 + fVar16;
              local_d0 = DAT_010f4ccc;
              if (DAT_010f4ccc < local_a0) {
                auVar6._4_4_ = fVar16;
                auVar6._0_4_ = fVar16;
                auVar6._8_4_ = fVar16;
                auVar6._12_4_ = 0;
                fVar16 = (float)uStack_148 * (float)uStack_148 + 0.0 + fVar16;
                auVar2._4_4_ = fVar16;
                auVar2._0_4_ = fVar16;
                auVar2._8_4_ = fVar16;
                auVar2._12_4_ = fVar16;
                auVar27 = rsqrtps(auVar6 << 0x20,auVar2);
                fVar17 = auVar27._0_4_;
                fVar18 = auVar27._4_4_;
                fVar19 = auVar27._8_4_;
                fVar20 = auVar27._12_4_;
                fVar17 = (DAT_00f998f8 - fVar17 * fVar17 * fVar16) * fVar17 * _DAT_00f9b5b4 + fVar17
                ;
                fVar18 = (DAT_00f998f8 - fVar18 * fVar18 * fVar16) * fVar18 * _DAT_00f9b5b4 + fVar18
                ;
                fVar19 = (DAT_00f998f8 - fVar19 * fVar19 * fVar16) * fVar19 * _DAT_00f9b5b4 + fVar19
                ;
                fVar20 = (DAT_00f998f8 - fVar20 * fVar20 * fVar16) * fVar20 * _DAT_00f9b5b4 + fVar20
                ;
                local_70 = ((DAT_00f998f8 - fVar17 * fVar17 * fVar16) * fVar17 * _DAT_00f9b5b4 +
                           fVar17) * (float)local_150._0_4_;
                fStack_6c = ((DAT_00f998f8 - fVar18 * fVar18 * fVar16) * fVar18 * _DAT_00f9b5b4 +
                            fVar18) * 0.0;
                uStack_148._0_4_ =
                     ((DAT_00f998f8 - fVar19 * fVar19 * fVar16) * fVar19 * _DAT_00f9b5b4 + fVar19) *
                     (float)uStack_148;
                uStack_148._4_4_ =
                     ((DAT_00f998f8 - fVar20 * fVar20 * fVar16) * fVar20 * _DAT_00f9b5b4 + fVar20) *
                     uStack_148._4_4_;
                auVar28._0_4_ = local_c0 * local_c0;
                auVar28._4_4_ = fStack_bc * fStack_bc;
                auVar28._8_4_ = fStack_b8 * fStack_b8;
                auVar28._12_4_ = fStack_b4 * fStack_b4;
                auVar22._0_4_ = auVar28._8_4_ + auVar28._4_4_ + auVar28._0_4_;
                auVar22._4_4_ = auVar22._0_4_;
                auVar22._8_4_ = auVar22._0_4_;
                auVar22._12_4_ = auVar22._0_4_;
                auVar27 = rsqrtps(auVar28,auVar22);
                fVar16 = auVar27._0_4_;
                fVar17 = auVar27._4_4_;
                fVar18 = auVar27._8_4_;
                fVar19 = auVar27._12_4_;
                local_80 = ((DAT_00f998f8 - fVar16 * fVar16 * auVar22._0_4_) *
                            fVar16 * _DAT_00f9b5b4 + fVar16) * local_c0;
                fStack_7c = ((DAT_00f998f8 - fVar17 * fVar17 * auVar22._0_4_) *
                             fVar17 * _DAT_00f9b5b4 + fVar17) * fStack_bc;
                fStack_78 = ((DAT_00f998f8 - fVar18 * fVar18 * auVar22._0_4_) *
                             fVar18 * _DAT_00f9b5b4 + fVar18) * fStack_b8;
                fStack_74 = ((DAT_00f998f8 - fVar19 * fVar19 * auVar22._0_4_) *
                             fVar19 * _DAT_00f9b5b4 + fVar19) * fStack_b4;
                auVar29._0_4_ = local_70 * local_70;
                auVar29._4_4_ = fStack_6c * fStack_6c;
                auVar29._8_4_ = (float)uStack_148 * (float)uStack_148;
                auVar29._12_4_ = uStack_148._4_4_ * uStack_148._4_4_;
                auVar23._0_4_ = auVar29._8_4_ + auVar29._4_4_ + auVar29._0_4_;
                auVar23._4_4_ = auVar23._0_4_;
                auVar23._8_4_ = auVar23._0_4_;
                auVar23._12_4_ = auVar23._0_4_;
                auVar27 = rsqrtps(auVar29,auVar23);
                fVar16 = auVar27._0_4_;
                fVar17 = auVar27._4_4_;
                fVar18 = auVar27._8_4_;
                fVar19 = auVar27._12_4_;
                local_70 = ((DAT_00f998f8 - fVar16 * fVar16 * auVar23._0_4_) *
                            fVar16 * _DAT_00f9b5b4 + fVar16) * local_70;
                fStack_6c = ((DAT_00f998f8 - fVar17 * fVar17 * auVar23._0_4_) *
                             fVar17 * _DAT_00f9b5b4 + fVar17) * fStack_6c;
                fStack_68 = ((DAT_00f998f8 - fVar18 * fVar18 * auVar23._0_4_) *
                             fVar18 * _DAT_00f9b5b4 + fVar18) * (float)uStack_148;
                fStack_64 = ((DAT_00f998f8 - fVar19 * fVar19 * auVar23._0_4_) *
                             fVar19 * _DAT_00f9b5b4 + fVar19) * uStack_148._4_4_;
                fVar16 = fStack_68 * fStack_78 + fStack_6c * fStack_7c + local_70 * local_80;
                auVar24._4_4_ = fVar16;
                auVar24._0_4_ = fVar16;
                auVar24._8_4_ = fVar16;
                auVar24._12_4_ = fVar16;
                auVar3._4_4_ = DAT_00fab218;
                auVar3._0_4_ = DAT_00fab218;
                auVar3._8_4_ = DAT_00fab218;
                auVar3._12_4_ = DAT_00fab218;
                auVar27 = maxps(auVar24,auVar3);
                local_140 = minps(auVar27,auVar15);
                _local_150 = auVar8;
                fVar14 = (float10)_CIacos();
                fStack_158 = (float)fVar14;
                fStack_164 = 0.0;
                fStack_168 = 0.0;
                local_170 = 0.0;
                fStack_16c = DAT_00f998f8;
                auVar8._12_4_ = 0;
                auVar8._0_12_ = local_140._4_12_;
                local_140 = auVar8 << 0x20;
                fStack_130 = fStack_158;
                if ((fStack_6c * local_80 - local_70 * fStack_7c) * 0.0 +
                    (local_70 * fStack_78 - fStack_68 * local_80) * DAT_00f998f8 +
                    (fStack_68 * fStack_7c - fStack_6c * fStack_78) * 0.0 < 0.0) {
                  fStack_130 = DAT_010051a8 - fStack_158;
                }
                local_174 = fStack_130 * DAT_00fc2420;
                fStack_12c = fStack_130;
                fStack_128 = fStack_130;
                fStack_124 = fStack_130;
                dVar33 = floor((double)local_174);
                local_174 = local_174 - (float)dVar33;
                if (_DAT_00f9b5b4 < local_174) {
                  local_174 = local_174 - DAT_00f998f8;
                }
                local_174 = local_174 * DAT_010051a8;
                if (_DAT_010051a4 < local_174) {
                  local_174 = local_174 - DAT_010051a8;
                }
                if (local_174 < DAT_010056c0) {
                  local_174 = local_174 + DAT_010051a8;
                }
                local_174 = ABS(local_174);
                pfVar12 = extraout_EAX;
                fVar17 = local_c0;
                fVar18 = fStack_bc;
                fVar19 = fStack_b8;
                fVar20 = fStack_b4;
                fVar25 = local_60;
                fVar30 = fStack_5c;
                fVar31 = fStack_58;
                fVar32 = fStack_54;
                auVar8 = _local_150;
                if (local_15c * _DAT_00f9b5b4 < local_174) goto LAB_0075b688;
              }
            }
          }
          _local_150 = auVar8;
          local_f8 = param_3[10];
          local_f4 = param_3[0xb];
          fStack_f0 = param_3[0xc];
          local_120 = local_b0;
          fStack_11c = fStack_ac;
          fStack_118 = fStack_a8;
          fStack_114 = fStack_a4;
          local_100 = *(float *)((int)this + 0x2c) * DAT_010f6bf4;
          fStack_164 = 0.0;
          fStack_168 = 0.0;
          fStack_16c = 0.0;
          local_170 = 0.0;
          fStack_110 = 0.0;
          fStack_10c = 0.0;
          fStack_108 = 0.0;
          fStack_104 = 0.0;
          fVar16 = fStack_110;
          fVar9 = fStack_10c;
          fVar10 = fStack_108;
          fVar11 = fStack_104;
          if (((bVar7) &&
              (fVar16 = fVar25, fVar9 = fVar30, fVar10 = fVar31, fVar11 = fVar32,
              *(int *)((int)this + 0x58) != 1)) &&
             (fVar16 = fStack_110, fVar9 = fStack_10c, fVar10 = fStack_108, fVar11 = fStack_104,
             *(int *)((int)this + 0x58) == 2)) {
            fVar16 = fVar17;
            fVar9 = fVar18;
            fVar10 = fVar19;
            fVar11 = fVar20;
          }
          fStack_104 = fVar11;
          fStack_108 = fVar10;
          fStack_10c = fVar9;
          fStack_110 = fVar16;
          uStack_28 = 0;
          uStack_24 = 0;
          uStack_20 = 0;
          fStack_2c = param_6;
          uStack_40 = 0;
          uStack_3c = 0;
          uStack_38 = 0;
          uStack_34 = 0;
          fStack_50 = local_90;
          fStack_4c = fStack_8c;
          fStack_48 = fStack_88;
          fStack_44 = fStack_84;
          fStack_30 = DAT_00f998f8;
          fStack_160 = DAT_00f998f8;
          local_fc = fVar1;
          uVar13 = RadialRangeDestination_ShouldRejectCandidateEarly
                             (this,param_1,&fStack_50,&local_120,param_2,param_7,param_8,param_9,
                              &fStack_160);
          if ((char)uVar13 == '\0') {
            local_100 = fStack_160 * local_100;
            uVar13 = FUN_00654980(param_10,&local_120);
            return CONCAT31((int3)((uint)uVar13 >> 8),1);
          }
          pfVar12 = (float *)FUN_0074c860(param_11,(int)&local_120,1);
        }
      }
    }
  }
LAB_0075b688:
  return (uint)pfVar12 & 0xffffff00;
}

