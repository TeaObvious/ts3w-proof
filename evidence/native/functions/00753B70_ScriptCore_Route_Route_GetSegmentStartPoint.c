/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161aa0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetSegmentStartPoint [assembly=ScriptCore token=0x06001145; handle:
   System.UInt32, segmentIndex: System.UInt32, position: Sims3.SimIFace.Vector3&;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Route__Route_GetSegmentStartPoint
               (uint param_1,undefined4 param_2,undefined4 *param_3)

{
  uint in_EAX;
  int *this;
  undefined4 uVar1;
  undefined4 uVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    this = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (this != (int *)0x0) {
      (**(code **)(*this + 0x10))();
      uVar1 = FUN_007535a0(this,param_2,param_3);
      uVar2 = (**(code **)(*this + 0x14))();
      return CONCAT31((int3)((uint)uVar2 >> 8),(char)uVar1);
    }
  }
  return in_EAX & 0xffffff00;
}

