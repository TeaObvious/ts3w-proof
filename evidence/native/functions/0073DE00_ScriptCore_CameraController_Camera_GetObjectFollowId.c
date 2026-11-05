/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ece0 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_GetObjectFollowId [assembly=ScriptCore token=0x060006FE; ;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_CameraController__Camera_GetObjectFollowId(void)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  iVar1 = FUN_00969bd0();
  if (((iVar1 == 0) || (iVar1 = FUN_00f21ff0(iVar1), iVar1 == 0)) ||
     (piVar2 = (int *)FUN_00513de0(iVar1), piVar2 == (int *)0x0)) {
    return 0;
  }
  iVar1 = (**(code **)(*piVar2 + 0xc))(0x110fdd89);
  iVar3 = (**(code **)(*piVar2 + 0xc))(0x4d394edb);
  if (iVar1 == 0) {
    if (iVar3 == 0) {
      return 0;
    }
    if (*(int *)(iVar3 + 0x664) != 0) {
      return *(undefined8 *)(*(int *)(iVar3 + 0x664) + 8);
    }
  }
  else if (*(int *)(iVar1 + 0x81c) != 0) {
    return *(undefined8 *)(*(int *)(iVar1 + 0x81c) + 8);
  }
  return 0;
}

