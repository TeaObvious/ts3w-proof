/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115eb88.
   ScriptCore.Animation::Animation_PlayProcedurallyMotionAccumulatedAnimation [assembly=ScriptCore
   token=0x06000DC4; id: System.UInt64, track: System.UInt32, clipInstanceId:
   Sims3.SimIFace.ResourceKey, startPos: Sims3.SimIFace.Vector3, endPos: Sims3.SimIFace.Vector3;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl
   objectId/track/ResourceKey then two xyz float vectors. Unlike PlayAnimation/Pose, copies supplied
   TypeId into resource lookup key. Builds Clip->ProceduralMotion->TimeScale; PMA listener always
   registered, attach mode1 with flags0/0/0/1. SIMD decompiler repeated lanes are artifacts;
   original SSE computes distance-based scaling from xyz displacement and sampled original motion.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl
   objectId/track/ResourceKey then two xyz float vectors. Unlike PlayAnimation/Pose, copies supplied
   TypeId into resource lookup key. Builds Clip->ProceduralMotion->TimeScale; PMA listener always
   registered, attach mode1 with flags0/0/0/1. SIMD decompiler repeated lanes are artifacts;
   original SSE computes distance-based scaling from xyz displacement and sampled original motion.
   
   PC 1.67 original instruction review. Analyst-assigned name. Original cdecl
   objectId/track/ResourceKey then two xyz float vectors. Unlike PlayAnimation/Pose, copies supplied
   TypeId into resource lookup key. Builds Clip->ProceduralMotion->TimeScale; PMA listener always
   registered, attach mode1 with flags0/0/0/1. Original SSE scaling uses replicated lane1(Y), with
   scale=1/sqrt((endY-startY)/sampledMotionY); SHUFPS55 at73ae63/73ae69, DIVPS/SQRTPS and
   DIVSS73ae80 prove this. No denominator/sign guard in bridge. xyz norm appears separately in
   ProceduralMotion constructor; do not substitute Euclidean distance here. */

void __cdecl
ScriptCore.Animation::Animation_PlayProcedurallyMotionAccumulatedAnimation
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,int param_6,undefined4 param_7,float param_8,float param_9,
          float param_10,float param_11,float param_12,float param_13)

{
  int iVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  void *pvVar4;
  undefined4 *this;
  void *pvVar5;
  int *piVar6;
  int *listener;
  int *this_00;
  int *piVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  int *local_88;
  int local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined1 local_70 [4];
  undefined1 auStack_6c [4];
  undefined8 uStack_68;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar4 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(param_2,param_1));
  piVar7 = (int *)0x0;
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    pvVar4 = Object_GetComponentByMask(this,DAT_011dd484);
    if (pvVar4 != (void *)0x0) {
      pvVar5 = (void *)FUN_004e4500(0x600,"Animation/ClipController",0);
      if (pvVar5 == (void *)0x0) {
        local_88 = (int *)0x0;
      }
      else {
        local_88 = AnimationClipController_Construct(pvVar5,(int)pvVar4 + 8,0.0);
        if (local_88 != (int *)0x0) {
          local_88[1] = local_88[1] + 1;
        }
      }
      local_7c = param_7;
      local_80 = param_6;
      local_78 = param_4;
      local_74 = param_5;
      AnimationClipController_LoadResource(local_88,&local_80);
      uStack_5c = 0;
      local_60 = 0;
      uStack_58 = 0;
      uStack_54 = 0;
      _local_70 = ZEXT812(0);
      uStack_68._4_4_ = DAT_00f998f8;
      auVar3._8_8_ = 0;
      auVar3._0_8_ = uStack_68;
      _local_70 = auVar3 << 0x40;
      auVar9._12_4_ = 0;
      auVar9._0_12_ = _auStack_6c;
      _local_70 = auVar9 << 0x20;
      local_50 = 0;
      uStack_4c = 0;
      uStack_48 = 0;
      fStack_44 = DAT_00f998f8;
      AnimationController_SampleTotalMotion(local_88,&local_60,&local_50);
      auStack_6c = (undefined1  [4])param_9;
      local_70 = (undefined1  [4])param_8;
      uStack_68._0_4_ = param_13;
      uStack_68._4_4_ = param_11;
      auStack_6c = (undefined1  [4])param_12;
      local_70 = (undefined1  [4])param_11;
      local_40 = param_11;
      fStack_3c = param_12;
      fStack_38 = param_13;
      fStack_34 = param_11;
      local_20 = param_11 - param_8;
      fStack_1c = param_12 - param_9;
      fStack_18 = param_13 - param_10;
      fStack_14 = param_11 - param_8;
      local_30 = param_8;
      fStack_2c = param_9;
      fStack_28 = param_10;
      fStack_24 = param_8;
      pvVar5 = (void *)FUN_004e4500(0x50,"Animation/ProceduralMotionAccumulationController",0);
      if ((pvVar5 != (void *)0x0) &&
         (piVar7 = AnimationProceduralMotionController_Construct
                             (pvVar5,(int)pvVar4 + 8,(int)local_88,&local_30,&local_40),
         piVar7 != (int *)0x0)) {
        piVar7[1] = piVar7[1] + 1;
      }
      auVar8._4_4_ = fStack_1c;
      auVar8._0_4_ = fStack_1c;
      auVar8._8_4_ = fStack_1c;
      auVar8._12_4_ = fStack_1c;
      auVar2._4_4_ = uStack_5c;
      auVar2._0_4_ = uStack_5c;
      auVar2._8_4_ = uStack_5c;
      auVar2._12_4_ = uStack_5c;
      auVar9 = divps(auVar8,auVar2);
      auVar9 = sqrtps(auVar9,auVar9);
      local_70 = auVar9._0_4_;
      auStack_6c = (undefined1  [4])(DAT_00f998f8 / (float)local_70);
      local_70 = auStack_6c;
      uStack_68._0_4_ = auStack_6c;
      uStack_68._4_4_ = auStack_6c;
      pvVar5 = (void *)FUN_004e4500(0x38,"Animation/TimeScaleController",0);
      if (pvVar5 == (void *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = AnimationTimeScaleController_Construct
                           (pvVar5,(int *)((int)pvVar4 + 8),piVar7,(float)local_70);
        if (piVar6 != (int *)0x0) {
          piVar6[1] = piVar6[1] + 1;
        }
      }
      if (DAT_011d4e34 == 0) {
        listener = (int *)0x0;
      }
      else {
        listener = (int *)(DAT_011d4e34 + 4);
      }
      if (piVar6 == (int *)0x0) {
        this_00 = (int *)0x0;
      }
      else {
        this_00 = piVar6 + 3;
      }
      AnimationController_RegisterListener(this_00,listener,-1);
      (**(code **)(*(int *)((int)pvVar4 + 8) + 0x14))
                (param_3,piVar6,1,DAT_00fab218,DAT_00fab218,0,0,0,1);
      if ((piVar6 != (int *)0x0) && (iVar1 = piVar6[1], piVar6[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        piVar6[1] = 1;
        (**(code **)*piVar6)(1);
      }
      if ((piVar7 != (int *)0x0) && (iVar1 = piVar7[1], piVar7[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        piVar7[1] = 1;
        (**(code **)*piVar7)(1);
      }
      if ((local_88 != (int *)0x0) &&
         (iVar1 = local_88[1], local_88[1] = iVar1 + -1, iVar1 + -1 == 0)) {
        local_88[1] = 1;
        (**(code **)*local_88)(1);
      }
    }
    piVar7 = this + 1;
    LOCK();
    iVar1 = *piVar7;
    *piVar7 = *piVar7 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar7 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}

