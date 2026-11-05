/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* One float stack word, cdecl/plainRET, x87ST0 result. DIVSS by storedFloat32 bits3F490FDA, Float32
   quotient store, FISTP under ambientCW, signed remainder8 then integer-times-step x87 result.
   Nearest/even is a supported host profile, not mode-setting native behavior. */

float10 __cdecl Placement_QuantizeYawToEightDirections(float param_1)

{
  uint uVar1;
  
  uVar1 = (int)ROUND(param_1 / DAT_011845d4) & 0x80000007;
  if ((int)uVar1 < 0) {
    uVar1 = (uVar1 - 1 | 0xfffffff8) + 1;
  }
  return (float10)(int)uVar1 * (float10)DAT_011845d4;
}

