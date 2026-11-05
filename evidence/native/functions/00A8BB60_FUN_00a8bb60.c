/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Sixty-four-byte range copy with end output; descriptive label, not recovered original symbol.
   cdecl outputEnd/srcBegin/srcEnd/dstBegin, plain RET void. Copies16DWORDs per element and returns advanced destination through output pointer. Null destination skips a write but still advances; not a general safe-null allocator contract. No overlap guarantee. */

void __cdecl
FUN_00a8bb60(undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  
  *param_1 = param_4;
  if (param_2 != param_3) {
    do {
      if (param_4 != (undefined4 *)0x0) {
        puVar2 = param_2;
        puVar3 = param_4;
        for (iVar1 = 0x10; iVar1 != 0; iVar1 = iVar1 + -1) {
          *puVar3 = *puVar2;
          puVar2 = puVar2 + 1;
          puVar3 = puVar3 + 1;
        }
      }
      param_2 = param_2 + 0x10;
      param_4 = param_4 + 0x10;
    } while (param_2 != param_3);
    *param_1 = param_4;
  }
  return;
}
