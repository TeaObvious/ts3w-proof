/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ecd0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_EnableObjectFollow [assembly=ScriptCore token=0x060006FC;
   objId: System.UInt64, targetOffset: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CameraController::Camera_EnableObjectFollow(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  float *pfVar3;
  undefined1 uStack0000000c;
  float seconds;
  char followFlags;
  undefined4 auStack_28 [9];
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        this_00 = (void *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
        if (this != (void *)0x0) {
          followFlags = '\x01';
          seconds = 1.0;
          pfVar3 = RouteVector_ExpandXYZWithXLane(&uStack0000000c,auStack_28);
          MainCamera_EnableObjectFollowById(this,param_1,param_2,pfVar3,seconds,followFlags);
          return;
        }
        if (this_00 != (void *)0x0) {
          pfVar3 = RouteVector_ExpandXYZWithXLane(&uStack0000000c,auStack_28);
          AlternateCamera_EnableObjectFollowById(this_00,param_1,param_2,pfVar3);
        }
      }
    }
  }
  return;
}

