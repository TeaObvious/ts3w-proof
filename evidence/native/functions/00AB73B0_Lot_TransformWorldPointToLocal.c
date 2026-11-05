/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 117 complete owned bytes/39 actual Listing
   instructions. No runtime execution.
   ECX lot plus input/output pointers, RET8. Inactive flag+0x444 copies all16bytes. Active path
   obtains inverse matrix00AB20B0, captures input lanes, evaluates x*row0 +row3 +y*row1 +z*row2 in
   that instruction order and stores16bytes. Inputw does not scale translation. The captured vector
   supports identical input/output pointers. */

void __thiscall Lot_TransformWorldPointToLocal(void *this,float *param_1,float *param_2)

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
  undefined1 (*pauVar16) [16];
  undefined1 local_50 [76];
  
  if (*(char *)((int)this + 0x444) != '\0') {
    pauVar16 = Lot_GetWorldToLocalMatrix(this,(undefined1 (*) [16])local_50);
    fVar1 = *param_1;
    fVar2 = param_1[1];
    fVar3 = param_1[2];
    fVar4 = *(float *)(*pauVar16 + 4);
    fVar5 = *(float *)(*pauVar16 + 8);
    fVar6 = *(float *)(*pauVar16 + 0xc);
    fVar7 = *(float *)(pauVar16[1] + 4);
    fVar8 = *(float *)(pauVar16[1] + 8);
    fVar9 = *(float *)(pauVar16[1] + 0xc);
    fVar10 = *(float *)(pauVar16[3] + 4);
    fVar11 = *(float *)(pauVar16[3] + 8);
    fVar12 = *(float *)(pauVar16[3] + 0xc);
    fVar13 = *(float *)(pauVar16[2] + 4);
    fVar14 = *(float *)(pauVar16[2] + 8);
    fVar15 = *(float *)(pauVar16[2] + 0xc);
    *param_2 = fVar1 * *(float *)*pauVar16 + *(float *)pauVar16[3] + fVar2 * *(float *)pauVar16[1] +
               fVar3 * *(float *)pauVar16[2];
    param_2[1] = fVar1 * fVar4 + fVar10 + fVar2 * fVar7 + fVar3 * fVar13;
    param_2[2] = fVar1 * fVar5 + fVar11 + fVar2 * fVar8 + fVar3 * fVar14;
    param_2[3] = fVar1 * fVar6 + fVar12 + fVar2 * fVar9 + fVar3 * fVar15;
    return;
  }
  fVar1 = param_1[1];
  fVar2 = param_1[2];
  fVar3 = param_1[3];
  *param_2 = *param_1;
  param_2[1] = fVar1;
  param_2[2] = fVar2;
  param_2[3] = fVar3;
  return;
}

