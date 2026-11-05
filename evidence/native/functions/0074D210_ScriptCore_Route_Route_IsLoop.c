/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011619f0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_IsLoop [assembly=ScriptCore token=0x06001121; handle: System.UInt32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_Route__Route_IsLoop(uint param_1)

{
  int iVar1;
  int *piVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      iVar1 = piVar2[0x3d];
      (**(code **)(*piVar2 + 0x14))();
      return (char)iVar1;
    }
  }
  return 0;
}

