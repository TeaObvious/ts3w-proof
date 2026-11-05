/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Seven physical cdecl Single stack words t,t2,t3,a,b,c,d, x87 ST0 result and RET0. Literal x87 stack instructions govern coefficient combinations and extended-precision rounding; the caller stores binary32. Pristine coefficients0,2,3,5,4,.5 yield the Catmull-Rom polynomial, but host binary32 expression/order and lower vector helper are not verified bit-equivalent. Do not infer coefficient signs from DAT names.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 009677A0_FUN_009677a0.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float10 __cdecl
FUN_009677a0(float param_1,float param_2,float param_3,float param_4,float param_5,float param_6,
            float param_7)

{
  float10 fVar1;
  float10 fVar2;
  float10 fVar3;
  
  fVar1 = (float10)param_3;
  fVar2 = (float10)param_1;
  fVar3 = (float10)param_2;
  return (((fVar1 - fVar3) + (float10)DAT_010f4ccc * fVar2) * (float10)param_7 +
         (((float10)DAT_0103fd88 * fVar3 - fVar1) - fVar2) * (float10)param_4 +
         ((fVar3 * (float10)DAT_00fb3f7c - (float10)DAT_00fa2b9c * fVar1) + fVar2) *
         (float10)param_6 +
         (((float10)DAT_00fa2b9c * fVar1 - (float10)_DAT_01062bc8 * fVar3) +
          (float10)DAT_010f4ccc * fVar2 + (float10)DAT_0103fd88) * (float10)param_5) *
         (float10)_DAT_00f9b5b4;
}

