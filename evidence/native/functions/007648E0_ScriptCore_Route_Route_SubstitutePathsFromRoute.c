/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161ae8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SubstitutePathsFromRoute [assembly=ScriptCore token=0x06001108; handle:
   System.UInt32, otherHandle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Route__Route_SubstitutePathsFromRoute(uint param_1,uint param_2)

{
  uint in_EAX;
  int *this;
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  if (DAT_011d50c4 == (void *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (this != (int *)0x0) {
      in_EAX = (**(code **)(*this + 0x10))();
    }
    if (DAT_011d50c4 != (void *)0x0) {
      piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_2);
      in_EAX = 0;
      if (piVar1 != (int *)0x0) {
        in_EAX = (**(code **)(*piVar1 + 0x10))();
      }
      goto LAB_00764928;
    }
  }
  piVar1 = (int *)0x0;
LAB_00764928:
  if (this == (int *)0x0) {
    if (piVar1 != (int *)0x0) {
      in_EAX = (**(code **)(*piVar1 + 0x14))();
    }
  }
  else if (piVar1 != (int *)0x0) {
    if (this == piVar1) {
      (**(code **)(*piVar1 + 0x14))();
      uVar2 = (**(code **)(*this + 0x14))();
      return CONCAT31((int3)((uint)uVar2 >> 8),1);
    }
    uVar2 = FUN_007644b0(this,(int)piVar1);
    (**(code **)(*piVar1 + 0x14))();
    uVar3 = (**(code **)(*this + 0x14))();
    return CONCAT31((int3)((uint)uVar3 >> 8),(char)uVar2);
  }
  if (this != (int *)0x0) {
    in_EAX = (**(code **)(*this + 0x14))();
  }
  return in_EAX & 0xffffff00;
}

