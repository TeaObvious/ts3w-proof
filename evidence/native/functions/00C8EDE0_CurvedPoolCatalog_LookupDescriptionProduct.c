/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical ECXcatalog plus
   keypointer/RET4/EAXproductpointeror0. Existing C8DB20 sorted24-byte arraylookup bank124.
   Exactmiss selects header+4 (catalog128=end), then compare-to-same-end returns0; no firstrow
   fallback. Match product row10. Borrowedpointer lifetime not established by this lookup alone.
   Real consumers CE61D0/C8F8C0 and CD5CC0. Current exact package lookup differs; no uniform
   lookup/cache policy inference. */

void * __thiscall CurvedPoolCatalog_LookupDescriptionProduct(void *this,void *sourceKey)

{
  int local_8;
  int local_4;
  
  ProductCatalogKeyArray_FindExact((void *)((int)this + 0x124),&local_8,sourceKey);
  if (local_8 == local_4) {
                    /* Exact miss selects the bank END pointer at catalog+128, then returns null. It
                       does not select the first product. */
    local_8 = *(int *)((int)this + 0x128);
  }
  if (local_8 == *(int *)((int)this + 0x128)) {
    return (void *)0x0;
  }
  return *(void **)(local_8 + 0x10);
}

