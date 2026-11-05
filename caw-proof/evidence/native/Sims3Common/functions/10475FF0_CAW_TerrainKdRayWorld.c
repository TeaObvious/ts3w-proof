/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Clips the ray against the KD shape padded box via1046F440.
   Multiplies source origin/direction by inverse axis scales; normalizes scaled direction with
   SQRTPS, scales min/max distance and traverses the KD tree. Zero normalized direction reciprocals
   use signed1e10 when abs(direction)<=2^-23. On hit rescales raw normal by inverse scales, RSQRTPS
   plus two Newton refinements with .5*inverse multiplication order, and divides hit distance by
   scaled direction length. Scalar decompiler association does not override SIMD arithmetic.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

uint __thiscall CAW_TerrainKdRayWorld(void *this,float *param_1,float *param_2)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  uint uVar6;
  undefined4 extraout_ECX;
  int iVar7;
  undefined4 extraout_EDX;
  float fVar8;
  float fVar11;
  float fVar12;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar19;
  float fVar20;
  float fVar21;
  undefined1 auVar18 [16];
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 local_a0 [4];
  undefined1 auStack_9c [20];
  float local_88;
  float local_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  undefined1 local_70 [4];
  undefined1 auStack_6c [8];
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined1 local_50 [16];
  undefined1 local_40 [8];
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  undefined4 local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_60 = *param_1;
  fStack_5c = param_1[1];
  fStack_58 = param_1[2];
  fStack_54 = param_1[3];
  local_20 = *(undefined4 *)*(undefined1 (*) [16])(param_1 + 4);
  fStack_1c = param_1[5];
  fStack_18 = param_1[6];
  fStack_14 = param_1[7];
  _local_40 = *(undefined1 (*) [16])(param_1 + 4);
  local_30 = local_60 - *(float *)((int)this + 0x30);
  fStack_2c = fStack_5c - *(float *)((int)this + 0x34);
  fStack_28 = fStack_58 - *(float *)((int)this + 0x38);
  fStack_24 = fStack_54 - *(float *)((int)this + 0x3c);
  uVar6 = CAW_TerrainRayClipPaddedBox
                    (&local_84,(float *)((int)this + 0x40),&local_30,(float *)((int)this + 0x40),
                     &local_84,&local_88);
  if ((char)uVar6 != '\0') {
    if (local_84 < 0.0) {
      local_84 = 0.0;
    }
    local_60 = *(float *)((int)this + 0x70) * local_60;
    fStack_5c = *(float *)((int)this + 0x74) * fStack_5c;
    fStack_58 = *(float *)((int)this + 0x78) * fStack_58;
    fStack_54 = *(float *)((int)this + 0x7c) * fStack_54;
    auVar18._0_4_ = *(float *)((int)this + 0x70) * (float)local_40._0_4_;
    auVar18._4_4_ = *(float *)((int)this + 0x74) * (float)local_40._4_4_;
    auVar18._8_4_ = *(float *)((int)this + 0x78) * fStack_38;
    auVar18._12_4_ = *(float *)((int)this + 0x7c) * fStack_34;
    auVar30._0_4_ =
         auVar18._8_4_ * auVar18._8_4_ + auVar18._4_4_ * auVar18._4_4_ +
         auVar18._0_4_ * auVar18._0_4_;
    auVar30._4_4_ = auVar30._0_4_;
    auVar30._8_4_ = auVar30._0_4_;
    auVar30._12_4_ = auVar30._0_4_;
    local_50 = sqrtps(auVar30,auVar30);
    local_a0 = local_50._0_4_;
    _local_40 = divps(auVar18,local_50);
    local_88 = (float)local_a0 * local_88;
    local_84 = (float)local_a0 * local_84;
    local_a0 = local_40._0_4_;
    fVar19 = local_40._4_4_;
    fVar8 = local_40._8_4_;
    auVar26._0_4_ = DAT_10aae184 * (float)local_a0;
    auVar26._4_4_ = DAT_10aae184 * (float)local_a0;
    auVar26._8_4_ = DAT_10aae184 * (float)local_a0;
    auVar26._12_4_ = DAT_10aae184 * (float)local_a0;
    auVar27._4_4_ = local_a0;
    auVar27._0_4_ = local_a0;
    auVar27._8_4_ = local_a0;
    auVar27._12_4_ = local_a0;
    auVar27 = maxps(auVar26,auVar27);
    auVar28._4_4_ = -(uint)(auVar27._4_4_ <= DAT_10b0b5d0);
    auVar28._0_4_ = -(uint)(auVar27._0_4_ <= DAT_10b0b5d0);
    auVar28._8_4_ = -(uint)(auVar27._8_4_ <= DAT_10b0b5d0);
    auVar28._12_4_ = -(uint)(auVar27._12_4_ <= DAT_10b0b5d0);
    iVar7 = movmskps(extraout_ECX,auVar28);
    auVar27 = ZEXT416((uint)DAT_10acb0d4);
    if (iVar7 == 0xf) {
      auStack_9c._0_12_ = local_50._4_12_;
      auVar4._12_4_ = 0;
      auVar4._0_12_ = _auStack_6c;
      _local_70 = auVar4 << 0x20;
      fVar11 = DAT_10b0b64c;
      if (0.0 <= (float)local_a0) {
        fVar11 = DAT_10ab4f78;
      }
    }
    else {
      fVar11 = DAT_10acb0d4 / (float)local_a0;
      auStack_6c._0_4_ = fVar11;
      local_70 = (undefined1  [4])fVar11;
      auStack_6c._4_4_ = fVar11;
      fStack_64 = fVar11;
      _local_a0 = local_50;
    }
    auVar29._0_4_ = DAT_10aae184 * fVar19;
    auVar29._4_4_ = DAT_10aae184 * fVar19;
    auVar29._8_4_ = DAT_10aae184 * fVar19;
    auVar29._12_4_ = DAT_10aae184 * fVar19;
    auVar1._4_4_ = fVar19;
    auVar1._0_4_ = fVar19;
    auVar1._8_4_ = fVar19;
    auVar1._12_4_ = fVar19;
    auVar30 = maxps(auVar29,auVar1);
    auVar31._4_4_ = -(uint)(auVar30._4_4_ <= DAT_10b0b5d0);
    auVar31._0_4_ = -(uint)(auVar30._0_4_ <= DAT_10b0b5d0);
    auVar31._8_4_ = -(uint)(auVar30._8_4_ <= DAT_10b0b5d0);
    auVar31._12_4_ = -(uint)(auVar30._12_4_ <= DAT_10b0b5d0);
    iVar7 = movmskps(extraout_EDX,auVar31);
    if (iVar7 == 0xf) {
      local_70 = (undefined1  [4])fVar19;
      auStack_9c._0_4_ = DAT_10b0b64c;
      if (0.0 <= fVar19) {
        auStack_9c._0_4_ = DAT_10ab4f78;
      }
    }
    else {
      auStack_9c._0_4_ = DAT_10acb0d4 / fVar19;
      fStack_7c = (float)auStack_9c._0_4_;
      local_80 = (float)auStack_9c._0_4_;
      fStack_78 = (float)auStack_9c._0_4_;
      fStack_74 = (float)auStack_9c._0_4_;
    }
    auVar9._0_4_ = DAT_10aae184 * fVar8;
    auVar9._4_4_ = DAT_10aae184 * fVar8;
    auVar9._8_4_ = DAT_10aae184 * fVar8;
    auVar9._12_4_ = DAT_10aae184 * fVar8;
    auVar2._4_4_ = fVar8;
    auVar2._0_4_ = fVar8;
    auVar2._8_4_ = fVar8;
    auVar2._12_4_ = fVar8;
    auVar30 = maxps(auVar9,auVar2);
    auVar10._4_4_ = -(uint)(auVar30._4_4_ <= DAT_10b0b5d0);
    auVar10._0_4_ = -(uint)(auVar30._0_4_ <= DAT_10b0b5d0);
    auVar10._8_4_ = -(uint)(auVar30._8_4_ <= DAT_10b0b5d0);
    auVar10._12_4_ = -(uint)(auVar30._12_4_ <= DAT_10b0b5d0);
    iVar7 = movmskps(uVar6,auVar10);
    if (iVar7 == 0xf) {
      auVar5._12_4_ = 0;
      auVar5._0_12_ = _auStack_6c;
      _local_70 = auVar5 << 0x20;
      local_80 = fVar8;
      auStack_9c._4_4_ = DAT_10b0b64c;
      if (0.0 <= fVar8) {
        auStack_9c._4_4_ = DAT_10ab4f78;
      }
    }
    else {
      auStack_9c._4_4_ = DAT_10acb0d4 / fVar8;
      fStack_7c = (float)auStack_9c._4_4_;
      local_80 = (float)auStack_9c._4_4_;
      fStack_78 = (float)auStack_9c._4_4_;
      fStack_74 = (float)auStack_9c._4_4_;
    }
    local_a0 = (undefined1  [4])fVar11;
    uVar6 = CAW_TerrainKdTraverseRay
                      (this,0,&local_60,(float *)local_40,(float *)local_a0,local_84,local_88,
                       param_2);
    if ((char)uVar6 != '\0') {
      fVar19 = *(float *)((int)this + 0x7c);
      fVar23 = param_2[4] * *(float *)((int)this + 0x70);
      fVar24 = param_2[5] * *(float *)((int)this + 0x74);
      fVar25 = param_2[6] * *(float *)((int)this + 0x78);
      fVar8 = fVar25 * fVar25 + fVar24 * fVar24 + fVar23 * fVar23;
      auVar3._4_4_ = fVar8;
      auVar3._0_4_ = fVar8;
      auVar3._8_4_ = fVar8;
      auVar3._12_4_ = fVar8;
      auVar27 = rsqrtps(auVar27,auVar3);
      fVar14 = auVar27._0_4_;
      fVar15 = auVar27._4_4_;
      fVar16 = auVar27._8_4_;
      fVar17 = auVar27._12_4_;
      fVar14 = (DAT_10acb0d4 - fVar14 * fVar14 * fVar8) * _DAT_10b310ec * fVar14 + fVar14;
      fVar15 = (DAT_10acb0d4 - fVar15 * fVar15 * fVar8) * _DAT_10b310ec * fVar15 + fVar15;
      fVar16 = (DAT_10acb0d4 - fVar16 * fVar16 * fVar8) * _DAT_10b310ec * fVar16 + fVar16;
      fVar17 = (DAT_10acb0d4 - fVar17 * fVar17 * fVar8) * _DAT_10b310ec * fVar17 + fVar17;
      fVar11 = DAT_10acb0d4 - fVar15 * fVar15 * fVar8;
      fVar12 = DAT_10acb0d4 - fVar16 * fVar16 * fVar8;
      fVar13 = DAT_10acb0d4 - fVar17 * fVar17 * fVar8;
      fVar20 = _DAT_10b310ec * fVar15;
      fVar21 = _DAT_10b310ec * fVar16;
      fVar22 = _DAT_10b310ec * fVar17;
      param_2[4] = ((DAT_10acb0d4 - fVar14 * fVar14 * fVar8) * _DAT_10b310ec * fVar14 + fVar14) *
                   fVar23;
      param_2[5] = (fVar11 * fVar20 + fVar15) * fVar24;
      param_2[6] = (fVar12 * fVar21 + fVar16) * fVar25;
      param_2[7] = (fVar13 * fVar22 + fVar17) * param_2[7] * fVar19;
      *param_2 = *param_2 / (float)local_50._0_4_;
      return CONCAT31((int3)(uVar6 >> 8),1);
    }
  }
  return uVar6 & 0xffffff00;
}

