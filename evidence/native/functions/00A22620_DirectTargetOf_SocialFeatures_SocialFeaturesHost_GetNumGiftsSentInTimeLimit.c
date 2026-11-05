/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumGiftsSentInTimeLimit at 0x0076ff90, bytes
   e98b262b00; ScriptCore.SocialFeatures::SocialFeaturesHost_GetTotalNumberGiftsSent at 0x0076ff90,
   bytes e98b262b00. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetNumGiftsSentInTimeLimit(void)

{
  undefined4 *puVar1;
  int iVar2;
  
  puVar1 = (undefined4 *)FUN_0056c070(DAT_011ebda0);
  iVar2 = FUN_00a3e940(puVar1);
  FUN_00a19130(iVar2);
  return;
}

