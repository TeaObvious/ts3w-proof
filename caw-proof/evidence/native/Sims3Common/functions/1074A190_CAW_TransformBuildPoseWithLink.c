/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst CAW1.22.10 transform/Euler instruction contract. Complete284-byte body. ECX transform
   owner, one explicit stackword output8float pointer, RET4, EAX returns that same pointer. Requires
   valid aligned buffers; no local null/lifetime checks. owner+30 zero: copy owner+10 quaternion4
   then owner+20 vector4,32bytes total. Nonzero link: call10749810 with same ECX and aligned
   local8float output, compose its returned quaternion/vector with local owner+10/+20 using original
   MULPS/ADDPS/SUBPS/SHUFPS; scalar vector factor2 from10AADFFC. Returned output contains
   quaternion4 and vector4, fourth vector lane remains original SIMD arithmetic including
   subtract-of-equal products, not a semantic constant for NaN/Inf. No explicit normalization in
   this selected body. Link target resolution, cycles and source ownership in10749810 remain
   unexpanded; no inferred live-parent identity or complete transform lifetime. */

float * __thiscall CAW_TransformBuildPoseWithLink(void *this,float *pose8Out)

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
  float fVar16;
  float *pfVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float local_30 [11];
  
  if (*(int *)((int)this + 0x30) == 0) {
    fVar1 = *(float *)((int)this + 0x14);
    fVar2 = *(float *)((int)this + 0x18);
    fVar3 = *(float *)((int)this + 0x1c);
    *pose8Out = *(float *)((int)this + 0x10);
    pose8Out[1] = fVar1;
    pose8Out[2] = fVar2;
    pose8Out[3] = fVar3;
    fVar1 = *(float *)((int)this + 0x24);
    fVar2 = *(float *)((int)this + 0x28);
    fVar3 = *(float *)((int)this + 0x2c);
    pose8Out[4] = *(float *)((int)this + 0x20);
    pose8Out[5] = fVar1;
    pose8Out[6] = fVar2;
    pose8Out[7] = fVar3;
    return pose8Out;
  }
  pfVar17 = FUN_10749810(this,local_30);
  fVar1 = *pfVar17;
  fVar2 = pfVar17[1];
  fVar3 = pfVar17[2];
  fVar4 = pfVar17[3];
  fVar5 = *(float *)((int)this + 0x20);
  fVar6 = *(float *)((int)this + 0x24);
  fVar7 = *(float *)((int)this + 0x28);
  fVar8 = *(float *)((int)this + 0x2c);
  fVar18 = (fVar7 * fVar2 - fVar6 * fVar3) + fVar4 * fVar5;
  fVar19 = (fVar5 * fVar3 - fVar7 * fVar1) + fVar4 * fVar6;
  fVar20 = (fVar6 * fVar1 - fVar5 * fVar2) + fVar4 * fVar7;
  fVar9 = pfVar17[4];
  fVar10 = pfVar17[5];
  fVar11 = pfVar17[6];
  fVar12 = pfVar17[7];
  fVar13 = *(float *)((int)this + 0x10);
  fVar14 = *(float *)((int)this + 0x14);
  fVar15 = *(float *)((int)this + 0x18);
  fVar16 = *(float *)((int)this + 0x1c);
  *pose8Out = (fVar15 * fVar2 - fVar14 * fVar3) + fVar13 * fVar4 + fVar1 * fVar16;
  pose8Out[1] = (fVar13 * fVar3 - fVar15 * fVar1) + fVar14 * fVar4 + fVar2 * fVar16;
  pose8Out[2] = (fVar14 * fVar1 - fVar13 * fVar2) + fVar15 * fVar4 + fVar3 * fVar16;
  pose8Out[3] = fVar16 * fVar4 - (fVar15 * fVar3 + fVar14 * fVar2 + fVar13 * fVar1);
  pose8Out[4] = (fVar20 * fVar2 - fVar19 * fVar3) * 2.0 + fVar5 + fVar9;
  pose8Out[5] = (fVar18 * fVar3 - fVar20 * fVar1) * 2.0 + fVar6 + fVar10;
  pose8Out[6] = (fVar19 * fVar1 - fVar18 * fVar2) * 2.0 + fVar7 + fVar11;
  pose8Out[7] = (fVar18 * fVar1 - fVar18 * fVar1) * 2.0 + fVar8 + fVar12;
  return pose8Out;
}

