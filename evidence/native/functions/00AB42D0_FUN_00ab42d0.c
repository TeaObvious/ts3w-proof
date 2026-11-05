/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-word repeated range fill; descriptive label, not recovered original symbol.
   cdecl begin/end/value pointer, plain RET void. Copies four raw DWORDs per16-byte element over [begin,end), no count or alignment validation. Overlap/invalid pointers are caller obligations. */

void __cdecl FUN_00ab42d0(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 4) {
    *param_1 = *param_3;
    param_1[1] = param_3[1];
    param_1[2] = param_3[2];
    param_1[3] = param_3[3];
  }
  return;
}
