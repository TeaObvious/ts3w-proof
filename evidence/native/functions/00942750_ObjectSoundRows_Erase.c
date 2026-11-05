/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX vector, row pointer RET4 returns SAME supplied row. If
   row+20 unsigned<end, shifts following records with9424B0. Always reduces end by20 and
   conditionally frees old tail name. No local membership/empty/null guard; invalid pointers are not
   an admitted safe API. */

void * __thiscall ObjectSoundRows_Erase(void *this,void *row)

{
  void *allocation;
  
  if ((void *)((int)row + 0x14) < *(void **)((int)this + 4)) {
    ObjectSoundRows_AssignForward((void *)((int)row + 0x14),*(void **)((int)this + 4),row);
  }
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + -0x14;
  allocation = *(void **)(*(int *)((int)this + 4) + 4);
  if ((1 < *(int *)(*(int *)((int)this + 4) + 0xc) - (int)allocation) && (allocation != (void *)0x0)
     ) {
    Memory_FreeIfNonNull(allocation);
  }
  return row;
}

