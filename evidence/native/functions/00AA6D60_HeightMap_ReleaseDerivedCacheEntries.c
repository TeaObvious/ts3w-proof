/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Iterates4-byte pointer entries from owner+44 to+48. Each
   nonnull entry owns allocations at+0 and+4; frees/nulls both, then frees entry. Clears vector
   slot, finally sets end+48=begin+44. Vector backing is retained here and freed separately by
   deleting destructor. */

void __thiscall HeightMap_ReleaseDerivedCacheEntries(void *this)

{
  undefined4 *puVar1;
  undefined4 *allocation;
  undefined4 *puVar2;
  
  puVar1 = *(undefined4 **)((int)this + 0x48);
  for (puVar2 = *(undefined4 **)((int)this + 0x44); puVar2 != puVar1; puVar2 = puVar2 + 1) {
    allocation = (undefined4 *)*puVar2;
    if (allocation != (undefined4 *)0x0) {
      if ((void *)*allocation != (void *)0x0) {
        Memory_FreeIfNonNull((void *)*allocation);
        *allocation = 0;
      }
      if ((void *)allocation[1] != (void *)0x0) {
        Memory_FreeIfNonNull((void *)allocation[1]);
        allocation[1] = 0;
      }
      Memory_FreeIfNonNull(allocation);
    }
    *puVar2 = 0;
  }
  *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)this + 0x44);
  return;
}

