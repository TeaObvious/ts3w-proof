/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161950 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetNumPaths [assembly=ScriptCore token=0x0600110D; handle: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_Route__Route_GetNumPaths(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar2 == (int *)0x0))
  {
    return 0;
  }
  (**(code **)(*piVar2 + 0x10))();
  iVar3 = 0;
  for (piVar1 = (int *)piVar2[0x38]; piVar1 != piVar2 + 0x38; piVar1 = (int *)*piVar1) {
    iVar3 = iVar3 + 1;
  }
  (**(code **)(*piVar2 + 0x14))();
  return iVar3;
}

