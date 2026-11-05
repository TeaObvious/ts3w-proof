/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 registration table at 0x01162248, 0x01162250 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumGiftsSentInTimeLimit [assembly=ScriptCore
   token=0x06000A42; ; return=System.Int32]
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetTotalNumberGiftsSent [assembly=ScriptCore
   token=0x06000A43; ; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */



/* Verified PC 1.67 registration table at 0x01162248, 0x01162250 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetNumGiftsSentInTimeLimit [assembly=ScriptCore
   token=0x06000A42; ; return=System.Int32]
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetTotalNumberGiftsSent [assembly=ScriptCore
   token=0x06000A43; ; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SocialFeatures__SocialFeaturesHost_GetNumGiftsSentInTimeLimit(void)

{
  undefined4 *puVar1;
  int iVar2;
  
  puVar1 = (undefined4 *)AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  iVar2 = FUN_00a3e940(puVar1);
  FUN_00a19130(iVar2);
  return;
}

