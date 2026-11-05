/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Three cdecl pointer words, RET0. Copies input endpoint words before output writes, adds planar coordinates with ADDSS and both level lanes with integer ADD of translation+8. C float casts for levels are misleading; this is not floating numeric conversion of level.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00C456B0_FUN_00c456b0.asm
 */

void __cdecl FUN_00c456b0(float *param_1,float *param_2,float *param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  fVar3 = param_1[1];
  fVar4 = param_1[3];
  fVar5 = param_1[4];
  fVar1 = *param_2;
  fVar6 = param_1[2];
  fVar7 = param_1[5];
  fVar2 = param_2[1];
  fVar8 = param_2[2];
  *param_3 = fVar1 + *param_1;
  param_3[1] = fVar2 + fVar3;
  param_3[2] = (float)((int)fVar6 + (int)fVar8);
  param_3[3] = fVar1 + fVar4;
  param_3[4] = fVar2 + fVar5;
  param_3[5] = (float)((int)fVar7 + (int)fVar8);
  return;
}

