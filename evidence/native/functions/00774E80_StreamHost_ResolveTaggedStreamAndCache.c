/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[00774e80, 00774eb9]]: 58 original owned bytes/21 actual Listing
   instructions. One stack handle and plain RET. Reject any high byte except60 hex with zero.
   Admitted handle calls00769390 then interface virtual+0xCC(handle); a nonzero result publishes
   pointer011D783C BEFORE key011D7838. Returns the result. This helper has no previous-key equality
   fast path; callers perform their own cache comparison. Concrete manager/reference lifetime,
   synchronization and exceptions remain external; inferred int return projection is preserved. */

int __cdecl StreamHost_ResolveTaggedStreamAndCache(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  if ((param_1 & 0xff000000) != 0x60000000) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    DAT_011d7838 = param_1;
    DAT_011d783c = iVar2;
  }
  return iVar2;
}

