/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161a10 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SetRouteActionResult [assembly=ScriptCore token=0x06001125; handle:
   System.UInt32, actionResult: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_SetRouteActionResult(uint param_1,int param_2)

{
  int *piVar1;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar1 == (int *)0x0))
  {
    return;
  }
  (**(code **)(*piVar1 + 0x10))();
  piVar1[0x7b] = param_2;
                    /* WARNING: Could not recover jumptable at 0x0074d2e6. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar1 + 0x14))();
  return;
}

