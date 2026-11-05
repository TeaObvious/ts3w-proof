/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Vtable010650b8[0]. Frees uint16 sample payload+38; releases
   each derived cache entry via00aa6d60; frees cache pointer-vector backing+44; restores base
   vtable. deleteFlags bit0 frees100-byte owner. Returns oldthis value inEAX even when freed; caller
   must not dereference it. */

void * __thiscall HeightMap_DeletingDestructor(void *this,uchar deleteFlags)

{
  *(undefined ***)this = &PTR_HeightMap_DeletingDestructor_010650b8;
  Memory_FreeIfNonNull(*(void **)((int)this + 0x38));
  *(undefined4 *)((int)this + 0x38) = 0;
  HeightMap_ReleaseDerivedCacheEntries(this);
  *(undefined4 *)((int)this + 0x40) = 0xffffffff;
  if (*(void **)((int)this + 0x44) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x44));
  }
  *(undefined ***)this = &PTR_FUN_0102bba4;
  if ((deleteFlags & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

