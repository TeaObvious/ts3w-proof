/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=surface registry, one tag DWORD RET4, returns pointer
   to value at matched node+4 or NULL at sentinel. Previous fastcall/no-key C was an ABI artifact:
   actual caller pushes tag6EE45453. Map at registry+20, uses617A10; no retain. */

void * __thiscall SurfaceRegistry_FindValueByTag(void *this,uint tag)

{
  int local_8 [2];
  
  SurfaceTagMap_FindIterator((void *)((int)this + 0x20),local_8,&tag);
  if (local_8[0] != *(int *)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
    return (void *)(local_8[0] + 4);
  }
  return (void *)0x0;
}

