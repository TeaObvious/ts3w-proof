/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01161448 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Objects::Objects_SetForward [assembly=ScriptCore token=0x0600000A; id: System.UInt64,
   forward: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.Objects::Objects_SetForward(void)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  void *pvVar5;
  void *pvVar6;
  void *pvVar7;
  float *pfVar8;
  int *piVar9;
  undefined4 uVar10;
  int *piVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
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
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined1 uStack0000000c;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  undefined4 uStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar5 = ObjectRegistry_GetGlobal();
  pvVar5 = ObjectRegistry_FindBorrowed(pvVar5,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (pvVar5 == (void *)0x0) {
    return;
  }
  pvVar6 = Object_GetComponentByMask(pvVar5,DAT_011dd484);
  if (pvVar6 == (void *)0x0) {
    pvVar6 = Object_GetComponentByMask(pvVar5,DAT_011ea158);
    if (pvVar6 != (void *)0x0) {
      TransformComponent_MarkDerivedStateDirty(pvVar6);
    }
  }
  else {
    (**(code **)(*(int *)((int)pvVar6 + 8) + 0x28))();
  }
  pvVar6 = Object_GetComponentByMask(pvVar5,DAT_011edf08);
  pvVar7 = Object_GetComponentByMask(pvVar5,DAT_011ea158);
  if (pvVar7 == (void *)0x0) goto LAB_00745b0c;
  pfVar8 = RouteVector_ExpandXYZWithXLane(&uStack0000000c,&fStack_50);
  fStack_58 = *pfVar8;
  fStack_1c = pfVar8[1];
  fStack_5c = pfVar8[2];
  fVar12 = fStack_58 * fStack_58;
  auVar17._4_4_ = fVar12;
  auVar17._0_4_ = fStack_1c * fStack_1c;
  auVar17._8_4_ = fVar12;
  auVar17._12_4_ = fVar12;
  fVar12 = fStack_5c * fStack_5c + fStack_1c * fStack_1c + fVar12;
  auVar18._4_4_ = fVar12;
  auVar18._0_4_ = fVar12;
  auVar18._8_4_ = fVar12;
  auVar18._12_4_ = fVar12;
  auVar18 = rsqrtps(auVar17,auVar18);
  fVar13 = auVar18._0_4_;
  fVar14 = auVar18._4_4_;
  fVar15 = auVar18._8_4_;
  fVar16 = auVar18._12_4_;
  fVar13 = (1.0 - fVar13 * fVar13 * fVar12) * fVar13 * 0.5 + fVar13;
  fVar14 = (1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14;
  fVar15 = (1.0 - fVar15 * fVar15 * fVar12) * fVar15 * 0.5 + fVar15;
  fVar16 = (1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16;
  fStack_58 = ((1.0 - fVar13 * fVar13 * fVar12) * fVar13 * 0.5 + fVar13) * fStack_58;
  fStack_1c = ((1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14) * fStack_1c;
  fStack_5c = ((1.0 - fVar15 * fVar15 * fVar12) * fVar15 * 0.5 + fVar15) * fStack_5c;
  fStack_14 = ((1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16) * pfVar8[3];
  fStack_40 = fStack_5c * 1.0 - fStack_1c * 0.0;
  fStack_3c = fStack_58 * 0.0 - fStack_5c * 0.0;
  fStack_38 = fStack_1c * 0.0 - fStack_58 * 1.0;
  fStack_6c = fStack_40 * fStack_40;
  auVar24._4_4_ = fStack_6c;
  auVar24._0_4_ = fStack_3c * fStack_3c;
  auVar24._8_4_ = fStack_6c;
  auVar24._12_4_ = fStack_6c;
  fStack_6c = fStack_38 * fStack_38 + fStack_3c * fStack_3c + fStack_6c;
  auVar25._4_4_ = fStack_6c;
  auVar25._0_4_ = fStack_6c;
  auVar25._8_4_ = fStack_6c;
  auVar25._12_4_ = fStack_6c;
  auVar18 = rsqrtps(auVar24,auVar25);
  fVar12 = auVar18._0_4_;
  fVar13 = auVar18._4_4_;
  fVar14 = auVar18._8_4_;
  fVar15 = auVar18._12_4_;
  fVar12 = (1.0 - fVar12 * fVar12 * fStack_6c) * fVar12 * 0.5 + fVar12;
  fVar13 = (1.0 - fVar13 * fVar13 * fStack_6c) * fVar13 * 0.5 + fVar13;
  fVar14 = (1.0 - fVar14 * fVar14 * fStack_6c) * fVar14 * 0.5 + fVar14;
  fVar15 = (1.0 - fVar15 * fVar15 * fStack_6c) * fVar15 * 0.5 + fVar15;
  fStack_40 = ((1.0 - fVar12 * fVar12 * fStack_6c) * fVar12 * 0.5 + fVar12) * fStack_40;
  fStack_3c = ((1.0 - fVar13 * fVar13 * fStack_6c) * fVar13 * 0.5 + fVar13) * fStack_3c;
  fStack_38 = ((1.0 - fVar14 * fVar14 * fStack_6c) * fVar14 * 0.5 + fVar14) * fStack_38;
  fStack_34 = ((1.0 - fVar15 * fVar15 * fStack_6c) * fVar15 * 0.5 + fVar15) *
              (fStack_58 * 0.0 - fStack_58 * 0.0);
  fStack_30 = fStack_38 * fStack_1c - fStack_3c * fStack_5c;
  fStack_2c = fStack_40 * fStack_5c - fStack_38 * fStack_58;
  fStack_28 = fStack_3c * fStack_58 - fStack_40 * fStack_1c;
  fStack_24 = fStack_40 * fStack_58 - fStack_40 * fStack_58;
  if (pvVar6 != (void *)0x0) {
    *(uint *)((int)pvVar6 + 0x2c) = *(uint *)((int)pvVar6 + 0x2c) | 0x10;
  }
  fStack_60 = fStack_2c + fStack_40 + fStack_5c;
  fStack_4c = fStack_2c + fStack_40 + fStack_5c;
  fStack_48 = fStack_2c + fStack_40 + fStack_5c;
  fStack_44 = fStack_2c + fStack_40 + fStack_5c;
  uStack_70 = 0;
  if (fStack_60 <= 0.0) {
    fStack_60 = fStack_5c;
    if ((fStack_40 <= fStack_2c) || (fStack_40 <= fStack_5c)) {
      fStack_50 = fStack_2c;
      if (fStack_2c <= fStack_5c) {
        auVar20._0_4_ = fStack_5c - (fStack_2c + fStack_40);
        auVar20._4_4_ = fStack_5c - (fStack_2c + fStack_40);
        auVar20._8_4_ = fStack_5c - (fStack_2c + fStack_40);
        auVar20._12_4_ = fStack_5c - (fStack_2c + fStack_40);
        auVar4._4_4_ = auVar20._4_4_ + 1.0;
        auVar4._0_4_ = auVar20._0_4_ + 1.0;
        auVar4._8_4_ = auVar20._8_4_ + 1.0;
        auVar4._12_4_ = auVar20._12_4_ + 1.0;
        auVar18 = sqrtps(auVar20,auVar4);
        auVar23._8_4_ = 0x3f000000;
        auVar23._0_8_ = 0x3f0000003f000000;
        auVar23._12_4_ = 0x3f000000;
        auVar25 = divps(auVar23,auVar18);
        fStack_80 = (fStack_38 + fStack_58) * auVar25._0_4_;
        fStack_7c = (fStack_28 + fStack_1c) * auVar25._4_4_;
        fStack_78 = auVar18._8_4_ * 0.5;
        fStack_74 = (fStack_3c - fStack_30) * auVar25._12_4_;
        goto LAB_00745afb;
      }
      auVar3._4_4_ = (fStack_2c - (fStack_5c + fStack_40)) + 1.0;
      auVar3._0_4_ = (fStack_2c - (fStack_5c + fStack_40)) + 1.0;
      auVar3._8_4_ = (fStack_2c - (fStack_5c + fStack_40)) + 1.0;
      auVar3._12_4_ = (fStack_2c - (fStack_5c + fStack_40)) + 1.0;
      auVar25 = sqrtps(ZEXT416((uint)fStack_2c),auVar3);
      auVar22._8_4_ = 0x3f000000;
      auVar22._0_8_ = 0x3f0000003f000000;
      auVar22._12_4_ = 0x3f000000;
      auVar18 = divps(auVar22,auVar25);
      fStack_80 = (fStack_30 + fStack_3c) * auVar18._0_4_;
      fStack_7c = auVar25._4_4_ * 0.5;
      fStack_78 = (fStack_28 + fStack_1c) * auVar18._8_4_;
      fStack_74 = (fStack_58 - fStack_38) * auVar18._12_4_;
    }
    else {
      auVar19._0_4_ = fStack_5c + fStack_2c;
      auVar19._4_4_ = fStack_5c + fStack_2c;
      auVar19._8_4_ = fStack_5c + fStack_2c;
      auVar19._12_4_ = fStack_5c + fStack_2c;
      auVar2._4_4_ = (fStack_40 - auVar19._4_4_) + 1.0;
      auVar2._0_4_ = (fStack_40 - auVar19._0_4_) + 1.0;
      auVar2._8_4_ = (fStack_40 - auVar19._8_4_) + 1.0;
      auVar2._12_4_ = (fStack_40 - auVar19._12_4_) + 1.0;
      auVar18 = sqrtps(auVar19,auVar2);
      auVar26._8_4_ = 0x3f000000;
      auVar26._0_8_ = 0x3f0000003f000000;
      auVar26._12_4_ = 0x3f000000;
      auVar25 = divps(auVar26,auVar18);
      fStack_80 = auVar18._0_4_ * 0.5;
      fStack_7c = (fStack_30 + fStack_3c) * auVar25._4_4_;
      fStack_78 = (fStack_38 + fStack_58) * auVar25._8_4_;
      fStack_74 = (fStack_28 - fStack_1c) * auVar25._12_4_;
      fStack_50 = fStack_40;
    }
  }
  else {
    auVar1._4_4_ = fStack_4c + 1.0;
    auVar1._0_4_ = fStack_60 + 1.0;
    auVar1._8_4_ = fStack_48 + 1.0;
    auVar1._12_4_ = fStack_44 + 1.0;
    auVar25 = sqrtps(ZEXT416((uint)fStack_60),auVar1);
    auVar21._8_4_ = 0x3f000000;
    auVar21._0_8_ = 0x3f0000003f000000;
    auVar21._12_4_ = 0x3f000000;
    auVar18 = divps(auVar21,auVar25);
    fStack_80 = (fStack_28 - fStack_1c) * auVar18._0_4_;
    fStack_7c = (fStack_58 - fStack_38) * auVar18._4_4_;
    fStack_78 = (fStack_3c - fStack_30) * auVar18._8_4_;
    fStack_74 = auVar25._12_4_ * 0.5;
    fStack_50 = fStack_60;
LAB_00745afb:
  }
  fStack_68 = fStack_6c;
  fStack_64 = fStack_6c;
  fStack_54 = fStack_58;
  fStack_20 = fStack_58;
  fStack_18 = fStack_5c;
  TransformComponent_SetWorldQuaternion(pvVar7,&fStack_80);
LAB_00745b0c:
  pvVar7 = Object_GetComponentByMask(pvVar5,DAT_011ea0fc);
  piVar9 = Object_GetComponentByMask(pvVar5,DAT_011ea138);
  if (((pvVar7 == (void *)0x0) &&
      (((piVar9 == (int *)0x0 || (uVar10 = FUN_009521f0((int)piVar9), (char)uVar10 == '\0')) &&
       (pvVar6 != (void *)0x0)))) &&
     ((piVar11 = (int *)FUN_0068f130((int)pvVar5), piVar11 != (int *)0x0 &&
      (pvVar6 = (void *)(**(code **)(*piVar11 + 0xc))(0x90566b0e), pvVar6 != (void *)0x0)))) {
    Lot_NotifyObjectLocationChanged(pvVar6,pvVar5);
  }
  if (piVar9 != (int *)0x0) {
    (**(code **)(*piVar9 + 0x38))();
  }
  return;
}

