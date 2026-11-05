/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Ray-box clipping used by10475FF0: subtracts box centre in
   caller, with half extents passed here. For an axis with abs(direction)<=native epsilon, the
   original branch compares negative origin coordinate to the half extent; there is no symmetric
   additional positive-origin clamp in this body. Other axes divide and take max/min interval;
   rejects minimum>maximum or maximum<0. The vertical CAW terrain ray exercises zero X/Z directions
   and negative unit Y. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

uint __fastcall
CAW_TerrainRayClipPaddedBox
          (undefined4 param_1,float *param_2,float *param_3,float *param_4,float *param_5,
          float *param_6)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  uint3 uVar3;
  int iVar4;
  float *pfVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar15;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  float fVar35;
  float fVar36;
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  float fVar37;
  float fVar38;
  float fVar39;
  undefined1 auVar40 [16];
  
  fVar8 = 0.0 - *param_3;
  fVar10 = 0.0 - param_3[1];
  fVar11 = 0.0 - param_3[2];
  fVar9 = param_3[4];
  auVar17._4_4_ = fVar9;
  auVar17._0_4_ = fVar9;
  auVar17._8_4_ = fVar9;
  auVar17._12_4_ = fVar9;
  auVar16._0_4_ = DAT_10aae184 * fVar9;
  auVar16._4_4_ = DAT_10aae184 * fVar9;
  auVar16._8_4_ = DAT_10aae184 * fVar9;
  auVar16._12_4_ = DAT_10aae184 * fVar9;
  auVar17 = maxps(auVar16,auVar17);
  auVar18._4_4_ = -(uint)(auVar17._4_4_ <= DAT_10b0b548);
  auVar18._0_4_ = -(uint)(auVar17._0_4_ <= DAT_10b0b548);
  auVar18._8_4_ = -(uint)(auVar17._8_4_ <= DAT_10b0b548);
  auVar18._12_4_ = -(uint)(auVar17._12_4_ <= DAT_10b0b548);
  iVar4 = movmskps(param_1,auVar18);
  auVar27._4_4_ = (float)_DAT_10b0b54c;
  auVar27._0_4_ = (float)_DAT_10b0b54c;
  auVar27._8_4_ = (float)_DAT_10b0b54c;
  auVar27._12_4_ = (float)_DAT_10b0b54c;
  auVar40._4_4_ = DAT_10ab4f78;
  auVar40._0_4_ = DAT_10ab4f78;
  auVar40._8_4_ = DAT_10ab4f78;
  auVar40._12_4_ = DAT_10ab4f78;
  if (iVar4 == 0xf) {
    fVar9 = param_4[1];
    fVar15 = param_4[2];
    pfVar5 = (float *)&DAT_0000000f;
    if (*param_4 < fVar8) goto LAB_1046f4da;
  }
  else {
    fVar9 = param_3[4];
    auVar19._4_4_ = fVar9;
    auVar19._0_4_ = fVar9;
    auVar19._8_4_ = fVar9;
    auVar19._12_4_ = fVar9;
    auVar12._4_4_ = DAT_10acb0d4;
    auVar12._0_4_ = DAT_10acb0d4;
    auVar12._8_4_ = DAT_10acb0d4;
    auVar12._12_4_ = DAT_10acb0d4;
    auVar17 = divps(auVar12,auVar19);
    fVar35 = *param_4;
    fVar9 = param_4[1];
    fVar15 = param_4[2];
    auVar28._0_4_ = fVar35 * auVar17._0_4_;
    auVar28._4_4_ = fVar35 * auVar17._4_4_;
    auVar28._8_4_ = fVar35 * auVar17._8_4_;
    auVar28._12_4_ = fVar35 * auVar17._12_4_;
    fVar35 = fVar8 * auVar17._0_4_;
    fVar36 = fVar8 * auVar17._4_4_;
    fVar37 = fVar8 * auVar17._8_4_;
    fVar8 = fVar8 * auVar17._12_4_;
    auVar20._0_4_ = DAT_10aae184 * auVar28._0_4_;
    auVar20._4_4_ = DAT_10aae184 * auVar28._4_4_;
    auVar20._8_4_ = DAT_10aae184 * auVar28._8_4_;
    auVar20._12_4_ = DAT_10aae184 * auVar28._12_4_;
    auVar17 = maxps(auVar20,auVar28);
    auVar27._0_4_ = fVar35 - auVar17._0_4_;
    auVar27._4_4_ = fVar36 - auVar17._4_4_;
    auVar27._8_4_ = fVar37 - auVar17._8_4_;
    auVar27._12_4_ = fVar8 - auVar17._12_4_;
    auVar40._4_4_ = auVar17._4_4_ + fVar36;
    auVar40._0_4_ = auVar17._0_4_ + fVar35;
    auVar40._8_4_ = auVar17._8_4_ + fVar37;
    auVar40._12_4_ = auVar17._12_4_ + fVar8;
    pfVar5 = param_4;
    param_4 = param_2;
  }
  fVar8 = param_3[5];
  auVar21._4_4_ = fVar8;
  auVar21._0_4_ = fVar8;
  auVar21._8_4_ = fVar8;
  auVar21._12_4_ = fVar8;
  auVar29._0_4_ = DAT_10aae184 * fVar8;
  auVar29._4_4_ = DAT_10aae184 * fVar8;
  auVar29._8_4_ = DAT_10aae184 * fVar8;
  auVar29._12_4_ = DAT_10aae184 * fVar8;
  auVar17 = maxps(auVar29,auVar21);
  auVar30._4_4_ = -(uint)(auVar17._4_4_ <= DAT_10b0b548);
  auVar30._0_4_ = -(uint)(auVar17._0_4_ <= DAT_10b0b548);
  auVar30._8_4_ = -(uint)(auVar17._8_4_ <= DAT_10b0b548);
  auVar30._12_4_ = -(uint)(auVar17._12_4_ <= DAT_10b0b548);
  iVar4 = movmskps(param_4,auVar30);
  uVar3 = (uint3)((uint)param_3 >> 8);
  if (iVar4 == 0xf) {
    if (fVar9 < fVar10) {
      return (uint)uVar3 << 8;
    }
  }
  else {
    fVar8 = param_3[5];
    auVar22._4_4_ = DAT_10acb0d4;
    auVar22._0_4_ = DAT_10acb0d4;
    auVar22._8_4_ = DAT_10acb0d4;
    auVar22._12_4_ = DAT_10acb0d4;
    auVar31._4_4_ = fVar8;
    auVar31._0_4_ = fVar8;
    auVar31._8_4_ = fVar8;
    auVar31._12_4_ = fVar8;
    auVar17 = divps(auVar22,auVar31);
    fVar37 = fVar9 * auVar17._0_4_;
    fVar38 = fVar9 * auVar17._4_4_;
    fVar39 = fVar9 * auVar17._8_4_;
    fVar9 = fVar9 * auVar17._12_4_;
    fVar8 = fVar10 * auVar17._0_4_;
    fVar35 = fVar10 * auVar17._4_4_;
    fVar36 = fVar10 * auVar17._8_4_;
    fVar10 = fVar10 * auVar17._12_4_;
    auVar23._0_4_ = DAT_10aae184 * fVar37;
    auVar23._4_4_ = DAT_10aae184 * fVar38;
    auVar23._8_4_ = DAT_10aae184 * fVar39;
    auVar23._12_4_ = DAT_10aae184 * fVar9;
    auVar1._4_4_ = fVar38;
    auVar1._0_4_ = fVar37;
    auVar1._8_4_ = fVar39;
    auVar1._12_4_ = fVar9;
    auVar17 = maxps(auVar23,auVar1);
    auVar2._4_4_ = fVar35 - auVar17._4_4_;
    auVar2._0_4_ = fVar8 - auVar17._0_4_;
    auVar2._8_4_ = fVar36 - auVar17._8_4_;
    auVar2._12_4_ = fVar10 - auVar17._12_4_;
    auVar27 = maxps(auVar27,auVar2);
    auVar24._0_4_ = auVar17._0_4_ + fVar8;
    auVar24._4_4_ = auVar17._4_4_ + fVar35;
    auVar24._8_4_ = auVar17._8_4_ + fVar36;
    auVar24._12_4_ = auVar17._12_4_ + fVar10;
    auVar40 = minps(auVar40,auVar24);
  }
  fVar9 = param_3[6];
  auVar25._4_4_ = fVar9;
  auVar25._0_4_ = fVar9;
  auVar25._8_4_ = fVar9;
  auVar25._12_4_ = fVar9;
  auVar32._0_4_ = DAT_10aae184 * fVar9;
  auVar32._4_4_ = DAT_10aae184 * fVar9;
  auVar32._8_4_ = DAT_10aae184 * fVar9;
  auVar32._12_4_ = DAT_10aae184 * fVar9;
  auVar17 = maxps(auVar32,auVar25);
  auVar33._4_4_ = -(uint)(auVar17._4_4_ <= DAT_10b0b548);
  auVar33._0_4_ = -(uint)(auVar17._0_4_ <= DAT_10b0b548);
  auVar33._8_4_ = -(uint)(auVar17._8_4_ <= DAT_10b0b548);
  auVar33._12_4_ = -(uint)(auVar17._12_4_ <= DAT_10b0b548);
  iVar4 = movmskps(pfVar5,auVar33);
  if (iVar4 == 0xf) {
    if (fVar15 < fVar11) {
      return (uint)uVar3 << 8;
    }
  }
  else {
    fVar9 = param_3[6];
    auVar26._4_4_ = DAT_10acb0d4;
    auVar26._0_4_ = DAT_10acb0d4;
    auVar26._8_4_ = DAT_10acb0d4;
    auVar26._12_4_ = DAT_10acb0d4;
    auVar34._4_4_ = fVar9;
    auVar34._0_4_ = fVar9;
    auVar34._8_4_ = fVar9;
    auVar34._12_4_ = fVar9;
    auVar17 = divps(auVar26,auVar34);
    auVar13._0_4_ = fVar15 * auVar17._0_4_;
    auVar13._4_4_ = fVar15 * auVar17._4_4_;
    auVar13._8_4_ = fVar15 * auVar17._8_4_;
    auVar13._12_4_ = fVar15 * auVar17._12_4_;
    auVar6._0_4_ = DAT_10aae184 * auVar13._0_4_;
    auVar6._4_4_ = DAT_10aae184 * auVar13._4_4_;
    auVar6._8_4_ = DAT_10aae184 * auVar13._8_4_;
    auVar6._12_4_ = DAT_10aae184 * auVar13._12_4_;
    fVar9 = fVar11 * auVar17._0_4_;
    fVar8 = fVar11 * auVar17._4_4_;
    fVar10 = fVar11 * auVar17._8_4_;
    fVar11 = fVar11 * auVar17._12_4_;
    auVar17 = maxps(auVar6,auVar13);
    auVar14._0_4_ = fVar9 - auVar17._0_4_;
    auVar14._4_4_ = fVar8 - auVar17._4_4_;
    auVar14._8_4_ = fVar10 - auVar17._8_4_;
    auVar14._12_4_ = fVar11 - auVar17._12_4_;
    auVar27 = maxps(auVar27,auVar14);
    auVar7._0_4_ = auVar17._0_4_ + fVar9;
    auVar7._4_4_ = auVar17._4_4_ + fVar8;
    auVar7._8_4_ = auVar17._8_4_ + fVar10;
    auVar7._12_4_ = auVar17._12_4_ + fVar11;
    auVar40 = minps(auVar40,auVar7);
  }
  fVar9 = auVar40._0_4_;
  if (auVar27._0_4_ <= fVar9) {
    if (DAT_10aae18c <= fVar9) {
      *param_5 = auVar27._0_4_;
      *param_6 = fVar9;
      return CONCAT31((int3)((uint)param_6 >> 8),1);
    }
  }
LAB_1046f4da:
  return (uint)param_3 & 0xffffff00;
}

