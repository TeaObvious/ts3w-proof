/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX row, no stack arguments RET void. Frees name.begin4
   only if signed(capacityC-begin4)>1 AND begin nonnull. Does not clear fields or retire any sound
   handle. */

void __thiscall ObjectSoundRow_DestroyName(void *this)

{
  void *allocation;
  
  allocation = *(void **)((int)this + 4);
  if ((1 < *(int *)((int)this + 0xc) - (int)allocation) && (allocation != (void *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  return;
}

