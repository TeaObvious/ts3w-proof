/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  undefined8 uVar21;
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  float fVar26;
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  float fVar38;
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
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
    if ((param_3 != (float *)0x0) && (param_7 == '\0')) {
      fVar6 = *param_3;
      fVar38 = param_3[1];
      fVar7 = param_3[2];
      fVar8 = param_3[4];
      local_40 = param_3[5];
      fVar9 = param_3[6];
      fVar10 = param_3[8];
      fVar11 = param_3[9];
      fVar19 = param_3[10];
      auVar27._4_4_ = fVar6;
      auVar27._0_4_ = fVar6;
      auVar27._8_4_ = fVar6;
      auVar27._12_4_ = fVar6;
      auVar24._4_4_ = local_40;
      auVar24._0_4_ = local_40;
      auVar24._8_4_ = local_40;
      auVar24._12_4_ = local_40;
      local_30 = fVar6 + local_40;
      fStack_2c = fVar6 + local_40;
      fStack_28 = fVar6 + local_40;
      fStack_24 = fVar6 + local_40;
      local_60 = fVar19 + local_30;
      fStack_3c = fVar19 + fStack_2c;
      fStack_38 = fVar19 + fStack_28;
      fStack_34 = fVar19 + fStack_24;
      local_50 = DAT_010f4ccc;
      uVar21 = CONCAT44(_DAT_00f9b5b4,_DAT_00f9b5b4);
      if (local_60 <= DAT_010f4ccc) {
        local_50 = fVar19;
        if ((fVar6 <= local_40) || (fVar6 <= fVar19)) {
          if (local_40 <= fVar19) {
            auVar25._0_4_ = FLOAT_00f998f8 + (fVar19 - local_30);
            auVar25._4_4_ = FLOAT_00f998f8 + (fVar19 - fStack_2c);
            auVar25._8_4_ = FLOAT_00f998f8 + (fVar19 - fStack_28);
            auVar25._12_4_ = FLOAT_00f998f8 + (fVar19 - fStack_24);
            auVar29 = sqrtps(auVar27,auVar25);
            auVar35._8_4_ = _DAT_00f9b5b4;
            auVar35._0_8_ = uVar21;
            auVar35._12_4_ = _DAT_00f9b5b4;
            auVar33 = divps(auVar35,auVar29);
            fVar19 = (fVar7 + fVar10) * auVar33._0_4_;
            fVar26 = (fVar11 + fVar9) * auVar33._4_4_;
            fVar20 = auVar29._8_4_ * _DAT_00f9b5b4;
            fVar38 = (fVar38 - fVar8) * auVar33._12_4_;
          }
          else {
            auVar3._4_4_ = FLOAT_00f998f8 + (local_40 - (fVar19 + fVar6));
            auVar3._0_4_ = FLOAT_00f998f8 + (local_40 - (fVar19 + fVar6));
            auVar3._8_4_ = FLOAT_00f998f8 + (local_40 - (fVar19 + fVar6));
            auVar3._12_4_ = FLOAT_00f998f8 + (local_40 - (fVar19 + fVar6));
            auVar33 = sqrtps(ZEXT416((uint)local_40),auVar3);
            auVar30._8_4_ = _DAT_00f9b5b4;
            auVar30._0_8_ = uVar21;
            auVar30._12_4_ = _DAT_00f9b5b4;
            auVar29 = divps(auVar30,auVar33);
            fVar19 = (fVar38 + fVar8) * auVar29._0_4_;
            fVar26 = auVar33._4_4_ * _DAT_00f9b5b4;
            fVar20 = (fVar11 + fVar9) * auVar29._8_4_;
            fVar38 = (fVar10 - fVar7) * auVar29._12_4_;
          }
        }
        else {
          auVar2._4_4_ = FLOAT_00f998f8 + (fVar6 - (fVar19 + local_40));
          auVar2._0_4_ = FLOAT_00f998f8 + (fVar6 - (fVar19 + local_40));
          auVar2._8_4_ = FLOAT_00f998f8 + (fVar6 - (fVar19 + local_40));
          auVar2._12_4_ = FLOAT_00f998f8 + (fVar6 - (fVar19 + local_40));
          auVar29 = sqrtps(auVar24,auVar2);
          auVar34._8_4_ = _DAT_00f9b5b4;
          auVar34._0_8_ = uVar21;
          auVar34._12_4_ = _DAT_00f9b5b4;
          auVar33 = divps(auVar34,auVar29);
          fVar19 = auVar29._0_4_ * _DAT_00f9b5b4;
          fVar26 = (fVar38 + fVar8) * auVar33._4_4_;
          fVar20 = (fVar7 + fVar10) * auVar33._8_4_;
          fVar38 = (fVar9 - fVar11) * auVar33._12_4_;
          local_40 = fVar6;
        }
      }
      else {
        auVar1._4_4_ = FLOAT_00f998f8 + fStack_3c;
        auVar1._0_4_ = FLOAT_00f998f8 + local_60;
        auVar1._8_4_ = FLOAT_00f998f8 + fStack_38;
        auVar1._12_4_ = FLOAT_00f998f8 + fStack_34;
        auVar33 = sqrtps(ZEXT416((uint)local_60),auVar1);
        auVar28._8_4_ = _DAT_00f9b5b4;
        auVar28._0_8_ = uVar21;
        auVar28._12_4_ = _DAT_00f9b5b4;
        auVar29 = divps(auVar28,auVar33);
        fVar19 = (fVar9 - fVar11) * auVar29._0_4_;
        fVar26 = (fVar10 - fVar7) * auVar29._4_4_;
        fVar20 = (fVar38 - fVar8) * auVar29._8_4_;
        fVar38 = auVar33._12_4_ * _DAT_00f9b5b4;
        local_40 = local_60;
      }
      fVar6 = param_3[0xc];
      fVar7 = param_3[0xd];
      fVar8 = param_3[0xe];
      fVar9 = param_3[0xf];
      *(float *)((int)this + 0x10) = fVar19;
      *(float *)((int)this + 0x14) = fVar26;
      *(float *)((int)this + 0x18) = fVar20;
      *(float *)((int)this + 0x1c) = fVar38;
      *(float *)((int)this + 0x20) = fVar6;
      *(float *)((int)this + 0x24) = fVar7;
      *(float *)((int)this + 0x28) = fVar8;
      *(float *)((int)this + 0x2c) = fVar9;
      TransformComponent_NotifyPoseChanged(this);
    }
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
    if ((*(int *)((int)pvStack_70 + 0x1c) != 0) || (cVar12 = FUN_009f0890(), cVar12 == '\0')) {
      return 6;
    }
  }
  pvVar16 = param_1;
  if ((param_4 != '\0') && (uVar15 = FUN_009508f0((void *)0x0,(int)param_2), (char)uVar15 == '\0'))
  {
    return 0x7d3;
  }
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
  if (param_7 == '\0') {
    if (piVar18 != (int *)0x0) {
      local_68 = pvVar16;
      FUN_009518d0(pvVar13,*(int *)((int)this + 4),(int *)&local_68);
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
    if (((iVar14 != 0) && (iVar17 != 0)) && ((~(byte)(*(uint *)(iVar14 + 0x2c) >> 0x11) & 1) != 0))
    {
      (**(code **)(*(int *)(iVar17 + 8) + 0x28))();
    }
    FUN_00951ae0((void *)0x0,*(int *)((int)this + 4),(int)param_2,param_6);
    ObjectEvents_Dispatch(0x21,*(void **)((int)this + 4),*(void **)((int)this + 0x30));
    FUN_00958b10(this,param_6,param_2,param_1);
    if (param_5 != '\0') {
      FUN_0080d740(pvStack_70,*(void **)((int)this + 4));
    }
    if (param_3 == (float *)0x0) {
      fStack_58 = FLOAT_00f998f8;
      uStack_5c = 0;
      local_60 = 0.0;
      uStack_64 = 0;
      fStack_34 = 0.0;
      local_30 = 0.0;
      fStack_2c = 0.0;
      fStack_28 = FLOAT_00f998f8;
      fStack_24 = 0.0;
      fStack_20 = 0.0;
      fStack_1c = 0.0;
      fStack_18 = 0.0;
    }
    else {
      fVar6 = *param_3;
      fVar38 = param_3[1];
      fVar7 = param_3[2];
      fVar8 = param_3[4];
      fVar9 = param_3[5];
      fVar10 = param_3[6];
      fVar11 = param_3[8];
      fVar19 = param_3[9];
      fVar26 = param_3[10];
      auVar29._4_4_ = fVar9;
      auVar29._0_4_ = fVar9;
      auVar29._8_4_ = fVar9;
      auVar29._12_4_ = fVar9;
      fStack_54 = fVar6 + fVar9 + fVar26;
      local_50 = fVar6 + fVar9 + fVar26;
      fStack_4c = fVar6 + fVar9 + fVar26;
      fStack_48 = fVar6 + fVar9 + fVar26;
      fStack_44 = DAT_010f4ccc;
      uVar21 = CONCAT44(_DAT_00f9b5b4,_DAT_00f9b5b4);
      if (fStack_54 <= DAT_010f4ccc) {
        fStack_44 = fVar26;
        if ((fVar6 <= fVar9) || (fVar6 <= fVar26)) {
          if (fVar9 <= fVar26) {
            auVar23._0_4_ = FLOAT_00f998f8 + (fVar26 - (fVar6 + fVar9));
            auVar23._4_4_ = FLOAT_00f998f8 + (fVar26 - (fVar6 + fVar9));
            auVar23._8_4_ = FLOAT_00f998f8 + (fVar26 - (fVar6 + fVar9));
            auVar23._12_4_ = FLOAT_00f998f8 + (fVar26 - (fVar6 + fVar9));
            auVar29 = sqrtps(auVar29,auVar23);
            auVar37._8_4_ = _DAT_00f9b5b4;
            auVar37._0_8_ = uVar21;
            auVar37._12_4_ = _DAT_00f9b5b4;
            auVar33 = divps(auVar37,auVar29);
            fStack_34 = (fVar7 + fVar11) * auVar33._0_4_;
            local_30 = (fVar19 + fVar10) * auVar33._4_4_;
            fStack_2c = auVar29._8_4_ * _DAT_00f9b5b4;
            fStack_28 = (fVar38 - fVar8) * auVar33._12_4_;
            fStack_24 = param_3[0xc];
            fStack_20 = param_3[0xd];
            fStack_1c = param_3[0xe];
            fStack_18 = param_3[0xf];
          }
          else {
            auVar5._4_4_ = FLOAT_00f998f8 + (fVar9 - (fVar26 + fVar6));
            auVar5._0_4_ = FLOAT_00f998f8 + (fVar9 - (fVar26 + fVar6));
            auVar5._8_4_ = FLOAT_00f998f8 + (fVar9 - (fVar26 + fVar6));
            auVar5._12_4_ = FLOAT_00f998f8 + (fVar9 - (fVar26 + fVar6));
            auVar33 = sqrtps(ZEXT416((uint)fVar9),auVar5);
            auVar32._8_4_ = _DAT_00f9b5b4;
            auVar32._0_8_ = uVar21;
            auVar32._12_4_ = _DAT_00f9b5b4;
            auVar29 = divps(auVar32,auVar33);
            fStack_34 = (fVar38 + fVar8) * auVar29._0_4_;
            local_30 = auVar33._4_4_ * _DAT_00f9b5b4;
            fStack_2c = (fVar19 + fVar10) * auVar29._8_4_;
            fStack_28 = (fVar11 - fVar7) * auVar29._12_4_;
            fStack_24 = param_3[0xc];
            fStack_20 = param_3[0xd];
            fStack_1c = param_3[0xe];
            fStack_18 = param_3[0xf];
          }
        }
        else {
          auVar22._0_4_ = fVar6 - (fVar26 + fVar9);
          auVar22._4_4_ = fVar6 - (fVar26 + fVar9);
          auVar22._8_4_ = fVar6 - (fVar26 + fVar9);
          auVar22._12_4_ = fVar6 - (fVar26 + fVar9);
          auVar33._4_4_ = FLOAT_00f998f8 + auVar22._4_4_;
          auVar33._0_4_ = FLOAT_00f998f8 + auVar22._0_4_;
          auVar33._8_4_ = FLOAT_00f998f8 + auVar22._8_4_;
          auVar33._12_4_ = FLOAT_00f998f8 + auVar22._12_4_;
          auVar29 = sqrtps(auVar22,auVar33);
          auVar36._8_4_ = _DAT_00f9b5b4;
          auVar36._0_8_ = uVar21;
          auVar36._12_4_ = _DAT_00f9b5b4;
          auVar33 = divps(auVar36,auVar29);
          fStack_34 = auVar29._0_4_ * _DAT_00f9b5b4;
          local_30 = (fVar38 + fVar8) * auVar33._4_4_;
          fStack_2c = (fVar7 + fVar11) * auVar33._8_4_;
          fStack_28 = (fVar10 - fVar19) * auVar33._12_4_;
          fStack_24 = param_3[0xc];
          fStack_20 = param_3[0xd];
          fStack_1c = param_3[0xe];
          fStack_18 = param_3[0xf];
        }
      }
      else {
        auVar4._4_4_ = FLOAT_00f998f8 + local_50;
        auVar4._0_4_ = FLOAT_00f998f8 + fStack_54;
        auVar4._8_4_ = FLOAT_00f998f8 + fStack_4c;
        auVar4._12_4_ = FLOAT_00f998f8 + fStack_48;
        auVar33 = sqrtps(ZEXT416((uint)fStack_54),auVar4);
        auVar31._8_4_ = _DAT_00f9b5b4;
        auVar31._0_8_ = uVar21;
        auVar31._12_4_ = _DAT_00f9b5b4;
        auVar29 = divps(auVar31,auVar33);
        fStack_34 = (fVar10 - fVar19) * auVar29._0_4_;
        local_30 = (fVar11 - fVar7) * auVar29._4_4_;
        fStack_2c = (fVar38 - fVar8) * auVar29._8_4_;
        fStack_28 = auVar33._12_4_ * _DAT_00f9b5b4;
        fStack_24 = param_3[0xc];
        fStack_20 = param_3[0xd];
        fStack_1c = param_3[0xe];
        fStack_18 = param_3[0xf];
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
  }
  return 0;
}

