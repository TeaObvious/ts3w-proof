/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical cdecl four stack words: lot pointer, productKey pointer, fullPresetId DWORD,
   finish-output pointer. LookupFenceProduct uses allowDefault1, then forwards to A62A60. No
   authored ordinal or numeric0-as-default assumption. Current inherited void return is not expanded
   into a new reliable fullEAX success contract solely because child leaves AL. */

void __cdecl FencePreset_BuildForProductKey(int param_1,uint *param_2,uint param_3,void *param_4)

{
  int *piVar1;
  
  piVar1 = ProductCatalog_LookupFenceProduct(DAT_011ee034,param_2,1);
  FencePreset_BuildFinishPrograms(param_1,piVar1,param_3,param_4);
  return;
}

