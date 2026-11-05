/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name: cdecl pointer plus DWORD count, in-place endian reversal. The complete-word loop
   leaves trailing bytes untouched. Shared payload aliases observe previous writes. This helper
   returns no Boolean or byte count; any decompiler caller expression using EAX is an
   inferred-signature artifact. */

void __cdecl ResourceBytes_SwapDwordsInPlace(uint *param_1,int param_2)

{
  uint uVar1;
  
  for (; param_2 != 0; param_2 = param_2 + -1) {
    uVar1 = *param_1;
    *param_1 = uVar1 >> 0x18 | (uVar1 & 0xff0000) >> 8 | (uVar1 & 0xff00) << 8 | uVar1 << 0x18;
    param_1 = param_1 + 1;
  }
  return;
}

