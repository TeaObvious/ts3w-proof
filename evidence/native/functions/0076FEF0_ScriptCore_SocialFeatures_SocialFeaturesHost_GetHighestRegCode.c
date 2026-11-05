/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011621f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetHighestRegCode [assembly=ScriptCore
   token=0x06000A38; ; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SocialFeatures__SocialFeaturesHost_GetHighestRegCode(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  FUN_00a3e940(puVar1);
  thunk_FUN_007d1530();
  return;
}

