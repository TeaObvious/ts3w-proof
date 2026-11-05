/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011621d0 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_Logout [assembly=ScriptCore token=0x06000A33;
   userLogout: System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_SocialFeatures__SocialFeaturesHost_Logout(char param_1)

{
  if (param_1 == '\0') {
    if (DAT_011d5068 != 0) {
      FUN_00885750((void *)(DAT_011d5068 + -8),0);
      FUN_00a22500();
      return;
    }
    FUN_00885750((void *)0x0,0);
    FUN_00a22500();
    return;
  }
  if (DAT_011d5068 != 0) {
    FUN_00885750((void *)(DAT_011d5068 + -8),1);
    FUN_00a22500();
    return;
  }
  FUN_00885750((void *)0x0,1);
  FUN_00a22500();
  return;
}

