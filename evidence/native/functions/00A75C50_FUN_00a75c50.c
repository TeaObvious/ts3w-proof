/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Fireplace group. ECX manager, stack4 GUID-vector pointer, RET4, x87 ST0 result. Lot-scoped fullGUID lookup, temporary retain, typed catalog categorybit6, then distinct C8C820(product+8,false) lookup before price+58. ADDSS accumulates binary32 per group; object retain/release order is explicit. C8C820 type/default/fallback meaning remains unresolved; do not collapse the two catalog lookups.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00A75C50_FUN_00a75c50.asm
 */

float10 __thiscall FUN_00a75c50(void *param_1,int *param_2)

{
  int *piVar1;
  void *this;
  undefined4 *puVar2;
  int iVar3;
  ulonglong *puVar4;
  float local_c;
  
  this = DAT_011ee034;
  local_c = 0.0;
  if (*(int *)((int)param_1 + 0x24) == 0) {
    return (float10)0.0;
  }
  puVar4 = (ulonglong *)*param_2;
  if (puVar4 == (ulonglong *)param_2[1]) {
    return (float10)0.0;
  }
  do {
    puVar2 = (undefined4 *)ObjectRegistry_FindBorrowedInLot(*(void **)((int)param_1 + 0x24),*puVar4)
    ;
    if (puVar2 != (undefined4 *)0x0) {
      piVar1 = puVar2 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      iVar3 = ObjectCatalog_FindByTypedKey(this,puVar2 + 6);
      if (((iVar3 != 0) && ((*(uint *)(iVar3 + 0xd0) >> 6 & 1) != 0)) &&
         (iVar3 = FUN_00c8c820(this,(int *)(iVar3 + 8),'\0'), iVar3 != 0)) {
        local_c = *(float *)(iVar3 + 0x58) + local_c;
      }
      LOCK();
      iVar3 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar3 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar2)(1);
      }
    }
    puVar4 = puVar4 + 1;
  } while (puVar4 != (ulonglong *)param_2[1]);
  return (float10)local_c;
}

