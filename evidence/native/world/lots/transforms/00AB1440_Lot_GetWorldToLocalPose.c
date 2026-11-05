/* PC1.67 original static contract. Get forward pose throughAB1360, invert quaternion using
   conjugate/squared norm (RCPPS plus two refinement steps), then
   translation=-rotate(inverseQuaternion,forwardTranslation). Output aligned32B pose; physical
   output pointer EAX, RET4. This is the inverse pose producer; it does not merely negate
   translation. Finite/nondegenerate or exact host quaternion-library equivalence is not
   established. */

float * __thiscall Lot_GetWorldToLocalPose(void *this,float *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float *pfVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined1 in_XMM4 [16];
  undefined1 auVar15 [16];
  float local_30 [11];
  
  pfVar5 = (float *)Lot_GetLocalToWorldPose(this,local_30);
  fVar7 = *pfVar5;
  fVar8 = pfVar5[1];
  fVar9 = pfVar5[2];
  fVar10 = pfVar5[3];
  fVar6 = fVar10 * fVar10 + fVar8 * fVar8 + fVar9 * fVar9 + fVar7 * fVar7;
  auVar15._4_4_ = fVar6;
  auVar15._0_4_ = fVar6;
  auVar15._8_4_ = fVar6;
  auVar15._12_4_ = fVar6;
  auVar15 = rcpps(in_XMM4,auVar15);
  fVar11 = (2.0 - auVar15._0_4_ * fVar6) * auVar15._0_4_;
  fVar12 = (2.0 - auVar15._4_4_ * fVar6) * auVar15._4_4_;
  fVar13 = (2.0 - auVar15._8_4_ * fVar6) * auVar15._8_4_;
  fVar14 = (2.0 - auVar15._12_4_ * fVar6) * auVar15._12_4_;
  fVar1 = pfVar5[4];
  fVar2 = pfVar5[5];
  fVar3 = pfVar5[6];
  fVar4 = pfVar5[7];
  fVar7 = (2.0 - fVar11 * fVar6) * fVar11 * -fVar7;
  fVar8 = (2.0 - fVar12 * fVar6) * fVar12 * -fVar8;
  fVar9 = (2.0 - fVar13 * fVar6) * fVar13 * -fVar9;
  fVar10 = (2.0 - fVar14 * fVar6) * fVar14 * fVar10;
  *param_1 = fVar7;
  param_1[1] = fVar8;
  param_1[2] = fVar9;
  param_1[3] = fVar10;
  fVar6 = (fVar3 * fVar8 - fVar2 * fVar9) + fVar10 * fVar1;
  fVar11 = (fVar1 * fVar9 - fVar3 * fVar7) + fVar10 * fVar2;
  fVar10 = (fVar2 * fVar7 - fVar1 * fVar8) + fVar10 * fVar3;
  param_1[4] = 0.0 - ((fVar10 * fVar8 - fVar11 * fVar9) * 2.0 + fVar1);
  param_1[5] = 0.0 - ((fVar6 * fVar9 - fVar10 * fVar7) * 2.0 + fVar2);
  param_1[6] = 0.0 - ((fVar11 * fVar7 - fVar6 * fVar8) * 2.0 + fVar3);
  param_1[7] = 0.0 - ((fVar6 * fVar7 - fVar6 * fVar7) * 2.0 + fVar4);
  return param_1;
}
