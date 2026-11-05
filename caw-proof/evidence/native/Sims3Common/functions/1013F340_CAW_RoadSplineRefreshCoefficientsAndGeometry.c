/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Road spline vtable 0x10ABF190 slot +44 resolves here.
   Refreshes the planar straight flag (+28) when both handle/chord cross magnitudes are below
   binary32 0.01, bounding box and cubic/derivative caches; calls 0x1013ECC0 to replace polyline
   +184..+188 and then 0x1013F010 to replace quad cache +194..+198. Both absolute setter and delta
   worker use this refresh. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_RoadSplineRefreshCoefficientsAndGeometry(int param_1)

{
  undefined1 (*pauVar1) [16];
  float *pfVar2;
  float *pfVar3;
  float *pfVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  undefined1 uVar10;
  float *pfVar11;
  float *pfVar12;
  float10 fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined1 auVar20 [16];
  float fVar21;
  undefined1 auVar22 [16];
  float local_e0;
  float local_dc;
  float local_d8;
  float local_d4;
  undefined1 local_d0 [8];
  float fStack_c8;
  float fStack_c4;
  undefined1 local_c0 [8];
  float fStack_b8;
  float fStack_b4;
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
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  fVar19 = DAT_10aaf750;
  local_40 = *(float *)(param_1 + 0x40) - *(float *)(param_1 + 0x30);
  fStack_3c = *(float *)(param_1 + 0x44) - *(float *)(param_1 + 0x34);
  local_30 = *(float *)(param_1 + 0x50) - *(float *)(param_1 + 0x60);
  fStack_2c = *(float *)(param_1 + 0x54) - *(float *)(param_1 + 100);
  fStack_38 = *(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x38);
  fStack_34 = *(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x3c);
  pauVar1 = (undefined1 (*) [16])(param_1 + 0x30);
  local_20 = *(float *)(param_1 + 0x60) - *(float *)(param_1 + 0x30);
  fStack_1c = *(float *)(param_1 + 100) - *(float *)(param_1 + 0x34);
  fStack_18 = *(float *)(param_1 + 0x68) - *(float *)(param_1 + 0x38);
  fStack_14 = *(float *)(param_1 + 0x6c) - *(float *)(param_1 + 0x3c);
  fVar14 = local_40 * fStack_1c - fStack_3c * local_20;
  fVar16 = local_40 * fStack_1c - fStack_3c * local_20;
  fVar17 = local_40 * fStack_1c - fStack_3c * local_20;
  fVar18 = local_40 * fStack_1c - fStack_3c * local_20;
  auVar22._0_4_ = fVar14 * DAT_10aae184;
  auVar22._4_4_ = fVar16 * DAT_10aae184;
  auVar22._8_4_ = fVar17 * DAT_10aae184;
  auVar22._12_4_ = fVar18 * DAT_10aae184;
  auVar5._4_4_ = fVar16;
  auVar5._0_4_ = fVar14;
  auVar5._8_4_ = fVar17;
  auVar5._12_4_ = fVar18;
  _local_d0 = maxps(auVar22,auVar5);
  fStack_28 = *(float *)(param_1 + 0x58) - *(float *)(param_1 + 0x68);
  fStack_24 = *(float *)(param_1 + 0x5c) - *(float *)(param_1 + 0x6c);
  fVar14 = local_30 * fStack_1c - fStack_2c * local_20;
  fVar16 = local_30 * fStack_1c - fStack_2c * local_20;
  fVar17 = local_30 * fStack_1c - fStack_2c * local_20;
  fVar18 = local_30 * fStack_1c - fStack_2c * local_20;
  auVar20._0_4_ = fVar14 * DAT_10aae184;
  auVar20._4_4_ = fVar16 * DAT_10aae184;
  auVar20._8_4_ = fVar17 * DAT_10aae184;
  auVar20._12_4_ = fVar18 * DAT_10aae184;
  auVar6._4_4_ = fVar16;
  auVar6._0_4_ = fVar14;
  auVar6._8_4_ = fVar17;
  auVar6._12_4_ = fVar18;
  _local_c0 = maxps(auVar20,auVar6);
  if ((DAT_10acf464 <= (float)local_d0._0_4_) || (DAT_10acf464 <= (float)local_c0._0_4_)) {
    uVar10 = 0;
  }
  else {
    uVar10 = 1;
  }
  *(undefined1 *)(param_1 + 0x28) = uVar10;
  pfVar2 = (float *)(param_1 + 0x10);
  *pfVar2 = fVar19;
  *(float *)(param_1 + 0x14) = fVar19;
  uVar7 = DAT_10aae240;
  *(undefined4 *)(param_1 + 0x18) = DAT_10aae240;
  *(undefined4 *)(param_1 + 0x1c) = uVar7;
  local_a0 = *(float *)*pauVar1;
  fStack_9c = (float)*(undefined4 *)(param_1 + 0x34);
  fStack_98 = (float)*(undefined4 *)(param_1 + 0x38);
  fStack_94 = (float)*(undefined4 *)(param_1 + 0x3c);
  local_d8 = local_a0;
  pfVar11 = &local_d8;
  if (*pfVar2 <= local_a0) {
    pfVar11 = pfVar2;
  }
  pfVar3 = (float *)(param_1 + 0x1c);
  *pfVar2 = *pfVar11;
  fStack_ac = *(float *)(param_1 + 0x34);
  local_b0 = *(float *)*pauVar1;
  fStack_a8 = (float)*(undefined4 *)(param_1 + 0x38);
  fStack_a4 = (float)*(undefined4 *)(param_1 + 0x3c);
  local_e0 = fStack_ac;
  pfVar11 = &local_e0;
  if (fStack_ac < *pfVar3 || fStack_ac == *pfVar3) {
    pfVar11 = pfVar3;
  }
  pfVar4 = (float *)(param_1 + 0x18);
  *pfVar3 = *pfVar11;
  _local_c0 = *pauVar1;
  local_c0._0_4_ = SUB124(*(undefined1 (*) [12])*pauVar1,0);
  local_dc = (float)local_c0._0_4_;
  pfVar11 = &local_dc;
  if ((float)local_c0._0_4_ < *pfVar4 || (float)local_c0._0_4_ == *pfVar4) {
    pfVar11 = pfVar4;
  }
  pfVar3 = (float *)(param_1 + 0x14);
  *pfVar4 = *pfVar11;
  _local_d0 = *pauVar1;
  local_d0._4_4_ = SUB124(*(undefined1 (*) [12])*pauVar1,4);
  local_d4 = (float)local_d0._4_4_;
  pfVar11 = &local_d4;
  if (*pfVar3 <= (float)local_d0._4_4_) {
    pfVar11 = pfVar3;
  }
  *pfVar3 = *pfVar11;
  local_a0 = *(float *)(param_1 + 0x40);
  fStack_9c = (float)*(undefined4 *)(param_1 + 0x44);
  fStack_98 = (float)*(undefined4 *)(param_1 + 0x48);
  fStack_94 = (float)*(undefined4 *)(param_1 + 0x4c);
  local_d8 = local_a0;
  pfVar11 = &local_d8;
  if (*pfVar2 <= local_a0) {
    pfVar11 = pfVar2;
  }
  pfVar12 = (float *)(param_1 + 0x1c);
  *pfVar2 = *pfVar11;
  fStack_ac = *(float *)(param_1 + 0x44);
  local_b0 = (float)*(undefined4 *)(param_1 + 0x40);
  fStack_a8 = (float)*(undefined4 *)(param_1 + 0x48);
  fStack_a4 = (float)*(undefined4 *)(param_1 + 0x4c);
  local_e0 = fStack_ac;
  if (*pfVar12 <= fStack_ac && fStack_ac != *pfVar12) {
    pfVar12 = &local_e0;
  }
  *(float *)(param_1 + 0x1c) = *pfVar12;
  _local_c0 = *(undefined1 (*) [16])(param_1 + 0x40);
  local_c0._0_4_ = SUB124(*(undefined1 (*) [12])*(undefined1 (*) [16])(param_1 + 0x40),0);
  local_dc = (float)local_c0._0_4_;
  pfVar11 = &local_dc;
  if ((float)local_c0._0_4_ < *pfVar4 || (float)local_c0._0_4_ == *pfVar4) {
    pfVar11 = pfVar4;
  }
  *pfVar4 = *pfVar11;
  _local_d0 = *(undefined1 (*) [16])(param_1 + 0x40);
  local_d0._4_4_ = SUB124(*(undefined1 (*) [12])*(undefined1 (*) [16])(param_1 + 0x40),4);
  local_d4 = (float)local_d0._4_4_;
  pfVar11 = &local_d4;
  if (*pfVar3 <= (float)local_d0._4_4_) {
    pfVar11 = pfVar3;
  }
  *pfVar3 = *pfVar11;
  local_a0 = *(float *)(param_1 + 0x50);
  fStack_9c = (float)*(undefined4 *)(param_1 + 0x54);
  fStack_98 = (float)*(undefined4 *)(param_1 + 0x58);
  fStack_94 = (float)*(undefined4 *)(param_1 + 0x5c);
  local_d8 = local_a0;
  pfVar11 = &local_d8;
  if (*pfVar2 <= local_a0) {
    pfVar11 = pfVar2;
  }
  pfVar12 = (float *)(param_1 + 0x1c);
  *pfVar2 = *pfVar11;
  fStack_ac = *(float *)(param_1 + 0x54);
  local_b0 = (float)*(undefined4 *)(param_1 + 0x50);
  fStack_a8 = (float)*(undefined4 *)(param_1 + 0x58);
  fStack_a4 = (float)*(undefined4 *)(param_1 + 0x5c);
  local_e0 = fStack_ac;
  if (*pfVar12 <= fStack_ac && fStack_ac != *pfVar12) {
    pfVar12 = &local_e0;
  }
  *(float *)(param_1 + 0x1c) = *pfVar12;
  _local_c0 = *(undefined1 (*) [16])(param_1 + 0x50);
  local_c0._0_4_ = SUB124(*(undefined1 (*) [12])*(undefined1 (*) [16])(param_1 + 0x50),0);
  local_dc = (float)local_c0._0_4_;
  pfVar11 = &local_dc;
  if ((float)local_c0._0_4_ < *pfVar4 || (float)local_c0._0_4_ == *pfVar4) {
    pfVar11 = pfVar4;
  }
  *pfVar4 = *pfVar11;
  _local_d0 = *(undefined1 (*) [16])(param_1 + 0x50);
  local_d0._4_4_ = SUB124(*(undefined1 (*) [12])*(undefined1 (*) [16])(param_1 + 0x50),4);
  local_d4 = (float)local_d0._4_4_;
  pfVar11 = &local_d4;
  if (*pfVar3 <= (float)local_d0._4_4_) {
    pfVar11 = pfVar3;
  }
  *pfVar3 = *pfVar11;
  local_a0 = *(float *)(param_1 + 0x60);
  fStack_9c = (float)*(undefined4 *)(param_1 + 100);
  fStack_98 = (float)*(undefined4 *)(param_1 + 0x68);
  fStack_94 = (float)*(undefined4 *)(param_1 + 0x6c);
  local_d8 = local_a0;
  pfVar11 = &local_d8;
  if (*pfVar2 <= local_a0) {
    pfVar11 = pfVar2;
  }
  pfVar12 = (float *)(param_1 + 0x1c);
  *pfVar2 = *pfVar11;
  fStack_ac = *(float *)(param_1 + 100);
  local_b0 = (float)*(undefined4 *)(param_1 + 0x60);
  fStack_a8 = (float)*(undefined4 *)(param_1 + 0x68);
  fStack_a4 = (float)*(undefined4 *)(param_1 + 0x6c);
  local_e0 = fStack_ac;
  if (*pfVar12 <= fStack_ac && fStack_ac != *pfVar12) {
    pfVar12 = &local_e0;
  }
  *(float *)(param_1 + 0x1c) = *pfVar12;
  _local_c0 = *(undefined1 (*) [16])(param_1 + 0x60);
  local_c0._0_4_ = SUB124(*(undefined1 (*) [12])*(undefined1 (*) [16])(param_1 + 0x60),0);
  local_dc = (float)local_c0._0_4_;
  pfVar11 = &local_dc;
  if ((float)local_c0._0_4_ < *pfVar4 || (float)local_c0._0_4_ == *pfVar4) {
    pfVar11 = pfVar4;
  }
  *pfVar4 = *pfVar11;
  fVar19 = _DAT_10aadffc;
  _local_d0 = *(undefined1 (*) [16])(param_1 + 0x60);
  local_d0._4_4_ = SUB124(*(undefined1 (*) [12])*(undefined1 (*) [16])(param_1 + 0x60),4);
  local_d4 = (float)local_d0._4_4_;
  pfVar11 = &local_d4;
  if (*pfVar3 <= (float)local_d0._4_4_) {
    pfVar11 = pfVar3;
  }
  *pfVar3 = *pfVar11;
  fVar14 = DAT_10c0f38c;
  *pfVar2 = *pfVar2 - DAT_10c0f38c;
  *(float *)(param_1 + 0x14) = *(float *)(param_1 + 0x14) - fVar14;
  *(float *)(param_1 + 0x1c) = fVar14 + *(float *)(param_1 + 0x1c);
  *(float *)(param_1 + 0x18) = fVar14 + *(float *)(param_1 + 0x18);
  fVar14 = _DAT_10ac44ac;
  fVar16 = (*(float *)(param_1 + 0x44) - *(float *)(param_1 + 0x54)) * _DAT_10ac44ac;
  fVar17 = (*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x58)) * _DAT_10ac44ac;
  fVar18 = (*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x5c)) * _DAT_10ac44ac;
  *(float *)(param_1 + 0x70) =
       ((*(float *)(param_1 + 0x40) - *(float *)(param_1 + 0x50)) * _DAT_10ac44ac +
       *(float *)(param_1 + 0x60)) - *(float *)*pauVar1;
  *(float *)(param_1 + 0x74) = (fVar16 + *(float *)(param_1 + 100)) - *(float *)(param_1 + 0x34);
  *(float *)(param_1 + 0x78) = (fVar17 + *(float *)(param_1 + 0x68)) - *(float *)(param_1 + 0x38);
  *(float *)(param_1 + 0x7c) = (fVar18 + *(float *)(param_1 + 0x6c)) - *(float *)(param_1 + 0x3c);
  *(float *)(param_1 + 0x80) =
       ((*(float *)*pauVar1 - fVar19 * *(float *)(param_1 + 0x40)) + *(float *)(param_1 + 0x50)) *
       fVar14;
  *(float *)(param_1 + 0x84) =
       ((*(float *)(param_1 + 0x34) - fVar19 * *(float *)(param_1 + 0x44)) +
       *(float *)(param_1 + 0x54)) * fVar14;
  *(float *)(param_1 + 0x88) =
       ((*(float *)(param_1 + 0x38) - fVar19 * *(float *)(param_1 + 0x48)) +
       *(float *)(param_1 + 0x58)) * fVar14;
  *(float *)(param_1 + 0x8c) =
       ((*(float *)(param_1 + 0x3c) - fVar19 * *(float *)(param_1 + 0x4c)) +
       *(float *)(param_1 + 0x5c)) * fVar14;
  *(float *)(param_1 + 0x90) = (*(float *)(param_1 + 0x40) - *(float *)*pauVar1) * fVar14;
  *(float *)(param_1 + 0x94) = (*(float *)(param_1 + 0x44) - *(float *)(param_1 + 0x34)) * fVar14;
  *(float *)(param_1 + 0x98) = (*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x38)) * fVar14;
  *(float *)(param_1 + 0x9c) = (*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x3c)) * fVar14;
  *(float *)(param_1 + 0xa0) = *(float *)*pauVar1;
  *(undefined4 *)(param_1 + 0xa4) = *(undefined4 *)(param_1 + 0x34);
  *(undefined4 *)(param_1 + 0xa8) = *(undefined4 *)(param_1 + 0x38);
  *(undefined4 *)(param_1 + 0xac) = *(undefined4 *)(param_1 + 0x3c);
  *(float *)(param_1 + 0xb0) = *(float *)(param_1 + 0x70) * fVar14;
  *(float *)(param_1 + 0xb4) = *(float *)(param_1 + 0x74) * fVar14;
  *(float *)(param_1 + 0xb8) = *(float *)(param_1 + 0x78) * fVar14;
  *(float *)(param_1 + 0xbc) = *(float *)(param_1 + 0x7c) * fVar14;
  *(float *)(param_1 + 0xc0) = fVar19 * *(float *)(param_1 + 0x80);
  *(float *)(param_1 + 0xc4) = fVar19 * *(float *)(param_1 + 0x84);
  *(float *)(param_1 + 200) = fVar19 * *(float *)(param_1 + 0x88);
  *(float *)(param_1 + 0xcc) = fVar19 * *(float *)(param_1 + 0x8c);
  *(undefined4 *)(param_1 + 0xd0) = *(undefined4 *)(param_1 + 0x90);
  *(undefined4 *)(param_1 + 0xd4) = *(undefined4 *)(param_1 + 0x94);
  *(undefined4 *)(param_1 + 0xd8) = *(undefined4 *)(param_1 + 0x98);
  *(undefined4 *)(param_1 + 0xdc) = *(undefined4 *)(param_1 + 0x9c);
  *(float *)(param_1 + 0xe0) = *(float *)(param_1 + 0xb0) * fVar19;
  *(float *)(param_1 + 0xe4) = *(float *)(param_1 + 0xb4) * fVar19;
  *(float *)(param_1 + 0xe8) = *(float *)(param_1 + 0xb8) * fVar19;
  *(float *)(param_1 + 0xec) = *(float *)(param_1 + 0xbc) * fVar19;
  *(undefined4 *)(param_1 + 0xf0) = *(undefined4 *)(param_1 + 0xc0);
  *(undefined4 *)(param_1 + 0xf4) = *(undefined4 *)(param_1 + 0xc4);
  *(undefined4 *)(param_1 + 0xf8) = *(undefined4 *)(param_1 + 200);
  *(undefined4 *)(param_1 + 0xfc) = *(undefined4 *)(param_1 + 0xcc);
  fVar9 = _DAT_10aaef14;
  fVar8 = DAT_10aae2c4;
  fVar14 = *(float *)(param_1 + 0x70);
  fStack_44 = *(float *)(param_1 + 0x74);
  fVar16 = fVar14 * fVar14;
  fStack_74 = fStack_44 * fStack_44;
  local_80 = fStack_74 + fVar16;
  fStack_7c = fStack_74 + fVar16;
  fStack_78 = fStack_74 + fVar16;
  fStack_74 = fStack_74 + fVar16;
  fVar16 = *(float *)(param_1 + 0x80);
  fStack_a4 = *(float *)(param_1 + 0x84);
  fVar17 = fVar16 * fVar14;
  fStack_54 = fStack_a4 * fStack_44;
  local_60 = fStack_54 + fVar17;
  fStack_5c = fStack_54 + fVar17;
  fStack_58 = fStack_54 + fVar17;
  fStack_54 = fStack_54 + fVar17;
  fVar17 = *(float *)(param_1 + 0x90);
  fVar18 = *(float *)(param_1 + 0x94);
  fVar15 = fVar17 * fVar14;
  fStack_84 = fVar18 * fStack_44;
  local_90 = fStack_84 + fVar15;
  fStack_8c = fStack_84 + fVar15;
  fStack_88 = fStack_84 + fVar15;
  fStack_84 = fStack_84 + fVar15;
  fVar15 = *(float *)(param_1 + 0xa0);
  fVar21 = *(float *)(param_1 + 0xa4);
  fVar14 = fVar15 * fVar14;
  fStack_44 = fVar21 * fStack_44;
  local_50 = fStack_44 + fVar14;
  fStack_4c = fStack_44 + fVar14;
  fStack_48 = fStack_44 + fVar14;
  fStack_44 = fStack_44 + fVar14;
  fVar14 = fVar16 * fVar16;
  fStack_64 = fStack_a4 * fStack_a4;
  local_70 = fStack_64 + fVar14;
  fStack_6c = fStack_64 + fVar14;
  fStack_68 = fStack_64 + fVar14;
  fStack_64 = fStack_64 + fVar14;
  fVar14 = fVar17 * fVar16;
  fStack_94 = fVar18 * fStack_a4;
  local_a0 = fStack_94 + fVar14;
  fStack_9c = fStack_94 + fVar14;
  fStack_98 = fStack_94 + fVar14;
  fStack_94 = fStack_94 + fVar14;
  fVar16 = fVar15 * fVar16;
  fStack_a4 = fVar21 * fStack_a4;
  local_b0 = fStack_a4 + fVar16;
  fStack_ac = fStack_a4 + fVar16;
  fStack_a8 = fStack_a4 + fVar16;
  fStack_a4 = fStack_a4 + fVar16;
  fVar14 = fVar17 * fVar17;
  fVar16 = fVar18 * fVar18;
  fVar15 = fVar15 * fVar17;
  fVar21 = fVar21 * fVar18;
  local_c0._4_4_ = fVar16 + fVar14;
  local_c0._0_4_ = fVar16 + fVar14;
  fStack_b8 = fVar16 + fVar14;
  fStack_b4 = fVar16 + fVar14;
  local_d0._4_4_ = fVar21 + fVar15;
  local_d0._0_4_ = fVar21 + fVar15;
  fStack_c8 = fVar21 + fVar15;
  fStack_c4 = fVar21 + fVar15;
  *(float *)(param_1 + 0x100) = (fVar21 + fVar15) * fVar19;
  fVar19 = (fVar16 + fVar14) * fVar19 + local_b0 * fVar8;
  *(float *)(param_1 + 0x108) = (local_a0 + local_50) * fVar9;
  *(float *)(param_1 + 0x10c) = local_70 * fVar8 + local_90 * DAT_10aaeb2c;
  *(float *)(param_1 + 0x110) = local_60 * DAT_10b5631c;
  *(float *)(param_1 + 0x104) = fVar19;
  *(float *)(param_1 + 0x118) = fVar19;
  fVar19 = _DAT_10abf2e4;
  *(float *)(param_1 + 0x114) = local_80 * fVar9;
  fVar14 = local_90 * DAT_10abf2e0;
  fVar16 = local_60 * DAT_10abf2dc;
  fVar17 = local_80 * DAT_10abf2d8;
  *(float *)(param_1 + 0x11c) = (local_a0 + local_50) * fVar19;
  *(float *)(param_1 + 0x120) = local_70 * fVar19 + fVar14;
  *(float *)(param_1 + 0x124) = fVar16;
  *(float *)(param_1 + 0x128) = fVar17;
  fVar19 = ((DAT_10abef90 * *(float *)(param_1 + 0x74) + *(float *)(param_1 + 0x84)) * DAT_10abef90
           + *(float *)(param_1 + 0x94)) * DAT_10abef90;
  fVar14 = ((DAT_10abef90 * *(float *)(param_1 + 0x78) + *(float *)(param_1 + 0x88)) * DAT_10abef90
           + *(float *)(param_1 + 0x98)) * DAT_10abef90;
  fVar16 = ((DAT_10abef90 * *(float *)(param_1 + 0x7c) + *(float *)(param_1 + 0x8c)) * DAT_10abef90
           + *(float *)(param_1 + 0x9c)) * DAT_10abef90;
  *(float *)(param_1 + 0x130) =
       ((DAT_10abef90 * *(float *)(param_1 + 0x70) + *(float *)(param_1 + 0x80)) * DAT_10abef90 +
       *(float *)(param_1 + 0x90)) * DAT_10abef90 + *(float *)(param_1 + 0xa0);
  *(float *)(param_1 + 0x134) = fVar19 + *(float *)(param_1 + 0xa4);
  *(float *)(param_1 + 0x138) = fVar14 + *(float *)(param_1 + 0xa8);
  *(float *)(param_1 + 0x13c) = fVar16 + *(float *)(param_1 + 0xac);
  fVar19 = ((DAT_10abef94 * *(float *)(param_1 + 0x74) + *(float *)(param_1 + 0x84)) * DAT_10abef94
           + *(float *)(param_1 + 0x94)) * DAT_10abef94;
  fVar14 = ((DAT_10abef94 * *(float *)(param_1 + 0x78) + *(float *)(param_1 + 0x88)) * DAT_10abef94
           + *(float *)(param_1 + 0x98)) * DAT_10abef94;
  fVar16 = ((DAT_10abef94 * *(float *)(param_1 + 0x7c) + *(float *)(param_1 + 0x8c)) * DAT_10abef94
           + *(float *)(param_1 + 0x9c)) * DAT_10abef94;
  *(float *)(param_1 + 0x140) =
       ((DAT_10abef94 * *(float *)(param_1 + 0x70) + *(float *)(param_1 + 0x80)) * DAT_10abef94 +
       *(float *)(param_1 + 0x90)) * DAT_10abef94 + *(float *)(param_1 + 0xa0);
  *(float *)(param_1 + 0x144) = fVar19 + *(float *)(param_1 + 0xa4);
  *(float *)(param_1 + 0x148) = fVar14 + *(float *)(param_1 + 0xa8);
  *(float *)(param_1 + 0x14c) = fVar16 + *(float *)(param_1 + 0xac);
  fVar19 = ((DAT_10abef98 * *(float *)(param_1 + 0x74) + *(float *)(param_1 + 0x84)) * DAT_10abef98
           + *(float *)(param_1 + 0x94)) * DAT_10abef98;
  fVar14 = ((DAT_10abef98 * *(float *)(param_1 + 0x78) + *(float *)(param_1 + 0x88)) * DAT_10abef98
           + *(float *)(param_1 + 0x98)) * DAT_10abef98;
  fVar16 = ((DAT_10abef98 * *(float *)(param_1 + 0x7c) + *(float *)(param_1 + 0x8c)) * DAT_10abef98
           + *(float *)(param_1 + 0x9c)) * DAT_10abef98;
  *(float *)(param_1 + 0x150) =
       ((DAT_10abef98 * *(float *)(param_1 + 0x70) + *(float *)(param_1 + 0x80)) * DAT_10abef98 +
       *(float *)(param_1 + 0x90)) * DAT_10abef98 + *(float *)(param_1 + 0xa0);
  *(float *)(param_1 + 0x154) = fVar19 + *(float *)(param_1 + 0xa4);
  *(float *)(param_1 + 0x158) = fVar14 + *(float *)(param_1 + 0xa8);
  *(float *)(param_1 + 0x15c) = fVar16 + *(float *)(param_1 + 0xac);
  fVar19 = ((DAT_10abef9c * *(float *)(param_1 + 0x74) + *(float *)(param_1 + 0x84)) * DAT_10abef9c
           + *(float *)(param_1 + 0x94)) * DAT_10abef9c;
  fVar14 = ((DAT_10abef9c * *(float *)(param_1 + 0x78) + *(float *)(param_1 + 0x88)) * DAT_10abef9c
           + *(float *)(param_1 + 0x98)) * DAT_10abef9c;
  fVar16 = ((DAT_10abef9c * *(float *)(param_1 + 0x7c) + *(float *)(param_1 + 0x8c)) * DAT_10abef9c
           + *(float *)(param_1 + 0x9c)) * DAT_10abef9c;
  *(float *)(param_1 + 0x160) =
       ((DAT_10abef9c * *(float *)(param_1 + 0x70) + *(float *)(param_1 + 0x80)) * DAT_10abef9c +
       *(float *)(param_1 + 0x90)) * DAT_10abef9c + *(float *)(param_1 + 0xa0);
  *(float *)(param_1 + 0x164) = fVar19 + *(float *)(param_1 + 0xa4);
  *(float *)(param_1 + 0x168) = fVar14 + *(float *)(param_1 + 0xa8);
  *(float *)(param_1 + 0x16c) = fVar16 + *(float *)(param_1 + 0xac);
  fVar13 = FUN_1013c240((float *)pauVar1,(float *)(param_1 + 0x40),(float *)(param_1 + 0x50),
                        (float *)(param_1 + 0x60),0);
  *(float *)(param_1 + 0x170) = (float)fVar13;
  CAW_RoadSplineBuildAdaptivePolyline(param_1);
  CAW_RoadSplineBuildWidthQuads(param_1);
  return;
}

