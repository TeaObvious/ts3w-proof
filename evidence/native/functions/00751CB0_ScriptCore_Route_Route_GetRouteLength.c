/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011619c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetRouteLength [assembly=ScriptCore token=0x0600111B; handle:
   System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_Route__Route_GetRouteLength(uint param_1)

{
  int *piVar1;
  float10 fVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      fVar2 = FUN_007500e0((int)piVar1);
      (**(code **)(*piVar1 + 0x14))();
      return (float10)(float)fVar2;
    }
  }
  return (float10)0;
}

