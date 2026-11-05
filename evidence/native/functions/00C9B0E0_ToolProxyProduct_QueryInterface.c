/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete25byte query method excluding7CC padding; ECXproduct+interfaceID stackword RET4.
   Returns this for04AC5D9E, otherwise tail jumps C92FE0 retaining same singleword. Generic base
   acceptsB14A3B07,02269ED1,EB54B802,EE3F516E, so build fractional-price interface04ED4893 is NOT
   supplied by this product. Together with vtable20 true this selects rounded build-scale branch
   inCEF6B0. */

undefined * __thiscall ToolProxyProduct_QueryInterface(void *this,uint interfaceId)

{
  undefined *puVar1;
  
  if (interfaceId == 0x4ac5d9e) {
    return this;
  }
  puVar1 = CatalogProduct_QueryBaseInterface(this,interfaceId);
  return puVar1;
}

