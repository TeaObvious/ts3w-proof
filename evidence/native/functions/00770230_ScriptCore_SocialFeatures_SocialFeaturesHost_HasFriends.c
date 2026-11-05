/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162328 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_HasFriends [assembly=ScriptCore token=0x06000A5E; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_SocialFeatures__SocialFeaturesHost_HasFriends(void)

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

