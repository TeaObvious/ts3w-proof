/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161668 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_HandlePromptForShareCredentialsResponse
   [assembly=ScriptCore token=0x0600064C; bResult: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_OnlineFeatures__OnlineFeaturesHost_HandlePromptForShareCredentialsResponse
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

