/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: null-terminated string wrapper for HashLowercasedBufferFNV1. Null pointer returns zero;
   otherwise measures bytes to NUL and hashes exactly that length. The literal shadererror hashes to
   0xa2a9b074 using the original routine. */

uint __cdecl HashLowercasedCStringFNV1(char *param_1)

{
  char cVar1;
  char *pcVar2;
  uint uVar3;
  
  if (param_1 == (char *)0x0) {
    return 0;
  }
  pcVar2 = param_1;
  do {
    cVar1 = *pcVar2;
    pcVar2 = pcVar2 + 1;
  } while (cVar1 != '\0');
  uVar3 = HashLowercasedBufferFNV1((int)param_1,(int)pcVar2 - (int)(param_1 + 1));
  return uVar3;
}

