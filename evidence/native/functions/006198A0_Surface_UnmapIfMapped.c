/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=surface, mapping pointer RET4 void. bitsNULL does
   nothing. Nonnull mapping kind0/2 invokes virtual50 explicit receiver+mip, kind1
   receiver+face+mip; HRESULT ignored. Other kinds do not invoke virtual but still clear
   mapping.bits. Does not clear other mapping fields. Selected map producer only admits kind0. */

void __thiscall Surface_UnmapIfMapped(void *this,PC167_SurfaceMapping *mapping)

{
  int iVar1;
  
  if (mapping->bits != (void *)0x0) {
    iVar1 = *(int *)((int)this + 0x2c);
    if (iVar1 == 0) {
      (**(code **)(**(int **)((int)this + 0x30) + 0x50))
                (*(int **)((int)this + 0x30),mapping->mipLevel);
    }
    else {
      if (iVar1 == 1) {
        (**(code **)(**(int **)((int)this + 0x30) + 0x50))
                  (*(int **)((int)this + 0x30),mapping->face,mapping->mipLevel);
        mapping->bits = (void *)0x0;
        return;
      }
      if (iVar1 == 2) {
        (**(code **)(**(int **)((int)this + 0x30) + 0x50))
                  (*(int **)((int)this + 0x30),mapping->mipLevel);
        mapping->bits = (void *)0x0;
        return;
      }
    }
    mapping->bits = (void *)0x0;
  }
  return;
}

