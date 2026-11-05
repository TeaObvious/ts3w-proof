/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01163698 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectResetBindPoseWithRotation [assembly=ScriptCore token=0x060007D6;
   objId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.World::World_ObjectResetBindPoseWithRotation(void)

{
  int *piVar1;
  int iVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  void *pvVar5;
  undefined4 *this;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
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
  
  pvVar5 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar5,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    pvVar5 = Object_GetComponentByMask(this,DAT_011ea158);
    if (pvVar5 != (void *)0x0) {
      TransformComponent_GetWorldMatrix(pvVar5,&local_50);
      local_40 = local_40 * 0.0;
      auVar10._4_4_ = local_40;
      auVar10._0_4_ = fStack_3c * 1.0;
      auVar10._8_4_ = local_40;
      auVar10._12_4_ = local_40;
      if (fStack_38 * 0.0 + fStack_3c * 1.0 + local_40 < 0.0) {
        local_30 = 0.0 - local_30;
        fStack_28 = 0.0 - fStack_28;
      }
      fVar6 = fStack_28 * fStack_28 + 0.0 + local_30 * local_30;
      auVar3._4_4_ = fVar6;
      auVar3._0_4_ = fVar6;
      auVar3._8_4_ = fVar6;
      auVar3._12_4_ = fVar6;
      auVar10 = rsqrtps(auVar10,auVar3);
      fVar7 = auVar10._0_4_;
      fVar8 = auVar10._4_4_;
      fVar9 = auVar10._8_4_;
      fVar7 = (1.0 - fVar7 * fVar7 * fVar6) * fVar7 * 0.5 + fVar7;
      fVar8 = (1.0 - fVar8 * fVar8 * fVar6) * fVar8 * 0.5 + fVar8;
      fVar9 = (1.0 - fVar9 * fVar9 * fVar6) * fVar9 * 0.5 + fVar9;
      local_30 = ((1.0 - fVar7 * fVar7 * fVar6) * fVar7 * 0.5 + fVar7) * local_30;
      fStack_2c = ((1.0 - fVar8 * fVar8 * fVar6) * fVar8 * 0.5 + fVar8) * 0.0;
      fStack_28 = ((1.0 - fVar9 * fVar9 * fVar6) * fVar9 * 0.5 + fVar9) * fStack_28;
      local_50 = fStack_28 * 1.0 - fStack_2c * 0.0;
      fStack_4c = local_30 * 0.0 - fStack_28 * 0.0;
      fStack_48 = fStack_2c * 0.0 - local_30 * 1.0;
      fVar6 = local_50 * local_50;
      auVar11._4_4_ = fVar6;
      auVar11._0_4_ = fStack_4c * fStack_4c;
      auVar11._8_4_ = fVar6;
      auVar11._12_4_ = fVar6;
      fVar6 = fStack_48 * fStack_48 + fStack_4c * fStack_4c + fVar6;
      auVar4._4_4_ = fVar6;
      auVar4._0_4_ = fVar6;
      auVar4._8_4_ = fVar6;
      auVar4._12_4_ = fVar6;
      auVar10 = rsqrtps(auVar11,auVar4);
      fVar7 = auVar10._0_4_;
      fVar8 = auVar10._4_4_;
      fVar9 = auVar10._8_4_;
      fVar7 = (1.0 - fVar7 * fVar7 * fVar6) * fVar7 * 0.5 + fVar7;
      fVar8 = (1.0 - fVar8 * fVar8 * fVar6) * fVar8 * 0.5 + fVar8;
      fVar9 = (1.0 - fVar9 * fVar9 * fVar6) * fVar9 * 0.5 + fVar9;
      local_50 = ((1.0 - fVar7 * fVar7 * fVar6) * fVar7 * 0.5 + fVar7) * local_50;
      fStack_4c = ((1.0 - fVar8 * fVar8 * fVar6) * fVar8 * 0.5 + fVar8) * fStack_4c;
      fStack_48 = ((1.0 - fVar9 * fVar9 * fVar6) * fVar9 * 0.5 + fVar9) * fStack_48;
      uStack_44 = 0;
      local_40 = 0.0;
      fStack_3c = 1.0;
      fStack_38 = 0.0;
      uStack_34 = 0;
      uStack_24 = 0;
      TransformComponent_SetWorldMatrix(pvVar5,&local_50);
    }
    World_ObjectResetBindPose();
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return;
}

