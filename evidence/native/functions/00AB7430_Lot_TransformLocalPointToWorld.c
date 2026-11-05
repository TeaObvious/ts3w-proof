/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 117 complete owned bytes/39 actual Listing
   instructions. No runtime execution.
   ECX lot plus input/output pointers, RET8. Inactive flag+0x444 copies all16bytes. Active path
   obtains matrix00AB1F40, captures input lanes, evaluates x*row0 +row3 +y*row1 +z*row2 in that
   instruction order and stores16bytes. Inputw does not scale translation. The captured vector
   supports identical input/output pointers. */

void __thiscall Lot_TransformLocalPointToWorld(void *this,float *param_1,float *param_2)

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
  float *pfVar16;
  uint local_50 [19];
  
  if (*(char *)((int)this + 0x444) != '\0') {
    pfVar16 = (float *)Lot_GetLocalToWorldMatrix(this,local_50);
    fVar1 = *param_1;
    fVar2 = param_1[1];
    fVar3 = param_1[2];
    fVar4 = pfVar16[1];
    fVar5 = pfVar16[2];
    fVar6 = pfVar16[3];
    fVar7 = pfVar16[5];
    fVar8 = pfVar16[6];
    fVar9 = pfVar16[7];
    fVar10 = pfVar16[0xd];
    fVar11 = pfVar16[0xe];
    fVar12 = pfVar16[0xf];
    fVar13 = pfVar16[9];
    fVar14 = pfVar16[10];
    fVar15 = pfVar16[0xb];
    *param_2 = fVar1 * *pfVar16 + pfVar16[0xc] + fVar2 * pfVar16[4] + fVar3 * pfVar16[8];
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

