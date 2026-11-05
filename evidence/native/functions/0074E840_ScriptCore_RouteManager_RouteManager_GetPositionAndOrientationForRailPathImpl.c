/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01161c70 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar5;
  int iVar6;
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
  
  pvVar5 = ObjectRegistry_GetGlobal();
  if (((pvVar5 != (void *)0x0) &&
      (pvVar5 = ObjectRegistry_FindBorrowed(pvVar5,CONCAT44(param_2,param_1)), pvVar5 != (void *)0x0
      )) && (pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011ea138), pvVar5 != (void *)0x0)) {
    FUN_00952140(pvVar5,(char)param_3,(char)param_4);
  }
  pvVar5 = DAT_011da140;
  if (DAT_011da140 != (void *)0x0) {
    iVar6 = FUN_008c2c70((int)DAT_011da140);
    if (param_3 < 0) {
      param_3 = 0;
    }
    if (iVar6 <= param_3) {
      param_3 = iVar6 + -1;
    }
    if (param_4 < 0) {
      param_4 = 0;
    }
    if (iVar6 <= param_4) {
      param_4 = iVar6 + -1;
    }
    if ((float)iVar6 * 0.5 < ABS((float)param_4 - (float)param_3)) {
      bVar2 = param_4 < param_3;
    }
    else {
      bVar2 = param_3 < param_4;
    }
    piVar7 = (int *)FUN_0083c5e0(pvVar5);
    if (piVar7 != (int *)0x0) {
      auVar24._8_4_ = 0x3f800000;
      auVar24._0_8_ = 0x3f8000003f800000;
      auVar24._12_4_ = 0x3f800000;
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
        iVar6 = *piVar7;
        iVar8 = piVar7[1] - iVar6 >> 5;
        pfVar1 = (float *)(iVar8 * 0x20 + -0x20 + iVar6);
        fVar9 = *pfVar1;
        fVar11 = pfVar1[1];
        fVar12 = pfVar1[2];
        pfVar1 = (float *)((iVar8 + -3) * 0x20 + iVar6);
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
      fVar13 = (1.0 - fVar13 * fVar13 * fVar10) * fVar13 * 0.5 + fVar13;
      fVar14 = (1.0 - fVar14 * fVar14 * fVar10) * fVar14 * 0.5 + fVar14;
      fVar15 = (1.0 - fVar15 * fVar15 * fVar10) * fVar15 * 0.5 + fVar15;
      fVar16 = ((1.0 - fVar13 * fVar13 * fVar10) * fVar13 * 0.5 + fVar13) * fVar16;
      fVar18 = ((1.0 - fVar14 * fVar14 * fVar10) * fVar14 * 0.5 + fVar14) * fVar18;
      fVar20 = ((1.0 - fVar15 * fVar15 * fVar10) * fVar15 * 0.5 + fVar15) * fVar20;
      fVar13 = fVar20 * 1.0 - fVar18 * 0.0;
      fVar14 = fVar16 * 0.0 - fVar20 * 0.0;
      fVar15 = fVar18 * 0.0 - fVar16 * 1.0;
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
      fVar17 = (1.0 - fVar17 * fVar17 * fVar10) * fVar17 * 0.5 + fVar17;
      fVar19 = (1.0 - fVar19 * fVar19 * fVar10) * fVar19 * 0.5 + fVar19;
      fVar21 = (1.0 - fVar21 * fVar21 * fVar10) * fVar21 * 0.5 + fVar21;
      fVar13 = ((1.0 - fVar17 * fVar17 * fVar10) * fVar17 * 0.5 + fVar17) * fVar13;
      fVar14 = ((1.0 - fVar19 * fVar19 * fVar10) * fVar19 * 0.5 + fVar19) * fVar14;
      fVar15 = ((1.0 - fVar21 * fVar21 * fVar10) * fVar21 * 0.5 + fVar21) * fVar15;
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
      fVar21 = (1.0 - fVar21 * fVar21 * fVar10) * fVar21 * 0.5 + fVar21;
      fVar29 = (1.0 - fVar29 * fVar29 * fVar10) * fVar29 * 0.5 + fVar29;
      fVar30 = (1.0 - fVar30 * fVar30 * fVar10) * fVar30 * 0.5 + fVar30;
      fVar17 = ((1.0 - fVar21 * fVar21 * fVar10) * fVar21 * 0.5 + fVar21) * fVar17;
      local_30._4_4_ =
           ((1.0 - fVar29 * fVar29 * fVar10) * fVar29 * 0.5 + fVar29) * (float)local_30._4_4_;
      fVar19 = ((1.0 - fVar30 * fVar30 * fVar10) * fVar30 * 0.5 + fVar30) * fVar19;
      local_30._0_4_ = local_30._4_4_;
      fStack_28 = (float)local_30._4_4_;
      fStack_24 = (float)local_30._4_4_;
      auVar23._4_4_ = fVar20;
      auVar23._0_4_ = fVar20;
      auVar23._8_4_ = fVar20;
      auVar23._12_4_ = fVar20;
      fVar10 = fVar20 + fVar13 + (float)local_30._4_4_;
      if (fVar10 <= 0.0) {
        if ((fVar13 <= (float)local_30._4_4_) || (fVar13 <= fVar20)) {
          if ((float)local_30._4_4_ <= fVar20) {
            auVar28._0_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + 1.0;
            auVar28._4_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + 1.0;
            auVar28._8_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + 1.0;
            auVar28._12_4_ = (fVar20 - (fVar13 + (float)local_30._4_4_)) + 1.0;
            auVar24 = sqrtps(_local_30,auVar28);
            auVar37._8_4_ = 0x3f000000;
            auVar37._0_8_ = 0x3f0000003f000000;
            auVar37._12_4_ = 0x3f000000;
            auVar22 = divps(auVar37,auVar24);
            fVar10 = (fVar15 + fVar16) * auVar22._0_4_;
            local_30._4_4_ = (fVar18 + fVar19) * auVar22._4_4_;
            fStack_28 = auVar24._8_4_ * 0.5;
            fStack_34 = (fVar14 - fVar17) * auVar22._12_4_;
          }
          else {
            auVar27._0_4_ = fVar20 + fVar13;
            auVar27._4_4_ = fVar20 + fVar13;
            auVar27._8_4_ = fVar20 + fVar13;
            auVar27._12_4_ = fVar20 + fVar13;
            auVar34._0_4_ = ((float)local_30._4_4_ - auVar27._0_4_) + 1.0;
            auVar34._4_4_ = ((float)local_30._4_4_ - auVar27._4_4_) + 1.0;
            auVar34._8_4_ = ((float)local_30._4_4_ - auVar27._8_4_) + 1.0;
            auVar34._12_4_ = ((float)local_30._4_4_ - auVar27._12_4_) + 1.0;
            auVar24 = sqrtps(auVar27,auVar34);
            auVar35._8_4_ = 0x3f000000;
            auVar35._0_8_ = 0x3f0000003f000000;
            auVar35._12_4_ = 0x3f000000;
            auVar22 = divps(auVar35,auVar24);
            local_30._4_4_ = auVar24._4_4_;
            fVar10 = (fVar14 + fVar17) * auVar22._0_4_;
            local_30._4_4_ = (float)local_30._4_4_ * 0.5;
            fStack_28 = (fVar18 + fVar19) * auVar22._8_4_;
            fStack_34 = (fVar16 - fVar15) * auVar22._12_4_;
          }
        }
        else {
          auVar25._0_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + 1.0;
          auVar25._4_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + 1.0;
          auVar25._8_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + 1.0;
          auVar25._12_4_ = (fVar13 - (fVar20 + (float)local_30._4_4_)) + 1.0;
          auVar22 = sqrtps(auVar24,auVar25);
          auVar26._8_4_ = 0x3f000000;
          auVar26._0_8_ = 0x3f0000003f000000;
          auVar26._12_4_ = 0x3f000000;
          auVar24 = divps(auVar26,auVar22);
          local_30._4_4_ = auVar24._4_4_;
          fStack_28 = auVar24._8_4_;
          fStack_24 = auVar24._12_4_;
          fVar10 = auVar22._0_4_ * 0.5;
          local_30._4_4_ = (fVar14 + fVar17) * (float)local_30._4_4_;
          fStack_28 = (fVar15 + fVar16) * fStack_28;
          fStack_34 = (fVar19 - fVar18) * fStack_24;
        }
      }
      else {
        auVar32._0_4_ = fVar10 + 1.0;
        auVar32._4_4_ = fVar20 + fVar13 + (float)local_30._4_4_ + 1.0;
        auVar32._8_4_ = fVar20 + fVar13 + (float)local_30._4_4_ + 1.0;
        auVar32._12_4_ = fVar20 + fVar13 + (float)local_30._4_4_ + 1.0;
        auVar24 = sqrtps(auVar23,auVar32);
        auVar33._8_4_ = 0x3f000000;
        auVar33._0_8_ = 0x3f0000003f000000;
        auVar33._12_4_ = 0x3f000000;
        auVar22 = divps(auVar33,auVar24);
        fStack_34 = auVar24._12_4_;
        fVar10 = (fVar19 - fVar18) * auVar22._0_4_;
        local_30._4_4_ = (fVar16 - fVar15) * auVar22._4_4_;
        fStack_28 = (fVar14 - fVar17) * auVar22._8_4_;
        fStack_34 = fStack_34 * 0.5;
      }
      fVar13 = ((float)local_30._4_4_ * 0.0 - fStack_28 * 0.0) + fStack_34 * 1.8;
      fVar14 = (fStack_28 * 1.8 - fVar10 * 0.0) + fStack_34 * 0.0;
      fVar15 = (fVar10 * 0.0 - (float)local_30._4_4_ * 1.8) + fStack_34 * 0.0;
      *param_5 = (fVar15 * (float)local_30._4_4_ - fVar14 * fStack_28) * 2.0 + 1.8 + fVar9;
      param_5[2] = (fVar14 * fVar10 - fVar13 * (float)local_30._4_4_) * 2.0 + 0.0 + fVar12;
      param_5[1] = (fVar13 * fStack_28 - fVar15 * fVar10) * 2.0 + 0.0 + fVar11;
      *param_6 = fVar16;
      param_6[1] = fVar18;
      param_6[2] = fVar20;
    }
  }
  return;
}

