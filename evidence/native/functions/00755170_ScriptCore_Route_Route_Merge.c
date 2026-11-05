/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161b40 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_Merge [assembly=ScriptCore token=0x0600113F; routeHandle: System.UInt32,
   beginSegmentId: System.UInt32, endSegmentId: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_Merge(uint param_1,undefined4 param_2,undefined4 param_3)

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
    if ((int *)*piVar4 == piVar4) goto LAB_0075520b;
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
    (**(code **)(*piVar4 + 0x108))(param_2,param_3);
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
                    /* WARNING: Could not recover jumptable at 0x00755209. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar3 + 0x14))();
    return;
  }
LAB_0075520b:
                    /* WARNING: Could not recover jumptable at 0x00755217. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 0x14))();
  return;
}

