/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 supplied lot identity/import counterpart): Analyst typed-lot role from
   concrete AD4180 consumer and virtual type1 gate, not recovered C++ name. ECX manager plus
   GUIDlow/GUIDhigh/optional visit-counter pointer, RET0C; EAX borrowed object/null. Call C60740,
   require nonnull and virtual+40 result exactly1; otherwise return null. This full
   exact-identity/type admission is separate from current preview/resource-signature similarity.
   Concrete virtual implementations and full object model remain unproven by this adapter. */

int * __thiscall
WorldObjects_FindLotByGuid(void *this,uint guidLow,uint guidHigh,uint *visitCounter)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = WorldObjects_FindByGuid(this,guidLow,guidHigh,visitCounter);
  if (piVar1 != (int *)0x0) {
    iVar2 = (**(code **)(*piVar1 + 0x40))();
    if (iVar2 == 1) {
      return piVar1;
    }
  }
  return (int *)0x0;
}

