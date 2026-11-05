/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. Retain current whole-function name: complete
   startup/session/manager identity is not proved. ECX owner first passes owner+10 to C17290, then
   invokes weather resource initializerD6BE80 on global11EF130. Only afterward query literal8000
   via523DA0 and store AL at11EF110; admitted branch writes own float+BEC=0, conditionally
   calls4B40C0 with owner+BF4, reads DontUsePerlinNoise configuration and stores Boolean at+BF8. The
   inherited Animation label on the shared stub is not evidence of animation behavior. No
   first-snow-frame or full teardown/reinitialize topology claim. */

void __fastcall FUN_00d6d970(int param_1)

{
  int iVar1;
  
  FUN_00c17290((void *)(param_1 + 0x10));
  WeatherResources_InitializeBindingsAndRequests(&DAT_011ef130);
  DAT_011ef110 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
  if ((bool)DAT_011ef110) {
    *(undefined4 *)(param_1 + 0xbec) = 0;
    if (*(int *)(param_1 + 0xbf4) != 0) {
      ScriptCore.Animation::Animation_SetMissingAnimationCallback();
    }
    iVar1 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"DontUsePerlinNoise",0);
    *(bool *)(param_1 + 0xbf8) = iVar1 != 0;
  }
  return;
}

