/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ed38 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_DisableMapViewMode [assembly=ScriptCore token=0x06000709;
   desiredZoom: System.Single, desiredPitchDegrees: System.Single, lerpTime: System.Single;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CameraController__Camera_DisableMapViewMode(float param_1,float param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  float unaff_retaddr;
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (this != (void *)0x0) {
          FUN_00973b60(this,unaff_retaddr,param_1,param_2,'\0');
        }
      }
    }
  }
  return;
}

