/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target:
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_HandlePromptForCredentialsResponse at 0x00745e50,
   bytes e92bc61200. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl
DirectTargetOf_OnlineFeatures_OnlineFeaturesHost_HandlePromptForCredentialsResponse(char param_1)

{
  if ((int)DAT_011da668 < 0) {
    DAT_011da668 = (uint)(param_1 != '\0');
    LOCK();
    UNLOCK();
    FUN_004e2d20(&DAT_011da66c,1);
  }
  return;
}

