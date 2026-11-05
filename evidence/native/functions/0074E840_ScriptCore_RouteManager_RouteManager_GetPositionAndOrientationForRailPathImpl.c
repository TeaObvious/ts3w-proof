/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01161c70 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_GetPositionAndOrientationForRailPathImpl
   [assembly=ScriptCore token=0x06001064; trainObjId: System.UInt64, railIndexStart: System.Int32,
   railIndexEnd: System.Int32, position: Sims3.SimIFace.Vector3&, orientation:
   Sims3.SimIFace.Vector3&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.RouteManager::RouteManager_GetPositionAndOrientationForRailPathImpl
          (undefined4 param_1,undefined4 param_2,int param_3,int param_4,float *param_5,
          float *param_6)

{
  float *pfVar1;
  bool bVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  int iVar5;
  void *pvVar6;
  int *piVar7;
  int iVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar29;
  float fVar30;
  undefined1 in_XMM4 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
  float fStack_34;
  undefined1 local_30 [8];
  float fStack_28;
  float fStack_24;
  
  iVar5 = FUN_00937570();
  if (((iVar5 != 0) && (pvVar6 = (void *)FUN_00937f80(iVar5), pvVar6 != (void *)0x0)) &&
     (pvVar6 = (void *)FUN_00934260(pvVar6,DAT_011ea138), pvVar6 != (void *)0x0)) {
    FUN_00952140(pvVar6,(char)param_3,(char)param_4);
  }
  pvVar6 = DAT_011da140;
  if (DAT_011da140 != (void *)0x0) {
    iVar5 = FUN_008c2c70((int)DAT_011da140);
    if (param_3 < 0) {
      param_3 = 0;
    }
    if (iVar5 <= param_3) {
      param_3 = iVar5 + -1;
    }
    if (param_4 < 0) {
      param_4 = 0;
    }
    if (iVar5 <= param_4) {
      param_4 = iVar5 + -1;
    }
    if ((float)iVar5 * _DAT_00f9b5b4 < ABS((float)param_4 - (float)param_3)) {
      bVar2 = param_4 < param_3;
    }
    else {
      bVar2 = param_3 < param_4;
    }
    piVar7 = (int *)FUN_0083c5e0(pvVar6);
    if (piVar7 != (int *)0x0) {
      auVar24._4_4_ = DAT_00f998f8;
      auVar24._0_4_ = DAT_00f998f8;
      auVar24._8_4_ = DAT_00f998f8;
      auVar24._12_4_ = DAT_00f998f8;
      if (bVar2) {
        pfVar1 = (float *)*piVar7;
        fVar9 = *pfVar1;
        fVar11 = pfVar1[1];
        fVar12 = pfVar1[2];
        fVar16 = pfVar1[0x10];
        fVar18 = pfVar1[0x11];
        fVar20 = pfVar1[0x12];
      }
      else {
        iVar5 = *piVar7;
        iVar8 = piVar7[1] - iVar5 >> 5;
        pfVar1 = (float *)(iVar8 * 0x20 + -0x20 + iVar5);
        fVar9 = *pfVar1;
        fVar11 = pfVar1[1];
        fVar12 = pfVar1[2];
        pfVar1 = (float *)((iVar8 + -3) * 0x20 + iVar5);
        fVar16 = *pfVar1;
        fVar18 = pfVar1[1];
        fVar20 = pfVar1[2];
      }
      fVar16 = fVar16 - fVar9;
      fVar18 = fVar18 - fVar11;
      fVar20 = fVar20 - fVar12;
      fVar10 = fVar20 * fVar20 + fVar18 * fVar18 + fVar16 * fVar16;
      auVar22._4_4_ = fVar10;
      auVar22._0_4_ = fVar10;
      auVar22._8_4_ = fVar10;
      auVar22._12_4_ = fVar10;
      auVar22 = rsqrtps(in_XMM4,auVar22);
      fVar13 = auVar22._0_4_;
      fVar14 = auVar22._4_4_;
      fVar15 = auVar22._8_4_;
      fVar13 = (DAT_00f998f8 - fVar13 * fVar13 * fVar10) * _DAT_00f9b5b4 * fVar13 + fVar13;
      fVar14 = (DAT_00f998f8 - fVar14 * fVar14 * fVar10) * _DAT_00f9b5b4 * fVar14 + fVar14;
      fVar15 = (DAT_00f998f8 - fVar15 * fVar15 * fVar10) * _DAT_00f9b5b4 * fVar15 + fVar15;
      fVar16 = ((DAT_00f998f8 - fVar13 * fVar13 * fVar10) * _DAT_00f9b5b4 * fVar13 + fVar13) *
               fVar16;
      fVar18 = ((DAT_00f998f8 - fVar14 * fVar14 * fVar10) * _DAT_00f9b5b4 * fVar14 + fVar14) *
               fVar18;
      fVar20 = ((DAT_00f998f8 - fVar15 * fVar15 * fVar10) * _DAT_00f9b5b4 * fVar15 + fVar15) *
               fVar20;
      fVar13 = DAT_00f998f8 * fVar20 - fVar18 * 0.0;
      fVar14 = fVar16 * 0.0 - fVar20 * 0.0;
      fVar15 = fVar18 * 0.0 - DAT_00f998f8 * fVar16;
      fVar10 = fVar13 * fVar13;
      auVar31._4_4_ = fVar10;
      auVar31._0_4_ = fVar14 * fVar14;
      auVar31._8_4_ = fVar10;
      auVar31._12_4_ = fVar10;
      fVar10 = fVar15 * fVar15 + fVar14 * fVar14 + fVar10;
      auVar3._4_4_ = fVar10;
      auVar3._0_4_ = fVar10;
      auVar3._8_4_ = fVar10;
      auVar3._12_4_ = fVar10;
      auVar22 = rsqrtps(auVar31,auVar3);
      fVar17 = auVar22._0_4_;
      fVar19 = auVar22._4_4_;
      fVar21 = auVar22._8_4_;
      fVar17 = (DAT_00f998f8 - fVar17 * fVar17 * fVar10) * _DAT_00f9b5b4 * fVar17 + fVar17;
      fVar19 = (DAT_00f998f8 - fVar19 * fVar19 * fVar10) * _DAT_00f9b5b4 * fVar19 + fVar19;
      fVar21 = (DAT_00f998f8 - fVar21 * fVar21 * fVar10) * _DAT_00f9b5b4 * fVar21 + fVar21;
      fVar13 = ((DAT_00f998f8 - fVar17 * fVar17 * fVar10) * _DAT_00f9b5b4 * fVar17 + fVar17) *
               fVar13;
      fVar14 = ((DAT_00f998f8 - fVar19 * fVar19 * fVar10) * _DAT_00f9b5b4 * fVar19 + fVar19) *
               fVar14;
      fVar15 = ((DAT_00f998f8 - fVar21 * fVar21 * fVar10) * _DAT_00f9b5b4 * fVar21 + fVar21) *
               fVar15;
      fVar17 = fVar15 * fVar18 - fVar14 * fVar20;
      local_30._4_4_ = fVar13 * fVar20 - fVar15 * fVar16;
      fVar19 = fVar14 * fVar16 - fVar13 * fVar18;
      fVar10 = fVar17 * fVar17;
      auVar36._4_4_ = fVar10;
      auVar36._0_4_ = (float)local_30._4_4_ * (float)local_30._4_4_;
      auVar36._8_4_ = fVar10;
      auVar36._12_4_ = fVar10;
      fVar10 = fVar19 * fVar19 + (float)local_30._4_4_ * (float)local_30._4_4_ + fVar10;
      auVar4._4_4_ = fVar10;
      auVar4._0_4_ = fVar10;
      auVar4._8_4_ = fVar10;
      auVar4._12_4_ = fVar10;
      auVar22 = rsqrtps(auVar36,auVar4);
      fVar21 = auVar22._0_4_;
      fVar29 = auVar22._4_4_;
      fVar30 = auVar22._8_4_;
      fVar21 = (DAT_00f998f8 - fVar21 * fVar21 * fVar10) * fVar21 * _DAT_00f9b5b4 + fVar21;
      fVar29 = (DAT_00f998f8 - fVar29 * fVar29 * fVar10) * fVar29 * _DAT_00f9b5b4 + fVar29;
      fVar30 = (DAT_00f998f8 - fVar30 * fVar30 * fVar10) * fVar30 * _DAT_00f9b5b4 + fVar30;
      fVar17 = ((DAT_00f998f8 - fVar21 * fVar21 * fVar10) * fVar21 * _DAT_00f9b5b4 + fVar21) *
               fVar17;
      local_30._4_4_ =
           ((DAT_00f998f8 - fVar29 * fVar29 * fVar10) * fVar29 * _DAT_00f9b5b4 + fVar29) *
           (float)local_30._4_4_;
      fVar19 = ((DAT_00f998f8 - fVar30 * fVar30 * fVar10) * fVar30 * _DAT_00f9b5b4 + fVar30) *
               fVar19;
      local_30._0_4_ = local_30._4_4_;
      fStack_28 = (float)local_30._4_4_;
      fStack_24 = (float)local_30._4_4_;
      auVar23._4_4_ = fVar20;
      auVar23._0_4_ = fVar20;
      auVar23._8_4_ = fVar20;
      auVar23._12_4_ = fVar20;
      fVar10 = fVar20 + fVar13 + (float)local_30._4_4_;
      if (fVar10 <= DAT_010f4ccc) {
        if ((fVar13 <= (float)local_30._4_4_) || (fVar13 <= fVar20)) {
          if ((float)local_30._4_4_ <= fVar20) {
            auVar28._0_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + DAT_00f998f8;
            auVar28._4_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + DAT_00f998f8;
            auVar28._8_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + DAT_00f998f8;
            auVar28._12_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + DAT_00f998f8;
            auVar24 = sqrtps(_local_30,auVar28);
            auVar37._4_4_ = _DAT_00f9b5b4;
            auVar37._0_4_ = _DAT_00f9b5b4;
            auVar37._8_4_ = _DAT_00f9b5b4;
            auVar37._12_4_ = _DAT_00f9b5b4;
            auVar22 = divps(auVar37,auVar24);
            fVar10 = (fVar15 + fVar16) * auVar22._0_4_;
            local_30._4_4_ = (fVar18 + fVar19) * auVar22._4_4_;
            fStack_28 = auVar24._8_4_ * _DAT_00f9b5b4;
            fStack_34 = (fVar14 - fVar17) * auVar22._12_4_;
          }
          else {
            auVar27._0_4_ = fVar20 + fVar13;
            auVar27._4_4_ = fVar20 + fVar13;
            auVar27._8_4_ = fVar20 + fVar13;
            auVar27._12_4_ = fVar20 + fVar13;
            auVar34._0_4_ = ((float)local_30._4_4_ - auVar27._0_4_) + DAT_00f998f8;
            auVar34._4_4_ = ((float)local_30._4_4_ - auVar27._4_4_) + DAT_00f998f8;
            auVar34._8_4_ = ((float)local_30._4_4_ - auVar27._8_4_) + DAT_00f998f8;
            auVar34._12_4_ = ((float)local_30._4_4_ - auVar27._12_4_) + DAT_00f998f8;
            auVar24 = sqrtps(auVar27,auVar34);
            auVar35._4_4_ = _DAT_00f9b5b4;
            auVar35._0_4_ = _DAT_00f9b5b4;
            auVar35._8_4_ = _DAT_00f9b5b4;
            auVar35._12_4_ = _DAT_00f9b5b4;
            auVar22 = divps(auVar35,auVar24);
            local_30._4_4_ = auVar24._4_4_;
            fVar10 = (fVar14 + fVar17) * auVar22._0_4_;
            local_30._4_4_ = (float)local_30._4_4_ * _DAT_00f9b5b4;
            fStack_28 = (fVar18 + fVar19) * auVar22._8_4_;
            fStack_34 = (fVar16 - fVar15) * auVar22._12_4_;
          }
        }
        else {
          auVar25._0_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + DAT_00f998f8;
          auVar25._4_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + DAT_00f998f8;
          auVar25._8_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + DAT_00f998f8;
          auVar25._12_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + DAT_00f998f8;
          auVar22 = sqrtps(auVar24,auVar25);
          auVar26._4_4_ = _DAT_00f9b5b4;
          auVar26._0_4_ = _DAT_00f9b5b4;
          auVar26._8_4_ = _DAT_00f9b5b4;
          auVar26._12_4_ = _DAT_00f9b5b4;
          auVar24 = divps(auVar26,auVar22);
          local_30._4_4_ = auVar24._4_4_;
          fStack_28 = auVar24._8_4_;
          fStack_24 = auVar24._12_4_;
          fVar10 = auVar22._0_4_ * _DAT_00f9b5b4;
          local_30._4_4_ = (fVar14 + fVar17) * (float)local_30._4_4_;
          fStack_28 = (fVar15 + fVar16) * fStack_28;
          fStack_34 = (fVar19 - fVar18) * fStack_24;
        }
      }
      else {
        auVar32._0_4_ = fVar10 + DAT_00f998f8;
        auVar32._4_4_ = fVar20 + fVar13 + (float)local_30._4_4_ + DAT_00f998f8;
        auVar32._8_4_ = fVar20 + fVar13 + (float)local_30._4_4_ + DAT_00f998f8;
        auVar32._12_4_ = fVar20 + fVar13 + (float)local_30._4_4_ + DAT_00f998f8;
        auVar24 = sqrtps(auVar23,auVar32);
        auVar33._4_4_ = _DAT_00f9b5b4;
        auVar33._0_4_ = _DAT_00f9b5b4;
        auVar33._8_4_ = _DAT_00f9b5b4;
        auVar33._12_4_ = _DAT_00f9b5b4;
        auVar22 = divps(auVar33,auVar24);
        fStack_34 = auVar24._12_4_;
        fVar10 = (fVar19 - fVar18) * auVar22._0_4_;
        local_30._4_4_ = (fVar16 - fVar15) * auVar22._4_4_;
        fStack_28 = (fVar14 - fVar17) * auVar22._8_4_;
        fStack_34 = fStack_34 * _DAT_00f9b5b4;
      }
      fVar14 = ((float)local_30._4_4_ * 0.0 - fStack_28 * 0.0) + fStack_34 * DAT_01005100;
      fVar15 = (DAT_01005100 * fStack_28 - fVar10 * 0.0) + fStack_34 * 0.0;
      fVar17 = (fVar10 * 0.0 - DAT_01005100 * (float)local_30._4_4_) + fStack_34 * 0.0;
      fVar13 = (fVar14 * fStack_28 - fVar17 * fVar10) * DAT_0103fd88;
      fVar10 = (fVar15 * fVar10 - fVar14 * (float)local_30._4_4_) * DAT_0103fd88;
      *param_5 = (fVar17 * (float)local_30._4_4_ - fVar15 * fStack_28) * DAT_0103fd88 + DAT_01005100
                 + fVar9;
      param_5[2] = fVar10 + 0.0 + fVar12;
      param_5[1] = fVar13 + 0.0 + fVar11;
      *param_6 = fVar16;
      param_6[1] = fVar18;
      param_6[2] = fVar20;
    }
  }
  return;
}

