/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_SetDevGiftToAccepted at 0x0076ff60, bytes
   e95b262b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_SetDevGiftToAccepted at 0x0076ff60, bytes
   e95b262b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __cdecl DirectTargetOf_SocialFeatures_SocialFeaturesHost_SetDevGiftToAccepted(int param_1)

{
  undefined4 *puVar1;
  void *this;
  
  puVar1 = (undefined4 *)AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  this = (void *)FUN_00a3e940(puVar1);
  FUN_00a19810(this,param_1);
  return;
}

