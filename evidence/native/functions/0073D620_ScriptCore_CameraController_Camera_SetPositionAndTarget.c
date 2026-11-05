/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ec68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_SetPositionAndTarget [assembly=ScriptCore token=0x060006EF;
   pos: Sims3.SimIFace.Vector3, target: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CameraController::Camera_SetPositionAndTarget(void)

{
  int iVar1;
  int *piVar2;
  float *pfVar3;
  float *pfVar4;
  undefined1 uStack00000004;
  undefined1 uStack00000010;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = *piVar2;
        pfVar3 = RouteVector_ExpandXYZWithXLane(&uStack00000010,local_30);
        pfVar4 = RouteVector_ExpandXYZWithXLane(&uStack00000004,local_20);
        (**(code **)(iVar1 + 0x2c))(pfVar4,pfVar3);
      }
    }
  }
  return;
}

