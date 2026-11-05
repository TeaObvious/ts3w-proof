/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 model-resource instruction contract. 27 original bytes stdcall4
   owner/resourceView/referenceContext/swapWordFlag, RET10; ECX adapter forwards
   toModelLodResource_ReadDrawables; no further validation. */

bool ModelLodResource_LoadCallback
               (void *owner,void *resourceView,void *referenceContext,uint swapWordFlag)

{
  bool bVar1;
  
  bVar1 = ModelLodResource_ReadDrawables(owner,resourceView,referenceContext,swapWordFlag);
  return bVar1;
}

