/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eca8 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_RequestLerpToPositionAndTarget [assembly=ScriptCore
   token=0x060006F7; position: Sims3.SimIFace.Vector3, target: Sims3.SimIFace.Vector3, timeDuration:
   System.Single, swingToTarget: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CameraController::Camera_RequestLerpToPositionAndTarget
          (undefined4 param_1,float param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
          ,undefined4 param_6,float param_7,char param_8)

{
  int iVar1;
  int *piVar2;
  void *this;
  void *this_00;
  void *this_01;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_20 = param_4;
  uStack_1c = param_5;
  uStack_18 = param_6;
  uStack_14 = param_4;
  fStack_2c = param_2;
  uStack_28 = param_3;
  uStack_24 = param_1;
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
          FUN_00974300(this,(float *)&stack0xffffffc4,&fStack_2c,param_7,param_8,'\x01','\0','\x01')
          ;
          return;
        }
        if (this_00 != (void *)0x0) {
          FUN_00979db0((int)this_00);
          FUN_00979f50(this_00,(float *)&stack0xffffffc4,&fStack_2c,param_7);
          return;
        }
        if (this_01 != (void *)0x0) {
          FlyCamera_BeginSmoothRecall(this_01,(float *)&stack0xffffffc4,&fStack_2c,param_7);
        }
      }
    }
  }
  return;
}

