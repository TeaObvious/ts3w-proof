/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Original cdecl forwards
   controller,outTranslation,outRotation plus local speed output to SampleTotalMotionAndSpeed; tail
   return is x87 float magnitude from00848810, not void (caller73adab explicitly FSTP ST0). */

float __cdecl
AnimationController_SampleTotalMotion(int *param_1,undefined4 *param_2,undefined4 *param_3)

{
  float10 fVar1;
  float local_4;
  
  fVar1 = AnimationController_SampleTotalMotionAndSpeed(param_1,param_2,param_3,&local_4);
  return (float)fVar1;
}

