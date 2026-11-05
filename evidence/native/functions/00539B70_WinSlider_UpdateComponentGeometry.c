/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: dirty/drawable gate; three component metadata/fallback sizes and live value
   layout; invalidate tailcall.
   Dirty byte +0x266 gates the work. Three component metadata/fallback sizes, orientation/mask bits
   and live value govern layout. Includes both the tail JMP at 0x00539edb and RET at 0x00539ee2.
   Common virtual service effects remain bounded to the observed calls.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __fastcall WinSlider_UpdateComponentGeometry(int param_1)

{
  code *pcVar1;
  char cVar2;
  float *pfVar3;
  float *pfVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float afStack_20 [8];
  
  if (*(char *)(param_1 + 0x266) != '\0') {
    pcVar1 = *(code **)(*(int *)(param_1 + 4) + 0x74);
    *(undefined1 *)(param_1 + 0x266) = 0;
    (*pcVar1)(8,0);
    if (*(int *)(param_1 + 0x204) != 0) {
      if (*(int *)(param_1 + 0x25c) < *(int *)(param_1 + 0x254)) {
        *(int *)(param_1 + 0x254) = *(int *)(param_1 + 0x25c);
      }
      if (*(int *)(param_1 + 0x254) < *(int *)(param_1 + 600)) {
        *(int *)(param_1 + 0x254) = *(int *)(param_1 + 600);
      }
      uVar5 = 0;
      do {
        cVar2 = (**(code **)(**(int **)(param_1 + 0x204) + 0x18))
                          (&fStack_28,(*(int *)(param_1 + 0x260) != 2) - 1U & 0x80,uVar5);
        if (cVar2 == '\0') {
          pfVar3 = (float *)(**(code **)(*(int *)(param_1 + 4) + 0x38))();
          if (*(int *)(param_1 + 0x260) == 1) {
            pfVar4 = (float *)&stack0xffffffc8;
            if (pfVar3[3] - pfVar3[1] <= (pfVar3[2] - *pfVar3) * 0.5) {
              pfVar4 = (float *)&stack0xffffffcc;
            }
            fStack_28 = *pfVar4;
            fStack_24 = pfVar3[3] - pfVar3[1];
          }
          else {
            fStack_28 = pfVar3[2] - *pfVar3;
            fStack_30 = (pfVar3[3] - pfVar3[1]) * 0.5;
            fStack_2c = pfVar3[2] - *pfVar3;
            pfVar4 = &fStack_30;
            if (pfVar3[2] - *pfVar3 <= fStack_30) {
              pfVar4 = &fStack_2c;
            }
            fStack_24 = *pfVar4;
          }
        }
        afStack_20[uVar5 * 2] = fStack_28;
        afStack_20[uVar5 * 2 + 1] = fStack_24;
        uVar5 = uVar5 + 1;
      } while (uVar5 < 3);
      if (*(int *)(param_1 + 0x260) == 1) {
        fVar6 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_20[1]) * 0.5;
        *(float *)(param_1 + 0x26c) = fVar6;
        *(float *)(param_1 + 0x274) = afStack_20[1] + fVar6;
        fVar6 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_20[3]) * 0.5;
        *(float *)(param_1 + 0x27c) = fVar6;
        *(float *)(param_1 + 0x284) = fVar6 + afStack_20[3];
        fVar6 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_20[5]) * 0.5;
        *(float *)(param_1 + 0x28c) = fVar6;
        *(float *)(param_1 + 0x294) = afStack_20[5] + fVar6;
      }
      else {
        fVar6 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_20[0]) * 0.5;
        *(float *)(param_1 + 0x268) = fVar6;
        *(float *)(param_1 + 0x270) = afStack_20[0] + fVar6;
        fVar6 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_20[2]) * 0.5;
        *(float *)(param_1 + 0x278) = fVar6;
        *(float *)(param_1 + 0x280) = fVar6 + afStack_20[2];
        fVar6 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_20[4]) * 0.5;
        *(float *)(param_1 + 0x288) = fVar6;
        *(float *)(param_1 + 0x290) = afStack_20[4] + fVar6;
      }
      if (*(int *)(param_1 + 0x260) == 1) {
        *(undefined4 *)(param_1 + 0x288) = 0;
        *(float *)(param_1 + 0x290) = *(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40);
        fVar6 = (*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_20[2];
      }
      else {
        *(undefined4 *)(param_1 + 0x28c) = 0;
        *(float *)(param_1 + 0x294) = *(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44);
        fVar6 = (*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_20[3];
      }
      fVar7 = ((float)(*(int *)(param_1 + 0x254) - *(int *)(param_1 + 600)) /
              (float)(*(int *)(param_1 + 0x25c) - *(int *)(param_1 + 600))) * fVar6;
      if (*(int *)(param_1 + 0x260) == 1) {
        fVar7 = fVar7 + *(float *)(param_1 + 0x288);
        *(float *)(param_1 + 0x278) = fVar7;
        *(float *)(param_1 + 0x280) = fVar7 + afStack_20[2];
      }
      else {
        fVar6 = (fVar6 - fVar7) + *(float *)(param_1 + 0x28c);
        *(float *)(param_1 + 0x27c) = fVar6;
        *(float *)(param_1 + 0x284) = fVar6 + afStack_20[3];
      }
                    /* WARNING: Could not recover jumptable at 0x00539edb. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*(int *)(param_1 + 4) + 0x90))();
      return;
    }
  }
  return;
}

