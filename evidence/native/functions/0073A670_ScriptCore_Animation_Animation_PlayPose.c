/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb40.
   ScriptCore.Animation::Animation_PlayPose [assembly=ScriptCore token=0x06000DBB; objId:
   System.UInt64, track: System.UInt32, clipInstanceId: Sims3.SimIFace.ResourceKey;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original managed StartPose bridge:
   same object/key conversion as PlayAnimation; wraps ClipController in TimeScale(scale0) then
   SuppressEvents; attaches mode2 with blend-1/-1, flag1=1, token0,syncFlag0,flag8=1. Releases local
   controller references; scheduler retains active/held state.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original managed StartPose bridge:
   same object/key conversion as PlayAnimation; wraps ClipController in TimeScale(scale0) then
   SuppressEvents; attaches mode2 with blend-1/-1, flag1=1, token0,syncFlag0,flag8=1. Releases local
   controller references; scheduler retains active/held state.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original managed StartPose bridge:
   same object/key conversion as PlayAnimation; wraps ClipController in TimeScale(scale0) then
   SuppressEvents; attaches mode2 with blend-1/-1, flag1=1, token0,syncFlag0,flag8=1. Releases local
   controller references; scheduler retains active/held state. */

void __cdecl
ScriptCore.Animation::Animation_PlayPose
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,int param_6,undefined4 param_7)

{
  int iVar1;
  void *pvVar2;
  undefined4 *this;
  void *pvVar3;
  int *piVar4;
  int *piVar5;
  undefined4 *puVar6;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    pvVar2 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar2 != (void *)0x0) {
      pvVar3 = (void *)FUN_004e4500(0x600,"Animation/ClipController",0);
      if (pvVar3 == (void *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        piVar4 = AnimationClipController_Construct(pvVar3,(int)pvVar2 + 8,0.0);
        if (piVar4 != (int *)0x0) {
          piVar4[1] = piVar4[1] + 1;
        }
      }
      local_10 = param_6;
      local_4 = param_5;
      local_c = param_7;
      local_8 = 0x6b20c4f3;
      AnimationClipController_LoadResource(piVar4,&local_10);
      pvVar3 = (void *)FUN_004e4500(0x38,"Animation/TimeScaleController",0);
      if (pvVar3 == (void *)0x0) {
        piVar5 = (int *)0x0;
      }
      else {
        piVar5 = AnimationTimeScaleController_Construct(pvVar3,(int *)((int)pvVar2 + 8),piVar4,0.0);
        if (piVar5 != (int *)0x0) {
          piVar5[1] = piVar5[1] + 1;
        }
      }
      pvVar3 = (void *)FUN_004e4500(0x30,"Animation/SuppressEventsController",0);
      if (pvVar3 == (void *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        puVar6 = AnimationSuppressEventsController_Construct(pvVar3,(int)pvVar2 + 8,(int)piVar5);
        if (puVar6 != (undefined4 *)0x0) {
          puVar6[1] = puVar6[1] + 1;
        }
      }
      (**(code **)(*(int *)((int)pvVar2 + 8) + 0x14))
                (param_3,puVar6,2,DAT_00fab218,DAT_00fab218,1,0,0,1);
      if ((puVar6 != (undefined4 *)0x0) &&
         (iVar1 = puVar6[1], puVar6[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        puVar6[1] = 1;
        (**(code **)*puVar6)(1);
      }
      if ((piVar5 != (int *)0x0) && (iVar1 = piVar5[1], piVar5[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        piVar5[1] = 1;
        (**(code **)*piVar5)(1);
      }
      if ((piVar4 != (int *)0x0) && (iVar1 = piVar4[1], piVar4[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        piVar4[1] = 1;
        (**(code **)*piVar4)(1);
      }
    }
    piVar4 = this + 1;
    LOCK();
    iVar1 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}

