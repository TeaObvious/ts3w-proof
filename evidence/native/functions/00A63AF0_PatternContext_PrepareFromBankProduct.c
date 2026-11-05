/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction preparation/interaction comparison): Analyst bank/key to actual
   product/preset context role. Physical cdecl five DWORD slots lot,key,presetId,bank,outContext.
   C8EA70 receives ECX catalog, bank/key/allow1, then the original product result is passed to
   A62710(lot,product,preset,outContext). Only ADD ESP,10 hex and RET follow that child, so AL is
   preserved as its boolean result; CE9020@CE90AF tests AL after the matching wrapper call. Original
   function did not have a meaningful void return. Upper EAX is unspecified. Other callers listed in
   incoming census are not proof every tool shares the selected wall/floor staging path. */

bool __cdecl
PatternContext_PrepareFromBankProduct
          (int param_1,uint *param_2,uint param_3,int param_4,void *param_5)

{
  bool bVar1;
  int *piVar2;
  
  piVar2 = PatternCatalog_LookupBankProduct(DAT_011ee034,param_4,param_2,'\x01');
  bVar1 = PatternContext_PrepareFromProductPreset(param_1,piVar2,param_3,param_5);
  return bVar1;
}

