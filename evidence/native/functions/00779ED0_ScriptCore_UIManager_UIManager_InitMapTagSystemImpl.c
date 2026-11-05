/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163080 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_InitMapTagSystemImpl [assembly=ScriptCore token=0x06000E4B;
   default2DOffset: Sims3.SimIFace.Vector2, outsideBounds: System.Single, radius: System.Single,
   pushForce: System.Single, collisionDamping: System.Single, mass: System.Single, pullDamping:
   System.Single, pullForce: System.Single, timeStep: System.Single, idealSeparation: System.Single,
   innerBorder: Sims3.SimIFace.Rect, minFadeDistance: System.Single, maxFadeDistance: System.Single,
   maxFade: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_InitMapTagSystemImpl
               (undefined4 param_1,undefined4 param_2,float param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               undefined4 param_13,undefined4 param_14,undefined4 param_15,undefined4 param_16,
               undefined4 param_17,undefined4 param_18)

{
  int *this;
  undefined4 *puVar1;
  int *piVar2;
  
  this = (int *)FUN_007e9f60();
  if (this == (int *)0x0) {
    puVar1 = (undefined4 *)FUN_004e4500(0x4b0,"UI/MapTagManager",0);
    if (puVar1 == (undefined4 *)0x0) {
      this = (int *)0x0;
    }
    else {
      this = FUN_007eab20(puVar1);
    }
    FUN_007e9f70(this);
    piVar2 = (int *)FUN_0050af90();
    piVar2 = (int *)(**(code **)(*piVar2 + 4))();
    piVar2 = (int *)(**(code **)(*piVar2 + 0xf4))(0x34b248b,1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x90))();
    }
    if (this == (int *)0x0) {
      return;
    }
  }
  FUN_007e9fb0(this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10
               ,param_11,param_12,param_13,param_14,param_15,param_16,param_17,param_18);
  return;
}

