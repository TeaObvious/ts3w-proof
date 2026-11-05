/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. 27 original bytes; stdcall FOUR stack
   arguments owner,resourceView,context,swapWordFlag; RET10. Adapts first toECX then forwards three
   stack arguments to reviewed reader. No additional validation. */

bool VertexFormatResource_LoadCallback
               (void *owner,void *resourceView,void *context,uint swapWordFlag)

{
  bool bVar1;
  
  bVar1 = VertexFormatResource_ReadElements(owner,resourceView,context,swapWordFlag);
  return bVar1;
}

