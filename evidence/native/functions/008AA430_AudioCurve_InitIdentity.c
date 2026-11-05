/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: constructs the two-knot identity response (0,0),(1,1). A requested property
   that fails to load retains this fallback. Raw instruction proof:
   008AA430_AudioCurve_InitIdentity.asm.
   original PC 1.67 TS3W.exe. */

int * __fastcall AudioCurve_InitIdentity(int *param_1)

{
  int *piVar1;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar1 = param_1 + 5;
  param_1[4] = (int)piVar1;
  param_1[3] = (int)"EASTL";
  param_1[1] = (int)piVar1;
  *param_1 = (int)piVar1;
  param_1[2] = (int)(param_1 + 0xd7);
  local_8 = DAT_00f998f8;
  local_10 = 0;
  local_c = 0;
  param_1[3] = (int)"EASTL fixed_vector";
  param_1[0xd7] = 0;
  local_4 = local_8;
  FUN_008a9f90(param_1,(int)&local_10,2);
  return param_1;
}

