/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec58 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_GetTarget [assembly=ScriptCore token=0x060006ED; ;
   return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl ScriptCore.CameraController::Camera_GetTarget(undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined1 local_20 [28];
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x30))(local_20);
        FUN_0076c150(param_1,puVar3);
        return param_1;
      }
    }
  }
  FUN_0076bf70(param_1,0,0,0);
  return param_1;
}

