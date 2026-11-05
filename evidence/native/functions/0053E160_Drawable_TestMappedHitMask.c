/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67: vtable pointer00FC0854 identifies decoded entry; complete
   reachable body711bytes/210instructions, three exits RET0C. ECX drawable, three physical stack
   words, result AL only. Entry second argument is signed integer point, first gives floating bounds
   extent. Negative/outside rejects before mask work. Full mapping branches and optional
   mask/resource virtual predicate remain in original body; source coordinate helper alone is not
   complete drawable hit admission. Exact owned instructions and original bytes are preserved;
   inferred prototype is not a recovered original declaration. */

uint Drawable_TestMappedHitMask(float *param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  int in_ECX;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  int iStack_18;
  int *piStack_14;
  float fStack_4;
  
  iStack_18 = *param_2;
  piStack_14 = param_2;
  if ((((-1 < iStack_18) && ((float)iStack_18 < param_1[2] - *param_1)) &&
      (piStack_14 = (int *)param_2[1], -1 < (int)piStack_14)) &&
     ((float)(int)piStack_14 < param_1[3] - param_1[1])) {
    if (*(int **)(in_ECX + 0x78) != (int *)0x0) {
      piVar4 = (int *)(**(code **)(**(int **)(in_ECX + 0x78) + 0x10))();
      iVar1 = *(int *)(in_ECX + 0x54);
      iVar2 = *piVar4;
      iVar3 = piVar4[1];
      switch(iVar1) {
      case 1:
        iStack_18 = (int)((float)(*param_2 * iVar2) / (param_1[2] - *param_1));
        piStack_14 = (int *)(int)((float)(param_2[1] * iVar3) / (param_1[3] - param_1[1]));
        break;
      case 2:
      case 4:
        fVar12 = (float)iVar3;
        fStack_4 = (1.0 - *(float *)(in_ECX + 100)) * fVar12;
        fVar9 = (float)iVar2;
        fVar13 = *(float *)(in_ECX + 0x58) * fVar9;
        fVar8 = (1.0 - *(float *)(in_ECX + 0x60)) * fVar9;
        fVar14 = *(float *)(in_ECX + 0x5c) * fVar12;
        fVar6 = (param_1[2] - *param_1) - (fVar9 - fVar8);
        fVar12 = (param_1[3] - param_1[1]) - (fVar12 - fStack_4);
        fVar9 = fVar13;
        if (fVar6 - fVar13 < 0.0) {
          fVar6 = (fVar6 + fVar13) * 0.5;
          fVar9 = fVar6;
        }
        fVar10 = fVar12 - fVar14;
        if (fVar10 < 0.0) {
          fVar6 = (fVar6 + fVar9) * 0.5;
          fVar9 = fVar6;
        }
        iStack_18 = *param_2;
        fVar11 = (float)iStack_18;
        if (fVar9 <= fVar11) {
          if (fVar11 <= fVar6) {
            if ((fVar6 - fVar9 <= 0.0) || (fVar7 = fVar8 - fVar13, fVar7 <= 0.0)) {
              iStack_18 = (int)(fVar8 + fVar13) / 2;
            }
            else if (iVar1 == 2) {
              iStack_18 = (int)(((fVar11 - fVar9) * fVar7) / (fVar6 - fVar9) + fVar13);
            }
            else {
              iStack_18 = (int)(fVar11 - fVar9) % (int)fVar7 + (int)fVar13;
            }
          }
          else {
            iStack_18 = (int)((fVar11 - fVar6) + fVar8);
          }
        }
        piStack_14 = (int *)param_2[1];
        fVar9 = (float)(int)piStack_14;
        if (fVar14 <= fVar9) {
          if (fVar12 < fVar9) {
            piStack_14 = (int *)(int)((fVar9 - fVar12) + fStack_4);
          }
          else if ((fVar10 <= 0.0) || (fVar6 = fStack_4 - fVar14, fVar6 <= 0.0)) {
            piStack_14 = (int *)((int)(fStack_4 + fVar14) / 2);
          }
          else if (iVar1 == 2) {
            piStack_14 = (int *)(int)(((fVar9 - fVar14) * fVar6) / fVar10 + fVar14);
          }
          else {
            piStack_14 = (int *)((int)(fVar9 - fVar14) % (int)fVar6 + (int)fVar14);
          }
        }
        break;
      case 3:
        iStack_18 = *param_2 % iVar2;
        piStack_14 = (int *)(param_2[1] % iVar3);
      }
      uVar5 = (**(code **)(**(int **)(in_ECX + 0x78) + 0x14))(&iStack_18);
      return uVar5;
    }
    return CONCAT31((int3)((uint)piStack_14 >> 8),1);
  }
  return (uint)piStack_14 & 0xffffff00;
}

