/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetOfflineTNSMessageId at 0x00770720, bytes
   e99b322b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined8 DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetOfflineTNSMessageId(void)

{
  int iVar1;
  undefined8 uVar2;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  iVar1 = FUN_00f21ff0(iVar1);
  iVar1 = FUN_00a3e4c0(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_00401890();
    return uVar2;
  }
  return 0;
}

