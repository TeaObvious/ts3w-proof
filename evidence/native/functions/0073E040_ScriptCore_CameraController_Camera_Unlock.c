/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ed18 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_Unlock [assembly=ScriptCore token=0x06000705; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CameraController__Camera_Unlock(void)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
        if (iVar1 != 0) {
          FUN_009747e0(iVar1);
          return;
        }
      }
    }
  }
  return;
}

