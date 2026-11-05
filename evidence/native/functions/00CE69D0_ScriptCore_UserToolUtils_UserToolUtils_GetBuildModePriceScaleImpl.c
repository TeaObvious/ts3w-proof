/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f60 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetBuildModePriceScaleImpl [assembly=ScriptCore
   token=0x06000C13; ; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_UserToolUtils__UserToolUtils_GetBuildModePriceScaleImpl(void)

{
  float10 fVar1;
  
  if ((DAT_011ee718 != 0) && (*(int *)(DAT_011ee718 + 8) != 0)) {
    fVar1 = FUN_00cef640(*(int *)(DAT_011ee718 + 8));
    return fVar1;
  }
  return (float10)1;
}

