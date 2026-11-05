/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d9e0. Initializes native primaryFC0640/secondaryFC0628, reference fields,
   aligned axis vector(0,1,0,0), angle0 and attached-object set. Constructor state is not a generic
   missing-property reader/default policy. */

undefined4 * __fastcall StaticRotate_Initialize(undefined4 *param_1)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  param_1[1] = &PTR_LAB_00fbb1fc;
  param_1[2] = 0;
  *(undefined1 *)(param_1 + 3) = 0;
  *param_1 = &PTR_CountedReference_Retain_00fc0640;
  param_1[1] = &PTR_LAB_00fc0628;
  param_1[4] = 0;
  param_1[5] = fVar1;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  StaticRotate_InitializeAttachedSet(param_1 + 9);
  return param_1;
}

