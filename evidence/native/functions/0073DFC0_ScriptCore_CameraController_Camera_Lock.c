/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ed10 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_Lock [assembly=ScriptCore token=0x06000704; objectId:
   System.UInt64, targetOffset: Sims3.SimIFace.Vector3, defaultZoom: System.Single,
   defaultPitchDegrees: System.Single, defaultYawDegrees: System.Single, lerpToTargetDuration:
   System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CameraController::Camera_Lock(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  float *pfVar3;
  undefined1 uStack0000000c;
  float in_stack_00000018;
  float in_stack_0000001c;
  float in_stack_00000020;
  float in_stack_00000024;
  undefined4 auStack_24 [8];
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (this != (void *)0x0) {
          pfVar3 = RouteVector_ExpandXYZWithXLane(&uStack0000000c,auStack_24);
          FUN_00978ba0(this,param_1,param_2,pfVar3,in_stack_00000018,in_stack_0000001c,
                       in_stack_00000020,in_stack_00000024);
        }
      }
    }
  }
  return;
}

