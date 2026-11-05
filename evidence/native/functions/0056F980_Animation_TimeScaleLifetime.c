/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. x87 child
   lifetime(vtable+0x1c)*stored scale+0x30. Scale0 returns0 for finite child lifetime; constructor
   cached total duration can divide by0 separately. */

float10 __fastcall Animation_TimeScaleLifetime(int param_1)

{
  float10 fVar1;
  
  fVar1 = (float10)(**(code **)(**(int **)(param_1 + 0x2c) + 0x1c))();
  return fVar1 * (float10)*(float *)(param_1 + 0x30);
}

