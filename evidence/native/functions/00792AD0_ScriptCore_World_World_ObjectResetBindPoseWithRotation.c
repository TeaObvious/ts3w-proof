/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01163698 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectResetBindPoseWithRotation [assembly=ScriptCore token=0x060007D6;
   objId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.World::World_ObjectResetBindPoseWithRotation(void)

{
  int *piVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  int iVar4;
  undefined4 *this;
  void *this_00;
  undefined4 extraout_EDX;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  float local_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  
  iVar4 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar4);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011ea158);
    if (this_00 != (void *)0x0) {
      FUN_00957a90(this_00,(uint *)&local_50);
      local_40 = local_40 * 0.0;
      auVar9._4_4_ = local_40;
      auVar9._0_4_ = fStack_3c * DAT_00f998f8;
      auVar9._8_4_ = local_40;
      auVar9._12_4_ = local_40;
      if (fStack_38 * 0.0 + fStack_3c * DAT_00f998f8 + local_40 < 0.0) {
        local_30 = 0.0 - local_30;
        fStack_28 = 0.0 - fStack_28;
      }
      fVar5 = fStack_28 * fStack_28 + 0.0 + local_30 * local_30;
      auVar2._4_4_ = fVar5;
      auVar2._0_4_ = fVar5;
      auVar2._8_4_ = fVar5;
      auVar2._12_4_ = fVar5;
      auVar9 = rsqrtps(auVar9,auVar2);
      fVar6 = auVar9._0_4_;
      fVar7 = auVar9._4_4_;
      fVar8 = auVar9._8_4_;
      fVar6 = (DAT_00f998f8 - fVar6 * fVar6 * fVar5) * _DAT_00f9b5b4 * fVar6 + fVar6;
      fVar7 = (DAT_00f998f8 - fVar7 * fVar7 * fVar5) * _DAT_00f9b5b4 * fVar7 + fVar7;
      fVar8 = (DAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8;
      local_30 = ((DAT_00f998f8 - fVar6 * fVar6 * fVar5) * _DAT_00f9b5b4 * fVar6 + fVar6) * local_30
      ;
      fStack_2c = ((DAT_00f998f8 - fVar7 * fVar7 * fVar5) * _DAT_00f9b5b4 * fVar7 + fVar7) * 0.0;
      fStack_28 = ((DAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8) *
                  fStack_28;
      local_50 = fStack_28 * DAT_00f998f8 - fStack_2c * 0.0;
      fStack_4c = local_30 * 0.0 - fStack_28 * 0.0;
      fStack_48 = fStack_2c * 0.0 - local_30 * DAT_00f998f8;
      fVar5 = local_50 * local_50;
      auVar10._4_4_ = fVar5;
      auVar10._0_4_ = fStack_4c * fStack_4c;
      auVar10._8_4_ = fVar5;
      auVar10._12_4_ = fVar5;
      fVar5 = fStack_48 * fStack_48 + fStack_4c * fStack_4c + fVar5;
      auVar3._4_4_ = fVar5;
      auVar3._0_4_ = fVar5;
      auVar3._8_4_ = fVar5;
      auVar3._12_4_ = fVar5;
      auVar9 = rsqrtps(auVar10,auVar3);
      fVar6 = auVar9._0_4_;
      fVar7 = auVar9._4_4_;
      fVar8 = auVar9._8_4_;
      fVar6 = (DAT_00f998f8 - fVar6 * fVar6 * fVar5) * _DAT_00f9b5b4 * fVar6 + fVar6;
      fVar7 = (DAT_00f998f8 - fVar7 * fVar7 * fVar5) * _DAT_00f9b5b4 * fVar7 + fVar7;
      fVar8 = (DAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8;
      local_50 = ((DAT_00f998f8 - fVar6 * fVar6 * fVar5) * _DAT_00f9b5b4 * fVar6 + fVar6) * local_50
      ;
      fStack_4c = ((DAT_00f998f8 - fVar7 * fVar7 * fVar5) * _DAT_00f9b5b4 * fVar7 + fVar7) *
                  fStack_4c;
      fStack_48 = ((DAT_00f998f8 - fVar8 * fVar8 * fVar5) * _DAT_00f9b5b4 * fVar8 + fVar8) *
                  fStack_48;
      uStack_44 = 0;
      local_40 = 0.0;
      fStack_3c = DAT_00f998f8;
      fStack_38 = 0.0;
      uStack_34 = 0;
      uStack_24 = 0;
      FUN_00958760(this_00,extraout_EDX,&local_50);
    }
    World_ObjectResetBindPose();
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

