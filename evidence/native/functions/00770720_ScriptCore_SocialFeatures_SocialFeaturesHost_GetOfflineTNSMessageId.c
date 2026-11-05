/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162470 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetOfflineTNSMessageId [assembly=ScriptCore
   token=0x06000A89; index: System.Int32; return=System.Int64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_SocialFeatures__SocialFeaturesHost_GetOfflineTNSMessageId(void)

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

