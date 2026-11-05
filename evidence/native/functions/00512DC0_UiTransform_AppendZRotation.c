/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00512dc0. Physical ECX transform and one binary32 radians/RET4. Raise
   classification+40 toatleast2. x87 FSIN/FCOS spillbinary32; for every matrix row
   xnew=xold*cos+yold*sin,ynew=yold*cos-xold*sin, remaining lanes retain original0/1 arithmetic.
   Point consumer512170 establishes row-vector orientation; no axis sign parameter. */

void __thiscall UiTransform_AppendZRotation(void *this,float param_1)

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
  float10 fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  
  if (*(int *)((int)this + 0x40) < 2) {
    *(undefined4 *)((int)this + 0x40) = 2;
  }
  fVar11 = FLOAT_00f998f8;
  fVar12 = (float10)fsin((float10)param_1);
  fVar1 = (float)fVar12;
  fVar12 = (float10)fcos((float10)param_1);
  fVar2 = (float)fVar12;
  fVar3 = *(float *)((int)this + 0x20);
  fVar4 = *(float *)((int)this + 0x24);
  fVar5 = *(float *)((int)this + 0x30);
  fVar6 = *(float *)((int)this + 0x34);
  fVar13 = 0.0 - fVar1;
  fVar7 = *(float *)this;
  fVar8 = *(float *)((int)this + 4);
  fVar14 = *(float *)((int)this + 8) * FLOAT_00f998f8;
  fVar15 = *(float *)((int)this + 0xc) * FLOAT_00f998f8;
  fVar9 = *(float *)((int)this + 0x10);
  fVar10 = *(float *)((int)this + 0x14);
  fVar16 = *(float *)((int)this + 0x18) * FLOAT_00f998f8;
  fVar17 = *(float *)((int)this + 0x1c) * FLOAT_00f998f8;
  *(float *)this = fVar8 * fVar1 + fVar7 * fVar2;
  *(float *)((int)this + 4) = fVar7 * fVar13 + fVar8 * fVar2;
  *(float *)((int)this + 8) = fVar8 * 0.0 + fVar14;
  *(float *)((int)this + 0xc) = fVar7 * 0.0 + fVar15;
  *(float *)((int)this + 0x10) = fVar10 * fVar1 + fVar9 * fVar2;
  *(float *)((int)this + 0x14) = fVar9 * fVar13 + fVar10 * fVar2;
  *(float *)((int)this + 0x18) = fVar10 * 0.0 + fVar16;
  *(float *)((int)this + 0x1c) = fVar9 * 0.0 + fVar17;
  *(float *)((int)this + 0x20) = fVar4 * fVar1 + fVar2 * fVar3;
  *(float *)((int)this + 0x24) = fVar3 * fVar13 + fVar2 * fVar4;
  *(float *)((int)this + 0x28) = fVar4 * 0.0 + fVar11 * *(float *)((int)this + 0x28);
  *(float *)((int)this + 0x2c) = fVar3 * 0.0 + fVar11 * *(float *)((int)this + 0x2c);
  *(float *)((int)this + 0x30) = fVar6 * fVar1 + fVar5 * fVar2;
  *(float *)((int)this + 0x34) = fVar5 * fVar13 + fVar6 * fVar2;
  *(float *)((int)this + 0x38) = fVar6 * 0.0 + *(float *)((int)this + 0x38) * fVar11;
  *(float *)((int)this + 0x3c) = fVar5 * 0.0 + *(float *)((int)this + 0x3c) * fVar11;
  return;
}

