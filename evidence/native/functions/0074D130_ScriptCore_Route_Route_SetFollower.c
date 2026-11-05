/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011618c0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_SetFollower [assembly=ScriptCore token=0x060010F5; handle: System.UInt32,
   followerObjectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_SetFollower(uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *this;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (this = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), this != (int *)0x0)) {
    (**(code **)(*this + 0x10))();
    FUN_0074b3a0(this,param_2,param_3);
                    /* WARNING: Could not recover jumptable at 0x0074d16d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*this + 0x14))();
    return;
  }
  return;
}

