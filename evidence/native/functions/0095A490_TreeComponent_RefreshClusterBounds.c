/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX component, no stack words, plainRET. Nonempty
   primitive list: inverse first yawmatrix; union translations in that frame, widen by template
   min/max multiplied by FIRST primitive scale only, publishSpeedTreeData+20/+30. SIMD4lanes and
   native inversion failure behavior remain separate from managed finite checks. */

void __fastcall TreeComponent_RefreshClusterBounds(int param_1)

{
  void *pvVar1;
  int iVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float *pfVar9;
  int iVar10;
  void *pvVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  undefined1 local_f0 [8];
  float fStack_e8;
  float fStack_e4;
  undefined1 local_e0 [16];
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
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
  undefined4 local_90 [16];
  undefined4 local_50 [19];
  
  pvVar11 = *(void **)(*(int *)(param_1 + 8) + 8);
  if (pvVar11 != *(void **)(*(int *)(param_1 + 8) + 0xc)) {
    TreePrimitive_WriteYawMatrix(pvVar11,local_90);
    pfVar9 = (float *)Matrix4_InvertWithReplicatedDeterminant
                                ((undefined1 (*) [16])local_50,(undefined1 (*) [16])local_90,
                                 (float *)local_e0);
    local_d0 = *pfVar9;
    fStack_cc = pfVar9[1];
    fStack_c8 = pfVar9[2];
    fStack_c4 = pfVar9[3];
    local_c0 = pfVar9[4];
    fStack_bc = pfVar9[5];
    fStack_b8 = pfVar9[6];
    fStack_b4 = pfVar9[7];
    local_b0 = pfVar9[8];
    fStack_ac = pfVar9[9];
    fStack_a8 = pfVar9[10];
    fStack_a4 = pfVar9[0xb];
    local_a0 = pfVar9[0xc];
    fStack_9c = pfVar9[0xd];
    fStack_98 = pfVar9[0xe];
    fStack_94 = pfVar9[0xf];
    pvVar11 = *(void **)(*(int *)(param_1 + 8) + 8);
    pvVar1 = *(void **)(*(int *)(param_1 + 8) + 0xc);
    local_f0._0_4_ = 3.4028235e+38;
    fVar12 = (float)local_f0._0_4_;
    local_f0._4_4_ = 3.4028235e+38;
    fVar13 = (float)local_f0._4_4_;
    fStack_e8 = 3.4028235e+38;
    fVar14 = fStack_e8;
    fStack_e4 = 3.4028235e+38;
    fVar15 = fStack_e4;
    _local_f0 = ZEXT412(0xff7fffff) << 0x40;
    fStack_e4 = -3.4028235e+38;
    local_f0 = (undefined1  [8])0xff7fffff00000000;
    local_f0._0_4_ = 0xff7fffff;
    local_e0._8_4_ = 0x7f7fffff;
    local_e0._0_8_ = 0x7f7fffff7f7fffff;
    local_e0._12_4_ = 0x7f7fffff;
    while (pvVar11 != pvVar1) {
      iVar10 = TreePrimitive_WriteYawMatrix(pvVar11,local_50);
      fVar12 = *(float *)(iVar10 + 0x30);
      fVar13 = *(float *)(iVar10 + 0x34);
      fVar14 = *(float *)(iVar10 + 0x38);
      fVar15 = *(float *)(iVar10 + 0x3c);
      fVar16 = fVar12 * local_d0 + fVar13 * local_c0 + fVar14 * local_b0 + fVar15 * local_a0;
      fVar17 = fVar12 * fStack_cc + fVar13 * fStack_bc + fVar14 * fStack_ac + fVar15 * fStack_9c;
      fVar18 = fVar12 * fStack_c8 + fVar13 * fStack_b8 + fVar14 * fStack_a8 + fVar15 * fStack_98;
      fVar19 = fVar12 * fStack_c4 + fVar13 * fStack_b4 + fVar14 * fStack_a4 + fVar15 * fStack_94;
      pvVar11 = (void *)((int)pvVar11 + 0x50);
      auVar3._4_4_ = fVar17;
      auVar3._0_4_ = fVar16;
      auVar3._8_4_ = fVar18;
      auVar3._12_4_ = fVar19;
      local_e0 = minps(local_e0,auVar3);
      fVar12 = local_e0._0_4_;
      fVar13 = local_e0._4_4_;
      fVar14 = local_e0._8_4_;
      fVar15 = local_e0._12_4_;
      auVar4._4_4_ = fVar17;
      auVar4._0_4_ = fVar16;
      auVar4._8_4_ = fVar18;
      auVar4._12_4_ = fVar19;
      _local_f0 = maxps(_local_f0,auVar4);
    }
    iVar10 = *(int *)(param_1 + 8);
    iVar2 = *(int *)(param_1 + 0xc);
    fVar16 = *(float *)(*(int *)(iVar10 + 8) + 0x48);
    fVar17 = *(float *)(iVar2 + 0x40);
    fVar18 = *(float *)(iVar2 + 0x44);
    fVar19 = *(float *)(iVar2 + 0x48);
    fVar5 = *(float *)(iVar2 + 0x4c);
    fVar6 = *(float *)(iVar2 + 0x34);
    fVar7 = *(float *)(iVar2 + 0x38);
    fVar8 = *(float *)(iVar2 + 0x3c);
    *(float *)(iVar10 + 0x20) = *(float *)(iVar2 + 0x30) * fVar16 + fVar12;
    *(float *)(iVar10 + 0x24) = fVar6 * fVar16 + fVar13;
    *(float *)(iVar10 + 0x28) = fVar7 * fVar16 + fVar14;
    *(float *)(iVar10 + 0x2c) = fVar8 * fVar16 + fVar15;
    *(float *)(iVar10 + 0x30) = fVar17 * fVar16 + local_f0._0_4_;
    *(float *)(iVar10 + 0x34) = fVar18 * fVar16 + local_f0._4_4_;
    *(float *)(iVar10 + 0x38) = fVar19 * fVar16 + local_f0._8_4_;
    *(float *)(iVar10 + 0x3c) = fVar5 * fVar16 + local_f0._12_4_;
  }
  return;
}

