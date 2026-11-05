/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec88 (original PC 1.67 TS3W.exe).
      ScriptCore.CameraController::Camera_GetYawDegrees [assembly=ScriptCore token=0x060006F3; ;
      return=System.Single]
      The table establishes entry identity only. Parameter types/names come from pristine managed
      metadata; calling convention, argument stack use, returns and side effects require
      instruction-level checking. The decompiler may mis-track the stack across indirect host calls.

   Original PC 1.67 native ScriptCore export. Resolves gameplay controller and tail-jumps00970EF0
   at0073D903. Getter returns stored continuous yaw+7D4 multiplied by binary32 radians-to-degrees
   constant. No atan2 reconstruction or normalization occurs in this path. */

float10 ScriptCore_CameraController__Camera_GetYawDegrees(void)

{
  int iVar1;
  int *piVar2;
  float10 fVar3;

  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (iVar1 != 0) {
          fVar3 = GameplayCamera_GetYawDegrees(iVar1);
          return fVar3;
        }
      }
    }
  }
  return (float10)0;
}

