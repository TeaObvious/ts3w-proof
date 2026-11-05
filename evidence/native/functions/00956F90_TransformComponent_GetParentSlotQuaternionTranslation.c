/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Returns output
   pointer in EAX, RET4. Starts from the parent world transform (component key 0x011ea158), or
   identity quaternion and zero translation if absent. Parent slots component key 0x011ea114 finds
   the child at this+4 through FindChildSlotBinding. Binding byte chooses relative virtual slots
   +0x14/+0x1c versus absolute matrix at virtual +0x18. Converts slot rotation matrix to quaternion.
   Parent and slot are evaluated dynamically; this+0x10/+0x20 remains local. */

float * __thiscall TransformComponent_GetParentSlotQuaternionTranslation(void *this,float *param_1)

{
  void *pvVar1;
  float *pfVar2;
  int *piVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar18;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  float fVar19;
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar20 [12];
  float fVar24;
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  float fVar32;
  float fVar33;
  undefined1 auVar34 [16];
  float fVar37;
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  char local_a1 [17];
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  float local_70 [4];
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  undefined1 auStack_54 [4];
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
  if ((*(void **)((int)this + 0x30) == (void *)0x0) ||
     (pvVar1 = Object_GetComponentByMask(*(void **)((int)this + 0x30),DAT_011ea158),
     pvVar1 == (void *)0x0)) {
    fVar5 = DAT_00f998f8;
    uStack_84 = 0;
    uStack_88 = 0;
    uStack_8c = 0;
    local_90 = 0;
    fVar4 = 0.0;
    fVar24 = 0.0;
    fVar18 = 0.0;
    fVar37 = 0.0;
    *param_1 = 0.0;
    param_1[1] = 0.0;
    param_1[2] = 0.0;
    param_1[3] = fVar5;
  }
  else {
    pfVar2 = TransformComponent_GetWorldQuaternionTranslation(pvVar1,local_70);
    fVar4 = pfVar2[1];
    fVar24 = pfVar2[2];
    fVar18 = pfVar2[3];
    *param_1 = *pfVar2;
    param_1[1] = fVar4;
    param_1[2] = fVar24;
    param_1[3] = fVar18;
    fVar4 = pfVar2[4];
    fVar24 = pfVar2[5];
    fVar18 = pfVar2[6];
    fVar37 = pfVar2[7];
  }
  param_1[4] = fVar4;
  param_1[5] = fVar24;
  param_1[6] = fVar18;
  param_1[7] = fVar37;
  local_a1[0] = '\0';
  if (((*(void **)((int)this + 0x30) != (void *)0x0) &&
      (pvVar1 = Object_GetComponentByMask(*(void **)((int)this + 0x30),DAT_011ea114),
      pvVar1 != (void *)0x0)) &&
     (piVar3 = (int *)SlotsComponent_FindChildSlotBinding(pvVar1,*(int *)((int)this + 4),local_a1),
     piVar3 != (int *)0x0)) {
    if (local_a1[0] == '\0') {
      (**(code **)(*piVar3 + 0x14))(&local_50);
      (**(code **)(*piVar3 + 0x1c))(param_1,auStack_54,0);
      fVar4 = fStack_38 + fStack_60 + fStack_4c;
      if (fVar4 <= DAT_010f4ccc) {
        if ((fStack_60 <= fStack_4c) || (fStack_60 <= fStack_38)) {
          if (fStack_4c <= fStack_38) {
            auVar23._0_4_ = DAT_00f998f8 + (fStack_38 - (fStack_60 + fStack_4c));
            auVar23._4_4_ = DAT_00f998f8 + (fStack_38 - (fStack_60 + fStack_4c));
            auVar23._8_4_ = DAT_00f998f8 + (fStack_38 - (fStack_60 + fStack_4c));
            auVar23._12_4_ = DAT_00f998f8 + (fStack_38 - (fStack_60 + fStack_4c));
            auVar27 = sqrtps(auVar23,auVar23);
            auVar31._4_4_ = _DAT_00f9b5b4;
            auVar31._0_4_ = _DAT_00f9b5b4;
            auVar31._8_4_ = _DAT_00f9b5b4;
            auVar31._12_4_ = _DAT_00f9b5b4;
            auVar34 = divps(auVar31,auVar27);
            fVar4 = (fStack_40 + fStack_58) * auVar34._0_4_;
            fVar24 = (fStack_48 + fStack_3c) * auVar34._4_4_;
            fVar18 = auVar27._8_4_ * _DAT_00f9b5b4;
            fVar37 = (fStack_5c - local_50) * auVar34._12_4_;
          }
          else {
            auVar17._0_4_ = DAT_00f998f8 + (fStack_4c - (fStack_38 + fStack_60));
            auVar17._4_4_ = DAT_00f998f8 + (fStack_4c - (fStack_38 + fStack_60));
            auVar17._8_4_ = DAT_00f998f8 + (fStack_4c - (fStack_38 + fStack_60));
            auVar17._12_4_ = DAT_00f998f8 + (fStack_4c - (fStack_38 + fStack_60));
            auVar34 = sqrtps(ZEXT416((uint)fStack_4c),auVar17);
            auVar30._4_4_ = _DAT_00f9b5b4;
            auVar30._0_4_ = _DAT_00f9b5b4;
            auVar30._8_4_ = _DAT_00f9b5b4;
            auVar30._12_4_ = _DAT_00f9b5b4;
            auVar27 = divps(auVar30,auVar34);
            fVar4 = (local_50 + fStack_5c) * auVar27._0_4_;
            fVar24 = auVar34._4_4_ * _DAT_00f9b5b4;
            fVar18 = (fStack_48 + fStack_3c) * auVar27._8_4_;
            fVar37 = (fStack_40 - fStack_58) * auVar27._12_4_;
          }
        }
        else {
          auVar27._0_4_ = DAT_00f998f8 + (fStack_60 - (fStack_38 + fStack_4c));
          auVar27._4_4_ = DAT_00f998f8 + (fStack_60 - (fStack_38 + fStack_4c));
          auVar27._8_4_ = DAT_00f998f8 + (fStack_60 - (fStack_38 + fStack_4c));
          auVar27._12_4_ = DAT_00f998f8 + (fStack_60 - (fStack_38 + fStack_4c));
          auVar27 = sqrtps(auVar27,auVar27);
          auVar34._4_4_ = _DAT_00f9b5b4;
          auVar34._0_4_ = _DAT_00f9b5b4;
          auVar34._8_4_ = _DAT_00f9b5b4;
          auVar34._12_4_ = _DAT_00f9b5b4;
          auVar34 = divps(auVar34,auVar27);
          fVar4 = auVar27._0_4_ * _DAT_00f9b5b4;
          fVar24 = (local_50 + fStack_5c) * auVar34._4_4_;
          fVar18 = (fStack_40 + fStack_58) * auVar34._8_4_;
          fVar37 = (fStack_48 - fStack_3c) * auVar34._12_4_;
        }
      }
      else {
        auVar16._0_4_ = DAT_00f998f8 + fVar4;
        auVar16._4_4_ = DAT_00f998f8 + fStack_38 + fStack_60 + fStack_4c;
        auVar16._8_4_ = DAT_00f998f8 + fStack_38 + fStack_60 + fStack_4c;
        auVar16._12_4_ = DAT_00f998f8 + fStack_38 + fStack_60 + fStack_4c;
        auVar34 = sqrtps(ZEXT416((uint)fVar4),auVar16);
        auVar29._4_4_ = _DAT_00f9b5b4;
        auVar29._0_4_ = _DAT_00f9b5b4;
        auVar29._8_4_ = _DAT_00f9b5b4;
        auVar29._12_4_ = _DAT_00f9b5b4;
        auVar27 = divps(auVar29,auVar34);
        fVar4 = (fStack_48 - fStack_3c) * auVar27._0_4_;
        fVar24 = (fStack_40 - fStack_58) * auVar27._4_4_;
        fVar18 = (fStack_5c - local_50) * auVar27._8_4_;
        fVar37 = auVar34._12_4_ * _DAT_00f9b5b4;
      }
      fVar5 = *param_1;
      fVar6 = param_1[1];
      fVar7 = param_1[2];
      fVar33 = param_1[3];
      fVar8 = (fStack_28 * fVar6 - fStack_2c * fVar7) + fStack_30 * fVar33;
      fVar10 = (fStack_30 * fVar7 - fStack_28 * fVar5) + fStack_2c * fVar33;
      fVar12 = (fStack_2c * fVar5 - fStack_30 * fVar6) + fStack_28 * fVar33;
      fVar32 = (fVar12 * fVar6 - fVar10 * fVar7) * DAT_0103fd88 + fStack_30 + param_1[4];
      fVar11 = (fVar8 * fVar7 - fVar12 * fVar5) * DAT_0103fd88 + fStack_2c + param_1[5];
      fVar19 = (fVar10 * fVar5 - fVar8 * fVar6) * DAT_0103fd88 + fStack_28 + param_1[6];
      fVar9 = (fVar8 * fVar5 - fVar8 * fVar5) * DAT_0103fd88 + fStack_24 + param_1[7];
      fVar8 = (fVar18 * fVar6 - fVar24 * fVar7) + fVar33 * fVar4;
      fVar10 = (fVar4 * fVar7 - fVar18 * fVar5) + fVar33 * fVar24;
      fVar12 = (fVar24 * fVar5 - fVar4 * fVar6) + fVar33 * fVar18;
      auVar20._0_4_ = fVar5 * fVar37;
      auVar20._4_4_ = fVar6 * fVar37;
      auVar20._8_4_ = fVar7 * fVar37;
    }
    else {
      pfVar2 = (float *)(**(code **)(*piVar3 + 0x18))();
      fVar4 = *pfVar2;
      fVar37 = pfVar2[1];
      fVar5 = pfVar2[2];
      fVar6 = pfVar2[4];
      fVar24 = pfVar2[5];
      fVar7 = pfVar2[6];
      fVar10 = pfVar2[0xc];
      fVar12 = pfVar2[0xd];
      fVar19 = pfVar2[0xe];
      fVar33 = pfVar2[8];
      fVar8 = pfVar2[9];
      fVar18 = pfVar2[10];
      auVar25._4_4_ = fVar4;
      auVar25._0_4_ = fVar4;
      auVar25._8_4_ = fVar4;
      auVar25._12_4_ = fVar4;
      auVar21._4_4_ = fVar24;
      auVar21._0_4_ = fVar24;
      auVar21._8_4_ = fVar24;
      auVar21._12_4_ = fVar24;
      fVar32 = fVar4 + fVar24 + fVar18;
      if (fVar32 <= DAT_010f4ccc) {
        if ((fVar4 <= fVar24) || (fVar4 <= fVar18)) {
          if (fVar24 <= fVar18) {
            auVar22._0_4_ = DAT_00f998f8 + (fVar18 - (fVar4 + fVar24));
            auVar22._4_4_ = DAT_00f998f8 + (fVar18 - (fVar4 + fVar24));
            auVar22._8_4_ = DAT_00f998f8 + (fVar18 - (fVar4 + fVar24));
            auVar22._12_4_ = DAT_00f998f8 + (fVar18 - (fVar4 + fVar24));
            auVar27 = sqrtps(auVar25,auVar22);
            auVar36._4_4_ = _DAT_00f9b5b4;
            auVar36._0_4_ = _DAT_00f9b5b4;
            auVar36._8_4_ = _DAT_00f9b5b4;
            auVar36._12_4_ = _DAT_00f9b5b4;
            auVar34 = divps(auVar36,auVar27);
            fVar4 = (fVar5 + fVar33) * auVar34._0_4_;
            fVar24 = (fVar8 + fVar7) * auVar34._4_4_;
            fVar18 = auVar27._8_4_ * _DAT_00f9b5b4;
            fVar37 = (fVar37 - fVar6) * auVar34._12_4_;
          }
          else {
            auVar15._0_4_ = DAT_00f998f8 + (fVar24 - (fVar18 + fVar4));
            auVar15._4_4_ = DAT_00f998f8 + (fVar24 - (fVar18 + fVar4));
            auVar15._8_4_ = DAT_00f998f8 + (fVar24 - (fVar18 + fVar4));
            auVar15._12_4_ = DAT_00f998f8 + (fVar24 - (fVar18 + fVar4));
            auVar34 = sqrtps(ZEXT416((uint)fVar24),auVar15);
            auVar28._4_4_ = _DAT_00f9b5b4;
            auVar28._0_4_ = _DAT_00f9b5b4;
            auVar28._8_4_ = _DAT_00f9b5b4;
            auVar28._12_4_ = _DAT_00f9b5b4;
            auVar27 = divps(auVar28,auVar34);
            fVar4 = (fVar37 + fVar6) * auVar27._0_4_;
            fVar24 = auVar34._4_4_ * _DAT_00f9b5b4;
            fVar18 = (fVar8 + fVar7) * auVar27._8_4_;
            fVar37 = (fVar33 - fVar5) * auVar27._12_4_;
          }
        }
        else {
          auVar14._0_4_ = DAT_00f998f8 + (fVar4 - (fVar18 + fVar24));
          auVar14._4_4_ = DAT_00f998f8 + (fVar4 - (fVar18 + fVar24));
          auVar14._8_4_ = DAT_00f998f8 + (fVar4 - (fVar18 + fVar24));
          auVar14._12_4_ = DAT_00f998f8 + (fVar4 - (fVar18 + fVar24));
          auVar27 = sqrtps(auVar21,auVar14);
          auVar35._4_4_ = _DAT_00f9b5b4;
          auVar35._0_4_ = _DAT_00f9b5b4;
          auVar35._8_4_ = _DAT_00f9b5b4;
          auVar35._12_4_ = _DAT_00f9b5b4;
          auVar34 = divps(auVar35,auVar27);
          fVar4 = auVar27._0_4_ * _DAT_00f9b5b4;
          fVar24 = (fVar37 + fVar6) * auVar34._4_4_;
          fVar18 = (fVar5 + fVar33) * auVar34._8_4_;
          fVar37 = (fVar7 - fVar8) * auVar34._12_4_;
        }
      }
      else {
        auVar13._0_4_ = DAT_00f998f8 + fVar32;
        auVar13._4_4_ = DAT_00f998f8 + fVar4 + fVar24 + fVar18;
        auVar13._8_4_ = DAT_00f998f8 + fVar4 + fVar24 + fVar18;
        auVar13._12_4_ = DAT_00f998f8 + fVar4 + fVar24 + fVar18;
        auVar34 = sqrtps(ZEXT416((uint)fVar32),auVar13);
        auVar26._4_4_ = _DAT_00f9b5b4;
        auVar26._0_4_ = _DAT_00f9b5b4;
        auVar26._8_4_ = _DAT_00f9b5b4;
        auVar26._12_4_ = _DAT_00f9b5b4;
        auVar27 = divps(auVar26,auVar34);
        fVar4 = (fVar7 - fVar8) * auVar27._0_4_;
        fVar24 = (fVar33 - fVar5) * auVar27._4_4_;
        fVar18 = (fVar37 - fVar6) * auVar27._8_4_;
        fVar37 = auVar34._12_4_ * _DAT_00f9b5b4;
      }
      fVar5 = *param_1;
      fVar6 = param_1[1];
      fVar7 = param_1[2];
      fVar33 = param_1[3];
      fVar8 = (fVar19 * fVar6 - fVar12 * fVar7) + fVar10 * fVar33;
      fVar9 = (fVar10 * fVar7 - fVar19 * fVar5) + fVar12 * fVar33;
      fVar11 = (fVar12 * fVar5 - fVar10 * fVar6) + fVar19 * fVar33;
      fVar32 = (fVar11 * fVar6 - fVar9 * fVar7) * DAT_0103fd88 + fVar10 + param_1[4];
      fVar11 = (fVar8 * fVar7 - fVar11 * fVar5) * DAT_0103fd88 + fVar12 + param_1[5];
      fVar19 = (fVar9 * fVar5 - fVar8 * fVar6) * DAT_0103fd88 + fVar19 + param_1[6];
      fVar9 = (fVar8 * fVar5 - fVar8 * fVar5) * DAT_0103fd88 + pfVar2[0xf] + param_1[7];
      fVar8 = (fVar18 * fVar6 - fVar24 * fVar7) + fVar33 * fVar4;
      fVar10 = (fVar4 * fVar7 - fVar18 * fVar5) + fVar33 * fVar24;
      fVar12 = (fVar24 * fVar5 - fVar4 * fVar6) + fVar33 * fVar18;
      auVar20._0_4_ = fVar37 * fVar5;
      auVar20._4_4_ = fVar37 * fVar6;
      auVar20._8_4_ = fVar37 * fVar7;
    }
    param_1[4] = fVar32;
    param_1[5] = fVar11;
    param_1[6] = fVar19;
    param_1[7] = fVar9;
    *param_1 = fVar8 + auVar20._0_4_;
    param_1[1] = fVar10 + auVar20._4_4_;
    param_1[2] = fVar12 + auVar20._8_4_;
    param_1[3] = fVar37 * fVar33 - (fVar7 * fVar18 + fVar6 * fVar24 + fVar5 * fVar4);
  }
  return param_1;
}

