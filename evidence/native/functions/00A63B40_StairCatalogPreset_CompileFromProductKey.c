/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 physical cdecl four stackword wrapper: lot, product-key pointer, full preset ID
   and output pointer. Looks up the product with literal allowDefault1, replaces the product-key
   stack lane with the resolved product and tail-jumps A62DB0. Child status is normalized AL only,
   not a full-EAX Boolean. */

void __cdecl
StairCatalogPreset_CompileFromProductKey(int param_1,uint *param_2,uint param_3,void *param_4)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_00c8e7d0(DAT_011ee034,param_2,'\x01');
  StairCatalogPreset_CompileFromProductAndFullId(param_1,piVar1,param_3,param_4);
  return;
}

