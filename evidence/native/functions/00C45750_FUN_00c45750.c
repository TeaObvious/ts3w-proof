/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Four cdecl words source endpoints, orientation pointer, output, UInt32 pair index; plainRET. Converts pair index using FILD and2^32 sign correction, dispatches orientation1..7 by table, default copies. Planar SUBSS uses pristine negative-zero; ordered branch predicates compare leftZ against0 and leftX/rightX. Level DWORDs are copied, not numerically converted. Full nonfinite/invalid orientation and source row semantics remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00C45750_FUN_00c45750.asm
 */

void __cdecl FUN_00c45750(float *param_1,undefined4 *param_2,float *param_3,int param_4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float local_30;
  float local_2c;
  float local_24;
  float local_20;
  
  fVar5 = (float)param_4;
  fVar1 = *param_1;
  fVar8 = param_1[1];
  fVar6 = param_1[4];
  fVar2 = param_1[3];
  local_24 = param_1[3];
  fVar3 = param_1[2];
  fVar4 = param_1[5];
  if (param_4 < 0) {
    fVar5 = fVar5 + FLOAT_00f99948;
  }
  local_30 = *param_1;
  local_2c = param_1[1];
  local_20 = param_1[4];
  switch(*param_2) {
  case 1:
    local_2c = FLOAT_00f998f0 - fVar1;
    local_20 = FLOAT_00f998f0 - fVar2;
    if (DAT_010f4ccc < fVar8 == fVar1 < fVar2) {
      fVar8 = FLOAT_00f998f0 - fVar8;
    }
    else {
      fVar6 = FLOAT_00f998f0 - fVar6;
    }
    local_24 = fVar6 + fVar5;
    fVar8 = fVar8 + fVar5;
    goto LAB_00c45ab3;
  case 2:
    local_2c = FLOAT_00f998f0 - fVar1;
    local_20 = FLOAT_00f998f0 - fVar2;
    goto LAB_00c45aad;
  case 3:
    local_2c = FLOAT_00f998f0 - fVar1;
    local_20 = FLOAT_00f998f0 - fVar2;
    if (DAT_010f4ccc < fVar8 == fVar1 < fVar2) {
      fVar6 = FLOAT_00f998f0 - fVar6;
    }
    else {
      fVar8 = FLOAT_00f998f0 - fVar8;
    }
    local_30 = fVar8 - fVar5;
    local_24 = fVar6 - fVar5;
    break;
  case 4:
    local_2c = FLOAT_00f998f0 - fVar8;
    local_30 = FLOAT_00f998f0 - fVar1;
    local_20 = FLOAT_00f998f0 - fVar6;
    local_24 = FLOAT_00f998f0 - fVar2;
    break;
  case 5:
    local_30 = FLOAT_00f998f0 - fVar1;
    fVar6 = FLOAT_00f998f0 - fVar6;
    local_24 = FLOAT_00f998f0 - fVar2;
    local_2c = FLOAT_00f998f0 - fVar8;
    if (DAT_010f4ccc < fVar8 == fVar1 < fVar2) {
      fVar6 = FLOAT_00f998f0 - fVar6;
    }
    else {
      local_2c = FLOAT_00f998f0 - local_2c;
    }
    local_2c = local_2c + fVar5;
    local_20 = fVar6 + fVar5;
    break;
  case 6:
    local_30 = FLOAT_00f998f0 - fVar8;
    local_24 = FLOAT_00f998f0 - fVar6;
    local_2c = fVar1;
    local_20 = fVar2;
    break;
  case 7:
    fVar6 = FLOAT_00f998f0 - fVar6;
    fVar7 = FLOAT_00f998f0 - fVar8;
    if (DAT_010f4ccc < fVar8 == fVar1 < fVar2) {
      fVar6 = FLOAT_00f998f0 - fVar6;
    }
    else {
      fVar7 = FLOAT_00f998f0 - fVar7;
    }
    fVar8 = fVar7 + fVar5;
    fVar6 = fVar6 + fVar5;
    local_2c = fVar1;
    local_20 = fVar2;
LAB_00c45aad:
    local_24 = fVar6;
LAB_00c45ab3:
    local_30 = fVar8;
  }
  *param_3 = local_30;
  param_3[1] = local_2c;
  param_3[3] = local_24;
  param_3[2] = fVar3;
  param_3[4] = local_20;
  param_3[5] = fVar4;
  return;
}

