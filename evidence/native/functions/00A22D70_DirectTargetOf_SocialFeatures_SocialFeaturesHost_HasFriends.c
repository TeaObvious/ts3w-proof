/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_HasFriends at 0x00770230, bytes e93b2b2b00. This is
   a static control-flow link from the registered entry; the target may have other callers and its
   side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined1 DirectTargetOf_SocialFeatures_SocialFeaturesHost_HasFriends(void)

{
  undefined1 uVar1;
  int iVar2;
  
  iVar2 = FUN_0056c070(DAT_011ebda0);
  iVar2 = FUN_00f21ff0(iVar2);
  iVar2 = FUN_00a3e4c0(iVar2);
  if (iVar2 != 0) {
    uVar1 = FUN_00a34bb0(iVar2 + 0xf0);
    return uVar1;
  }
  return 0;
}

