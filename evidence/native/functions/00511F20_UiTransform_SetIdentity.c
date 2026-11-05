/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00511f20. Physical ECX transform receiver, no stack inputs/plain RET. Writes
   exact identity matrix64B (diagonal float1, other lanes0) plus classification0 at40. Window
   initializer516090 and dirty transform producer50CF40 call this before their actual
   copies/message14. Existing fastcall inferred signature, parameters and return storage retained;
   no original bytes or ABI changed. */

void __fastcall UiTransform_SetIdentity(undefined4 *param_1)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  *param_1 = FLOAT_00f998f8;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = fVar1;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[0x10] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = fVar1;
  param_1[0xb] = 0;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0xf] = fVar1;
  return;
}

