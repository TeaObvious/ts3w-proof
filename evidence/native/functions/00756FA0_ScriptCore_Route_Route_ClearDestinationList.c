/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161938 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_ClearDestinationList [assembly=ScriptCore token=0x060010FB; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_ClearDestinationList(uint param_1)

{
  int *host;
  int *piVar1;
  
  host = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (host == (int *)0x0) {
    return;
  }
  (**(code **)(*host + 0x10))();
  piVar1 = RouteHost_GetOrCreateGoal(host);
  if (piVar1 != (int *)0x0) {
    (**(code **)*piVar1)();
    RouteGoal_DeleteAllDestinations(piVar1 + 6);
    (**(code **)(*piVar1 + 4))();
  }
                    /* WARNING: Could not recover jumptable at 0x00756ff0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*host + 0x14))();
  return;
}

