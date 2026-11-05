/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-word forward range copy; descriptive label, not recovered original symbol.
   cdecl srcBegin/srcEnd/dstBegin, plain RET void. FourDWORD element copy while src!=end, then increment both pointers16. Empty range writes nothing; no overlap/bounds admission. AC08B0 shrink/equal supplies an empty source range. */

void __cdecl FUN_007fff00(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 4) {
    *param_3 = *param_1;
    param_3[1] = param_1[1];
    param_3[2] = param_1[2];
    param_3[3] = param_1[3];
    param_3 = param_3 + 4;
  }
  return;
}
