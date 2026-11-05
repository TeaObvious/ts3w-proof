/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX manager, RET4 delete flags. Clears global, clears
   owned maps, frees vector, destroys base, optionally frees this on flag bit0. Exact
   concurrent-reader/refresh coordination is unresolved. */

void * __thiscall NameGuidMaps_Destroy(void *this,byte param_1)

{
  void *allocation;
  
  *(undefined ***)this = &PTR_FUN_00fdebb4;
  DAT_011cf308 = 0;
  FUN_0059d7c0(*(uint *)((int)this + 0x10),*(uint *)((int)this + 0x14));
  allocation = *(void **)((int)this + 0x10);
  if (allocation != (void *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  FUN_0059f450(this);
  if ((param_1 & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

