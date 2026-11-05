/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetHighestRegCode at 0x0076fef0, bytes e9fb272b00.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetHighestRegCode at 0x0076fef0, bytes e9fb272b00.
   This is a static control-flow link from the registered entry; the target may have other callers
   and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void DirectTargetOf_SocialFeatures_SocialFeaturesHost_GetHighestRegCode(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)AnimationRenderState_GetWorldMatrices(DAT_011ebda0);
  FUN_00a3e940(puVar1);
  thunk_FUN_007d1530();
  return;
}

