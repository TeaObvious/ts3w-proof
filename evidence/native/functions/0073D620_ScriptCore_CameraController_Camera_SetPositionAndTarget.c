/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec68 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_SetPositionAndTarget [assembly=ScriptCore token=0x060006EF;
   pos: Sims3.SimIFace.Vector3, target: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CameraController::Camera_SetPositionAndTarget(void)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = *piVar2;
        uVar3 = FUN_0076c050(&stack0x00000010,local_30);
        uVar4 = FUN_0076c050(&stack0x00000004,local_20);
        (**(code **)(iVar1 + 0x2c))(uVar4,uVar3);
      }
    }
  }
  return;
}

