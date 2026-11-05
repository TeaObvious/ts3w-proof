/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Removing unreachable block (ram,0x00c3672c) */
/* WARNING: Removing unreachable block (ram,0x00c36a64) */
/* Analyst PC1.67 static: Selected height lanes: input+0x8C nonnull RoofOwner calls its virtual+0x2C
   at start/end/middle with third0 and directly subtracts0.25 per point without floor clamp. Null
   owner calls C5C500 with input+0x90 selector. Do not identify the selected-owner path with current
   independent same-level roof maximum; complete owner/grid domain join remains open. Descriptive
   analyst role, not a recovered original symbol. */

void __thiscall
WallSide_PrepareVerticalProfiles(void *this,char *param_1,float *param_2,float *param_3)

{
  int iVar1;
  undefined1 auVar2 [16];
  float *pfVar3;
  byte bVar4;
  uint uVar5;
  float10 fVar6;
  float fVar7;
  float fVar10;
  float fVar11;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  float fVar12;
  undefined1 auVar13 [16];
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  float *local_210;
  float local_208;
  undefined4 uStack_1e8;
  undefined4 uStack_1e4;
  float local_1d0;
  float local_1cc;
  float local_1c8;
  float local_1c0;
  float local_1bc;
  float local_1b8;
  float local_1b0;
  float local_1ac;
  float local_1a8;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_188;
  float fStack_184;
  float afStack_180 [4];
  float fStack_170;
  float fStack_16c;
  float local_160;
  float fStack_15c;
  float fStack_158;
  float fStack_154;
  float local_150;
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
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float afStack_110 [12];
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0 [4];
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
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
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  
  fVar12 = *(float *)(*(int *)((int)this + 0x38) + 0x21c);
  fVar14 = *param_2;
  fVar10 = param_2[2];
  fVar11 = param_2[3];
  local_c0[0] = fVar14 + param_2[0x10];
  local_c0[1] = param_2[1] + param_2[0x11];
  local_c0[2] = fVar10 + param_2[0x12];
  local_c0[3] = fVar11 + param_2[0x13];
  fVar7 = param_2[4];
  fVar15 = param_2[6];
  fVar16 = param_2[7];
  local_a0 = fVar7 + param_2[0x18];
  fStack_9c = param_2[5] + param_2[0x19];
  fStack_98 = fVar15 + param_2[0x1a];
  fStack_94 = fVar16 + param_2[0x1b];
  local_1c0 = (float)(int)*param_1;
  local_90 = fVar7 + param_2[0x1c];
  fStack_8c = param_2[5] + param_2[0x1d];
  fStack_88 = fVar15 + param_2[0x1e];
  fStack_84 = fVar16 + param_2[0x1f];
  local_70 = fVar14 + param_2[0x14];
  fStack_6c = param_2[1] + param_2[0x15];
  fStack_68 = fVar10 + param_2[0x16];
  fStack_64 = fVar11 + param_2[0x17];
  local_1bc = (float)(int)param_1[1];
  local_1c8 = (float)(int)param_1[2];
  local_1b0 = (float)(int)param_1[3];
  local_1a8 = (float)(int)param_1[5];
  local_1ac = (float)(int)param_1[4];
  fVar7 = (fVar7 + fVar14) * 0.5;
  fVar10 = (fVar15 + fVar10) * 0.5;
  fVar11 = (fVar16 + fVar11) * 0.5;
  local_1d0 = (local_1b0 + local_1c0) * 0.5;
  local_1cc = (local_1ac + local_1bc) * 0.5;
  local_e0 = 0.5;
  fStack_dc = 0.5;
  fStack_d8 = 0.5;
  fStack_d4 = 0.5;
  local_1b8 = local_1c8;
  fVar6 = WallFloor_SampleLevelGridHeight(*(void **)((int)fVar12 + 0x230),&local_1d0);
  local_210 = (float *)(float)fVar6;
  fVar14 = param_2[0x21];
  local_150 = fVar14 * param_2[0xc] * local_e0;
  fStack_148 = fVar14 * param_2[0xe] * fStack_d8;
  fStack_144 = fVar14 * param_2[0xf] * fStack_d4;
  local_160 = local_150 + fVar7;
  fStack_158 = fStack_148 + fVar10;
  fStack_154 = fStack_144 + fVar11;
  local_150 = fVar7 - local_150;
  fStack_148 = fVar10 - fStack_148;
  fStack_144 = fVar11 - fStack_144;
  fStack_15c = (float)local_210;
  fStack_14c = (float)local_210;
  local_b0 = local_160;
  fStack_ac = (float)local_210;
  fStack_a8 = fStack_158;
  fStack_a4 = fStack_154;
  local_80 = local_150;
  fStack_7c = (float)local_210;
  fStack_78 = fStack_148;
  fStack_74 = fStack_144;
  if ((int *)param_2[0x23] == (int *)0x0) {
    fVar6 = WallHeight_ResolveVerticalSpan(fVar12,&local_1c0,param_2[0x24]);
    local_210 = (float *)(float)fVar6;
    fVar6 = WallHeight_ResolveVerticalSpan(fVar12,&local_1b0,param_2[0x24]);
    local_208 = (float)fVar6;
    fVar6 = WallHeight_ResolveVerticalSpan(fVar12,&local_1d0,param_2[0x24]);
  }
  else {
    (**(code **)(*(int *)param_2[0x23] + 0x2c))(local_1c0,local_1bc,0);
    (**(code **)(*(int *)param_2[0x23] + 0x2c))(local_1bc,local_1b8,0);
    fVar6 = (float10)(**(code **)(*(int *)param_2[0x23] + 0x2c))(uStack_1e8,uStack_1e4,0);
    fVar6 = fVar6 - (float10)0.25;
  }
  local_120 = (float)fVar6;
  auVar18._4_4_ = local_c0[1];
  auVar18._0_4_ = local_c0[0];
  auVar18._8_4_ = local_c0[2];
  auVar18._12_4_ = local_c0[3];
  param_3[0x8f] = (float)local_210;
  param_3[0x8a] = (float)local_210;
  local_d0 = (float)local_210 - local_c0[1];
  fStack_cc = local_d0;
  fStack_c8 = local_d0;
  fStack_c4 = local_d0;
  param_3[0x8e] = local_120;
  param_3[0x8b] = local_120;
  local_120 = local_120 - fStack_15c;
  param_3[0x8d] = local_208;
  param_3[0x8c] = local_208;
  fVar14 = local_208 - fStack_9c;
  fStack_16c = local_d0;
  afStack_180[0] = local_d0;
  fStack_11c = local_120;
  fStack_118 = local_120;
  fStack_114 = local_120;
  fStack_170 = local_120;
  afStack_180[1] = local_120;
  afStack_180[3] = fVar14;
  afStack_180[2] = fVar14;
  uVar5 = 0;
  pfVar3 = param_3;
  do {
    iVar1 = (&DAT_010781fc)[uVar5];
    fVar12 = local_c0[iVar1 * 4 + 1];
    fVar10 = local_c0[iVar1 * 4 + 2];
    fVar11 = local_c0[iVar1 * 4 + 3];
    *pfVar3 = local_c0[iVar1 * 4];
    pfVar3[1] = fVar12;
    pfVar3[2] = fVar10;
    pfVar3[3] = fVar11;
    if ((uVar5 / 3 & 0x80000001) == 1) {
      fVar12 = afStack_180[(&DAT_010781fc)[uVar5]];
      fStack_140 = fVar12 + *pfVar3;
      fStack_13c = fVar12 + pfVar3[1];
      fStack_138 = fVar12 + pfVar3[2];
      fStack_134 = fVar12 + pfVar3[3];
      *pfVar3 = *pfVar3;
      pfVar3[1] = fVar12 + pfVar3[1];
      pfVar3[2] = pfVar3[2];
      pfVar3[3] = pfVar3[3];
    }
    fVar12 = param_2[0x22];
    fStack_130 = *pfVar3;
    fStack_128 = pfVar3[2];
    fStack_124 = pfVar3[3];
    fStack_12c = fVar12 + pfVar3[1];
    *pfVar3 = *pfVar3;
    pfVar3[1] = fVar12 + pfVar3[1];
    pfVar3[2] = pfVar3[2];
    pfVar3[3] = pfVar3[3];
    uVar5 = uVar5 + 1;
    pfVar3 = pfVar3 + 4;
  } while ((int)uVar5 < 0xc);
  param_3[0x78] = local_1c0;
  param_3[0x87] = local_1c0;
  param_3[0x79] = local_1bc;
  param_3[0x88] = local_1bc;
  param_3[0x7a] = local_1b8;
  param_3[0x89] = local_1b8;
  param_3[0x7e] = local_1b0;
  param_3[0x81] = local_1b0;
  param_3[0x7f] = local_1ac;
  param_3[0x82] = local_1ac;
  param_3[0x80] = local_1a8;
  param_3[0x83] = local_1a8;
  param_3[0x7b] = local_1d0;
  param_3[0x84] = local_1d0;
  param_3[0x7c] = local_1cc;
  param_3[0x85] = local_1cc;
  param_3[0x7d] = local_1c8;
  param_3[0x86] = local_1c8;
  fVar12 = param_2[10];
  fStack_1a0 = SUB124(*(undefined1 (*) [12])(param_2 + 8),0);
  fVar10 = fStack_1a0;
  auVar8._0_4_ = fStack_1a0 * fStack_1a0;
  auVar8._4_4_ = 0;
  auVar8._8_4_ = fVar12 * fVar12;
  auVar8._12_4_ = fStack_1a0 * fStack_1a0;
  fVar11 = auVar8._8_4_ + 0.0 + auVar8._0_4_;
  auVar2._4_4_ = fVar11;
  auVar2._0_4_ = fVar11;
  auVar2._8_4_ = fVar11;
  auVar2._12_4_ = fVar11;
  auVar18 = rsqrtps(auVar18,auVar2);
  fVar7 = auVar18._0_4_;
  fVar15 = auVar18._4_4_;
  fVar16 = auVar18._8_4_;
  fVar17 = auVar18._12_4_;
  fVar7 = (1.0 - fVar7 * fVar7 * fVar11) * local_e0 * fVar7 + fVar7;
  fVar15 = (1.0 - fVar15 * fVar15 * fVar11) * fStack_dc * fVar15 + fVar15;
  fVar16 = (1.0 - fVar16 * fVar16 * fVar11) * fStack_d8 * fVar16 + fVar16;
  fVar17 = (1.0 - fVar17 * fVar17 * fVar11) * fStack_d4 * fVar17 + fVar17;
  auVar19._0_4_ = auVar8._8_4_ + 0.0 + auVar8._0_4_;
  auVar19._4_4_ = auVar19._0_4_;
  auVar19._8_4_ = auVar19._0_4_;
  auVar19._12_4_ = auVar19._0_4_;
  auVar18 = sqrtps(auVar8,auVar19);
  fStack_1a0 = auVar18._0_4_;
  auVar13._0_4_ = ((1.0 - fVar7 * fVar7 * fVar11) * local_e0 * fVar7 + fVar7) * fVar10;
  auVar13._4_4_ = ((1.0 - fVar15 * fVar15 * fVar11) * fStack_dc * fVar15 + fVar15) * 0.0;
  auVar13._8_4_ = ((1.0 - fVar16 * fVar16 * fVar11) * fStack_d8 * fVar16 + fVar16) * fVar12;
  auVar13._12_4_ = ((1.0 - fVar17 * fVar17 * fVar11) * fStack_d4 * fVar17 + fVar17) * fVar10;
  auVar9._4_4_ = fStack_1a0;
  auVar9._0_4_ = fStack_1a0;
  auVar9._8_4_ = fStack_1a0;
  auVar9._12_4_ = fStack_1a0;
  auVar18 = divps(auVar13,auVar9);
  fVar12 = auVar18._0_4_;
  fVar11 = auVar18._4_4_;
  fVar7 = auVar18._8_4_;
  fVar10 = fVar7 * param_2[0x12] + fVar11 * param_2[0x11] + fVar12 * param_2[0x10];
  fStack_19c = fVar7 * param_2[0x1a] + fVar11 * param_2[0x19] + fVar12 * param_2[0x18];
  fStack_1a0 = fStack_19c;
  fStack_198 = fStack_19c;
  fStack_194 = fStack_19c;
  fStack_140 = (0.0 - fVar7) * param_2[0x16] + (0.0 - fVar11) * param_2[0x15] +
               (0.0 - fVar12) * param_2[0x14];
  fStack_13c = fStack_140;
  fStack_138 = fStack_140;
  fStack_134 = fStack_140;
  fStack_50 = (0.0 - fVar7) * param_2[0x1e] + (0.0 - fVar11) * param_2[0x1d] +
              (0.0 - fVar12) * param_2[0x1c];
  fStack_4c = fStack_50;
  fStack_48 = fStack_50;
  fStack_44 = fStack_50;
  fVar12 = param_2[0x21];
  bVar4 = *(byte *)((int)this + 0x44) >> 1 & 1;
  uVar5 = 0;
  do {
    if (bVar4 == 0) {
      afStack_110[uVar5] = 1.0;
    }
    else {
      fVar7 = param_2[0x24];
      fVar11 = afStack_180[(&DAT_010781fc)[uVar5]];
      afStack_110[uVar5] = fVar11 * 0.33333334;
      if (fVar7 == 5.60519e-45) {
        afStack_110[uVar5] = fVar11 * 0.33333334 + 0.05;
      }
    }
    if ((uVar5 / 3 & 0x80000001) == 1) {
      afStack_110[uVar5] = afStack_110[uVar5] - afStack_180[(&DAT_010781fc)[uVar5]] * 0.33333334;
    }
    uVar5 = uVar5 + 1;
  } while ((int)uVar5 < 0xc);
  local_210 = param_3 + 0x78;
  pfVar3 = param_3 + 0x90;
  local_208 = 8.40779e-45;
  do {
    iVar1 = *(int *)((int)this + 0x38);
    fStack_184 = pfVar3[-6];
    fVar6 = WallFloor_SampleLevelGridHeight(*(void **)(iVar1 + 0x228),local_210);
    fStack_188 = (float)fVar6;
    if (bVar4 == 0) {
      fVar11 = 0.93333334;
    }
    else {
      fVar11 = (fStack_184 - fStack_188) * 0.33333334 - 0.06666667;
    }
    local_210 = local_210 + 3;
    *pfVar3 = *(float *)(iVar1 + 0x3a8) + fStack_188 + 0.2;
    pfVar3[6] = fVar11;
    pfVar3[0xc] = fVar11;
    pfVar3 = pfVar3 + 1;
    local_208 = (float)((int)local_208 + -1);
  } while (local_208 != 0.0);
  fVar11 = 1.0 - local_d0 * 0.33333334;
  fVar7 = 1.0 - local_120 * 0.33333334;
  fVar14 = 1.0 - fVar14 * 0.33333334;
  param_3[0x31] = afStack_110[0];
  param_3[0x30] = 0.0;
  param_3[0x3c] = fVar10;
  param_3[0x3d] = 1.0;
  param_3[0x32] = 0.5;
  param_3[0x33] = afStack_110[1];
  param_3[0x3e] = 0.5;
  param_3[0x3f] = 1.0;
  param_3[0x34] = 1.0;
  param_3[0x35] = afStack_110[2];
  fStack_1a0 = fStack_1a0 + 1.0;
  param_3[0x40] = fStack_1a0;
  param_3[0x41] = 1.0;
  param_3[0x36] = 1.0;
  param_3[0x37] = afStack_110[3];
  param_3[0x42] = fStack_1a0;
  param_3[0x43] = fVar14;
  param_3[0x38] = 0.5;
  param_3[0x39] = afStack_110[4];
  param_3[0x44] = 0.5;
  param_3[0x45] = fVar7;
  param_3[0x3a] = 0.0;
  param_3[0x3b] = afStack_110[5];
  param_3[0x46] = fVar10;
  param_3[0x47] = fVar11;
  param_3[0x48] = 1.0 - fVar12;
  param_3[0x49] = afStack_110[8];
  param_3[0x54] = 0.0;
  param_3[0x55] = 1.0;
  param_3[0x4a] = 1.0;
  param_3[0x4b] = afStack_110[0];
  param_3[0x56] = 0.0;
  param_3[0x57] = 1.0;
  param_3[0x4c] = 1.0;
  param_3[0x4d] = afStack_110[5];
  param_3[0x58] = 0.0;
  param_3[0x59] = fVar11;
  param_3[0x4e] = 1.0 - fVar12;
  param_3[0x4f] = afStack_110[9];
  param_3[0x5a] = 0.0;
  param_3[0x5b] = fVar11;
  param_3[0x60] = local_c0[0];
  param_3[0x61] = local_c0[2];
  param_3[0x6c] = fVar10;
  param_3[0x6d] = fVar11;
  param_3[0x62] = local_160;
  param_3[99] = fStack_158;
  param_3[0x6e] = 0.5;
  param_3[0x6f] = fVar7;
  param_3[100] = local_a0;
  param_3[0x65] = fStack_98;
  param_3[0x70] = fStack_1a0;
  param_3[0x71] = fVar14;
  param_3[0x66] = local_90;
  param_3[0x67] = fStack_88;
  param_3[0x72] = fStack_140 + 1.0;
  param_3[0x73] = fVar14;
  param_3[0x68] = local_150;
  param_3[0x69] = fStack_148;
  param_3[0x74] = 0.5;
  param_3[0x75] = fVar7;
  param_3[0x6a] = local_70;
  param_3[0x6b] = fStack_68;
  param_3[0x76] = fStack_50;
  param_3[0x77] = fVar11;
  return;
}

