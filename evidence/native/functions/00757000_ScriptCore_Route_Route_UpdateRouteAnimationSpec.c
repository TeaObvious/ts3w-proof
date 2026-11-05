/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161af0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_UpdateRouteAnimationSpec [assembly=ScriptCore token=0x06001109; handle:
   System.UInt32, simObjId: System.UInt64, rAnimSpec: Sims3.SimIFace.RouteAnimationSpec;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.Route::Route_UpdateRouteAnimationSpec
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7)

{
  int *this;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_c = param_5;
  local_10 = param_4;
  local_8 = param_6;
  local_4 = param_7;
  if ((DAT_011d50c4 != (void *)0x0) &&
     (this = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), this != (int *)0x0)) {
    (**(code **)(*this + 0x10))();
    FUN_00752b80(this,&local_10,0,0,0);
                    /* WARNING: Could not recover jumptable at 0x00757063. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*this + 0x14))();
    return;
  }
  return;
}

