/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. If this+0 row-pointer array exists, frees first row's
   backing allocation and row-pointer allocation through004e44e0. Clears+0,+14,+10,+8 and byte+34.
   The producer00c88330 allocatesN pointers (4N bytes) and a contiguousN*N 4-byte packed-vertex
   array. Values/budgets outside these reset fields remain. */

void __thiscall TerrainOptimizer_ReleaseVertices(void *this)

{
  if (*(undefined4 **)this != (undefined4 *)0x0) {
    Memory_FreeIfNonNull((void *)**(undefined4 **)this);
    Memory_FreeIfNonNull(*(void **)this);
    *(undefined4 *)this = 0;
    *(undefined4 *)((int)this + 0x14) = 0;
    *(undefined4 *)((int)this + 0x10) = 0;
    *(undefined1 *)((int)this + 0x34) = 0;
    *(undefined4 *)((int)this + 8) = 0;
  }
  return;
}

