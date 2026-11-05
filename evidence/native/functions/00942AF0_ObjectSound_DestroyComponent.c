/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX component destructor, no stack args. Publishes Audio
   vtable, repeatedly retires CURRENT FIRST masked low30-bit ID with942A00(true) until vector empty,
   destroys residual name range, frees vector only when nonnull and not inline pointer30, publishes
   base vtable. Cleanup is iterative against live end, unlike stop-matching's captured range. Full
   virtual deletion/free wrapper is separate. */

void __thiscall ObjectSound_DestroyComponent(void *this)

{
  int *piVar1;
  void *allocation;
  
  piVar1 = (int *)((int)this + 0x20);
  *(undefined ***)this = &PTR_LAB_01044628;
  if (*piVar1 != *(int *)((int)this + 0x24)) {
    do {
      ObjectSound_FinishAndRetire(this,*(uint *)*piVar1 & 0x3fffffff,1);
    } while (*piVar1 != *(int *)((int)this + 0x24));
  }
  ObjectSoundRows_DestroyNames((void *)*piVar1,*(void **)((int)this + 0x24));
  allocation = (void *)*piVar1;
  if ((allocation != (void *)0x0) && (allocation != *(void **)((int)this + 0x30))) {
    Memory_FreeIfNonNull(allocation);
  }
  *(undefined ***)this = &PTR_LAB_01044278;
  return;
}

