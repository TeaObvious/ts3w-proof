/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical ECX baseobject, no stackarguments/plainRETvoid; inferredfastcall retained. Selected entryC1325C readsbase+884 andC1326A passes toC10350; this is the field written by callback interface+674 when interface=base+210. Full existing body retained; additional semantic review is limited to that writer/reader join. Scalar/SIMD bitcasts, palette/time/light/color/clock/skychildren, nativebounds and downstream lifetime are not certified as generic clamps or current hostmath. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00c13240(void *param_1)

{
  float fVar1;
  undefined1 auVar2 [16];
  float *this;
  undefined4 *puVar3;
  uint uVar4;
  float *pfVar5;
  void *pvVar6;
  undefined4 extraout_ECX;
  int iVar7;
  float fVar8;
  float10 fVar9;
  float10 fVar10;
  float fVar11;
  undefined4 uVar12;
  float fVar16;
  undefined4 uVar17;
  float fVar18;
  undefined4 uVar19;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  float fVar20;
  undefined4 uVar21;
  float fVar22;
  double dVar23;
  float local_70;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  this = (float *)FUN_004b3790(*(int *)(*(int *)((int)param_1 + 0x21c) + 0x74));
  FUN_00c10350(param_1,*(float *)((int)param_1 + 0x884));
  puVar3 = (undefined4 *)
           FUN_00c102e0(*(float *)((int)param_1 + 0x984),*(float *)((int)param_1 + 0x9a4));
  uVar12 = puVar3[1];
  uVar17 = puVar3[2];
  uVar19 = puVar3[3];
  *(undefined4 *)((int)param_1 + 0x6b0) = *puVar3;
  *(undefined4 *)((int)param_1 + 0x6b4) = uVar12;
  *(undefined4 *)((int)param_1 + 0x6b8) = uVar17;
  *(undefined4 *)((int)param_1 + 0x6bc) = uVar19;
  fVar22 = *(float *)((int)param_1 + 0x984);
  fVar8 = *(float *)((int)param_1 + 0x9d4);
  auVar13._0_4_ = fVar8 * -1.0;
  auVar13._4_4_ = fVar8 * -1.0;
  auVar13._8_4_ = fVar8 * -1.0;
  auVar13._12_4_ = fVar8 * -1.0;
  auVar14._4_4_ = fVar8;
  auVar14._0_4_ = fVar8;
  auVar14._8_4_ = fVar8;
  auVar14._12_4_ = fVar8;
  auVar14 = maxps(auVar13,auVar14);
  auVar15._4_4_ = -(uint)(auVar14._4_4_ <= 1.1920929e-07);
  auVar15._0_4_ = -(uint)(auVar14._0_4_ <= 1.1920929e-07);
  auVar15._8_4_ = -(uint)(auVar14._8_4_ <= 1.1920929e-07);
  auVar15._12_4_ = -(uint)(auVar14._12_4_ <= 1.1920929e-07);
  iVar7 = movmskps(extraout_ECX,auVar15);
  local_70 = fVar22;
  if (iVar7 != 0xf) {
    dVar23 = floor((double)(fVar22 / fVar8));
    local_70 = (float)dVar23 * fVar8;
    fVar1 = *(float *)((int)param_1 + 0x9d8);
    fVar22 = (fVar8 + local_70) - fVar22;
    if (fVar22 <= fVar1) {
      local_70 = ((fVar8 + local_70) - local_70) * ((fVar1 - fVar22) / fVar1) + local_70;
    }
  }
  FUN_00c102e0(local_70,*(float *)((int)param_1 + 0x9a4));
  local_20 = 0.0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  *(float *)((int)param_1 + 0x6c0) = 0.0 - *(float *)((int)param_1 + 0x6b0);
  *(float *)((int)param_1 + 0x6c4) = 0.0 - *(float *)((int)param_1 + 0x6b4);
  *(float *)((int)param_1 + 0x6c8) = 0.0 - *(float *)((int)param_1 + 0x6b8);
  *(float *)((int)param_1 + 0x6cc) = 0.0 - *(float *)((int)param_1 + 0x6bc);
  fVar9 = FUN_00c15190(this);
  fVar22 = (float)fVar9;
  fVar9 = FUN_00c14fb0((int)this);
  fVar8 = (float)((uint)(float)(fVar9 * (float10)3.0) & (int)(float)-(fVar9 * (float10)3.0) >> 0x1f)
  ;
  uVar4 = (int)(3.0 - fVar8) >> 0x1f;
  fVar8 = (float)(~uVar4 & (uint)fVar8 | uVar4 & 0x40400000);
  if (fVar22 < fVar8) {
    FUN_00c150e0(this,fVar8);
  }
  pfVar5 = FUN_00c15ff0(this,&local_30,0);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x730) = *pfVar5;
  *(float *)((int)param_1 + 0x734) = fVar1;
  *(float *)((int)param_1 + 0x738) = fVar11;
  *(float *)((int)param_1 + 0x73c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,1);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x740) = *pfVar5;
  *(float *)((int)param_1 + 0x744) = fVar1;
  *(float *)((int)param_1 + 0x748) = fVar11;
  *(float *)((int)param_1 + 0x74c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,3);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x710) = *pfVar5;
  *(float *)((int)param_1 + 0x714) = fVar1;
  *(float *)((int)param_1 + 0x718) = fVar11;
  *(float *)((int)param_1 + 0x71c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,2);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x720) = *pfVar5;
  *(float *)((int)param_1 + 0x724) = fVar1;
  *(float *)((int)param_1 + 0x728) = fVar11;
  *(float *)((int)param_1 + 0x72c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,5);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x6d0) = *pfVar5;
  *(float *)((int)param_1 + 0x6d4) = fVar1;
  *(float *)((int)param_1 + 0x6d8) = fVar11;
  *(float *)((int)param_1 + 0x6dc) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,4);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x6e0) = *pfVar5;
  *(float *)((int)param_1 + 0x6e4) = fVar1;
  *(float *)((int)param_1 + 0x6e8) = fVar11;
  *(float *)((int)param_1 + 0x6ec) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,9);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x700) = *pfVar5;
  *(float *)((int)param_1 + 0x704) = fVar1;
  *(float *)((int)param_1 + 0x708) = fVar11;
  *(float *)((int)param_1 + 0x70c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,6);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x800) = *pfVar5;
  *(float *)((int)param_1 + 0x804) = fVar1;
  *(float *)((int)param_1 + 0x808) = fVar11;
  *(float *)((int)param_1 + 0x80c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,7);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x760) = *pfVar5;
  *(float *)((int)param_1 + 0x764) = fVar1;
  *(float *)((int)param_1 + 0x768) = fVar11;
  *(float *)((int)param_1 + 0x76c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,8);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x770) = *pfVar5;
  *(float *)((int)param_1 + 0x774) = fVar1;
  *(float *)((int)param_1 + 0x778) = fVar11;
  *(float *)((int)param_1 + 0x77c) = fVar16;
  pfVar5 = FUN_00c15ff0(this,&local_30,0xb);
  fVar1 = pfVar5[1];
  fVar11 = pfVar5[2];
  fVar16 = pfVar5[3];
  *(float *)((int)param_1 + 0x790) = *pfVar5;
  *(float *)((int)param_1 + 0x794) = fVar1;
  *(float *)((int)param_1 + 0x798) = fVar11;
  *(float *)((int)param_1 + 0x79c) = fVar16;
  if (fVar22 < fVar8) {
    FUN_00c150e0(this,fVar22);
  }
  *(undefined4 *)((int)param_1 + 0x7a0) = *(undefined4 *)((int)param_1 + 0x790);
  *(undefined4 *)((int)param_1 + 0x7a4) = *(undefined4 *)((int)param_1 + 0x794);
  *(undefined4 *)((int)param_1 + 0x7a8) = *(undefined4 *)((int)param_1 + 0x798);
  *(undefined4 *)((int)param_1 + 0x7ac) = *(undefined4 *)((int)param_1 + 0x79c);
  pvVar6 = LoadPump_ReadFrameServiceGlobal();
  iVar7 = FUN_005361d0((int)pvVar6);
  if (iVar7 != 0) {
    fVar9 = FUN_0076c4a0(this);
    FUN_00c11cf0(param_1,iVar7,(float)fVar9);
  }
  fVar9 = FUN_00c14eb0(this,0);
  fVar10 = FUN_00c14eb0(this,3);
  fVar8 = (float)fVar10;
  fVar1 = *(float *)((int)param_1 + 0x6b4);
  fVar11 = ((-0.0 - fVar1) - 0.15) * 4.0 * (float)fVar9;
  fVar11 = (float)((uint)fVar11 & (int)(-0.0 - fVar11) >> 0x1f);
  uVar4 = (int)(1.0 - fVar11) >> 0x1f;
  *(uint *)((int)param_1 + 0x830) = ~uVar4 & (uint)fVar11 | uVar4 & (uint)1.0;
  *(undefined4 *)((int)param_1 + 0x834) = *(undefined4 *)((int)param_1 + 0x834);
  *(undefined4 *)((int)param_1 + 0x838) = *(undefined4 *)((int)param_1 + 0x838);
  *(undefined4 *)((int)param_1 + 0x83c) = *(undefined4 *)((int)param_1 + 0x83c);
  fVar11 = (float)((uint)(0.6 - fVar1) & (int)(-0.0 - (0.6 - fVar1)) >> 0x1f);
  uVar4 = (int)(1.0 - fVar11) >> 0x1f;
  fVar11 = (float)(~uVar4 & (uint)fVar11 | uVar4 & (uint)1.0) + 0.2;
  fVar11 = (float)((uint)fVar11 & (int)(-0.0 - fVar11) >> 0x1f);
  uVar4 = (int)(1.0 - fVar11) >> 0x1f;
  *(undefined4 *)((int)param_1 + 0x830) = *(undefined4 *)((int)param_1 + 0x830);
  *(float *)((int)param_1 + 0x834) =
       (float)(~uVar4 & (uint)fVar11 | uVar4 & (uint)1.0) * (float)fVar9;
  *(undefined4 *)((int)param_1 + 0x838) = *(undefined4 *)((int)param_1 + 0x838);
  *(undefined4 *)((int)param_1 + 0x83c) = *(undefined4 *)((int)param_1 + 0x83c);
  fVar11 = (fVar1 - _DAT_01184f6c) * _DAT_01184f68 * fVar8;
  fVar11 = (float)((uint)fVar11 & (int)(-0.0 - fVar11) >> 0x1f);
  uVar4 = (int)(fVar8 - fVar11) >> 0x1f;
  *(undefined4 *)((int)param_1 + 0x830) = *(undefined4 *)((int)param_1 + 0x830);
  *(undefined4 *)((int)param_1 + 0x834) = *(undefined4 *)((int)param_1 + 0x834);
  *(uint *)((int)param_1 + 0x838) = ~uVar4 & (uint)fVar11 | (uint)fVar8 & uVar4;
  *(undefined4 *)((int)param_1 + 0x83c) = *(undefined4 *)((int)param_1 + 0x83c);
  fStack_24 = *(float *)((int)param_1 + 0x9b4);
  fStack_2c = fStack_24 * fStack_5c;
  fStack_28 = fStack_24 * fStack_58;
  fStack_24 = fStack_24 * 0.0;
  local_30 = *(float *)((int)param_1 + 0x9b8);
  if (fStack_2c < local_30) {
    fStack_2c = local_30;
    fStack_28 = local_30;
    fStack_24 = local_30;
  }
  fVar11 = fStack_2c * fStack_2c + 0.0 + fStack_58 * fStack_58 + local_60 * local_60;
  auVar2._4_4_ = fVar11;
  auVar2._0_4_ = fVar11;
  auVar2._8_4_ = fVar11;
  auVar2._12_4_ = fVar11;
  auVar14 = rsqrtps(ZEXT416((uint)fVar8),auVar2);
  fVar8 = auVar14._0_4_;
  fVar16 = auVar14._4_4_;
  fVar18 = auVar14._8_4_;
  fVar20 = auVar14._12_4_;
  fVar8 = (1.0 - fVar8 * fVar8 * fVar11) * fVar8 * 0.5 + fVar8;
  fVar16 = (1.0 - fVar16 * fVar16 * fVar11) * fVar16 * 0.5 + fVar16;
  fVar18 = (1.0 - fVar18 * fVar18 * fVar11) * fVar18 * 0.5 + fVar18;
  fVar20 = (1.0 - fVar20 * fVar20 * fVar11) * fVar20 * 0.5 + fVar20;
  fVar8 = ((1.0 - fVar8 * fVar8 * fVar11) * fVar8 * 0.5 + fVar8) * local_60;
  fVar16 = ((1.0 - fVar16 * fVar16 * fVar11) * fVar16 * 0.5 + fVar16) * fStack_2c;
  fVar18 = ((1.0 - fVar18 * fVar18 * fVar11) * fVar18 * 0.5 + fVar18) * fStack_58;
  fVar11 = ((1.0 - fVar20 * fVar20 * fVar11) * fVar20 * 0.5 + fVar20) * 0.0;
  pvVar6 = (void *)FUN_0071abf0();
  iVar7 = FUN_006faa90((int)param_1);
  if (iVar7 == 0) {
    fVar20 = 0.0;
  }
  else {
    fVar9 = FUN_006e8740(iVar7);
    fVar20 = (float)(fVar9 * (float10)0.00027777778);
  }
  if ((*(float *)((int)param_1 + 0x990) + *(float *)((int)param_1 + 0x9d0) +
       *(float *)((int)param_1 + 0x9c0) + *(float *)((int)param_1 + 0x978) < fVar20) ||
     (fVar20 < (*(float *)((int)param_1 + 0x974) + *(float *)((int)param_1 + 0x9c4)) -
               *(float *)((int)param_1 + 0x9d0))) {
    *(float *)((int)param_1 + 0x7f0) = fVar8;
    *(float *)((int)param_1 + 0x7f4) = fVar16;
    *(float *)((int)param_1 + 0x7f8) = fVar18;
    *(float *)((int)param_1 + 0x7fc) = fVar11;
    *(float *)((int)param_1 + 0x7f0) = local_20 - *(float *)((int)param_1 + 0x7f0);
    *(undefined4 *)((int)param_1 + 0x7f4) = *(undefined4 *)((int)param_1 + 0x7f4);
    *(undefined4 *)((int)param_1 + 0x7f8) = *(undefined4 *)((int)param_1 + 0x7f8);
    *(undefined4 *)((int)param_1 + 0x7fc) = *(undefined4 *)((int)param_1 + 0x7fc);
    uVar12 = *(undefined4 *)((int)param_1 + 0x6c0);
    uVar17 = *(undefined4 *)((int)param_1 + 0x6c4);
    uVar19 = *(undefined4 *)((int)param_1 + 0x6c8);
    uVar21 = *(undefined4 *)((int)param_1 + 0x6cc);
  }
  else {
    *(float *)((int)param_1 + 0x7f0) = fVar8;
    *(float *)((int)param_1 + 0x7f4) = fVar16;
    *(float *)((int)param_1 + 0x7f8) = fVar18;
    *(float *)((int)param_1 + 0x7fc) = fVar11;
    uVar12 = *(undefined4 *)((int)param_1 + 0x6b0);
    uVar17 = *(undefined4 *)((int)param_1 + 0x6b4);
    uVar19 = *(undefined4 *)((int)param_1 + 0x6b8);
    uVar21 = *(undefined4 *)((int)param_1 + 0x6bc);
  }
  *(undefined4 *)((int)param_1 + 0x820) = uVar12;
  *(undefined4 *)((int)param_1 + 0x824) = uVar17;
  *(undefined4 *)((int)param_1 + 0x828) = uVar19;
  *(undefined4 *)((int)param_1 + 0x82c) = uVar21;
  fVar8 = fVar1 * _DAT_01184f64 + _DAT_01184f60;
  fVar8 = (float)((uint)fVar8 & (int)(-0.0 - fVar8) >> 0x1f);
  uVar4 = (int)(1.0 - fVar8) >> 0x1f;
  fVar8 = (float)(~uVar4 & (uint)fVar8 | uVar4 & 0x3f800000);
  fVar9 = FUN_00c14fb0((int)this);
  uVar4 = (int)((float)fVar9 - (fVar22 - 1.5)) >> 0x1f;
  fVar22 = (float)(~uVar4 & (uint)(float)fVar9 | (uint)(fVar22 - 1.5) & uVar4);
  fVar22 = (float)((uint)fVar22 & (int)(-0.0 - fVar22) >> 0x1f);
  uVar4 = (int)(1.0 - fVar22) >> 0x1f;
  fVar22 = (float)(~uVar4 & (uint)fVar22 | uVar4 & 0x3f800000);
  FUN_00914620(pvVar6,fVar8,1.0 - fVar8,1.0 - fVar22,fVar22);
  iVar7 = FUN_006faa90((int)param_1);
  if (iVar7 == 0) {
    fVar22 = 0.0;
  }
  else {
    fVar9 = FUN_006e8740(iVar7);
    fVar22 = (float)(fVar9 * (float10)0.00027777778);
  }
  if ((*(char *)((int)param_1 + 0x98d) == '\0') && (fVar22 == 0.0)) {
    return;
  }
  fVar8 = *(float *)((int)param_1 + 0x974) + *(float *)((int)param_1 + 0x9c4);
  fVar22 = fVar22 - fVar8;
  fVar8 = (*(float *)((int)param_1 + 0x9c0) + *(float *)((int)param_1 + 0x978)) - fVar8;
  if (fVar22 < 0.0) {
    fVar22 = fVar22 + 24.0;
  }
  if (fVar8 <= fVar22) {
    local_70 = ((fVar22 - fVar8) / (24.0 - fVar8)) * 12.0 + 18.0;
    if (24.0 < local_70) {
      local_70 = local_70 - 24.0;
    }
  }
  else {
    local_70 = (fVar22 / fVar8) * 12.0 + 6.0;
  }
  fVar22 = *(float *)((int)param_1 + 0x9dc);
  if (*(char *)((int)param_1 + 0x98d) == '\0') {
    FUN_00c154c0(this,local_70,fVar22);
    *(undefined1 *)((int)param_1 + 0x98d) = 1;
    *(float *)((int)param_1 + 0x888) = local_70;
    return;
  }
  if (((int)((1.0 / fVar22) * local_70) != (int)((1.0 / fVar22) * *(float *)((int)param_1 + 0x888)))
     && (ABS(local_70 - *(float *)((int)param_1 + 0x888)) < 1.0)) {
    FUN_00c15460(this,local_70,fVar22,-1.0);
    *(float *)((int)param_1 + 0x888) = local_70;
    return;
  }
  *(float *)((int)param_1 + 0x888) = local_70;
  return;
}
