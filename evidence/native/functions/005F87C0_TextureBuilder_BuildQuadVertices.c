/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Removing unreachable block (ram,0x005f887a) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 static: ECX builder plus eight stack words, RET0x20; only AL defines
   success/failure. Register TB_QuadData and publish four48-byte vertex records through
   global011CF980. Selected source/destination rectangle, rotation and flag branches use
   builder+0x60 target records indexed by the32-bit word at+0x70 with stride0x60. Width-based1/width
   position bias, binary32 epsilon0x37800000 and packed-channel scale0x3B808081 are original facts,
   not Vulkan pixel parity. Stored disjoint ranges exclude11alignment bytes005F9015..005F901F; no
   body/flow/type repair. Descriptive analyst role, not a recovered symbol. */

uint __thiscall
TextureBuilder_BuildQuadVertices
          (void *this,float *param_1,float *param_2,uint param_3,float param_4,char param_5,
          char param_6,char param_7,char param_8)

{
  undefined4 uVar1;
  void *pvVar2;
  float fVar3;
  uint uVar4;
  int *piVar5;
  undefined4 *puVar6;
  float *pfVar7;
  undefined4 *puVar8;
  int iVar9;
  float10 fVar10;
  float fVar11;
  float fVar13;
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  float fVar12;
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  float fVar21;
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  float fVar27;
  float fVar28;
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  float fVar37;
  float fVar38;
  float fVar39;
  float fVar40;
  float fVar41;
  float fVar42;
  float fVar43;
  float local_d0 [8];
  float local_b0 [16];
  float local_70 [4];
  undefined1 local_60 [8];
  float fStack_58;
  float fStack_54;
  undefined1 local_40 [8];
  float fStack_38;
  float fStack_34;
  float local_30 [11];
  
  pvVar2 = DAT_011d8530;
  if ((_DAT_011cfa40 & 1) == 0) {
    _DAT_011cfa40 = _DAT_011cfa40 | 1;
  }
  uVar4 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"TB_QuadData",0xc,2);
  if (uVar4 < *(uint *)((int)pvVar2 + 8)) {
    piVar5 = (int *)(uVar4 * 0x10 + *(int *)((int)pvVar2 + 4));
    *piVar5 = *piVar5 + 1;
    *(undefined2 *)(piVar5 + 1) = *(undefined2 *)((int)pvVar2 + 0x12);
    piVar5[3] = (int)&DAT_011cf980;
  }
  local_b0[2] = param_1[2];
  local_b0[3] = *param_1;
  local_70[1] = param_1[1];
  local_70[3] = param_1[3];
  fStack_58 = 1.0;
  local_60 = (undefined1  [8])0x3f80000000000000;
  fStack_54 = 0.0;
  _local_40 = ZEXT412((uint)1.0) << 0x40;
  fStack_34 = 1.0;
  if (param_8 != '\0') {
    local_b0[2] = 1.0;
    local_b0[3] = 0.0;
    local_70[1] = 0.0;
    local_70[3] = 1.0;
  }
  fVar10 = (float10)fsin((float10)param_4);
  fVar28 = param_2[2];
  fVar38 = *param_2;
  fVar40 = param_2[3];
  iVar9 = *(int *)((int)this + 0x70) * 0x60 + *(int *)((int)this + 0x60);
  fVar42 = param_2[1];
  fVar37 = (float)fVar10;
  fVar10 = (float10)fcos((float10)param_4);
  fVar39 = (float)fVar10;
  fVar41 = fVar38;
  local_d0[2] = fVar28;
  if (fVar28 < fVar38) {
    fVar41 = fVar28;
    local_d0[2] = fVar38;
  }
  fVar13 = local_d0[2];
  fVar43 = fVar42;
  local_d0[3] = fVar40;
  if (fVar40 < fVar42) {
    fVar43 = fVar40;
    local_d0[3] = fVar42;
  }
  fVar3 = local_d0[3];
  local_30[0] = fVar41;
  local_30[1] = local_d0[2];
  local_30[2] = local_d0[2];
  local_30[3] = fVar41;
  local_d0[0] = fVar43;
  local_d0[1] = fVar43;
  local_d0[2] = local_d0[3];
  if (param_5 == '\0') {
    fVar21 = local_b0[2];
    fVar11 = local_b0[3];
    fVar27 = local_70[1];
    fVar12 = local_70[3];
    if (param_6 != '\0') {
      fStack_58 = local_b0[2];
      fStack_54 = local_b0[3];
      local_40._4_4_ = local_70[1];
      fStack_34 = local_70[3];
      if (param_8 == '\0') {
        if (param_7 == '\0') {
          fStack_34 = local_70[3] * 0.25 + local_70[1] * 0.25 +
                      local_70[3] * 0.25 + local_70[1] * 0.25;
          fStack_54 = local_b0[3] * 0.25 + local_b0[2] * 0.25 +
                      local_b0[2] * 0.25 + local_b0[3] * 0.25;
          fVar28 = local_70[1] - fStack_34;
          fVar38 = local_70[1] - fStack_34;
          fVar40 = local_70[3] - fStack_34;
          fVar42 = local_70[3] - fStack_34;
          fVar41 = local_b0[2] - fStack_54;
          fVar43 = local_b0[3] - fStack_54;
          local_70[1] = fVar28 * fVar39 + (local_b0[3] - fStack_54) * fVar37 + fStack_34;
          local_40._4_4_ = fVar38 * fVar39 + (local_b0[2] - fStack_54) * fVar37 + fStack_34;
          local_70[3] = fVar40 * fVar39 + fVar41 * fVar37 + fStack_34;
          fStack_34 = fVar42 * fVar39 + fVar43 * fVar37 + fStack_34;
          local_b0[3] = ((local_b0[3] - fStack_54) * fVar39 - fVar28 * fVar37) + fStack_54;
          local_b0[2] = ((local_b0[2] - fStack_54) * fVar39 - fVar38 * fVar37) + fStack_54;
          fStack_58 = (fVar41 * fVar39 - fVar40 * fVar37) + fStack_54;
          fStack_54 = (fVar43 * fVar39 - fVar42 * fVar37) + fStack_54;
        }
        else {
          local_d0[0] = fVar43 * fVar39 + fVar41 * fVar37;
          local_d0[1] = fVar43 * fVar39 + fVar13 * fVar37;
          local_d0[2] = fVar3 * fVar39 + fVar13 * fVar37;
          local_d0[3] = fVar3 * fVar39 + fVar41 * fVar37;
          local_30[0] = fVar41 * fVar39 - fVar43 * fVar37;
          local_30[1] = fVar13 * fVar39 - fVar43 * fVar37;
          local_30[2] = fVar13 * fVar39 - fVar3 * fVar37;
          local_30[3] = fVar41 * fVar39 - fVar3 * fVar37;
        }
        local_60._4_4_ = local_b0[2];
        local_60._0_4_ = local_b0[3];
        local_40._0_4_ = local_70[1];
        fStack_38 = local_70[3];
      }
      else {
        fVar11 = fVar3 * 0.25 + fVar43 * 0.25 + fVar3 * 0.25 + fVar43 * 0.25;
        fVar21 = fVar41 * 0.25 + fVar13 * 0.25 + fVar13 * 0.25 + fVar41 * 0.25;
        fVar27 = (param_1[1] + param_1[3]) * 0.5;
        fVar12 = (*param_1 + param_1[2]) * 0.5;
        fVar28 = (fVar28 - fVar38) / (param_1[2] - *param_1);
        local_30[0] = ((fVar41 - fVar12) * fVar39 + (fVar43 - fVar27) * fVar37) * fVar28 + fVar21;
        local_30[1] = ((fVar13 - fVar12) * fVar39 + (fVar43 - fVar27) * fVar37) * fVar28 + fVar21;
        local_30[2] = ((fVar13 - fVar12) * fVar39 + (fVar3 - fVar27) * fVar37) * fVar28 + fVar21;
        local_30[3] = ((fVar41 - fVar12) * fVar39 + (fVar3 - fVar27) * fVar37) * fVar28 + fVar21;
        fVar28 = (fVar40 - fVar42) / (param_1[3] - param_1[1]);
        local_d0[0] = ((fVar43 - fVar27) * fVar39 + (0.0 - (fVar41 - fVar12)) * fVar37) * fVar28 +
                      fVar11;
        local_d0[1] = ((fVar43 - fVar27) * fVar39 + (0.0 - (fVar13 - fVar12)) * fVar37) * fVar28 +
                      fVar11;
        local_d0[2] = ((fVar3 - fVar27) * fVar39 + (0.0 - (fVar13 - fVar12)) * fVar37) * fVar28 +
                      fVar11;
        local_d0[3] = ((fVar3 - fVar27) * fVar39 + (0.0 - (fVar41 - fVar12)) * fVar37) * fVar28 +
                      fVar11;
      }
      fVar28 = *(float *)(iVar9 + 0x40);
      fVar11 = *(float *)(iVar9 + 0x50);
      local_b0[3] = fVar28 * local_b0[3] - fVar11;
      local_b0[2] = fVar28 * local_b0[2] - fVar11;
      fVar21 = fVar28 * fStack_58 - fVar11;
      fVar11 = fVar28 * fStack_54 - fVar11;
      fVar28 = *(float *)(iVar9 + 0x44);
      fVar12 = *(float *)(iVar9 + 0x54);
      local_70[1] = fVar28 * local_70[1] - fVar12;
      fVar27 = fVar28 * (float)local_40._4_4_ - fVar12;
      local_70[3] = fVar28 * local_70[3] - fVar12;
      fVar12 = fVar28 * fStack_34 - fVar12;
    }
    fVar28 = local_b0[3] * 2.0 - 1.0;
    fVar38 = local_b0[2] * 2.0 - 1.0;
    fVar40 = fVar21 * 2.0 - 1.0;
    fVar42 = fVar11 * 2.0 - 1.0;
    fVar37 = 0.0 - (local_70[1] * 2.0 - 1.0);
    fVar39 = 0.0 - (fVar27 * 2.0 - 1.0);
    fVar41 = 0.0 - (local_70[3] * 2.0 - 1.0);
    fVar43 = 0.0 - (fVar12 * 2.0 - 1.0);
    if (param_8 == '\0') {
      auVar25._8_4_ = 0xbf800000;
      auVar25._0_8_ = 0xbf800000bf800000;
      auVar25._12_4_ = 0xbf800000;
      auVar30._8_4_ = 1.0;
      auVar30._0_8_ = 0x3f8000003f800000;
      auVar30._12_4_ = 1.0;
      auVar16._4_4_ = fVar38;
      auVar16._0_4_ = fVar28;
      auVar16._8_4_ = fVar40;
      auVar16._12_4_ = fVar42;
      auVar16 = maxps(auVar16,auVar25);
      auVar16 = minps(auVar16,auVar30);
      auVar24._4_4_ = fVar39;
      auVar24._0_4_ = fVar37;
      auVar24._8_4_ = fVar41;
      auVar24._12_4_ = fVar43;
      auVar25 = maxps(auVar24,auVar25);
      auVar32._0_4_ = auVar16._0_4_ - -1.0;
      auVar32._4_4_ = auVar16._4_4_ - -1.0;
      auVar32._8_4_ = auVar16._8_4_ - -1.0;
      auVar32._12_4_ = auVar16._12_4_ - -1.0;
      auVar25 = minps(auVar25,auVar30);
      auVar29._0_4_ = auVar32._0_4_ * -1.0;
      auVar29._4_4_ = auVar32._4_4_ * -1.0;
      auVar29._8_4_ = auVar32._8_4_ * -1.0;
      auVar29._12_4_ = auVar32._12_4_ * -1.0;
      auVar30 = maxps(auVar29,auVar32);
      auVar31._4_4_ = -(uint)(auVar30._4_4_ <= 1.5258789e-05);
      auVar31._0_4_ = -(uint)(auVar30._0_4_ <= 1.5258789e-05);
      auVar31._8_4_ = -(uint)(auVar30._8_4_ <= 1.5258789e-05);
      auVar31._12_4_ = -(uint)(auVar30._12_4_ <= 1.5258789e-05);
      uVar4 = movmskps(param_1,auVar31);
      if (uVar4 != 0xf) {
        auVar17._0_4_ = auVar16._0_4_ - 1.0;
        auVar17._4_4_ = auVar16._4_4_ - 1.0;
        auVar17._8_4_ = auVar16._8_4_ - 1.0;
        auVar17._12_4_ = auVar16._12_4_ - 1.0;
        auVar33._0_4_ = auVar17._0_4_ * -1.0;
        auVar33._4_4_ = auVar17._4_4_ * -1.0;
        auVar33._8_4_ = auVar17._8_4_ * -1.0;
        auVar33._12_4_ = auVar17._12_4_ * -1.0;
        auVar16 = maxps(auVar33,auVar17);
        auVar34._4_4_ = -(uint)(auVar16._4_4_ <= 1.5258789e-05);
        auVar34._0_4_ = -(uint)(auVar16._0_4_ <= 1.5258789e-05);
        auVar34._8_4_ = -(uint)(auVar16._8_4_ <= 1.5258789e-05);
        auVar34._12_4_ = -(uint)(auVar16._12_4_ <= 1.5258789e-05);
        iVar9 = movmskps(iVar9,auVar34);
        if (iVar9 != 0xf) {
          auVar18._0_4_ = auVar25._0_4_ - -1.0;
          auVar18._4_4_ = auVar25._4_4_ - -1.0;
          auVar18._8_4_ = auVar25._8_4_ - -1.0;
          auVar18._12_4_ = auVar25._12_4_ - -1.0;
          auVar35._0_4_ = auVar18._0_4_ * -1.0;
          auVar35._4_4_ = auVar18._4_4_ * -1.0;
          auVar35._8_4_ = auVar18._8_4_ * -1.0;
          auVar35._12_4_ = auVar18._12_4_ * -1.0;
          auVar16 = maxps(auVar35,auVar18);
          auVar36._4_4_ = -(uint)(auVar16._4_4_ <= 1.5258789e-05);
          auVar36._0_4_ = -(uint)(auVar16._0_4_ <= 1.5258789e-05);
          auVar36._8_4_ = -(uint)(auVar16._8_4_ <= 1.5258789e-05);
          auVar36._12_4_ = -(uint)(auVar16._12_4_ <= 1.5258789e-05);
          iVar9 = movmskps(param_2,auVar36);
          if (iVar9 != 0xf) {
            auVar26._0_4_ = auVar25._0_4_ - 1.0;
            auVar26._4_4_ = auVar25._4_4_ - 1.0;
            auVar26._8_4_ = auVar25._8_4_ - 1.0;
            auVar26._12_4_ = auVar25._12_4_ - 1.0;
            auVar19._0_4_ = auVar26._0_4_ * -1.0;
            auVar19._4_4_ = auVar26._4_4_ * -1.0;
            auVar19._8_4_ = auVar26._8_4_ * -1.0;
            auVar19._12_4_ = auVar26._12_4_ * -1.0;
            auVar25 = maxps(auVar19,auVar26);
            auVar20._4_4_ = -(uint)(auVar25._4_4_ <= 1.5258789e-05);
            auVar20._0_4_ = -(uint)(auVar25._0_4_ <= 1.5258789e-05);
            auVar20._8_4_ = -(uint)(auVar25._8_4_ <= 1.5258789e-05);
            auVar20._12_4_ = -(uint)(auVar25._12_4_ <= 1.5258789e-05);
            uVar4 = movmskps(uVar4,auVar20);
            if (uVar4 != 0xf) goto LAB_005f8fc5;
          }
        }
      }
      return uVar4 & 0xffffff00;
    }
  }
  else {
    fVar28 = -1.0;
    fVar38 = 1.0;
    fVar40 = 1.0;
    fVar42 = -1.0;
    fVar37 = 1.0;
    fVar39 = 1.0;
    fVar41 = -1.0;
    fVar43 = -1.0;
    if (param_6 != '\0') {
      fVar13 = *(float *)(iVar9 + 0x50);
      uVar1 = *(undefined4 *)(iVar9 + 0x40);
      auVar14._0_4_ = fVar13 + 0.0;
      auVar14._4_4_ = fVar13 + 1.0;
      auVar14._8_4_ = fVar13 + 1.0;
      auVar14._12_4_ = fVar13 + 0.0;
      auVar22._4_4_ = uVar1;
      auVar22._0_4_ = uVar1;
      auVar22._8_4_ = uVar1;
      auVar22._12_4_ = uVar1;
      _local_60 = divps(auVar14,auVar22);
      uVar1 = *(undefined4 *)(iVar9 + 0x44);
      fVar13 = *(float *)(iVar9 + 0x54);
      auVar15._0_4_ = fVar13 + 0.0;
      auVar15._4_4_ = fVar13 + 0.0;
      auVar15._8_4_ = fVar13 + 1.0;
      auVar15._12_4_ = fVar13 + 1.0;
      auVar23._4_4_ = uVar1;
      auVar23._0_4_ = uVar1;
      auVar23._8_4_ = uVar1;
      auVar23._12_4_ = uVar1;
      _local_40 = divps(auVar15,auVar23);
    }
  }
LAB_005f8fc5:
  fVar13 = 1.0 / (float)*(int *)((int)this + 8);
  puVar6 = (undefined4 *)&DAT_011cf980;
  iVar9 = 0;
  local_b0[0] = fVar28 - fVar13;
  local_b0[1] = fVar38 - fVar13;
  local_b0[2] = fVar40 - fVar13;
  local_b0[3] = fVar42 - fVar13;
  local_70[0] = fVar37 + fVar13;
  local_70[1] = fVar39 + fVar13;
  local_70[2] = fVar41 + fVar13;
  local_70[3] = fVar43 + fVar13;
  do {
    *puVar6 = *(undefined4 *)((int)local_b0 + iVar9);
    puVar6[1] = puVar6[1];
    puVar6[2] = puVar6[2];
    puVar6[3] = puVar6[3];
    uVar1 = *(undefined4 *)((int)local_70 + iVar9);
    *puVar6 = *puVar6;
    puVar6[1] = uVar1;
    puVar6[2] = puVar6[2];
    puVar6[3] = puVar6[3];
    *puVar6 = *puVar6;
    puVar6[1] = puVar6[1];
    puVar6[2] = 0;
    puVar6[3] = puVar6[3];
    pfVar7 = (float *)(puVar6 + 4);
    *puVar6 = *puVar6;
    puVar6[1] = puVar6[1];
    puVar6[2] = puVar6[2];
    puVar6[3] = 1.0;
    *pfVar7 = (float)(param_3 >> 0x10 & 0xff) * 0.003921569;
    puVar6[5] = puVar6[5];
    puVar6[6] = puVar6[6];
    puVar6[7] = puVar6[7];
    *pfVar7 = *pfVar7;
    puVar6[5] = (float)(param_3 >> 8 & 0xff) * 0.003921569;
    puVar6[6] = puVar6[6];
    puVar6[7] = puVar6[7];
    puVar8 = puVar6 + 8;
    puVar6[4] = *pfVar7;
    puVar6[5] = puVar6[5];
    puVar6[6] = (float)(param_3 & 0xff) * 0.003921569;
    puVar6[7] = puVar6[7];
    puVar6[4] = puVar6[4];
    puVar6[5] = puVar6[5];
    puVar6[6] = puVar6[6];
    puVar6[7] = (float)(param_3 >> 0x18) * 0.003921569;
    *puVar8 = *(undefined4 *)((int)local_30 + iVar9);
    puVar6[9] = puVar6[9];
    puVar6[10] = puVar6[10];
    puVar6[0xb] = puVar6[0xb];
    uVar1 = *(undefined4 *)((int)local_d0 + iVar9);
    *puVar8 = *puVar8;
    puVar6[9] = uVar1;
    puVar6[10] = puVar6[10];
    puVar6[0xb] = puVar6[0xb];
    uVar1 = *(undefined4 *)(local_60 + iVar9);
    *puVar8 = *puVar8;
    puVar6[9] = puVar6[9];
    puVar6[10] = uVar1;
    puVar6[0xb] = puVar6[0xb];
    uVar1 = *(undefined4 *)(local_40 + iVar9);
    *puVar8 = *puVar8;
    puVar6[9] = puVar6[9];
    puVar6[10] = puVar6[10];
    puVar6[0xb] = uVar1;
    iVar9 = iVar9 + 4;
    puVar6 = puVar6 + 0xc;
  } while (iVar9 < 0x10);
  return CONCAT31((int3)((uint)puVar6 >> 8),1);
}

