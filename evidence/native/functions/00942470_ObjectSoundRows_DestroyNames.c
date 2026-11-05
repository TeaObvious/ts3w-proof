/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. Two stack pointers begin/end RET8; ECX is UNUSED even
   though callers often set it. Iterates unsigned begin<end by20, conditionally frees row strings
   using signed(capacity-begin)>1, does not erase rows/update vector. stdcall describes actual
   callee cleanup, not recovered source declaration. */

void ObjectSoundRows_DestroyNames(void *begin,void *end)

{
  void *allocation;
  
  for (; begin < end; begin = (void *)((int)begin + 0x14)) {
    allocation = *(void **)((int)begin + 4);
    if ((1 < *(int *)((int)begin + 0xc) - (int)allocation) && (allocation != (void *)0x0)) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

