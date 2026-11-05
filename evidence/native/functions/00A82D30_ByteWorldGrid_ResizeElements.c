/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete8byte adjustor body ADD ECX,10hex; tailJMP412E20 ByteVector_ResizeZeroed. Physical
   caller ECXgrid+elementCountword; callee returnsRET4. Adjusted ECX points at
   vectorbegin/end/capacity/tag, not a different grid layout. No instruction or originalbyte patch.
    */

void __thiscall ByteWorldGrid_ResizeElements(void *this,uint elementCount)

{
  ByteVector_ResizeZeroed((void *)((int)this + 0x10),elementCount);
  return;
}

