/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161b70 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetNumInterestPoints [assembly=ScriptCore token=0x0600114B; routeHandle:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int __cdecl ScriptCore.Route::Route_GetNumInterestPoints(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  
  piVar4 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (piVar4 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar4 + 0x10))();
  if ((char)piVar4[0x3d] == '\0') {
    piVar6 = piVar4 + 0x38;
    if ((int *)*piVar6 == piVar6) goto LAB_007555c8;
    piVar6 = *(int **)(*piVar6 + 8);
  }
  else {
    piVar6 = (int *)piVar4[0x3b];
  }
  if (piVar6 != (int *)0x0) {
    piVar1 = piVar6 + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    puVar5 = (undefined4 *)(**(code **)(*piVar6 + 0x15c))();
    iVar7 = 0;
    for (puVar3 = (undefined4 *)*puVar5; puVar3 != puVar5; puVar3 = (undefined4 *)*puVar3) {
      iVar7 = iVar7 + 1;
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar6)(1);
    }
    (**(code **)(*piVar4 + 0x14))();
    return iVar7;
  }
LAB_007555c8:
  (**(code **)(*piVar4 + 0x14))();
  return 0;
}

