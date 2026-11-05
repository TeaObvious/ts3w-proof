/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ece8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_GetDistanceFromTargetToObject [assembly=ScriptCore
   token=0x060006FF; scriptHandle: System.UInt64; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore.CameraController::Camera_GetDistanceFromTargetToObject(void)

{
  int *piVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [4];
  int iVar5;
  void *pvVar6;
  undefined4 *this;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  float fVar10;
  float fVar11;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  float local_58;
  float fStack_4c;
  undefined1 local_30 [4];
  undefined1 auStack_2c [12];
  float local_20;
  float fStack_1c;
  float fStack_18;
  undefined4 uStack_14;
  
  local_58 = 0.0;
  iVar5 = FUN_00969bd0();
  if (iVar5 != 0) {
    iVar5 = FUN_00f21ff0(iVar5);
    if (iVar5 != 0) {
      iVar5 = FUN_00513de0(iVar5);
      if (iVar5 != 0) {
        iVar5 = *(int *)(iVar5 + 0xc);
        local_20 = *(float *)(iVar5 + 0x60);
        fStack_1c = *(float *)(iVar5 + 100);
        fStack_18 = *(float *)(iVar5 + 0x68);
        uStack_14 = *(undefined4 *)(iVar5 + 0x6c);
        fVar10 = *(float *)(iVar5 + 0x50);
        fVar11 = *(float *)(iVar5 + 0x58);
        fStack_4c = 0.0 - *(float *)(iVar5 + 0x54);
        auVar8._12_4_ = 0;
        auVar8._0_12_ = auStack_2c;
        _local_30 = auVar8 << 0x20;
        if (0.0 < fStack_4c) {
          fStack_4c = 0.0 - fStack_4c;
        }
        local_58 = 3.4028235e+38;
        auVar2._4_4_ = -(uint)(fStack_4c == 0.0);
        auVar2._0_4_ = -(uint)(fStack_4c == 0.0);
        auVar2._8_4_ = -(uint)(fStack_4c == 0.0);
        auVar2._12_4_ = -(uint)(fStack_4c == 0.0);
        iVar5 = movmskps(iVar5,auVar2);
        if (iVar5 != 0xf) {
          pvVar6 = ObjectRegistry_GetGlobal();
          this = ObjectRegistry_FindBorrowed(pvVar6,CONCAT44(in_stack_00000008,in_stack_00000004));
          if (this != (undefined4 *)0x0) {
            piVar1 = this + 1;
            LOCK();
            *piVar1 = *piVar1 + 1;
            UNLOCK();
            pvVar6 = Object_GetComponentByMask(this,DAT_011ea158);
            if (pvVar6 != (void *)0x0) {
              TransformComponent_GetWorldPosition(pvVar6,(undefined4 *)local_30);
              auVar4 = local_30;
              auVar7._0_4_ = (float)auStack_2c._0_4_ - fStack_1c;
              auVar7._4_4_ = (float)auStack_2c._0_4_ - fStack_1c;
              auVar7._8_4_ = (float)auStack_2c._0_4_ - fStack_1c;
              auVar7._12_4_ = (float)auStack_2c._0_4_ - fStack_1c;
              auVar3._4_4_ = fStack_4c;
              auVar3._0_4_ = fStack_4c;
              auVar3._8_4_ = fStack_4c;
              auVar3._12_4_ = fStack_4c;
              auVar8 = divps(auVar7,auVar3);
              local_30 = auVar8._0_4_;
              fVar10 = (float)auVar4 - (local_20 + (0.0 - fVar10) * (float)local_30);
              fVar11 = (float)auStack_2c._4_4_ - (fStack_18 + (0.0 - fVar11) * (float)local_30);
              auVar9._0_4_ = fVar11 * fVar11 + fVar10 * fVar10;
              auVar9._4_4_ = auVar9._0_4_;
              auVar9._8_4_ = auVar9._0_4_;
              auVar9._12_4_ = auVar9._0_4_;
              _local_30 = sqrtps(auVar9,auVar9);
              local_58 = (float)local_30;
            }
            LOCK();
            iVar5 = *piVar1;
            *piVar1 = *piVar1 + -1;
            UNLOCK();
            if (iVar5 == 1) {
              LOCK();
              *piVar1 = 1;
              UNLOCK();
              (**(code **)*this)(1);
            }
          }
        }
      }
    }
  }
  return (float10)local_58;
}

