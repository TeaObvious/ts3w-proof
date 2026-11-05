/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec60 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_GetLODInterestPosition [assembly=ScriptCore token=0x060006EE;
   ; return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_CameraController__Camera_GetLODInterestPosition(undefined4 *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      iVar1 = FUN_00513de0(iVar1);
      if (iVar1 != 0) {
        puVar2 = (undefined4 *)FUN_0095fda0(*(int *)(iVar1 + 0xc));
        FUN_0076c150(param_1,puVar2);
        return param_1;
      }
    }
  }
  FUN_0076bf70(param_1,0,0,0);
  return param_1;
}

