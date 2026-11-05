/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). The caller output
   buffer is returned in EAX (MOV EAX,[EBP+8], RET4), not void. Output has two aligned float4
   values: quaternion XYZW and translation XYZW. With no parent at +0x30, copies local fields +0x10
   and +0x20. Otherwise obtains the parent/slot transform and composes it with local rotation and
   translation. SIMD translation lane 3 is padding/homogeneous data, not a second X coordinate. */

float * __thiscall TransformComponent_GetWorldQuaternionTranslation(void *this,float *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float *pfVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float local_30 [11];
  
  if (*(int *)((int)this + 0x30) == 0) {
    fVar1 = *(float *)((int)this + 0x14);
    fVar2 = *(float *)((int)this + 0x18);
    fVar3 = *(float *)((int)this + 0x1c);
    *param_1 = *(float *)((int)this + 0x10);
    param_1[1] = fVar1;
    param_1[2] = fVar2;
    param_1[3] = fVar3;
    fVar1 = *(float *)((int)this + 0x24);
    fVar2 = *(float *)((int)this + 0x28);
    fVar3 = *(float *)((int)this + 0x2c);
    param_1[4] = *(float *)((int)this + 0x20);
    param_1[5] = fVar1;
    param_1[6] = fVar2;
    param_1[7] = fVar3;
    return param_1;
  }
  pfVar14 = TransformComponent_GetParentSlotQuaternionTranslation(this,local_30);
  fVar1 = *pfVar14;
  fVar2 = pfVar14[1];
  fVar3 = pfVar14[2];
  fVar4 = pfVar14[3];
  fVar5 = *(float *)((int)this + 0x20);
  fVar6 = *(float *)((int)this + 0x24);
  fVar7 = *(float *)((int)this + 0x28);
  fVar8 = *(float *)((int)this + 0x2c);
  fVar15 = (fVar7 * fVar2 - fVar6 * fVar3) + fVar4 * fVar5;
  fVar16 = (fVar5 * fVar3 - fVar7 * fVar1) + fVar4 * fVar6;
  fVar17 = (fVar6 * fVar1 - fVar5 * fVar2) + fVar4 * fVar7;
  fVar18 = (fVar17 * fVar2 - fVar16 * fVar3) * DAT_0103fd88;
  fVar19 = (fVar15 * fVar3 - fVar17 * fVar1) * DAT_0103fd88;
  fVar20 = (fVar16 * fVar1 - fVar15 * fVar2) * DAT_0103fd88;
  fVar21 = (fVar15 * fVar1 - fVar15 * fVar1) * DAT_0103fd88;
  fVar15 = pfVar14[4];
  fVar16 = pfVar14[5];
  fVar17 = pfVar14[6];
  fVar9 = pfVar14[7];
  fVar10 = *(float *)((int)this + 0x10);
  fVar11 = *(float *)((int)this + 0x14);
  fVar12 = *(float *)((int)this + 0x18);
  fVar13 = *(float *)((int)this + 0x1c);
  *param_1 = (fVar12 * fVar2 - fVar11 * fVar3) + fVar10 * fVar4 + fVar1 * fVar13;
  param_1[1] = (fVar10 * fVar3 - fVar12 * fVar1) + fVar11 * fVar4 + fVar2 * fVar13;
  param_1[2] = (fVar11 * fVar1 - fVar10 * fVar2) + fVar12 * fVar4 + fVar3 * fVar13;
  param_1[3] = fVar13 * fVar4 - (fVar12 * fVar3 + fVar11 * fVar2 + fVar10 * fVar1);
  param_1[4] = fVar18 + fVar5 + fVar15;
  param_1[5] = fVar19 + fVar6 + fVar16;
  param_1[6] = fVar20 + fVar7 + fVar17;
  param_1[7] = fVar21 + fVar8 + fVar9;
  return param_1;
}

