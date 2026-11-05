/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. x87 child vtable+0x18 result
   multiplied by stored scale+0x30. */

float10 __fastcall AnimationTimeScaleController_GetClipTime(int param_1)

{
  float10 fVar1;
  
  fVar1 = (float10)(**(code **)(**(int **)(param_1 + 0x2c) + 0x18))();
  return fVar1 * (float10)*(float *)(param_1 + 0x30);
}

