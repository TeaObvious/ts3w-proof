/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ecd0 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_EnableObjectFollow [assembly=ScriptCore token=0x060006FC;
   objId: System.UInt64, targetOffset: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CameraController::Camera_EnableObjectFollow(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  undefined4 *puVar3;
  float fVar4;
  char cVar5;
  undefined4 auStack_28 [9];
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        this_00 = (void *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
        if (this != (void *)0x0) {
          cVar5 = '\x01';
          fVar4 = 1.0;
          puVar3 = (undefined4 *)FUN_0076c050(&stack0x0000000c,auStack_28);
          FUN_00978b20(this,param_1,param_2,puVar3,fVar4,cVar5);
          return;
        }
        if (this_00 != (void *)0x0) {
          puVar3 = (undefined4 *)FUN_0076c050(&stack0x0000000c,auStack_28);
          FUN_0097a030(this_00,param_1,param_2,puVar3);
        }
      }
    }
  }
  return;
}

