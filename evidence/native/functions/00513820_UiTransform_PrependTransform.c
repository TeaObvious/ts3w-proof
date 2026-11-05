/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00513820. Physical ECX destination plus source transform/RET4.
   Classification0 copies source; otherwise nonzero source classification computes each new
   destination row as source row coefficients times old destination rows, hence source*old
   under512170 row-vector convention. Classifications are raw integer words despite float aliases in
   actual C; no datatype/ABI repair applied. */

void __thiscall UiTransform_PrependTransform(void *this,float *param_1)

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
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  
  if (*(int *)((int)this + 0x40) == 0) {
    fVar1 = param_1[1];
    fVar2 = param_1[2];
    fVar3 = param_1[3];
    *(float *)this = *param_1;
    *(float *)((int)this + 4) = fVar1;
    *(float *)((int)this + 8) = fVar2;
    *(float *)((int)this + 0xc) = fVar3;
    fVar1 = param_1[5];
    fVar2 = param_1[6];
    fVar3 = param_1[7];
    *(float *)((int)this + 0x10) = param_1[4];
    *(float *)((int)this + 0x14) = fVar1;
    *(float *)((int)this + 0x18) = fVar2;
    *(float *)((int)this + 0x1c) = fVar3;
    fVar1 = param_1[9];
    fVar2 = param_1[10];
    fVar3 = param_1[0xb];
    *(float *)((int)this + 0x20) = param_1[8];
    *(float *)((int)this + 0x24) = fVar1;
    *(float *)((int)this + 0x28) = fVar2;
    *(float *)((int)this + 0x2c) = fVar3;
    fVar1 = param_1[0xd];
    fVar2 = param_1[0xe];
    fVar3 = param_1[0xf];
    *(float *)((int)this + 0x30) = param_1[0xc];
    *(float *)((int)this + 0x34) = fVar1;
    *(float *)((int)this + 0x38) = fVar2;
    *(float *)((int)this + 0x3c) = fVar3;
    *(float *)((int)this + 0x40) = param_1[0x10];
    return;
  }
  if (param_1[0x10] != 0.0) {
    fVar1 = *param_1;
    fVar2 = param_1[1];
    fVar3 = param_1[2];
    fVar4 = param_1[3];
    fVar5 = *(float *)((int)this + 0x10);
    fVar6 = *(float *)((int)this + 0x14);
    fVar7 = *(float *)((int)this + 0x18);
    fVar8 = *(float *)((int)this + 0x1c);
    fVar9 = *(float *)this;
    fVar10 = *(float *)((int)this + 4);
    fVar11 = *(float *)((int)this + 8);
    fVar12 = *(float *)((int)this + 0xc);
    fVar13 = *(float *)((int)this + 0x20);
    fVar14 = *(float *)((int)this + 0x24);
    fVar15 = *(float *)((int)this + 0x28);
    fVar16 = *(float *)((int)this + 0x2c);
    fVar17 = param_1[4];
    fVar18 = param_1[5];
    fVar19 = param_1[6];
    fVar20 = param_1[7];
    fVar21 = param_1[8];
    fVar22 = param_1[9];
    fVar23 = param_1[10];
    fVar24 = param_1[0xb];
    fVar25 = param_1[0xc];
    fVar26 = param_1[0xd];
    fVar27 = param_1[0xe];
    fVar28 = param_1[0xf];
    *(float *)this =
         fVar1 * fVar9 + fVar2 * fVar5 + fVar3 * fVar13 + fVar4 * *(float *)((int)this + 0x30);
    *(float *)((int)this + 4) =
         fVar1 * fVar10 + fVar2 * fVar6 + fVar3 * fVar14 + fVar4 * *(float *)((int)this + 0x34);
    *(float *)((int)this + 8) =
         fVar1 * fVar11 + fVar2 * fVar7 + fVar3 * fVar15 + fVar4 * *(float *)((int)this + 0x38);
    *(float *)((int)this + 0xc) =
         fVar1 * fVar12 + fVar2 * fVar8 + fVar3 * fVar16 + fVar4 * *(float *)((int)this + 0x3c);
    *(float *)((int)this + 0x10) =
         fVar17 * fVar9 + fVar18 * fVar5 + fVar19 * fVar13 + fVar20 * *(float *)((int)this + 0x30);
    *(float *)((int)this + 0x14) =
         fVar17 * fVar10 + fVar18 * fVar6 + fVar19 * fVar14 + fVar20 * *(float *)((int)this + 0x34);
    *(float *)((int)this + 0x18) =
         fVar17 * fVar11 + fVar18 * fVar7 + fVar19 * fVar15 + fVar20 * *(float *)((int)this + 0x38);
    *(float *)((int)this + 0x1c) =
         fVar17 * fVar12 + fVar18 * fVar8 + fVar19 * fVar16 + fVar20 * *(float *)((int)this + 0x3c);
    *(float *)((int)this + 0x20) =
         fVar21 * fVar9 + fVar22 * fVar5 + fVar23 * fVar13 + fVar24 * *(float *)((int)this + 0x30);
    *(float *)((int)this + 0x24) =
         fVar21 * fVar10 + fVar22 * fVar6 + fVar23 * fVar14 + fVar24 * *(float *)((int)this + 0x34);
    *(float *)((int)this + 0x28) =
         fVar21 * fVar11 + fVar22 * fVar7 + fVar23 * fVar15 + fVar24 * *(float *)((int)this + 0x38);
    *(float *)((int)this + 0x2c) =
         fVar21 * fVar12 + fVar22 * fVar8 + fVar23 * fVar16 + fVar24 * *(float *)((int)this + 0x3c);
    *(float *)((int)this + 0x30) =
         fVar25 * fVar9 + fVar26 * fVar5 + fVar27 * fVar13 + fVar28 * *(float *)((int)this + 0x30);
    *(float *)((int)this + 0x34) =
         fVar25 * fVar10 + fVar26 * fVar6 + fVar27 * fVar14 + fVar28 * *(float *)((int)this + 0x34);
    *(float *)((int)this + 0x38) =
         fVar25 * fVar11 + fVar26 * fVar7 + fVar27 * fVar15 + fVar28 * *(float *)((int)this + 0x38);
    *(float *)((int)this + 0x3c) =
         fVar25 * fVar12 + fVar26 * fVar8 + fVar27 * fVar16 + fVar28 * *(float *)((int)this + 0x3c);
    if (*(int *)((int)this + 0x40) < (int)param_1[0x10]) {
      *(float *)((int)this + 0x40) = param_1[0x10];
    }
  }
  return;
}

