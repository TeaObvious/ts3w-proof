/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ece8 (original PC 1.67 TS3W.exe).
   ScriptCore.CameraController::Camera_GetDistanceFromTargetToObject [assembly=ScriptCore
   token=0x060006FF; scriptHandle: System.UInt64; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore.CameraController::Camera_GetDistanceFromTargetToObject(void)

{
  int *piVar1;
  undefined1 auVar2 [16];
  float fVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 *this;
  void *this_00;
  float fVar9;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fVar10;
  float local_58;
  undefined1 local_30 [8];
  float fStack_28;
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
        fVar3 = *(float *)(iVar5 + 0x58);
        fVar9 = 0.0 - *(float *)(iVar5 + 0x54);
        local_30._0_4_ = DAT_010f4ccc;
        if (DAT_010f4ccc < fVar9) {
          fVar9 = 0.0 - fVar9;
        }
        local_58 = DAT_01000988;
        auVar7._4_4_ = -(uint)(fVar9 == DAT_010f4ccc);
        auVar7._0_4_ = -(uint)(fVar9 == DAT_010f4ccc);
        auVar7._8_4_ = -(uint)(fVar9 == DAT_010f4ccc);
        auVar7._12_4_ = -(uint)(fVar9 == DAT_010f4ccc);
        iVar5 = movmskps(iVar5,auVar7);
        if (iVar5 != 0xf) {
          iVar5 = FUN_00937570();
          this = (undefined4 *)FUN_00937f80(iVar5);
          if (this != (undefined4 *)0x0) {
            piVar1 = this + 1;
            LOCK();
            *piVar1 = *piVar1 + 1;
            UNLOCK();
            this_00 = (void *)FUN_00934260(this,DAT_011ea158);
            if (this_00 != (void *)0x0) {
              FUN_00957a30(this_00,(undefined4 *)local_30);
              uVar4 = local_30._0_4_;
              auVar6._0_4_ = (float)local_30._4_4_ - fStack_1c;
              auVar6._4_4_ = (float)local_30._4_4_ - fStack_1c;
              auVar6._8_4_ = (float)local_30._4_4_ - fStack_1c;
              auVar6._12_4_ = (float)local_30._4_4_ - fStack_1c;
              auVar2._4_4_ = fVar9;
              auVar2._0_4_ = fVar9;
              auVar2._8_4_ = fVar9;
              auVar2._12_4_ = fVar9;
              auVar7 = divps(auVar6,auVar2);
              local_30._0_4_ = auVar7._0_4_;
              fVar10 = (float)uVar4 - (local_20 + (0.0 - fVar10) * (float)local_30._0_4_);
              fStack_28 = fStack_28 - (fStack_18 + (0.0 - fVar3) * (float)local_30._0_4_);
              auVar8._0_4_ = fStack_28 * fStack_28 + fVar10 * fVar10;
              auVar8._4_4_ = auVar8._0_4_;
              auVar8._8_4_ = auVar8._0_4_;
              auVar8._12_4_ = auVar8._0_4_;
              _local_30 = sqrtps(auVar8,auVar8);
              local_58 = (float)local_30._0_4_;
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

