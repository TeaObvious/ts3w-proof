/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 original static contract. CallsAB1360 forward lot pose, expands quaternion into four
   consecutive16B rows with runtime XYZ keep mask011B0670; translation at indices12/13/14, final1
   at15. CounterpartAB1610 first inverts the pose. For Y rotation quaternion(0,s,0,c), row-vector
   matrix is [cos,0,-sin,0;0,1,0,0;sin,0,cos,0;tx,ty,tz,1]. Physical EAX output pointer/RET4; actual
   SSE constants and rounding govern bit equivalence. */

void __thiscall Lot_BuildLocalToWorldPoseMatrix(void *this,uint *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  float *pfVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  uint uVar16;
  float fVar17;
  uint uVar18;
  uint uVar19;
  float fVar20;
  float fVar21;
  float local_30 [11];
  
  pfVar8 = (float *)Lot_GetLocalToWorldPose(this,local_30);
  uVar7 = uRam011b067c;
  uVar6 = uRam011b0678;
  uVar5 = uRam011b0674;
  uVar4 = _DAT_011b0670;
  fVar9 = *pfVar8 * 1.4142135;
  fVar11 = pfVar8[1] * 1.4142135;
  fVar12 = pfVar8[2] * 1.4142135;
  fVar13 = pfVar8[3] * 1.4142135;
  fVar14 = (0.0 - fVar9) * fVar9 + 0.5;
  fVar15 = (0.0 - fVar11) * fVar11 + 0.5;
  fVar17 = (0.0 - fVar12) * fVar12 + 0.5;
  fVar10 = fVar13 * fVar12 + fVar11 * fVar9;
  fVar20 = fVar11 * fVar9 - fVar13 * fVar12;
  fVar21 = fVar15 + fVar14;
  fVar1 = pfVar8[4];
  fVar2 = pfVar8[5];
  fVar3 = pfVar8[6];
  uVar16 = (uint)fVar10 & uRam011b0674;
  uVar18 = (uint)(fVar9 * fVar12 - fVar13 * fVar11) & uRam011b0678;
  uVar19 = (uint)fVar20 & uRam011b067c;
  *param_1 = (uint)(fVar17 + fVar15) & _DAT_011b0670;
  param_1[1] = uVar16;
  param_1[2] = uVar18;
  param_1[3] = uVar19;
  param_1[4] = (uint)fVar20 & uVar4;
  param_1[5] = (uint)(fVar14 + fVar17) & uVar5;
  param_1[6] = (uint)(fVar13 * fVar9 + fVar12 * fVar11) & uVar6;
  param_1[7] = (uint)fVar10 & uVar7;
  param_1[8] = (uint)(fVar13 * fVar11 + fVar9 * fVar12) & uVar4;
  param_1[9] = (uint)(fVar12 * fVar11 - fVar13 * fVar9) & uVar5;
  param_1[10] = (uint)fVar21 & uVar6;
  param_1[0xb] = (uint)fVar21 & uVar7;
  param_1[0xc] = (uint)fVar1;
  param_1[0xd] = (uint)fVar2;
  param_1[0xe] = (uint)fVar3;
  param_1[0xf] = 0x3f800000;
  return;
}
