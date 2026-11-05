/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (52 bytes/27 instructions). ECX points to destination pointer slot;
   stack argument points to SOURCE SLOT, not directly to a state. Dereference source first. If
   pointers differ: nonnull incoming virtual+0x0, store destination pointer, then nonnull old
   virtual+0x4. EAX returns destination-slot address; RET4. Used by00EC5470 on controller
   current+0x24 and pending+0x2C slots; it copies no tag and clears no pending slot. Lifetime
   callback effects/reentry/rollback remain separate. Stored prototype/storage preserved.
   Virtual+0/+0x4 targets are not resolved in the retained finite evidence; reference-count
   semantics are not established by convention. */

void * __thiscall StatePointerSlots_AssignVirtualLifetime(void *this,int *param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)*param_1;
  piVar2 = *(int **)this;
  if (piVar1 != piVar2) {
    if (piVar1 != (int *)0x0) {
      (**(code **)*piVar1)();
    }
    *(int **)this = piVar1;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  return this;
}

