/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115eb98 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Animation::Animation_MeasureControllerDistanceTravelled [assembly=ScriptCore
   token=0x06000DC6; id: System.UInt64, clipKey: Sims3.SimIFace.ResourceKey;
   return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.Animation::Animation_MeasureControllerDistanceTravelled
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,int param_6,undefined4 param_7)

{
  int iVar1;
  void *pvVar2;
  undefined4 *this;
  void *this_00;
  int *piVar3;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  int local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  float fStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  local_5c = 0;
  local_58 = 0;
  local_54 = 0;
  pvVar2 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_3,param_2));
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    pvVar2 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar2 != (void *)0x0) {
      this_00 = (void *)FUN_004e4500(0x600,"Animation/ClipController",0);
      if (this_00 == (void *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = AnimationClipController_Construct(this_00,(int)pvVar2 + 8,0.0);
        if (piVar3 != (int *)0x0) {
          piVar3[1] = piVar3[1] + 1;
        }
      }
      local_4c = param_7;
      local_50 = param_6;
      local_48 = param_4;
      local_44 = param_5;
      AnimationClipController_LoadResource(piVar3,&local_50);
      local_30 = 0;
      uStack_2c = 0;
      uStack_28 = 0;
      uStack_24 = 0;
      fStack_34 = 1.0;
      uStack_38 = 0;
      uStack_3c = 0;
      local_40 = 0;
      local_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      fStack_14 = 1.0;
      AnimationController_SampleTotalMotion(piVar3,&local_30,&local_20);
      FUN_0076c100(&local_5c,&local_30);
      if ((piVar3 != (int *)0x0) && (iVar1 = piVar3[1], piVar3[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        piVar3[1] = 1;
        (**(code **)*piVar3)(1);
      }
    }
  }
  *param_1 = local_5c;
  param_1[1] = local_58;
  param_1[2] = local_54;
  if (this != (undefined4 *)0x0) {
    piVar3 = this + 1;
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar3 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return param_1;
}

