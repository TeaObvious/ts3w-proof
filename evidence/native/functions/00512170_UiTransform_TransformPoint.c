/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00512170. Physical ECX transform plus output/input vector pointers/RET8.
   Reads inputXYZ, computes output lane as x*row0+translation(row3)+y*row1+z*row2. In plane:
   X=x*M00+y*M10+Tx,Y=x*M01+y*M11+Ty. Fourth output follows original homogeneous arithmetic; no
   perspective divide inferred. Physical EAX holds the caller output address on RET8; existing
   undefined/unassigned return metadata is retained, so actual C return declaration alone is not the
   physical caller-result contract. */

void __thiscall UiTransform_TransformPoint(void *this,float *param_1,float *param_2)

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
  float fVar14;
  float fVar15;
  
  fVar1 = *param_2;
  fVar2 = param_2[1];
  fVar3 = param_2[2];
  fVar4 = *(float *)((int)this + 4);
  fVar5 = *(float *)((int)this + 8);
  fVar6 = *(float *)((int)this + 0xc);
  fVar7 = *(float *)((int)this + 0x14);
  fVar8 = *(float *)((int)this + 0x18);
  fVar9 = *(float *)((int)this + 0x1c);
  fVar10 = *(float *)((int)this + 0x34);
  fVar11 = *(float *)((int)this + 0x38);
  fVar12 = *(float *)((int)this + 0x3c);
  fVar13 = *(float *)((int)this + 0x24);
  fVar14 = *(float *)((int)this + 0x28);
  fVar15 = *(float *)((int)this + 0x2c);
  *param_1 = fVar1 * *(float *)this + *(float *)((int)this + 0x30) +
             fVar2 * *(float *)((int)this + 0x10) + fVar3 * *(float *)((int)this + 0x20);
  param_1[1] = fVar1 * fVar4 + fVar10 + fVar2 * fVar7 + fVar3 * fVar13;
  param_1[2] = fVar1 * fVar5 + fVar11 + fVar2 * fVar8 + fVar3 * fVar14;
  param_1[3] = fVar1 * fVar6 + fVar12 + fVar2 * fVar9 + fVar3 * fVar15;
  return;
}

