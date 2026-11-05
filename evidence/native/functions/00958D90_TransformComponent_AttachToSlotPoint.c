/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst original PC1.67 instruction contract. ECX child Transform plus seven physical stack
   words/RET1Ch. Performs original parent/point/occupancy/pose admission and linking. Same-point
   early success occurs before957790. Actual parent Slots component is saved at local stack+18h and
   passed at95959A after pose notification; inferred final C NULL operand is not the physical call.
   Flags, callbacks, partial effects and original SIMD/x87 order are retained; no prototype change.
    */

undefined4 __thiscall
TransformComponent_AttachToSlotPoint
          (void *this,void *param_1,int *param_2,float *param_3,char param_4,char param_5,
          char param_6,char param_7)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  char cVar12;
  void *pvVar13;
  int iVar14;
  undefined4 uVar15;
  void *pvVar16;
  int iVar17;
  int *piVar18;
  float fVar19;
  float fVar20;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  float fVar25;
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  float fVar37;
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  void *pvStack_70;
  void *local_68;
  undefined4 uStack_64;
  float local_60;
  undefined4 uStack_5c;
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
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  
  if (param_1 == (void *)0x0) {
    return 0x7d1;
  }
  if (param_2 == (int *)0x0) {
    return 0x7d2;
  }
  local_68 = Object_GetComponentByMask(param_1,DAT_011ea114);
  if (local_68 == (void *)0x0) {
    return 3;
  }
  piVar18 = (int *)0x0;
  if (*(void **)((int)this + 0x30) == (void *)0x0) {
    pvVar13 = (void *)0x0;
  }
  else {
    pvVar13 = Object_GetComponentByMask(*(void **)((int)this + 0x30),DAT_011ea114);
    if (pvVar13 != (void *)0x0) {
      piVar18 = (int *)SlotsComponent_FindChildSlotBinding
                                 (pvVar13,*(int *)((int)this + 4),(undefined1 *)0x0);
    }
  }
  if (param_2 == piVar18) {
    if (param_3 == (float *)0x0) {
      return 1;
    }
    if (param_7 != '\0') {
      return 1;
    }
    fVar6 = *param_3;
    fVar37 = param_3[1];
    fVar7 = param_3[2];
    fVar8 = param_3[4];
    local_40 = param_3[5];
    fVar9 = param_3[6];
    fVar10 = param_3[8];
    fVar11 = param_3[9];
    local_50 = param_3[10];
    auVar26._4_4_ = fVar6;
    auVar26._0_4_ = fVar6;
    auVar26._8_4_ = fVar6;
    auVar26._12_4_ = fVar6;
    auVar23._4_4_ = local_40;
    auVar23._0_4_ = local_40;
    auVar23._8_4_ = local_40;
    auVar23._12_4_ = local_40;
    local_30 = fVar6 + local_40;
    fStack_2c = fVar6 + local_40;
    fStack_28 = fVar6 + local_40;
    fStack_24 = fVar6 + local_40;
    local_60 = local_50 + local_30;
    fStack_3c = local_50 + fStack_2c;
    fStack_38 = local_50 + fStack_28;
    fStack_34 = local_50 + fStack_24;
    if (local_60 <= 0.0) {
      if ((fVar6 <= local_40) || (fVar6 <= local_50)) {
        if (local_40 <= local_50) {
          auVar24._0_4_ = (local_50 - local_30) + 1.0;
          auVar24._4_4_ = (local_50 - fStack_2c) + 1.0;
          auVar24._8_4_ = (local_50 - fStack_28) + 1.0;
          auVar24._12_4_ = (local_50 - fStack_24) + 1.0;
          auVar28 = sqrtps(auVar26,auVar24);
          auVar34._8_4_ = 0x3f000000;
          auVar34._0_8_ = 0x3f0000003f000000;
          auVar34._12_4_ = 0x3f000000;
          auVar32 = divps(auVar34,auVar28);
          fVar19 = (fVar7 + fVar10) * auVar32._0_4_;
          fVar25 = (fVar11 + fVar9) * auVar32._4_4_;
          fVar20 = auVar28._8_4_ * 0.5;
          fVar37 = (fVar37 - fVar8) * auVar32._12_4_;
        }
        else {
          auVar3._4_4_ = (local_40 - (local_50 + fVar6)) + 1.0;
          auVar3._0_4_ = (local_40 - (local_50 + fVar6)) + 1.0;
          auVar3._8_4_ = (local_40 - (local_50 + fVar6)) + 1.0;
          auVar3._12_4_ = (local_40 - (local_50 + fVar6)) + 1.0;
          auVar32 = sqrtps(ZEXT416((uint)local_40),auVar3);
          auVar29._8_4_ = 0x3f000000;
          auVar29._0_8_ = 0x3f0000003f000000;
          auVar29._12_4_ = 0x3f000000;
          auVar28 = divps(auVar29,auVar32);
          fVar19 = (fVar37 + fVar8) * auVar28._0_4_;
          fVar25 = auVar32._4_4_ * 0.5;
          fVar20 = (fVar11 + fVar9) * auVar28._8_4_;
          fVar37 = (fVar10 - fVar7) * auVar28._12_4_;
        }
      }
      else {
        auVar2._4_4_ = (fVar6 - (local_50 + local_40)) + 1.0;
        auVar2._0_4_ = (fVar6 - (local_50 + local_40)) + 1.0;
        auVar2._8_4_ = (fVar6 - (local_50 + local_40)) + 1.0;
        auVar2._12_4_ = (fVar6 - (local_50 + local_40)) + 1.0;
        auVar28 = sqrtps(auVar23,auVar2);
        auVar33._8_4_ = 0x3f000000;
        auVar33._0_8_ = 0x3f0000003f000000;
        auVar33._12_4_ = 0x3f000000;
        auVar32 = divps(auVar33,auVar28);
        fVar19 = auVar28._0_4_ * 0.5;
        fVar25 = (fVar37 + fVar8) * auVar32._4_4_;
        fVar20 = (fVar7 + fVar10) * auVar32._8_4_;
        fVar37 = (fVar9 - fVar11) * auVar32._12_4_;
        local_40 = fVar6;
      }
    }
    else {
      auVar1._4_4_ = fStack_3c + 1.0;
      auVar1._0_4_ = local_60 + 1.0;
      auVar1._8_4_ = fStack_38 + 1.0;
      auVar1._12_4_ = fStack_34 + 1.0;
      auVar32 = sqrtps(ZEXT416((uint)local_60),auVar1);
      auVar27._8_4_ = 0x3f000000;
      auVar27._0_8_ = 0x3f0000003f000000;
      auVar27._12_4_ = 0x3f000000;
      auVar28 = divps(auVar27,auVar32);
      fVar19 = (fVar9 - fVar11) * auVar28._0_4_;
      fVar25 = (fVar10 - fVar7) * auVar28._4_4_;
      fVar20 = (fVar37 - fVar8) * auVar28._8_4_;
      fVar37 = auVar32._12_4_ * 0.5;
      local_50 = 0.0;
      local_40 = local_60;
    }
    fVar6 = param_3[0xc];
    fVar7 = param_3[0xd];
    fVar8 = param_3[0xe];
    fVar9 = param_3[0xf];
    *(float *)((int)this + 0x10) = fVar19;
    *(float *)((int)this + 0x14) = fVar25;
    *(float *)((int)this + 0x18) = fVar20;
    *(float *)((int)this + 0x1c) = fVar37;
    *(float *)((int)this + 0x20) = fVar6;
    *(float *)((int)this + 0x24) = fVar7;
    *(float *)((int)this + 0x28) = fVar8;
    *(float *)((int)this + 0x2c) = fVar9;
    TransformComponent_NotifyPoseChanged(this);
    return 1;
  }
  if ((param_6 == '\0') && ((*(byte *)(param_2 + 2) & 2) != 0)) {
    return 4;
  }
  iVar14 = (**(code **)(*param_2 + 8))(3);
  if (iVar14 != 0) {
    pvStack_70 = (void *)(**(code **)(*param_2 + 8))(3);
  }
  if (param_5 != '\0') {
    if (pvStack_70 == (void *)0x0) {
      return 5;
    }
    if (*(int *)((int)pvStack_70 + 0x1c) != 0) {
      return 6;
    }
    cVar12 = FUN_009f0890();
    if (cVar12 == '\0') {
      return 6;
    }
  }
  if ((param_4 != '\0') && (uVar15 = FUN_009508f0((void *)0x0,(int)param_2), (char)uVar15 == '\0'))
  {
    return 0x7d3;
  }
  pvVar16 = param_1;
  do {
    if (pvVar16 == *(void **)((int)this + 4)) {
      return 7;
    }
    if ((pvVar16 == (void *)0x0) ||
       (pvVar16 = Object_GetComponentByMask(pvVar16,DAT_011ea158), pvVar16 == (void *)0x0)) {
      pvVar16 = (void *)0x0;
    }
    else {
      pvVar16 = *(void **)((int)pvVar16 + 0x30);
    }
  } while (pvVar16 != (void *)0x0);
  if (param_7 != '\0') {
    return 0;
  }
  if (piVar18 != (int *)0x0) {
    local_68 = pvVar16;
    SlotComponent_RemoveChildPointBinding(pvVar13,*(int *)((int)this + 4),(int *)&local_68);
    iVar14 = (**(code **)(*piVar18 + 8))(3);
    if ((iVar14 != 0) &&
       (pvVar13 = (void *)(**(code **)(*piVar18 + 8))(3),
       *(int *)((int)pvVar13 + 0x1c) == *(int *)((int)this + 4))) {
      FUN_0080d740(pvVar13,(void *)0x0);
    }
  }
  iVar14 = FUN_0055e030(*(void **)((int)this + 4));
  if (iVar14 != 0) {
    (**(code **)(*(int *)(iVar14 + 8) + 0x28))();
  }
  TransformComponent_MarkDerivedStateDirty(this);
  *(void **)((int)this + 0x30) = param_1;
  iVar17 = FUN_0055e030(param_1);
  if (((iVar14 != 0) && (iVar17 != 0)) && ((~(byte)(*(uint *)(iVar14 + 0x2c) >> 0x11) & 1) != 0)) {
    (**(code **)(*(int *)(iVar17 + 8) + 0x28))();
  }
  FUN_00951ae0((void *)0x0,*(int *)((int)this + 4),(int)param_2,param_6);
  ObjectEvents_Dispatch(0x21,*(void **)((int)this + 4),*(void **)((int)this + 0x30));
  FUN_00958b10(this,param_6,param_2,param_1);
  if (param_5 != '\0') {
    FUN_0080d740(pvStack_70,*(void **)((int)this + 4));
  }
  if (param_3 == (float *)0x0) {
    fStack_58 = 1.0;
    uStack_5c = 0;
    local_60 = 0.0;
    uStack_64 = 0;
    fStack_34 = 0.0;
    local_30 = 0.0;
    fStack_2c = 0.0;
    fStack_28 = 1.0;
    fStack_24 = 0.0;
    fStack_20 = 0.0;
    fStack_1c = 0.0;
    fStack_18 = 0.0;
  }
  else {
    fVar6 = *param_3;
    fVar37 = param_3[1];
    fVar7 = param_3[2];
    fVar8 = param_3[4];
    fVar9 = param_3[5];
    fVar10 = param_3[6];
    fVar11 = param_3[8];
    fVar19 = param_3[9];
    fStack_44 = param_3[10];
    auVar28._4_4_ = fVar9;
    auVar28._0_4_ = fVar9;
    auVar28._8_4_ = fVar9;
    auVar28._12_4_ = fVar9;
    fStack_54 = fVar6 + fVar9 + fStack_44;
    local_50 = fVar6 + fVar9 + fStack_44;
    fStack_4c = fVar6 + fVar9 + fStack_44;
    fStack_48 = fVar6 + fVar9 + fStack_44;
    if (fStack_54 <= 0.0) {
      if ((fVar6 <= fVar9) || (fVar6 <= fStack_44)) {
        if (fVar9 <= fStack_44) {
          auVar22._0_4_ = (fStack_44 - (fVar6 + fVar9)) + 1.0;
          auVar22._4_4_ = (fStack_44 - (fVar6 + fVar9)) + 1.0;
          auVar22._8_4_ = (fStack_44 - (fVar6 + fVar9)) + 1.0;
          auVar22._12_4_ = (fStack_44 - (fVar6 + fVar9)) + 1.0;
          auVar28 = sqrtps(auVar28,auVar22);
          auVar36._8_4_ = 0x3f000000;
          auVar36._0_8_ = 0x3f0000003f000000;
          auVar36._12_4_ = 0x3f000000;
          auVar32 = divps(auVar36,auVar28);
          fStack_34 = (fVar7 + fVar11) * auVar32._0_4_;
          local_30 = (fVar19 + fVar10) * auVar32._4_4_;
          fStack_2c = auVar28._8_4_ * 0.5;
          fStack_28 = (fVar37 - fVar8) * auVar32._12_4_;
          fStack_24 = param_3[0xc];
          fStack_20 = param_3[0xd];
          fStack_1c = param_3[0xe];
          fStack_18 = param_3[0xf];
        }
        else {
          auVar5._4_4_ = (fVar9 - (fStack_44 + fVar6)) + 1.0;
          auVar5._0_4_ = (fVar9 - (fStack_44 + fVar6)) + 1.0;
          auVar5._8_4_ = (fVar9 - (fStack_44 + fVar6)) + 1.0;
          auVar5._12_4_ = (fVar9 - (fStack_44 + fVar6)) + 1.0;
          auVar32 = sqrtps(ZEXT416((uint)fVar9),auVar5);
          auVar31._8_4_ = 0x3f000000;
          auVar31._0_8_ = 0x3f0000003f000000;
          auVar31._12_4_ = 0x3f000000;
          auVar28 = divps(auVar31,auVar32);
          fStack_34 = (fVar37 + fVar8) * auVar28._0_4_;
          local_30 = auVar32._4_4_ * 0.5;
          fStack_2c = (fVar19 + fVar10) * auVar28._8_4_;
          fStack_28 = (fVar11 - fVar7) * auVar28._12_4_;
          fStack_24 = param_3[0xc];
          fStack_20 = param_3[0xd];
          fStack_1c = param_3[0xe];
          fStack_18 = param_3[0xf];
        }
      }
      else {
        auVar21._0_4_ = fVar6 - (fStack_44 + fVar9);
        auVar21._4_4_ = fVar6 - (fStack_44 + fVar9);
        auVar21._8_4_ = fVar6 - (fStack_44 + fVar9);
        auVar21._12_4_ = fVar6 - (fStack_44 + fVar9);
        auVar32._4_4_ = auVar21._4_4_ + 1.0;
        auVar32._0_4_ = auVar21._0_4_ + 1.0;
        auVar32._8_4_ = auVar21._8_4_ + 1.0;
        auVar32._12_4_ = auVar21._12_4_ + 1.0;
        auVar28 = sqrtps(auVar21,auVar32);
        auVar35._8_4_ = 0x3f000000;
        auVar35._0_8_ = 0x3f0000003f000000;
        auVar35._12_4_ = 0x3f000000;
        auVar32 = divps(auVar35,auVar28);
        fStack_34 = auVar28._0_4_ * 0.5;
        local_30 = (fVar37 + fVar8) * auVar32._4_4_;
        fStack_2c = (fVar7 + fVar11) * auVar32._8_4_;
        fStack_28 = (fVar10 - fVar19) * auVar32._12_4_;
        fStack_24 = param_3[0xc];
        fStack_20 = param_3[0xd];
        fStack_1c = param_3[0xe];
        fStack_18 = param_3[0xf];
      }
    }
    else {
      auVar4._4_4_ = local_50 + 1.0;
      auVar4._0_4_ = fStack_54 + 1.0;
      auVar4._8_4_ = fStack_4c + 1.0;
      auVar4._12_4_ = fStack_48 + 1.0;
      auVar32 = sqrtps(ZEXT416((uint)fStack_54),auVar4);
      auVar30._8_4_ = 0x3f000000;
      auVar30._0_8_ = 0x3f0000003f000000;
      auVar30._12_4_ = 0x3f000000;
      auVar28 = divps(auVar30,auVar32);
      fStack_34 = (fVar10 - fVar19) * auVar28._0_4_;
      local_30 = (fVar11 - fVar7) * auVar28._4_4_;
      fStack_2c = (fVar37 - fVar8) * auVar28._8_4_;
      fStack_28 = auVar32._12_4_ * 0.5;
      fStack_24 = param_3[0xc];
      fStack_20 = param_3[0xd];
      fStack_1c = param_3[0xe];
      fStack_18 = param_3[0xf];
      fStack_44 = 0.0;
    }
  }
  *(float *)((int)this + 0x10) = fStack_34;
  *(float *)((int)this + 0x14) = local_30;
  *(float *)((int)this + 0x18) = fStack_2c;
  *(float *)((int)this + 0x1c) = fStack_28;
  *(float *)((int)this + 0x20) = fStack_24;
  *(float *)((int)this + 0x24) = fStack_20;
  *(float *)((int)this + 0x28) = fStack_1c;
  *(float *)((int)this + 0x2c) = fStack_18;
  iVar14 = FUN_0093cde0(*(void **)((int)this + 4));
  if (iVar14 == 0) {
    iVar14 = FUN_0068f130(*(int *)((int)this + 4));
    iVar17 = FUN_0068f130(*(int *)((int)this + 0x30));
    if ((iVar14 != iVar17) &&
       (pvVar13 = (void *)FUN_0074bb80(*(void **)((int)this + 4)), pvVar13 != (void *)0x0)) {
      pvVar16 = (void *)FUN_0068f130(*(int *)((int)this + 0x30));
      LocationComponent_ResolveAndSetOwningLot(pvVar13,pvVar16);
    }
  }
  TransformComponent_NotifyPoseChanged(this);
  TransformComponent_InstallParentSurfaceCutoutIfEligible
            (this,*(int *)((int)this + 0x30),(void *)0x0,param_2);
  return 0;
}

