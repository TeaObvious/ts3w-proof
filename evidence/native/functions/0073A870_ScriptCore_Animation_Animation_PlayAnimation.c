/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb38.
   ScriptCore.Animation::Animation_PlayAnimation [assembly=ScriptCore token=0x06000DBA; objId:
   System.UInt64, track: System.UInt32, clipInstanceId: Sims3.SimIFace.ResourceKey, timeScale:
   System.Single, yield: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 original instruction review. Analyst-assigned name. Verified x86 cdecl stack:
   objectIdLo/Hi S+4/+8, uint track+c, managed ResourceKey Type+10 Group+14 InstanceLo/Hi+18/+1c,
   float timeScale+20, yield BOOL slot+24 tested low byte. Reorders lookup key as
   instanceLo/Hi,type6b20c4f3,group; supplied type ignored. Constructs clip then time-scale wrapper,
   optional PMA listener, attach interface+14 with mode yield?1:2, blend inputs-1,-1, flag1=!yield,
   syncToken0,syncFlag0,flag8=1. Ignores resource/attach return. Releases local retained wrappers
   and atomic object reference.
   
   PC 1.67 original instruction review. Analyst-assigned name. Verified x86 cdecl stack:
   objectIdLo/Hi S+4/+8, uint track+c, managed ResourceKey Type+10 Group+14 InstanceLo/Hi+18/+1c,
   float timeScale+20, yield BOOL slot+24 tested low byte. Reorders lookup key as
   instanceLo/Hi,type6b20c4f3,group; supplied type ignored. Constructs clip then time-scale wrapper,
   optional PMA listener, attach interface+14 with mode yield?1:2, blend inputs-1,-1, flag1=!yield,
   syncToken0,syncFlag0,flag8=1. Ignores resource/attach return. Releases local retained wrappers
   and atomic object reference.
   
   PC 1.67 original instruction review. Analyst-assigned name. Verified x86 cdecl stack:
   objectIdLo/Hi S+4/+8, uint track+c, managed ResourceKey Type+10 Group+14 InstanceLo/Hi+18/+1c,
   float timeScale+20, yield BOOL slot+24 tested low byte. Reorders lookup key as
   instanceLo/Hi,type6b20c4f3,group; supplied type ignored. Constructs clip then time-scale wrapper,
   optional PMA listener, attach interface+14 with mode yield?1:2, blend inputs-1,-1, flag1=!yield,
   syncToken0,syncFlag0,flag8=1. Ignores resource/attach return. Releases local retained wrappers
   and atomic object reference. */

void __cdecl
ScriptCore.Animation::Animation_PlayAnimation
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,int param_6,undefined4 param_7,float param_8,char param_9)

{
  int iVar1;
  void *pvVar2;
  undefined4 *this;
  void *pvVar3;
  int *piVar4;
  int *piVar5;
  int *listener;
  int *this_00;
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
        piVar5 = AnimationTimeScaleController_Construct
                           (pvVar3,(int *)((int)pvVar2 + 8),piVar4,param_8);
        if (piVar5 != (int *)0x0) {
          piVar5[1] = piVar5[1] + 1;
        }
      }
      if (param_9 != '\0') {
        if (DAT_011d4e34 == 0) {
          listener = (int *)0x0;
        }
        else {
          listener = (int *)(DAT_011d4e34 + 4);
        }
        if (piVar5 == (int *)0x0) {
          this_00 = (int *)0x0;
        }
        else {
          this_00 = piVar5 + 3;
        }
        AnimationController_RegisterListener(this_00,listener,-1);
      }
      (**(code **)(*(int *)((int)pvVar2 + 8) + 0x14))
                (param_3,piVar5,2 - (uint)(param_9 != '\0'),DAT_00fab218,DAT_00fab218,
                 param_9 == '\0',0,0,1);
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

