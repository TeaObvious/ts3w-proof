/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Room exposure: ECX room, stack4 maximum-sample pointer, RET4. Source virtual+30 returns x87 ST0; sign-bit selection of stored float subtraction is not integer numeric conversion. Sample RGB sum uses live setting11D1A70. Thresholds1159B24/20 have pristine image defaults1/3; their runtime writer remains unresolved. Room+19 enables an additional dynamic11D1C50 factor. Actual instructions govern unordered/zero/nonfinite behavior; no CLR Math.Clamp equivalence for every input.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 006A0440_FUN_006a0440.asm
 */

void __thiscall FUN_006a0440(void *this,float *param_1)

{
  uint uVar1;
  float *pfVar2;
  float fVar3;
  uint uVar4;
  uint uVar5;
  float10 fVar6;
  float fVar7;
  float local_30;
  
  *(float *)((int)this + 0x160) = FLOAT_00f998f8;
  if (*(int *)((int)this + 200) != *(int *)((int)this + 0xcc)) {
    uVar5 = *(int *)((int)this + 0xcc) - *(int *)((int)this + 200) >> 2;
    local_30 = 0.0;
    uVar4 = 0;
    if (uVar5 != 0) {
      do {
        fVar6 = (float10)(**(code **)(**(int **)(*(int *)((int)this + 200) + uVar4 * 4) + 0x30))();
        uVar4 = uVar4 + 1;
        uVar1 = (int)(float)((float10)local_30 - fVar6) >> 0x1f;
        local_30 = (float)(~uVar1 & (uint)local_30 | (uint)(float)fVar6 & uVar1);
      } while (uVar4 < uVar5);
    }
    pfVar2 = (float *)FUN_007e51a0(&DAT_011d1a70);
    fVar7 = *pfVar2;
    fVar7 = param_1[2] * fVar7 * FLOAT_00f998f8 + param_1[1] * fVar7 * FLOAT_00f998f8 +
            *param_1 * fVar7 * FLOAT_00f998f8;
    uVar4 = (int)(local_30 - fVar7) >> 0x1f;
    fVar3 = (float)(~uVar4 & (uint)local_30 | (uint)fVar7 & uVar4);
    fVar7 = DAT_01159b24;
    if ((fVar3 < DAT_01159b24) || (fVar7 = DAT_01159b20, DAT_01159b20 < fVar3)) {
      *(float *)((int)this + 0x160) = fVar7 / fVar3;
    }
    if (*(char *)((int)this + 0x19) != '\0') {
      pfVar2 = (float *)FUN_007e51a0(&DAT_011d1c50);
      *(float *)((int)this + 0x160) = *pfVar2 * *(float *)((int)this + 0x160);
    }
  }
  return;
}

