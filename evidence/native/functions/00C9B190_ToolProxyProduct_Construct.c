/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXallocation/plainRET EAXsame pointer. Common defaults then vtable107D390 and DWORD88=0;
   allocation size90 established in C8CD90 resource04AC5D93 branch. Vtable20 points to
   compiler-shared513D50 MOV AL,1/RET: product is Build. Vtable0C is C9B0E0. Do not rename unrelated
   registered profiler alias at513D50 as a tool function. */

undefined * __thiscall ToolProxyProduct_Construct(void *this)

{
  CatalogProduct_ConstructCommonDefaults(this);
  *(undefined ***)this = &PTR_FUN_0107d390;
  *(undefined4 *)((int)this + 0x88) = 0;
  return this;
}

