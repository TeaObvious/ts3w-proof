/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl two words composing low/high input. Physical multiword arithmetic: key +=
   ~(key<<32); xor>>22; +=~(key<<13); xor>>8; +=key<<3; xor>>15; +=~(key<<27); final EAX low32(key
   xor key>>31). EDX contains only high bit from pre-final shift; stored undefined8 is physical
   return artifact, not a claim of a full 64bit final hash. Actual caller identity consumes EAX.
   Verified SHRD/SHLD, ADD/ADC carries and wraps against complete Listing. */

undefined8 __cdecl HashWordPair_Finalize(uint param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = param_2 + ~param_1 + (uint)(param_1 != 0);
  uVar3 = uVar2 ^ uVar2 >> 0x16;
  uVar2 = param_1 - 1 ^ (param_1 - 1 >> 0x16 | uVar2 * 0x400);
  uVar1 = uVar2 + ~(uVar2 << 0xd);
  uVar2 = uVar3 + ~(uVar3 << 0xd | uVar2 >> 0x13) + (uint)CARRY4(uVar2,~(uVar2 << 0xd));
  uVar3 = uVar2 ^ uVar2 >> 8;
  uVar1 = uVar1 ^ (uVar1 >> 8 | uVar2 * 0x1000000);
  uVar3 = uVar3 + (uVar1 >> 0x1d | uVar3 << 3) + (uint)CARRY4(uVar1,uVar1 * 8);
  uVar2 = uVar1 * 9 ^ (uVar1 * 9 >> 0xf | uVar3 * 0x20000);
  uVar3 = uVar3 ^ uVar3 >> 0xf;
  uVar1 = uVar2 + ~(uVar2 << 0x1b);
  uVar2 = uVar3 + ~(uVar3 << 0x1b | uVar2 >> 5) + (uint)CARRY4(uVar2,~(uVar2 << 0x1b));
  return CONCAT44(uVar2 >> 0x1f,(uVar1 >> 0x1f | uVar2 * 2) ^ uVar1);
}

