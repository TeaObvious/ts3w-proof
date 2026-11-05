/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Seeded byte hash multiply then XOR; descriptive label, not recovered original symbol.
   cdecl byte pointer/signed byteLength/UInt32 seed, plain RET EAX hash. Positive admitted byte range performs h=(h*01000193) XOR zeroextended byte modulo2^32. This is FNV-1 order, NOT FNV-1a. Pointer end arithmetic/admission are native caller obligations; length0 returns seed. */

uint __cdecl FUN_004fa750(byte *param_1,int param_2,uint param_3)

{
  byte *pbVar1;
  
  pbVar1 = param_1 + param_2;
  for (; param_1 < pbVar1; param_1 = param_1 + 1) {
    param_3 = param_3 * 0x1000193 ^ (uint)*param_1;
  }
  return param_3;
}
