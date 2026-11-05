/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Objects_SetForward. Export ordinal(s): 488. Entry
   VA: 0x10536da0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000FB9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Objects_SetForward(void)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  float fVar5;
  int iVar6;
  undefined4 *this;
  void *pvVar7;
  float *pfVar8;
  int iVar9;
  int *piVar10;
  undefined4 uVar11;
  int *piVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
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
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
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
  
                    /* 0x536da0  488  Objects_SetForward */
  iVar6 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar6);
  if (this != (undefined4 *)0x0) {
    iVar6 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar6 == 0) {
      iVar6 = FUN_10726da0(this,DAT_10c8d998);
      if (iVar6 != 0) {
        FUN_10748750(iVar6);
      }
    }
    else {
      (**(code **)(*(int *)(iVar6 + 8) + 0x28))();
    }
    iVar6 = FUN_10726da0(this,DAT_10c70408);
    pvVar7 = (void *)FUN_10726da0(this,DAT_10c8d998);
    if (pvVar7 != (void *)0x0) {
      pfVar8 = (float *)FUN_1055db20(&stack0x0000000c,&fStack_50);
      fStack_74 = _DAT_10b310ec;
      fVar5 = DAT_10acb0d4;
      fStack_58 = *pfVar8;
      fStack_1c = pfVar8[1];
      fStack_5c = pfVar8[2];
      fVar13 = fStack_58 * fStack_58;
      auVar18._4_4_ = fVar13;
      auVar18._0_4_ = fStack_1c * fStack_1c;
      auVar18._8_4_ = fVar13;
      auVar18._12_4_ = fVar13;
      fVar13 = fStack_5c * fStack_5c + fStack_1c * fStack_1c + fVar13;
      auVar19._4_4_ = fVar13;
      auVar19._0_4_ = fVar13;
      auVar19._8_4_ = fVar13;
      auVar19._12_4_ = fVar13;
      auVar19 = rsqrtps(auVar18,auVar19);
      fVar14 = auVar19._0_4_;
      fVar15 = auVar19._4_4_;
      fVar16 = auVar19._8_4_;
      fVar17 = auVar19._12_4_;
      fVar14 = (DAT_10acb0d4 - fVar14 * fVar14 * fVar13) * _DAT_10b310ec * fVar14 + fVar14;
      fVar15 = (DAT_10acb0d4 - fVar15 * fVar15 * fVar13) * _DAT_10b310ec * fVar15 + fVar15;
      fVar16 = (DAT_10acb0d4 - fVar16 * fVar16 * fVar13) * _DAT_10b310ec * fVar16 + fVar16;
      fVar17 = (DAT_10acb0d4 - fVar17 * fVar17 * fVar13) * _DAT_10b310ec * fVar17 + fVar17;
      fStack_58 = ((DAT_10acb0d4 - fVar14 * fVar14 * fVar13) * _DAT_10b310ec * fVar14 + fVar14) *
                  fStack_58;
      fStack_1c = ((DAT_10acb0d4 - fVar15 * fVar15 * fVar13) * _DAT_10b310ec * fVar15 + fVar15) *
                  fStack_1c;
      fStack_5c = ((DAT_10acb0d4 - fVar16 * fVar16 * fVar13) * _DAT_10b310ec * fVar16 + fVar16) *
                  fStack_5c;
      fStack_14 = ((DAT_10acb0d4 - fVar17 * fVar17 * fVar13) * _DAT_10b310ec * fVar17 + fVar17) *
                  pfVar8[3];
      fStack_40 = DAT_10acb0d4 * fStack_5c - fStack_1c * 0.0;
      fStack_3c = fStack_58 * 0.0 - fStack_5c * 0.0;
      fStack_38 = fStack_1c * 0.0 - DAT_10acb0d4 * fStack_58;
      fStack_6c = fStack_40 * fStack_40;
      auVar25._4_4_ = fStack_6c;
      auVar25._0_4_ = fStack_3c * fStack_3c;
      auVar25._8_4_ = fStack_6c;
      auVar25._12_4_ = fStack_6c;
      fStack_6c = fStack_38 * fStack_38 + fStack_3c * fStack_3c + fStack_6c;
      auVar26._4_4_ = fStack_6c;
      auVar26._0_4_ = fStack_6c;
      auVar26._8_4_ = fStack_6c;
      auVar26._12_4_ = fStack_6c;
      auVar19 = rsqrtps(auVar25,auVar26);
      fVar13 = auVar19._0_4_;
      fVar14 = auVar19._4_4_;
      fVar15 = auVar19._8_4_;
      fVar16 = auVar19._12_4_;
      fVar13 = (DAT_10acb0d4 - fVar13 * fVar13 * fStack_6c) * _DAT_10b310ec * fVar13 + fVar13;
      fVar14 = (DAT_10acb0d4 - fVar14 * fVar14 * fStack_6c) * _DAT_10b310ec * fVar14 + fVar14;
      fVar15 = (DAT_10acb0d4 - fVar15 * fVar15 * fStack_6c) * _DAT_10b310ec * fVar15 + fVar15;
      fVar16 = (DAT_10acb0d4 - fVar16 * fVar16 * fStack_6c) * _DAT_10b310ec * fVar16 + fVar16;
      fStack_40 = ((DAT_10acb0d4 - fVar13 * fVar13 * fStack_6c) * _DAT_10b310ec * fVar13 + fVar13) *
                  fStack_40;
      fStack_3c = ((DAT_10acb0d4 - fVar14 * fVar14 * fStack_6c) * _DAT_10b310ec * fVar14 + fVar14) *
                  fStack_3c;
      fStack_38 = ((DAT_10acb0d4 - fVar15 * fVar15 * fStack_6c) * _DAT_10b310ec * fVar15 + fVar15) *
                  fStack_38;
      fStack_34 = ((DAT_10acb0d4 - fVar16 * fVar16 * fStack_6c) * _DAT_10b310ec * fVar16 + fVar16) *
                  (fStack_58 * 0.0 - fStack_58 * 0.0);
      fStack_30 = fStack_38 * fStack_1c - fStack_3c * fStack_5c;
      fStack_2c = fStack_40 * fStack_5c - fStack_38 * fStack_58;
      fStack_28 = fStack_3c * fStack_58 - fStack_40 * fStack_1c;
      fStack_24 = fStack_40 * fStack_58 - fStack_40 * fStack_58;
      if (iVar6 != 0) {
        *(uint *)(iVar6 + 0x2c) = *(uint *)(iVar6 + 0x2c) | 0x10;
      }
      fStack_60 = fStack_2c + fStack_40 + fStack_5c;
      fStack_4c = fStack_2c + fStack_40 + fStack_5c;
      fStack_48 = fStack_2c + fStack_40 + fStack_5c;
      fStack_44 = fStack_2c + fStack_40 + fStack_5c;
      fStack_70 = DAT_10aae18c;
      if (fStack_60 <= DAT_10aae18c) {
        fStack_60 = fStack_5c;
        if ((fStack_40 <= fStack_2c) || (fStack_40 <= fStack_5c)) {
          fStack_50 = fStack_2c;
          if (fStack_2c <= fStack_5c) {
            auVar21._0_4_ = fStack_5c - (fStack_2c + fStack_40);
            auVar21._4_4_ = fStack_5c - (fStack_2c + fStack_40);
            auVar21._8_4_ = fStack_5c - (fStack_2c + fStack_40);
            auVar21._12_4_ = fStack_5c - (fStack_2c + fStack_40);
            auVar4._4_4_ = fVar5 + auVar21._4_4_;
            auVar4._0_4_ = fVar5 + auVar21._0_4_;
            auVar4._8_4_ = fVar5 + auVar21._8_4_;
            auVar4._12_4_ = fVar5 + auVar21._12_4_;
            auVar19 = sqrtps(auVar21,auVar4);
            auVar24._4_4_ = fStack_74;
            auVar24._0_4_ = fStack_74;
            auVar24._8_4_ = fStack_74;
            auVar24._12_4_ = fStack_74;
            auVar26 = divps(auVar24,auVar19);
            fStack_80 = (fStack_38 + fStack_58) * auVar26._0_4_;
            fStack_7c = (fStack_28 + fStack_1c) * auVar26._4_4_;
            fStack_78 = auVar19._8_4_ * fStack_74;
            fStack_74 = (fStack_3c - fStack_30) * auVar26._12_4_;
          }
          else {
            auVar3._4_4_ = fVar5 + (fStack_2c - (fStack_5c + fStack_40));
            auVar3._0_4_ = fVar5 + (fStack_2c - (fStack_5c + fStack_40));
            auVar3._8_4_ = fVar5 + (fStack_2c - (fStack_5c + fStack_40));
            auVar3._12_4_ = fVar5 + (fStack_2c - (fStack_5c + fStack_40));
            auVar26 = sqrtps(ZEXT416((uint)fStack_2c),auVar3);
            auVar23._4_4_ = fStack_74;
            auVar23._0_4_ = fStack_74;
            auVar23._8_4_ = fStack_74;
            auVar23._12_4_ = fStack_74;
            auVar19 = divps(auVar23,auVar26);
            fStack_80 = (fStack_30 + fStack_3c) * auVar19._0_4_;
            fStack_7c = auVar26._4_4_ * fStack_74;
            fStack_78 = (fStack_28 + fStack_1c) * auVar19._8_4_;
            fStack_74 = (fStack_58 - fStack_38) * auVar19._12_4_;
          }
        }
        else {
          auVar20._0_4_ = fStack_5c + fStack_2c;
          auVar20._4_4_ = fStack_5c + fStack_2c;
          auVar20._8_4_ = fStack_5c + fStack_2c;
          auVar20._12_4_ = fStack_5c + fStack_2c;
          auVar2._4_4_ = fVar5 + (fStack_40 - auVar20._4_4_);
          auVar2._0_4_ = fVar5 + (fStack_40 - auVar20._0_4_);
          auVar2._8_4_ = fVar5 + (fStack_40 - auVar20._8_4_);
          auVar2._12_4_ = fVar5 + (fStack_40 - auVar20._12_4_);
          auVar19 = sqrtps(auVar20,auVar2);
          auVar27._4_4_ = fStack_74;
          auVar27._0_4_ = fStack_74;
          auVar27._8_4_ = fStack_74;
          auVar27._12_4_ = fStack_74;
          auVar26 = divps(auVar27,auVar19);
          fStack_80 = auVar19._0_4_ * fStack_74;
          fStack_7c = (fStack_30 + fStack_3c) * auVar26._4_4_;
          fStack_78 = (fStack_38 + fStack_58) * auVar26._8_4_;
          fStack_74 = (fStack_28 - fStack_1c) * auVar26._12_4_;
          fStack_50 = fStack_40;
        }
      }
      else {
        auVar1._4_4_ = fVar5 + fStack_4c;
        auVar1._0_4_ = fVar5 + fStack_60;
        auVar1._8_4_ = fVar5 + fStack_48;
        auVar1._12_4_ = fVar5 + fStack_44;
        auVar26 = sqrtps(ZEXT416((uint)fStack_60),auVar1);
        auVar22._4_4_ = fStack_74;
        auVar22._0_4_ = fStack_74;
        auVar22._8_4_ = fStack_74;
        auVar22._12_4_ = fStack_74;
        auVar19 = divps(auVar22,auVar26);
        fStack_80 = (fStack_28 - fStack_1c) * auVar19._0_4_;
        fStack_7c = (fStack_58 - fStack_38) * auVar19._4_4_;
        fStack_78 = (fStack_3c - fStack_30) * auVar19._8_4_;
        fStack_74 = auVar26._12_4_ * fStack_74;
        fStack_50 = fStack_60;
      }
      fStack_68 = fStack_6c;
      fStack_64 = fStack_6c;
      fStack_54 = fStack_58;
      fStack_20 = fStack_58;
      fStack_18 = fStack_5c;
      FUN_1074ae90(pvVar7,&fStack_80);
    }
    iVar9 = FUN_10726da0(this,DAT_10c8d93c);
    piVar10 = (int *)FUN_10726da0(this,DAT_10c8d978);
    if (((iVar9 == 0) &&
        (((piVar10 == (int *)0x0 || (uVar11 = FUN_10744a70((int)piVar10), (char)uVar11 == '\0')) &&
         (iVar6 != 0)))) &&
       ((piVar12 = (int *)FUN_10967620((int)this), piVar12 != (int *)0x0 &&
        (pvVar7 = (void *)(**(code **)(*piVar12 + 0xc))(0x90566b0e), pvVar7 != (void *)0x0)))) {
      FUN_10093280(pvVar7,this);
    }
    if (piVar10 != (int *)0x0) {
      (**(code **)(*piVar10 + 0x38))();
    }
  }
  return;
}

