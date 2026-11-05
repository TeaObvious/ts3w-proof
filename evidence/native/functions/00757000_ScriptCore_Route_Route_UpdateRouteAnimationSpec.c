/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161af0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  if ((DAT_011d50c4 == (void *)0x0) ||
     (this = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), this == (int *)0x0)) {
    return;
  }
  (**(code **)(*this + 0x10))();
  FUN_00752b80(this,&local_10,0,0,0);
                    /* WARNING: Could not recover jumptable at 0x00757063. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*this + 0x14))();
  return;
}

