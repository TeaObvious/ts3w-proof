/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC 1.67 original contract. ECXTransform, sole stack argument pointeraligned 64-byte
   matrix; RET4. Rotationmatrix converts toquat with trace/major-diagonalbranches; lastrow
   translation copied; scale/shear notpreserved as storedcomponent pose. CallsWorldPose setter.
   
   Analyst PC1.67 trace association: The first diagonal addition is ADDPS XMM5,XMM6 at0095878B with
   m11 andm00; ADDPS XMM7,XMM5 at00958795 then addsm22. Actual trace order is float32(m22 +
   float32(m11 + m00)), subject to ambientSSE state. Decompiler ordinaryleft-associative m22+m11+m00
   is a reassociation artifact and must not be copied as exact original arithmetic. This selected
   clarification does not establish additional matrix admission or native FP environment defaults.
    */

void __thiscall TransformComponent_SetWorldMatrix(void *this,float *worldMatrix)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  float fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  float local_60;
  float fStack_5c;
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
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_30 = worldMatrix[4];
  fStack_2c = worldMatrix[5];
  fStack_28 = worldMatrix[6];
  fStack_24 = worldMatrix[7];
  local_40 = *worldMatrix;
  fStack_3c = worldMatrix[1];
  fStack_38 = worldMatrix[2];
  fStack_34 = worldMatrix[3];
  local_20 = worldMatrix[8];
  fStack_1c = worldMatrix[9];
  fStack_18 = worldMatrix[10];
  fStack_14 = worldMatrix[0xb];
  auVar6._4_4_ = fStack_2c;
  auVar6._0_4_ = fStack_2c;
  auVar6._8_4_ = fStack_2c;
  auVar6._12_4_ = fStack_2c;
  auVar9._4_4_ = local_40;
  auVar9._0_4_ = local_40;
  auVar9._8_4_ = local_40;
  auVar9._12_4_ = local_40;
                    /* Original trace association: second ADDPS adds m22 to already
                       rounded(m11+m00); do NOT implement (m22+m11)+m00 from the decompiler's
                       printed expression. */
  fVar8 = fStack_18 + fStack_2c + local_40;
  if (fVar8 <= DAT_010f4ccc) {
    if (fStack_2c < local_40) {
      if (fStack_18 < local_40) {
        auVar2._4_4_ = FLOAT_00f998f8 + (local_40 - (fStack_18 + fStack_2c));
        auVar2._0_4_ = FLOAT_00f998f8 + (local_40 - (fStack_18 + fStack_2c));
        auVar2._8_4_ = FLOAT_00f998f8 + (local_40 - (fStack_18 + fStack_2c));
        auVar2._12_4_ = FLOAT_00f998f8 + (local_40 - (fStack_18 + fStack_2c));
        auVar6 = sqrtps(auVar6,auVar2);
        auVar10._4_4_ = _DAT_00f9b5b4;
        auVar10._0_4_ = _DAT_00f9b5b4;
        auVar10._8_4_ = _DAT_00f9b5b4;
        auVar10._12_4_ = _DAT_00f9b5b4;
        auVar9 = divps(auVar10,auVar6);
        local_60 = auVar6._0_4_ * _DAT_00f9b5b4;
        fStack_5c = (fStack_3c + local_30) * auVar9._4_4_;
        fStack_58 = (fStack_38 + local_20) * auVar9._8_4_;
        fStack_54 = (fStack_28 - fStack_1c) * auVar9._12_4_;
        goto LAB_009589c4;
      }
    }
    if (fStack_2c <= fStack_18) {
      auVar4._0_4_ = FLOAT_00f998f8 + (fStack_18 - (fStack_2c + local_40));
      auVar4._4_4_ = FLOAT_00f998f8 + (fStack_18 - (fStack_2c + local_40));
      auVar4._8_4_ = FLOAT_00f998f8 + (fStack_18 - (fStack_2c + local_40));
      auVar4._12_4_ = FLOAT_00f998f8 + (fStack_18 - (fStack_2c + local_40));
      auVar6 = sqrtps(auVar9,auVar4);
      auVar11._4_4_ = _DAT_00f9b5b4;
      auVar11._0_4_ = _DAT_00f9b5b4;
      auVar11._8_4_ = _DAT_00f9b5b4;
      auVar11._12_4_ = _DAT_00f9b5b4;
      auVar9 = divps(auVar11,auVar6);
      local_60 = (fStack_38 + local_20) * auVar9._0_4_;
      fStack_5c = (fStack_28 + fStack_1c) * auVar9._4_4_;
      fStack_58 = auVar6._8_4_ * _DAT_00f9b5b4;
      fStack_54 = (fStack_3c - local_30) * auVar9._12_4_;
    }
    else {
      auVar3._4_4_ = FLOAT_00f998f8 + (fStack_2c - (fStack_18 + local_40));
      auVar3._0_4_ = FLOAT_00f998f8 + (fStack_2c - (fStack_18 + local_40));
      auVar3._8_4_ = FLOAT_00f998f8 + (fStack_2c - (fStack_18 + local_40));
      auVar3._12_4_ = FLOAT_00f998f8 + (fStack_2c - (fStack_18 + local_40));
      auVar9 = sqrtps(ZEXT416((uint)fStack_2c),auVar3);
      auVar7._4_4_ = _DAT_00f9b5b4;
      auVar7._0_4_ = _DAT_00f9b5b4;
      auVar7._8_4_ = _DAT_00f9b5b4;
      auVar7._12_4_ = _DAT_00f9b5b4;
      auVar6 = divps(auVar7,auVar9);
      local_60 = (fStack_3c + local_30) * auVar6._0_4_;
      fStack_5c = auVar9._4_4_ * _DAT_00f9b5b4;
      fStack_58 = (fStack_28 + fStack_1c) * auVar6._8_4_;
      fStack_54 = (local_20 - fStack_38) * auVar6._12_4_;
    }
  }
  else {
    auVar1._4_4_ = FLOAT_00f998f8 + fStack_18 + fStack_2c + local_40;
    auVar1._0_4_ = FLOAT_00f998f8 + fVar8;
    auVar1._8_4_ = FLOAT_00f998f8 + fStack_18 + fStack_2c + local_40;
    auVar1._12_4_ = FLOAT_00f998f8 + fStack_18 + fStack_2c + local_40;
    auVar9 = sqrtps(ZEXT416((uint)fVar8),auVar1);
    auVar5._4_4_ = _DAT_00f9b5b4;
    auVar5._0_4_ = _DAT_00f9b5b4;
    auVar5._8_4_ = _DAT_00f9b5b4;
    auVar5._12_4_ = _DAT_00f9b5b4;
    auVar6 = divps(auVar5,auVar9);
    local_60 = (fStack_28 - fStack_1c) * auVar6._0_4_;
    fStack_5c = (local_20 - fStack_38) * auVar6._4_4_;
    fStack_58 = (fStack_3c - local_30) * auVar6._8_4_;
    fStack_54 = auVar9._12_4_ * _DAT_00f9b5b4;
  }
LAB_009589c4:
  local_50 = worldMatrix[0xc];
  fStack_4c = worldMatrix[0xd];
  fStack_48 = worldMatrix[0xe];
  fStack_44 = worldMatrix[0xf];
  TransformComponent_SetWorldPose(this,&local_60);
  return;
}

