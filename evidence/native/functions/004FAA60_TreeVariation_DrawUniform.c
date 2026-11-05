/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX UInt32state, no physical stack arguments,
   plainRET, ST0 x87 result. Zero state seeds lowRDTSC; IMUL278DDE6D wraps32bits. SIGNED FILD
   updatedword, FMULbinary32exact2^-32, FADD0.5, clamp>=1 to0. No output FSTPfloat inside this body;
   caller precision distinct. Nonzero valid-state numeric recurrence is portable, entropy is
   host-specific. */

float10 __fastcall TreeVariation_DrawUniform(int *param_1)

{
  int iVar1;
  undefined8 uVar2;
  float10 fVar3;
  
  if (*param_1 == 0) {
    uVar2 = rdtsc();
    *param_1 = (int)uVar2;
  }
  iVar1 = *param_1;
  *param_1 = iVar1 * 0x278dde6d;
  fVar3 = (float10)(iVar1 * 0x278dde6d) * (float10)2.3283064e-10 + (float10)0.5;
  if ((float10)1 <= fVar3) {
    fVar3 = (float10)0;
  }
  return fVar3;
}

