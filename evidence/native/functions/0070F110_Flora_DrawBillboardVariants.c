/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst name, not a recovered symbol. ECX is the receiver; two 32-bit stack arguments are removed
   by RET8. Equal receiver+210/+214 skips the batch. Context flag10h updates receiver+5B0: t comes
   from shared state+24, the scalar is (receiver+564-receiver+568)*t+receiver+568, RGB multiplies
   shared+30/+34/+38 and W is receiver+56C times global11D1A20. Flag8 uses the separate +5A0 vector
   path. Shader-slot indices are unsigned-bounds checked before parameter-table writes;
   Seasons_BindTreeSnowAndTwigInputs precedes the selected-technique draws. The inferred
   parameter/return types are unchanged. Endpoint semantic names and complete material/light
   producer mapping require separate evidence.
   
   Billboard UV/fade join: ordinary category0 -> technique0; flags8 -> category2, flags80
   ->category3, alpha-edge mode1 ->category1, via115C404 table[0,1,2,3]. Admitted vertical
   byte4F4/horizontal530 further gated by abs(normalized(camera-position minus cluster-center).Y):
   ordinary below0.15 only vertical,0.15..0.85 both,above0.85 only horizontal; category1 uses0.45
   split. Bind manager handles AC=BB360TexCoords(renderer+A0),
   B0=BillboardFadeConstants(cluster+4A0), BC=BillboardLodLimits(cluster+570 or580 chosen by context
   byte14), C0=BillboardLightingAdjust(+590). Separate instance+74 opacity is not this pitch gate,
   LOD-limit vector or texture-sample interpolation. */

void __thiscall Flora_DrawBillboardVariants(void *this,int param_1,int param_2)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined *this_00;
  int *piVar8;
  float fVar9;
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar13;
  float fVar14;
  float fVar15;
  undefined1 in_XMM4 [16];
  undefined1 auVar16 [16];
  int iVar17;
  char local_42;
  char local_41;
  
  iVar7 = DAT_011d8530;
  if (*(int *)((int)this + 0x210) == *(int *)((int)this + 0x214)) {
    return;
  }
  iVar17 = *(int *)(param_1 + 8);
  fVar13 = *(float *)(iVar17 + 0x60) - *(float *)((int)this + 0x70);
  fVar14 = *(float *)(iVar17 + 100) - *(float *)((int)this + 0x74);
  fVar15 = *(float *)(iVar17 + 0x68) - *(float *)((int)this + 0x78);
  local_41 = *(char *)((int)this + 0x530);
  local_42 = *(char *)((int)this + 0x4f4);
  fVar13 = fVar15 * fVar15 + fVar14 * fVar14 + fVar13 * fVar13;
  auVar16._4_4_ = fVar13;
  auVar16._0_4_ = fVar13;
  auVar16._8_4_ = fVar13;
  auVar16._12_4_ = fVar13;
  auVar16 = rsqrtps(in_XMM4,auVar16);
  fVar15 = auVar16._4_4_;
  fVar15 = (FLOAT_00f998f8 - fVar15 * fVar15 * fVar13) * _DAT_00f9b5b4 * fVar15 + fVar15;
  fVar14 = ((FLOAT_00f998f8 - fVar15 * fVar15 * fVar13) * _DAT_00f9b5b4 * fVar15 + fVar15) * fVar14;
  if (param_2 == 1) {
    auVar10._0_4_ = FLOAT_00fab218 * fVar14;
    auVar10._4_4_ = FLOAT_00fab218 * fVar14;
    auVar10._8_4_ = FLOAT_00fab218 * fVar14;
    auVar10._12_4_ = FLOAT_00fab218 * fVar14;
    auVar1._4_4_ = fVar14;
    auVar1._0_4_ = fVar14;
    auVar1._8_4_ = fVar14;
    auVar1._12_4_ = fVar14;
    auVar16 = maxps(auVar10,auVar1);
    if (auVar16._0_4_ < DAT_0115c484) {
      local_41 = '\0';
      goto LAB_0070f271;
    }
  }
  else {
    auVar12._0_4_ = FLOAT_00fab218 * fVar14;
    auVar12._4_4_ = FLOAT_00fab218 * fVar14;
    auVar12._8_4_ = FLOAT_00fab218 * fVar14;
    auVar12._12_4_ = FLOAT_00fab218 * fVar14;
    auVar2._4_4_ = fVar14;
    auVar2._0_4_ = fVar14;
    auVar2._8_4_ = fVar14;
    auVar2._12_4_ = fVar14;
    auVar16 = maxps(auVar12,auVar2);
    if (auVar16._0_4_ < DAT_0115c480) {
      local_41 = '\0';
      goto LAB_0070f271;
    }
    auVar11._0_4_ = FLOAT_00fab218 * fVar14;
    auVar11._4_4_ = FLOAT_00fab218 * fVar14;
    auVar11._8_4_ = FLOAT_00fab218 * fVar14;
    auVar11._12_4_ = FLOAT_00fab218 * fVar14;
    auVar3._4_4_ = fVar14;
    auVar3._0_4_ = fVar14;
    auVar3._8_4_ = fVar14;
    auVar3._12_4_ = fVar14;
    auVar16 = maxps(auVar11,auVar3);
    if (auVar16._0_4_ <= DAT_0115c47c) goto LAB_0070f271;
  }
  local_42 = '\0';
LAB_0070f271:
  FUN_0079a0e0(DAT_011d8530);
  uVar6 = DAT_011d3774;
  uVar5 = DAT_011d3770;
  uVar4 = DAT_011d376c;
  if ((*(uint *)(param_1 + 4) & 8) == 0) {
    if ((*(uint *)(param_1 + 4) & 0x10) != 0) {
      fVar15 = (*(float *)((int)this + 0x564) - *(float *)((int)this + 0x568)) *
               *(float *)(PTR_DAT_0115c488 + 0x24) + *(float *)((int)this + 0x568);
      fVar13 = *(float *)(PTR_DAT_0115c488 + 0x34);
      fVar14 = *(float *)(PTR_DAT_0115c488 + 0x38);
      fVar9 = *(float *)((int)this + 0x56c) * _DAT_011d1a20;
      *(float *)((int)this + 0x5b0) = fVar15 * *(float *)(PTR_DAT_0115c488 + 0x30);
      *(float *)((int)this + 0x5b4) = fVar15 * fVar13;
      *(float *)((int)this + 0x5b8) = fVar15 * fVar14;
      *(float *)((int)this + 0x5bc) = fVar9;
    }
  }
  else {
    *(undefined4 *)((int)this + 0x5a0) = DAT_011d376c;
    *(undefined4 *)((int)this + 0x5a4) = uVar5;
    *(undefined4 *)((int)this + 0x5a8) = uVar6;
    *(undefined4 *)((int)this + 0x5ac) = uVar4;
    fVar13 = DAT_00ffc4c0 * *(float *)((int)this + 0x5a4);
    fVar14 = DAT_00ffc4c0 * *(float *)((int)this + 0x5a8);
    fVar15 = DAT_00ffc4c0 * *(float *)((int)this + 0x5ac);
    *(float *)((int)this + 0x5a0) = DAT_00ffc4c0 * *(float *)((int)this + 0x5a0);
    *(float *)((int)this + 0x5a4) = fVar13;
    *(float *)((int)this + 0x5a8) = fVar14;
    *(float *)((int)this + 0x5ac) = fVar15;
  }
  if ((*(uint *)(param_1 + 4) & DAT_0115c478) != 0) {
    iVar17 = *(int *)(*(int *)((int)this + 0x210) + 0x70);
    if (iVar17 == 0) {
      FUN_006b2f20();
    }
    else {
      FUN_006b76e0(iVar17);
    }
    FUN_006ba040((int *)((int)this + 0x220));
    iVar17 = 1;
    this_00 = FUN_006c36b0();
    FUN_006c24f0(this_00,iVar17);
    thunk_FUN_007b6db0(*(int *)((int)this + 0x4b4) + 0x2b0);
    iVar17 = *(int *)(*(int *)((int)this + 0x4b4) + 0x2cc);
    if (*(uint *)(PTR_DAT_0115c488 + 0xb4) < *(uint *)(iVar7 + 8)) {
      piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xb4) * 0x10 + *(int *)(iVar7 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
      piVar8[3] = iVar17;
    }
    iVar17 = *(int *)(*(int *)((int)this + 0x4b4) + 0x2d4);
    if (*(uint *)(PTR_DAT_0115c488 + 0xb8) < *(uint *)(iVar7 + 8)) {
      piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xb8) * 0x10 + *(int *)(iVar7 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
      piVar8[3] = iVar17;
    }
    iVar17 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0x98);
    if (*(uint *)(PTR_DAT_0115c488 + 0x7c) < *(uint *)(iVar7 + 8)) {
      piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x7c) * 0x10 + *(int *)(iVar7 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
      piVar8[3] = iVar17;
    }
    if (*(uint *)(PTR_DAT_0115c488 + 0xa8) < *(uint *)(iVar7 + 8)) {
      piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xa8) * 0x10 + *(int *)(iVar7 + 4));
      *piVar8 = *piVar8 + 1;
      *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
      piVar8[3] = (int)this + 0x5b0;
    }
  }
  iVar17 = *(int *)((int)this + 0x4b4);
  if (*(uint *)(PTR_DAT_0115c488 + 0xac) < *(uint *)(iVar7 + 8)) {
    piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xac) * 0x10 + *(int *)(iVar7 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
    piVar8[3] = iVar17 + 0xa0;
  }
  iVar17 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0x80);
  if (*(uint *)(PTR_DAT_0115c488 + 0x74) < *(uint *)(iVar7 + 8)) {
    piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x74) * 0x10 + *(int *)(iVar7 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
    piVar8[3] = iVar17;
  }
  iVar17 = (int)this + 0x580;
  if (*(char *)(param_1 + 0x14) == '\0') {
    iVar17 = (int)this + 0x570;
  }
  if (*(uint *)(PTR_DAT_0115c488 + 0xbc) < *(uint *)(iVar7 + 8)) {
    piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xbc) * 0x10 + *(int *)(iVar7 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
    piVar8[3] = iVar17;
  }
  if (*(uint *)(PTR_DAT_0115c488 + 0xc0) < *(uint *)(iVar7 + 8)) {
    piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xc0) * 0x10 + *(int *)(iVar7 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
    piVar8[3] = (int)this + 0x590;
  }
  if (*(uint *)(PTR_DAT_0115c488 + 0xb0) < *(uint *)(iVar7 + 8)) {
    piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xb0) * 0x10 + *(int *)(iVar7 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
    piVar8[3] = (int)this + 0x4a0;
  }
  if (*(uint *)(PTR_DAT_0115c488 + 0xc4) < *(uint *)(iVar7 + 8)) {
    piVar8 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0xc4) * 0x10 + *(int *)(iVar7 + 4));
    *piVar8 = *piVar8 + 1;
    *(undefined2 *)(piVar8 + 1) = *(undefined2 *)(iVar7 + 0x12);
    piVar8[3] = (int)this + 0x5a0;
  }
  Seasons_BindTreeSnowAndTwigInputs(this,'\x01');
  if (local_42 != '\0') {
    ShaderDefinition_SelectTechniqueOrdinal
              (*(void **)((int)this + 0x4c8),*(uint *)(&DAT_0115c404 + param_2 * 4));
    ShaderDefinition_DrawSelectedTechnique
              (*(void **)((int)this + 0x4c8),&LAB_006cffc0,(int)this + 0x4cc);
  }
  if (local_41 != '\0') {
    ShaderDefinition_SelectTechniqueOrdinal
              (*(void **)((int)this + 0x504),*(uint *)(&DAT_0115c404 + param_2 * 4));
    ShaderDefinition_DrawSelectedTechnique
              (*(void **)((int)this + 0x504),&LAB_006cffc0,(int)this + 0x508);
  }
  FUN_0079a130(iVar7);
  return;
}

