/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, original PC1.67 static; analyst-assigned name. Physical cdecl one pointer to
   four-DWORD resource key, caller cleanup, plain RET; x87 ST0 result. C8E760 receives global
   catalog011EE034 and allowDefault1; if product null returns FLDZ0. Product wordE0 nonzero AND
   byte151 nonzero selects getter followed by FADD binary32 one at010793A8. Otherwise tail JMP
   C94560. Addition is on x87; no binary32 result store in this function. Current missing geometry
   fallback3, projected HasWall policy, actual mesh bounds, dictionary residency and immediate float
   addition must not be assumed equivalent. Complete B4B0E0 consumer demonstrates retained extended
   candidate comparison. */

float10 __cdecl FenceCatalog_GetPostHeight(uint *productKey)

{
  void *this;
  float10 fVar1;
  
  this = ProductCatalog_LookupFenceProduct(DAT_011ee034,productKey,1);
  if (this == (void *)0x0) {
    return (float10)0;
  }
  if ((*(int *)((int)this + 0xe0) != 0) && (*(char *)((int)this + 0x151) != '\0')) {
    fVar1 = FenceProduct_GetPostBoundsHeight(this);
    return fVar1 + (float10)_DAT_010793a8;
  }
  fVar1 = FenceProduct_GetPostBoundsHeight(this);
  return fVar1;
}

