/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 224-instruction/856-byte effect interpolation body with physical x87/ST0 return. Outside
   [0,1] input t and kind 0 return incoming t unchanged; unknown in-range kind returns zero. Kind 1
   uses piecewise ease arithmetic. Kind 2 writes zero EaseOut to 0.08 and damping above 10 back to
   10; selected body does not establish current finite filtering, positive damping floor or
   zero-span handling. Preserve x87 extended intermediates/transcendentals as instruction authority;
   current Single/MathF/clamp/throw/local-fallback behavior is different. Inferred prototype/storage
   is not original source type recovery. */

float10 __thiscall UiEffect_InterpolateTimelinePosition(void *param_1,float param_2)

{
  int iVar1;
  uint uVar2;
  bool bVar3;
  float10 fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  fVar9 = 0.0;
  if (((param_2 <= 0.0) || (1.0 <= param_2)) || (iVar1 = *(int *)((int)param_1 + 0x30), iVar1 == 0))
  {
LAB_0051728f:
    return (float10)param_2;
  }
  if (iVar1 == 1) {
    fVar9 = *(float *)((int)param_1 + 0x34);
    fVar11 = *(float *)((int)param_1 + 0x38);
    if (fVar9 + fVar11 != 0.0) {
      fVar6 = 1.0 / ((2.0 - fVar9) - fVar11);
      if (param_2 < fVar9) {
        return (float10)param_2 * ((float10)fVar6 / (float10)fVar9) * (float10)param_2;
      }
      if (1.0 - fVar11 <= param_2) {
        fVar4 = (float10)1 - (float10)param_2;
        return (float10)1 - ((float10)fVar6 / (float10)fVar11) * fVar4 * fVar4;
      }
      return (((float10)param_2 + (float10)param_2) - (float10)fVar9) * (float10)fVar6;
    }
    goto LAB_0051728f;
  }
  if (iVar1 != 2) {
    return (float10)0;
  }
  if (*(float *)((int)param_1 + 0x38) == 0.0) {
    *(undefined4 *)((int)param_1 + 0x38) = 0x3da3d70a;
  }
  if (10.0 < *(float *)((int)param_1 + 0x3c)) {
    *(undefined4 *)((int)param_1 + 0x3c) = 0x41200000;
  }
  fVar11 = (10.0 - *(float *)((int)param_1 + 0x3c)) * 0.1;
  if (1.0 <= *(float *)((int)param_1 + 0x40)) {
    fVar9 = 1.0;
  }
  fVar5 = *(float *)((int)param_1 + 0x3c) * 0.1;
  fVar9 = fVar9 - *(float *)((int)param_1 + 0x6c);
  uVar2 = 0;
  fVar8 = (param_2 - *(float *)((int)param_1 + 0x6c)) / fVar9;
  fVar6 = 1.0 / ((fVar11 / fVar5) * 2.0 + 1.0);
  fVar10 = 1.0;
  if (fVar6 < fVar8) {
    do {
      fVar7 = fVar6;
      fVar6 = (1.0 - fVar7) * fVar5 + fVar7;
      fVar10 = fVar10 * fVar11;
      uVar2 = uVar2 + 1;
      if (fVar10 < *(float *)((int)param_1 + 0x38)) {
        fVar11 = (fVar6 - fVar7) * 0.5;
        if (fVar11 + fVar7 < fVar8) {
          if (fVar8 <= fVar6) {
            uVar2 = uVar2 & 0x80000001;
            bVar3 = uVar2 == 0;
            fVar11 = fVar11 + fVar7;
            fVar4 = (float10)fcos((float10)(((fVar8 - fVar11) / ((fVar6 - fVar11) * 2.0)) *
                                           6.2831855));
            fVar11 = ((float)fVar4 + 1.0) * 0.5;
            if ((int)uVar2 < 0) {
              bVar3 = (uVar2 - 1 | 0xfffffffe) == 0xffffffff;
            }
            if (!bVar3) {
              fVar11 = -0.0 - fVar11;
            }
          }
          else {
            fVar11 = 0.0;
          }
          goto LAB_005171ba;
        }
        break;
      }
    } while (fVar6 < fVar8);
    if (uVar2 != 0) {
      uVar2 = uVar2 & 0x80000001;
      bVar3 = uVar2 == 0;
      fVar4 = (float10)fsin((float10)(((fVar8 - fVar7) / ((fVar6 - fVar7) * 2.0)) * 6.2831855));
      fVar11 = (float)fVar4;
      if ((int)uVar2 < 0) {
        bVar3 = (uVar2 - 1 | 0xfffffffe) == 0xffffffff;
      }
      if (!bVar3) {
        fVar11 = -0.0 - fVar11;
      }
      goto LAB_005171ba;
    }
  }
  fVar4 = (float10)fcos((float10)((fVar8 / (fVar6 * 4.0)) * 6.2831855));
  fVar11 = (float)fVar4;
LAB_005171ba:
  fVar11 = fVar11 * fVar10 * fVar9;
  if (fVar9 <= 0.0) {
    return (float10)(-0.0 - fVar11);
  }
  return (float10)(fVar9 - fVar11);
}

