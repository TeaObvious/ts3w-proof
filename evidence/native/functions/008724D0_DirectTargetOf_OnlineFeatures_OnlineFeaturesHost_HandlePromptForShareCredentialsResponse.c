/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_HandlePromptForShareCredentialsResponse at
   0x00745e60, bytes e96bc61200. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl
DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_HandlePromptForShareCredentialsResponse
          (char param_1)

{
  if ((int)DAT_011da67c < 0) {
    DAT_011da67c = (uint)(param_1 != '\0');
    LOCK();
    UNLOCK();
    FUN_004e2d20(&DAT_011da6a0,1);
  }
  return;
}

