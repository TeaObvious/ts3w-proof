/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXproduct+uint interface ID RET4. Returns same pointer
   forB14A3B07,02269ED1,EB54B802,EE3F516E, null otherwise. Generic catalog interfaces, not the
   terrain-paint fractional-price interface04ED4893. */

undefined * __thiscall CatalogProduct_QueryBaseInterface(void *this,uint interfaceId)

{
  if (((interfaceId != 0xb14a3b07) && (interfaceId != 0x2269ed1)) && (interfaceId != 0xeb54b802)) {
    this = (void *)((uint)this & (interfaceId != 0xee3f516e) - 1);
  }
  return this;
}

