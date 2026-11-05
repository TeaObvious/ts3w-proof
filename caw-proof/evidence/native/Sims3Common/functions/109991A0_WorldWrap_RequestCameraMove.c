/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_RequestCameraMove. Export ordinal(s):
   2691. Entry VA: 0x109991a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000503. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_RequestCameraMove(float *param_1,float param_2)

{
  void *this;
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  int iVar8;
  int *piVar9;
  int *piVar10;
  float10 fVar11;
  float fVar12;
  float fVar13;
  float fVar16;
  float fVar17;
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  float fVar18;
  float fVar24;
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  float fVar25;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  float fVar26;
  float fVar28;
  float fVar29;
  undefined1 auVar27 [16];
  undefined1 auVar30 [16];
  float fStack_104;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined1 local_b0 [8];
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  
                    /* 0x9991a0  2691  WorldWrap_RequestCameraMove */
  iVar8 = FUN_1075c630();
  iVar8 = FUN_10937a80(iVar8);
  if (iVar8 != 0) {
    piVar9 = (int *)FUN_1075c950(iVar8);
    if ((piVar9 != (int *)0x0) && (this = (void *)piVar9[3], this != (void *)0x0)) {
      FUN_10753fe0(this,(int)&local_90);
      fVar13 = *(float *)((int)this + 0x60);
      fVar12 = *(float *)((int)this + 100);
      fVar16 = *(float *)((int)this + 0x68);
      fVar17 = *(float *)((int)this + 0x6c);
      auVar19._0_4_ =
           (fStack_88 - fStack_68) * (fStack_88 - fStack_68) +
           (fStack_8c - fStack_6c) * (fStack_8c - fStack_6c) +
           (local_90 - local_70) * (local_90 - local_70);
      auVar27._0_4_ =
           (fStack_88 - fStack_48) * (fStack_88 - fStack_48) +
           (fStack_8c - fStack_4c) * (fStack_8c - fStack_4c) +
           (local_90 - local_50) * (local_90 - local_50);
      auVar19._4_4_ = auVar19._0_4_;
      auVar19._8_4_ = auVar19._0_4_;
      auVar19._12_4_ = auVar19._0_4_;
      auVar27._4_4_ = auVar27._0_4_;
      auVar27._8_4_ = auVar27._0_4_;
      auVar27._12_4_ = auVar27._0_4_;
      auVar19 = sqrtps(auVar19,auVar19);
      auVar27 = sqrtps(auVar27,auVar27);
      local_a0 = auVar19._0_4_;
      local_90 = local_90 - fVar13;
      fStack_8c = fStack_8c - fVar12;
      fStack_88 = fStack_88 - fVar16;
      if (auVar27._0_4_ < local_a0) {
        auVar30._0_4_ = local_50 - fVar13;
        auVar30._4_4_ = fStack_4c - fVar12;
        auVar30._8_4_ = fStack_48 - fVar16;
        auVar30._12_4_ = fStack_44 - fVar17;
        fVar13 = fStack_88 * fStack_88 + fStack_8c * fStack_8c + local_90 * local_90;
        auVar5._4_4_ = fVar13;
        auVar5._0_4_ = fVar13;
        auVar5._8_4_ = fVar13;
        auVar5._12_4_ = fVar13;
        auVar19 = rsqrtps(auVar27,auVar5);
        fVar18 = auVar19._0_4_;
        fVar26 = auVar19._4_4_;
        fVar28 = auVar19._8_4_;
        auVar22._0_4_ = auVar30._0_4_ * auVar30._0_4_;
        auVar22._4_4_ = auVar30._4_4_ * auVar30._4_4_;
        auVar22._8_4_ = auVar30._8_4_ * auVar30._8_4_;
        auVar22._12_4_ = auVar30._12_4_ * auVar30._12_4_;
        auVar15._0_4_ = auVar22._8_4_ + auVar22._4_4_ + auVar22._0_4_;
        auVar15._4_4_ = auVar15._0_4_;
        auVar15._8_4_ = auVar15._0_4_;
        auVar15._12_4_ = auVar15._0_4_;
        auVar19 = rsqrtps(auVar22,auVar15);
        fVar12 = auVar19._0_4_;
        fVar16 = auVar19._4_4_;
        fVar17 = auVar19._8_4_;
        local_c0 = _DAT_10b310ec;
        fStack_bc = _DAT_10b310ec;
        fStack_b8 = _DAT_10b310ec;
        fStack_b4 = _DAT_10b310ec;
        fVar13 = ((DAT_10acb0d4 - fVar28 * fVar28 * fVar13) * fVar28 * _DAT_10b310ec + fVar28) *
                 fStack_88 *
                 ((DAT_10acb0d4 - fVar17 * fVar17 * auVar15._0_4_) * fVar17 * _DAT_10b310ec + fVar17
                 ) * auVar30._8_4_ +
                 ((DAT_10acb0d4 - fVar26 * fVar26 * fVar13) * fVar26 * _DAT_10b310ec + fVar26) *
                 fStack_8c *
                 ((DAT_10acb0d4 - fVar16 * fVar16 * auVar15._0_4_) * fVar16 * _DAT_10b310ec + fVar16
                 ) * auVar30._4_4_ +
                 ((DAT_10acb0d4 - fVar18 * fVar18 * fVar13) * fVar18 * _DAT_10b310ec + fVar18) *
                 local_90 *
                 ((DAT_10acb0d4 - fVar12 * fVar12 * auVar15._0_4_) * fVar12 * _DAT_10b310ec + fVar12
                 ) * auVar30._0_4_;
        auVar23._4_4_ = fVar13;
        auVar23._0_4_ = fVar13;
        auVar23._8_4_ = fVar13;
        auVar23._12_4_ = fVar13;
        auVar6._4_4_ = DAT_10aae184;
        auVar6._0_4_ = DAT_10aae184;
        auVar6._8_4_ = DAT_10aae184;
        auVar6._12_4_ = DAT_10aae184;
        auVar19 = maxps(auVar23,auVar6);
        auVar7._4_4_ = DAT_10acb0d4;
        auVar7._0_4_ = DAT_10acb0d4;
        auVar7._8_4_ = DAT_10acb0d4;
        auVar7._12_4_ = DAT_10acb0d4;
        minps(auVar19,auVar7);
        local_b0._4_4_ = DAT_10acb0d4;
        local_b0._0_4_ = DAT_10acb0d4;
        fStack_a8 = DAT_10acb0d4;
        fStack_a4 = DAT_10acb0d4;
        fVar11 = (float10)_CIacos();
      }
      else {
        local_70 = local_70 - fVar13;
        fStack_6c = fStack_6c - fVar12;
        fStack_68 = fStack_68 - fVar16;
        fVar13 = local_70 * local_70;
        auVar20._4_4_ = fVar13;
        auVar20._0_4_ = fStack_6c * fStack_6c;
        auVar20._8_4_ = fVar13;
        auVar20._12_4_ = fVar13;
        fVar13 = fStack_68 * fStack_68 + fStack_6c * fStack_6c + fVar13;
        auVar1._4_4_ = fVar13;
        auVar1._0_4_ = fVar13;
        auVar1._8_4_ = fVar13;
        auVar1._12_4_ = fVar13;
        auVar27 = rsqrtps(auVar20,auVar1);
        auVar14._0_4_ = local_90 * local_90;
        auVar14._4_4_ = fStack_8c * fStack_8c;
        auVar14._8_4_ = fStack_88 * fStack_88;
        auVar14._12_4_ = (fStack_84 - fVar17) * (fStack_84 - fVar17);
        fVar12 = auVar14._8_4_ + auVar14._4_4_ + auVar14._0_4_;
        auVar2._4_4_ = fVar12;
        auVar2._0_4_ = fVar12;
        auVar2._8_4_ = fVar12;
        auVar2._12_4_ = fVar12;
        auVar19 = rsqrtps(auVar14,auVar2);
        fVar16 = auVar19._0_4_;
        fVar18 = auVar19._4_4_;
        fVar26 = auVar19._8_4_;
        local_b0._4_4_ = DAT_10acb0d4;
        local_b0._0_4_ = DAT_10acb0d4;
        fStack_a8 = DAT_10acb0d4;
        fStack_a4 = DAT_10acb0d4;
        fVar28 = auVar27._0_4_;
        fVar29 = auVar27._4_4_;
        fVar24 = auVar27._8_4_;
        fVar25 = auVar27._12_4_;
        auVar30._0_4_ =
             ((DAT_10acb0d4 - fVar28 * fVar28 * fVar13) * fVar28 * _DAT_10b310ec + fVar28) *
             local_70;
        auVar30._4_4_ =
             ((DAT_10acb0d4 - fVar29 * fVar29 * fVar13) * fVar29 * _DAT_10b310ec + fVar29) *
             fStack_6c;
        auVar30._8_4_ =
             ((DAT_10acb0d4 - fVar24 * fVar24 * fVar13) * fVar24 * _DAT_10b310ec + fVar24) *
             fStack_68;
        auVar30._12_4_ =
             ((DAT_10acb0d4 - fVar25 * fVar25 * fVar13) * fVar25 * _DAT_10b310ec + fVar25) *
             (fStack_64 - fVar17);
        fVar13 = ((DAT_10acb0d4 - fVar26 * fVar26 * fVar12) * fVar26 * _DAT_10b310ec + fVar26) *
                 fStack_88 * auVar30._8_4_ +
                 ((DAT_10acb0d4 - fVar18 * fVar18 * fVar12) * fVar18 * _DAT_10b310ec + fVar18) *
                 fStack_8c * auVar30._4_4_ +
                 ((DAT_10acb0d4 - fVar16 * fVar16 * fVar12) * fVar16 * _DAT_10b310ec + fVar16) *
                 local_90 * auVar30._0_4_;
        auVar21._4_4_ = fVar13;
        auVar21._0_4_ = fVar13;
        auVar21._8_4_ = fVar13;
        auVar21._12_4_ = fVar13;
        auVar3._4_4_ = DAT_10aae184;
        auVar3._0_4_ = DAT_10aae184;
        auVar3._8_4_ = DAT_10aae184;
        auVar3._12_4_ = DAT_10aae184;
        auVar19 = maxps(auVar21,auVar3);
        minps(auVar19,_local_b0);
        local_c0 = _DAT_10b310ec;
        fStack_bc = _DAT_10b310ec;
        fStack_b8 = _DAT_10b310ec;
        fStack_b4 = _DAT_10b310ec;
        fVar11 = (float10)_CIacos();
      }
      fVar11 = (float10)fsin((float10)((float)fVar11 * _DAT_10b310ec));
      fStack_104 = param_2 / (float)fVar11;
      if (*(float *)((int)this + 0x1c) <= fStack_104) {
        if (*(float *)((int)this + 0x20) < fStack_104) {
          fStack_104 = *(float *)((int)this + 0x20) - param_2;
        }
      }
      else {
        fStack_104 = *(float *)((int)this + 0x1c) + param_2;
      }
      fStack_e8 = param_1[2];
      fStack_e4 = *param_1;
      fStack_dc = param_1[1];
      fVar26 = 0.0 - *(float *)((int)this + 0x50);
      fVar28 = 0.0 - *(float *)((int)this + 0x54);
      fVar29 = 0.0 - *(float *)((int)this + 0x58);
      fVar13 = fVar29 * fVar29 + fVar28 * fVar28 + fVar26 * fVar26;
      auVar4._4_4_ = fVar13;
      auVar4._0_4_ = fVar13;
      auVar4._8_4_ = fVar13;
      auVar4._12_4_ = fVar13;
      auVar19 = rsqrtps(auVar30,auVar4);
      fVar12 = auVar19._0_4_;
      fVar16 = auVar19._4_4_;
      fVar17 = auVar19._8_4_;
      fVar18 = auVar19._12_4_;
      fVar12 = ((float)local_b0._0_4_ - fVar12 * fVar12 * fVar13) * fVar12 * local_c0 + fVar12;
      fVar16 = ((float)local_b0._4_4_ - fVar16 * fVar16 * fVar13) * fVar16 * fStack_bc + fVar16;
      fVar17 = (fStack_a8 - fVar17 * fVar17 * fVar13) * fVar17 * fStack_b8 + fVar17;
      fVar18 = (fStack_a4 - fVar18 * fVar18 * fVar13) * fVar18 * fStack_b4 + fVar18;
      fStack_d0 = fStack_e4 -
                  (((float)local_b0._0_4_ - fVar12 * fVar12 * fVar13) * fVar12 * local_c0 + fVar12)
                  * fVar26 * fStack_104;
      fStack_cc = fStack_dc -
                  (((float)local_b0._4_4_ - fVar16 * fVar16 * fVar13) * fVar16 * fStack_bc + fVar16)
                  * fVar28 * fStack_104;
      fStack_c8 = fStack_e8 -
                  ((fStack_a8 - fVar17 * fVar17 * fVar13) * fVar17 * fStack_b8 + fVar17) * fVar29 *
                  fStack_104;
      fStack_c4 = fStack_e4 -
                  ((fStack_a4 - fVar18 * fVar18 * fVar13) * fVar18 * fStack_b4 + fVar18) *
                  (0.0 - *(float *)((int)this + 0x5c)) * fStack_104;
      fStack_e0 = fStack_e4;
      fStack_d8 = fStack_e8;
      fStack_d4 = fStack_e4;
      piVar10 = (int *)(**(code **)(*piVar9 + 0xc))(0x4d394edb);
      piVar9 = (int *)(**(code **)(*piVar9 + 0xc))(0x14bc619b);
      if (piVar10 != (int *)0x0) {
        (**(code **)(*piVar10 + 0x2c))(&fStack_d8,&fStack_e8);
        return 1;
      }
      if (piVar9 != (int *)0x0) {
        (**(code **)(*piVar9 + 0x2c))(&fStack_d8,&fStack_e8);
        return 1;
      }
    }
  }
  return 0;
}

