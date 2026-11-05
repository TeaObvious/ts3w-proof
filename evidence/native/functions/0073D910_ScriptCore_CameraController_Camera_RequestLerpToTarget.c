/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eca0 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_RequestLerpToTarget [assembly=ScriptCore token=0x060006F6;
   target: Sims3.SimIFace.Vector3, timeDuration: System.Single, swingToTarget: System.Boolean;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.CameraController::Camera_RequestLerpToTarget(void)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  void *this_01;
  float in_stack_00000010;
  char in_stack_00000014;
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      piVar2 = (int *)FUN_00513de0(iVar1);
      if (piVar2 != (int *)0x0) {
        this = (void *)(**(code **)(*piVar2 + 0xc))(0x110fdd89);
        this_00 = (void *)(**(code **)(*piVar2 + 0xc))(0x4d394edb);
        this_01 = (void *)(**(code **)(*piVar2 + 0xc))(0x14bc619b);
        if (this != (void *)0x0) {
          FUN_009746e0(this,(float *)&stack0xffffffd4,in_stack_00000010,in_stack_00000014,'\x01',
                       '\0','\x01');
          return;
        }
        if (this_00 != (void *)0x0) {
          FUN_00979db0((int)this_00);
          FUN_00979ff0(this_00,(float *)&stack0xffffffd4,in_stack_00000010);
          return;
        }
        if (this_01 != (void *)0x0) {
          FUN_00967760(this_01,(float *)&stack0xffffffd4,in_stack_00000010);
        }
      }
    }
  }
  return;
}

