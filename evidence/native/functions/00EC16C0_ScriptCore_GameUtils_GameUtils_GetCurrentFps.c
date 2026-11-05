/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01197260 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_GetCurrentFps [assembly=ScriptCore token=0x0600025E; ;
   return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_GameUtils__GameUtils_GetCurrentFps(void)

{
  float10 fVar1;
  
  fVar1 = FUN_00ec03d0();
  if ((float10)_DAT_00f9e2c8 < fVar1) {
    return (float10)(DAT_00f998f8 / (float)fVar1);
  }
  return (float10)0.0;
}

