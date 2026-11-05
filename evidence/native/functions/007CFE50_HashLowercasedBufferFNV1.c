/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: 32-bit FNV-1 style hash of a supplied byte buffer after calling tolower on each byte.
   Starts at 0x811c9dc5, then multiplies by 0x01000193 and XORs each lowered value. Arithmetic wraps
   to 32 bits. The signed-char/non-ASCII behavior of tolower should not be inferred from the
   decompiler alone; shader names here are ASCII. */

uint __cdecl HashLowercasedBufferFNV1(int param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar2 = 0;
  uVar3 = 0x811c9dc5;
  if (param_2 != 0) {
    do {
      uVar1 = tolower((int)*(char *)(uVar2 + param_1));
      uVar2 = uVar2 + 1;
      uVar3 = uVar3 * 0x1000193 ^ uVar1;
    } while (uVar2 < param_2);
  }
  return uVar3;
}

