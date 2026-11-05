/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX walker, no incoming stack words,
   plainRET/tailjump. Set vtable, conditionally release listener64 through vtable14(true), clear and
   release actor entity8, retire owned allocations/request storage/callback nodes. Final virtual
   release can tailjump. Container casts, inferred undefined4 fields and unresolved destructor
   leaves do not establish complete allocator semantics. */

void __fastcall SacsWalker_DestroyOwnedState(undefined4 *param_1)

{
  int *piVar1;
  void *allocation;
  undefined4 *puVar2;
  undefined4 *allocation_00;
  
  *param_1 = &PTR_FUN_01021044;
  if ((int *)param_1[0x19] != (int *)0x0) {
    (**(code **)(*(int *)param_1[0x19] + 0x14))(1);
    param_1[0x19] = 0;
  }
  piVar1 = (int *)param_1[2];
  if (piVar1 != (int *)0x0) {
    param_1[2] = 0;
    (**(code **)(*piVar1 + 8))();
  }
  allocation = (void *)param_1[0x2a];
  if ((1 < param_1[0x2c] - (int)allocation) && (allocation != (void *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  FUN_00af94d0(param_1 + 0x1f);
  allocation_00 = (undefined4 *)param_1[0x16];
  while (allocation_00 != param_1 + 0x16) {
    puVar2 = (undefined4 *)*allocation_00;
    Memory_FreeIfNonNull(allocation_00);
    allocation_00 = puVar2;
  }
  FUN_00800570(param_1 + 0xb);
  if ((int *)param_1[2] != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x00800828. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*(int *)param_1[2] + 8))();
    return;
  }
  return;
}

