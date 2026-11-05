/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete24-instruction deleting-destructor body: install01044EDC, call manager7FCEC0 to
   unregister, push0 and call94D320, then free driver vector storage when nonnull. Set base
   vtable01044278; free component storage only if incoming low-byte flags bit0 set; return this.
   RET4. Unregister precedes driver-row teardown and vector free.94D320 preserves
   release/result/manager+D4/optional-second-release order; no equivalence to authored
   foreach+Dispose or exception-rollback behavior is established. */

void * __thiscall SACS_ComponentDeletingDestructor_94D530(void *this,byte param_1)

{
  *(undefined ***)this = &PTR_FUN_01044edc;
  FUN_007fcec0(DAT_011d9d40,(int)this);
  SACS_ComponentReleaseDriverRows_94D320((int)this);
  if (*(void **)((int)this + 8) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 8));
  }
  *(undefined ***)this = &PTR_LAB_01044278;
  if ((param_1 & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

