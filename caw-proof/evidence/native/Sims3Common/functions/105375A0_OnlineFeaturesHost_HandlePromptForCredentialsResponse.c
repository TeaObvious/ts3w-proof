/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   OnlineFeaturesHost_HandlePromptForCredentialsResponse. Export ordinal(s): 508. Entry VA:
   0x105375a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060005A8. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl OnlineFeaturesHost_HandlePromptForCredentialsResponse(char param_1)

{
                    /* 0x5375a0  508  OnlineFeaturesHost_HandlePromptForCredentialsResponse */
  if ((int)DAT_10c7dec0 < 0) {
    DAT_10c7dec0 = (uint)(param_1 != '\0');
    LOCK();
    UNLOCK();
    FUN_109177e0(&DAT_10c7dec4,1);
  }
  return;
}

