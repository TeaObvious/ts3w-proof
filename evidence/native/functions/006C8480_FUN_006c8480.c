/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-word range copy with end output; descriptive label, not recovered original symbol.
   cdecl outputEnd/srcBegin/srcEnd/dstBegin, plain RET void. Copies fourDWORDs per element; stores advanced destination in output pointer. Null destination skips individual writes but pointer still advances; no allocation/failure or overlap guarantee. */

void __cdecl
FUN_006c8480(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  *param_1 = param_4;
  if (param_2 != param_3) {
    do {
      if (param_4 != (undefined4 *)0x0) {
        *param_4 = *param_2;
        param_4[1] = param_2[1];
        param_4[2] = param_2[2];
        param_4[3] = param_2[3];
      }
      param_2 = param_2 + 4;
      param_4 = param_4 + 4;
    } while (param_2 != param_3);
    *param_1 = param_4;
  }
  return;
}
