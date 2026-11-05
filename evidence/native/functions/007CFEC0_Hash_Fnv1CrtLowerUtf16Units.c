/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role: FNV-1 of a counted UTF16 code-unit sequence after CRT lowercase
   conversion. PC1.67: initial811C9DC5; count0 returns seed without input dereference. Each
   iteration MOVZX-loads an unsigned16bit input, calls IAT F96768 (pristine PE import
   MSVCR80.dll!towlower), decrements32bit count, IMULs accumulator by01000193, MOVZXs returned AX,
   then XORs; pointer advances2, loop ends at count0, full hash returnsEAX. Stored int count has no
   nonnegative check; do not introduce a validated span contract. Actual CRT locale/non-ASCII
   behavior is not established as .NET ToLowerInvariant. Distinct from4FA830 mode1 ASCII-byte-table
   policy used for model-name filing. Exact owned ranges7CFEC0..7CFEDC and7CFEE0..7CFF04
   total66B28I; intervening7CFEDD..7CFEDF3B are not owned. */

uint __cdecl Hash_Fnv1CrtLowerUtf16Units(wint_t *param_1,int param_2)

{
  wint_t wVar1;
  uint uVar2;
  
  uVar2 = 0x811c9dc5;
  for (; param_2 != 0; param_2 = param_2 + -1) {
    wVar1 = towlower(*param_1);
    uVar2 = uVar2 * 0x1000193 ^ (uint)wVar1;
    param_1 = param_1 + 1;
  }
  return uVar2;
}

