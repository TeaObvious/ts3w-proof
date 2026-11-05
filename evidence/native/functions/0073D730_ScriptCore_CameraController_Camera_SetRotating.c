/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ed28 (original PC 1.67 TS3W.exe).
      ScriptCore.CameraController::Camera_SetRotating [assembly=ScriptCore token=0x06000707; bSet:
      System.Boolean; return=System.Void]
      The table establishes entry identity only. Parameter types/names come from pristine managed
      metadata; calling convention, argument stack use, returns and side effects require
      instruction-level checking. The decompiler may mis-track the stack across indirect host calls.

   Original PC 1.67 native ScriptCore export. Resolves active controller and invokes primary
   vtable+44 at0073D75B. Gameplay constructor00972450 installs1046D00; cell1046D44 contains0096FF40,
   which gates input rotation maskbit2 and captures/releases pointer. This wrapper itself is not a
   physical mouse-event handler. */

void __cdecl ScriptCore_CameraController__Camera_SetRotating(undefined4 param_1)

{
  int iVar1;
  int *piVar2;

  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x44))(param_1);
      }
    }
  }
  return;
}

