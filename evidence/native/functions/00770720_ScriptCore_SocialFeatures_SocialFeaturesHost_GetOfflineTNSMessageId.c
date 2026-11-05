/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162470 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetOfflineTNSMessageId [assembly=ScriptCore
   token=0x06000A89; index: System.Int32; return=System.Int64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_SocialFeatures__SocialFeaturesHost_GetOfflineTNSMessageId(void)

{
  int iVar1;
  undefined8 uVar2;
  
  iVar1 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  iVar1 = FUN_00f21ff0(iVar1);
  iVar1 = FUN_00a3e4c0(iVar1);
  if (iVar1 == 0) {
    return 0;
  }
  uVar2 = FUN_00401890();
  return uVar2;
}

