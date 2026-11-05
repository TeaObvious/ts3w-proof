/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Room fill output: ECX owner; stack4 destination, stack8 input four-lane average, stackC low byte nonlinear, RETC. It writes destination and returns its pointer through EAX. Owner+10/+14 selects minimum setting11D1B40/60 through C62C10; 11D1B88 scales minimum. Nonlinear branch loads11D1B80/90 and supplies x87 base/exponent before _CIpow. Decompiler omits their arguments; the Listing shows FLD/FMUL/FSTP then FLD/FLD/CALL. Four-lane result and RGB-sum deficit must be kept distinct from CLR Vector3 defaults.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 006A02B0_FUN_006a02b0.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall FUN_006a02b0(void *this,float *param_1,float *param_2,char param_3)

{
  float fVar1;
  float fVar2;
  uint uVar3;
  float *pfVar4;
  float *pfVar5;
  undefined *puVar6;
  float10 fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  
  uVar3 = FUN_00c62c10(DAT_011edbc4,*(int *)((int)this + 0x10),*(int *)((int)this + 0x14));
  puVar6 = &DAT_011d1b60;
  if ((char)uVar3 == '\0') {
    puVar6 = &DAT_011d1b40;
  }
  pfVar4 = (float *)FUN_007e51a0(puVar6);
  pfVar5 = (float *)FUN_007e51a0(&DAT_011d1b88);
  fVar9 = FLOAT_00f998f8;
  fVar1 = *pfVar5;
  fVar2 = pfVar4[3];
  fVar13 = *param_2;
  fVar14 = param_2[1];
  fVar15 = param_2[2];
  fVar16 = param_2[3];
  fVar10 = *pfVar4 * fVar1;
  fVar11 = pfVar4[1] * fVar1;
  fVar12 = pfVar4[2] * fVar1;
  fVar8 = fVar15 * FLOAT_00f998f8 + fVar14 * FLOAT_00f998f8 + fVar13 * FLOAT_00f998f8;
  if (fVar8 < _DAT_00fe4580) {
    *param_1 = fVar10;
    param_1[1] = fVar11;
    param_1[2] = fVar12;
    param_1[3] = fVar2 * fVar1;
    return;
  }
  if (param_3 != '\0') {
    FUN_007e51a0(&DAT_011d1b80);
    FUN_007e51a0(&DAT_011d1b90);
    fVar7 = (float10)_CIpow();
    fVar16 = (float)(fVar7 / (float10)fVar8);
    fVar13 = *param_2 * fVar16;
    fVar14 = param_2[1] * fVar16;
    fVar15 = param_2[2] * fVar16;
    fVar16 = param_2[3] * fVar16;
  }
  fVar8 = fVar9 * fVar15 + fVar9 * fVar14 + fVar9 * fVar13;
  fVar9 = fVar9 * fVar12 + fVar9 * fVar11 + fVar9 * fVar10;
  if (fVar8 < fVar9) {
    fVar9 = fVar9 - fVar8;
    fVar13 = fVar9 * fVar10 + fVar13;
    fVar14 = fVar9 * fVar11 + fVar14;
    fVar15 = fVar9 * fVar12 + fVar15;
    fVar16 = fVar9 * fVar2 * fVar1 + fVar16;
  }
  *param_1 = fVar13;
  param_1[1] = fVar14;
  param_1[2] = fVar15;
  param_1[3] = fVar16;
  return;
}

