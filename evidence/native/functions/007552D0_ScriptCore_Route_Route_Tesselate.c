/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161b50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_Tesselate [assembly=ScriptCore token=0x06001141; routeHandle:
   System.UInt32, maximumSegmentLength: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_Tesselate(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  
  piVar3 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (piVar3 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar4 = piVar3 + 0x38;
    if ((int *)*piVar4 == piVar4) goto LAB_00755369;
    piVar4 = *(int **)(*piVar4 + 8);
  }
  else {
    piVar4 = (int *)piVar3[0x3b];
  }
  if (piVar4 != (int *)0x0) {
    piVar1 = piVar4 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    (**(code **)(*piVar4 + 0x110))(param_2);
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar4)(1);
    }
                    /* WARNING: Could not recover jumptable at 0x00755367. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar3 + 0x14))();
    return;
  }
LAB_00755369:
                    /* WARNING: Could not recover jumptable at 0x00755375. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x14))();
  return;
}

