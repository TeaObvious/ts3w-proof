/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   OnlineFeaturesHost_HandlePromptForShareCredentialsResponse. Export ordinal(s): 509. Entry VA:
   0x105375b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060005AA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl OnlineFeaturesHost_HandlePromptForShareCredentialsResponse(char param_1)

{
                    /* 0x5375b0  509  OnlineFeaturesHost_HandlePromptForShareCredentialsResponse */
  if ((int)DAT_10c7ded4 < 0) {
    DAT_10c7ded4 = (uint)(param_1 != '\0');
    LOCK();
    UNLOCK();
    FUN_109177e0(&DAT_10c7def8,1);
  }
  return;
}

