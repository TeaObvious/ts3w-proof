/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_DebugClearAllPassportState at 0x00771000, bytes
   e94b462b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_DebugClearAllPassportState at 0x00771000, bytes
   e94b462b00. This is a static control-flow link from the registered entry; the target may have
   other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void DirectTargetOf_SocialFeatures_SocialFeaturesHost_DebugClearAllPassportState(void)

{
  int iVar1;
  
  iVar1 = AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  iVar1 = FUN_009de7f0(iVar1);
  FUN_00a3d930(iVar1);
  return;
}

