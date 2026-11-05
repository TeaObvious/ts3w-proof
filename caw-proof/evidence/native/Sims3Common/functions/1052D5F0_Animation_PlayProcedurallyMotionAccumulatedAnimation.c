/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   Animation_PlayProcedurallyMotionAccumulatedAnimation. Export ordinal(s): 14. Entry VA:
   0x1052d5f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600066B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Animation_PlayProcedurallyMotionAccumulatedAnimation
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,float param_8,float param_9,
          float param_10,float param_11,float param_12,float param_13)

{
  int *piVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  int iVar4;
  undefined4 *this;
  void *pvVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 *this_00;
  undefined4 *puVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  int *local_88;
  undefined4 local_80;
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
  
                    /* 0x52d5f0  14  Animation_PlayProcedurallyMotionAccumulatedAnimation */
  iVar4 = FUN_1072a1a0();
  this = (undefined4 *)FUN_1072abb0(iVar4);
  puVar8 = (undefined4 *)0x0;
  if (this != (undefined4 *)0x0) {
    LOCK();
    this[1] = this[1] + 1;
    UNLOCK();
    iVar4 = FUN_10726da0(this,DAT_10c80cc4);
    if (iVar4 != 0) {
      pvVar5 = (void *)FUN_10918eb0(0x600,"Animation/ClipController",0);
      if (pvVar5 == (void *)0x0) {
        local_88 = (int *)0x0;
      }
      else {
        local_88 = FUN_10364ff0(pvVar5,iVar4 + 8,0.0);
        if (local_88 != (int *)0x0) {
          local_88[1] = local_88[1] + 1;
        }
      }
      local_7c = param_7;
      local_80 = param_6;
      local_78 = param_4;
      local_74 = param_5;
      FUN_10366630(local_88,&local_80);
      uStack_5c = 0;
      local_60 = 0;
      uStack_58 = 0;
      uStack_54 = 0;
      _local_70 = ZEXT812(0);
      uStack_68._4_4_ = DAT_10acb0d4;
      auVar3._8_8_ = 0;
      auVar3._0_8_ = uStack_68;
      _local_70 = auVar3 << 0x40;
      auVar10._12_4_ = 0;
      auVar10._0_12_ = _auStack_6c;
      _local_70 = auVar10 << 0x20;
      local_50 = 0;
      uStack_4c = 0;
      uStack_48 = 0;
      fStack_44 = DAT_10acb0d4;
      FUN_1063a560(local_88,&local_60,&local_50);
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
      pvVar5 = (void *)FUN_10918eb0(0x50,"Animation/ProceduralMotionAccumulationController",0);
      if ((pvVar5 != (void *)0x0) &&
         (puVar8 = FUN_1036c430(pvVar5,iVar4 + 8,(int)local_88,&local_30,&local_40),
         puVar8 != (undefined4 *)0x0)) {
        puVar8[1] = puVar8[1] + 1;
      }
      auVar9._4_4_ = fStack_1c;
      auVar9._0_4_ = fStack_1c;
      auVar9._8_4_ = fStack_1c;
      auVar9._12_4_ = fStack_1c;
      auVar2._4_4_ = uStack_5c;
      auVar2._0_4_ = uStack_5c;
      auVar2._8_4_ = uStack_5c;
      auVar2._12_4_ = uStack_5c;
      auVar10 = divps(auVar9,auVar2);
      auVar10 = sqrtps(auVar10,auVar10);
      local_70 = auVar10._0_4_;
      auStack_6c = (undefined1  [4])(DAT_10acb0d4 / (float)local_70);
      local_70 = auStack_6c;
      uStack_68._0_4_ = auStack_6c;
      uStack_68._4_4_ = auStack_6c;
      pvVar5 = (void *)FUN_10918eb0(0x38,"Animation/TimeScaleController",0);
      if (pvVar5 == (void *)0x0) {
        puVar6 = (undefined4 *)0x0;
      }
      else {
        puVar6 = FUN_1036bbf0(pvVar5,iVar4 + 8,(int)puVar8,local_70);
        if (puVar6 != (undefined4 *)0x0) {
          puVar6[1] = puVar6[1] + 1;
        }
      }
      if (DAT_10c786b4 == 0) {
        iVar7 = 0;
      }
      else {
        iVar7 = DAT_10c786b4 + 4;
      }
      if (puVar6 == (undefined4 *)0x0) {
        this_00 = (undefined4 *)0x0;
      }
      else {
        this_00 = puVar6 + 3;
      }
      FUN_10362a60(this_00,iVar7,-1);
      (**(code **)(*(int *)(iVar4 + 8) + 0x14))(param_3,puVar6,1,DAT_10aae184,DAT_10aae184,0,0,0,1);
      if ((puVar6 != (undefined4 *)0x0) &&
         (iVar4 = puVar6[1], puVar6[1] = iVar4 + -1, iVar4 + -1 == 0)) {
        puVar6[1] = 1;
        (**(code **)*puVar6)(1);
      }
      if ((puVar8 != (undefined4 *)0x0) &&
         (iVar4 = puVar8[1], puVar8[1] = iVar4 + -1, iVar4 + -1 == 0)) {
        puVar8[1] = 1;
        (**(code **)*puVar8)(1);
      }
      if ((local_88 != (int *)0x0) &&
         (iVar4 = local_88[1], local_88[1] = iVar4 + -1, iVar4 + -1 == 0)) {
        local_88[1] = 1;
        (**(code **)*local_88)(1);
      }
    }
    piVar1 = this + 1;
    LOCK();
    iVar4 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar4 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}

