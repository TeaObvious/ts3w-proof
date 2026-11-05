/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(leftBytes,rightBytes,signedCount). CRT
   tolower per byte; return -1/0/1 for first unequal folded byte, otherwise0. Runtime CRT locale
   behavior and non-ASCII semantics not promoted to Unicode case folding. */

int __cdecl Bytes_CompareCaseFolded(byte *param_1,byte *param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  while( true ) {
    if (param_3 == 0) {
      return 0;
    }
    iVar1 = tolower((uint)*param_1);
    iVar2 = tolower((uint)*param_2);
    if ((char)iVar1 != (char)iVar2) break;
    param_1 = param_1 + 1;
    param_2 = param_2 + 1;
    param_3 = param_3 + -1;
  }
  return (uint)((char)iVar2 <= (char)iVar1) * 2 + -1;
}

