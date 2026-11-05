/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162468 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumOfflineTNSMessages [assembly=ScriptCore
   token=0x06000A88; ; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_SocialFeatures__SocialFeaturesHost_GetNumOfflineTNSMessages(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_0056c070(DAT_011ebda0);
  iVar1 = FUN_00f21ff0(iVar1);
  iVar1 = FUN_00a3e4c0(iVar1);
  if (iVar1 != 0) {
    uVar2 = FUN_00a3f8f0(iVar1 + 0x160);
    return uVar2;
  }
  return 0;
}

