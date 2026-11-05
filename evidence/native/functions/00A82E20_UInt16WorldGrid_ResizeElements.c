/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete8byte adjustor ADD ECX,10hex; tailJMP67F5E0 UInt16Vector_ResizeZeroed, physical
   ECXgrid+ONEelementCountword, targetRET4. elementCount countsUSHORTs, not bytes;
   targetmultipliesby2. Originalbytes unchanged. */

void __thiscall UInt16WorldGrid_ResizeElements(void *this,uint elementCount)

{
  UInt16Vector_ResizeZeroed((void *)((int)this + 0x10),elementCount);
  return;
}

