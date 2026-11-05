/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01161b38 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_Replace [assembly=ScriptCore token=0x0600113E; routeHandle:
   System.UInt32, segmentId: System.UInt32, routeHandleOther: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_Replace(uint param_1,int param_2,uint param_3)

{
  int *piVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  int *piVar11;
  int *piVar12;
  int iVar13;
  int iVar14;
  int *piVar15;
  undefined4 *puVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  undefined1 auStack_6c [12];
  undefined1 auStack_60 [64];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  piVar11 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar11 != (int *)0x0) {
    (**(code **)(*piVar11 + 0x10))();
  }
  piVar12 = (int *)FUN_0074b4b0(DAT_011d50c4,param_3);
  if (piVar12 != (int *)0x0) {
    (**(code **)(*piVar12 + 0x10))();
  }
  if (piVar11 != (int *)0x0) {
    if (piVar12 == (int *)0x0) goto LAB_00755150;
    if ((char)piVar11[0x3d] == '\0') {
      piVar15 = piVar11 + 0x38;
      if ((int *)*piVar15 != piVar15) {
        piVar15 = *(int **)(*piVar15 + 8);
        goto LAB_00754d76;
      }
      piVar15 = (int *)0x0;
    }
    else {
      piVar15 = (int *)piVar11[0x3b];
LAB_00754d76:
      if (piVar15 != (int *)0x0) {
        LOCK();
        piVar15[1] = piVar15[1] + 1;
        UNLOCK();
      }
    }
    if ((char)piVar12[0x3d] == '\0') {
      piVar1 = piVar12 + 0x38;
      if ((int *)*piVar1 != piVar1) {
        puVar16 = *(undefined4 **)(*piVar1 + 8);
        goto LAB_00754d99;
      }
      puVar16 = (undefined4 *)0x0;
    }
    else {
      puVar16 = (undefined4 *)piVar12[0x3b];
LAB_00754d99:
      if (puVar16 != (undefined4 *)0x0) {
        LOCK();
        puVar16[1] = puVar16[1] + 1;
        UNLOCK();
      }
    }
    if (piVar15 == (int *)0x0) {
LAB_007550f7:
      if (puVar16 != (undefined4 *)0x0) {
        piVar1 = puVar16 + 1;
        LOCK();
        iVar13 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar13 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*puVar16)(1);
        }
      }
    }
    else if (puVar16 != (undefined4 *)0x0) {
      (**(code **)(*piVar15 + 0x134))(auStack_60);
      (**(code **)(*piVar15 + 0x104))(param_2,puVar16);
      (**(code **)(*piVar15 + 0x148))(auStack_6c);
      iVar13 = (**(code **)(*piVar15 + 0x4c))();
      if (iVar13 == 0) {
        iVar14 = 0;
      }
      else {
        iVar14 = iVar13 + -1;
      }
      if ((param_2 == iVar14) || (iVar13 == 0)) {
        fStack_20 = (float)piVar12[0x4c];
        fStack_1c = (float)piVar12[0x4d];
        fStack_18 = (float)piVar12[0x4e];
        fStack_14 = (float)piVar12[0x4f];
        fVar2 = (float)piVar12[0x40];
        fVar3 = (float)piVar12[0x41];
        fVar4 = (float)piVar12[0x42];
        fVar5 = (float)piVar12[0x44];
        fVar6 = (float)piVar12[0x45];
        fVar7 = (float)piVar12[0x46];
        fVar8 = (float)piVar12[0x48];
        fVar9 = (float)piVar12[0x49];
        fVar10 = (float)piVar12[0x4a];
        if ((char)piVar12[0x50] != '\0') {
          fStack_70 = fVar6 + fVar2 + fVar10;
          if (fStack_70 <= DAT_010f4ccc) {
            if ((fVar2 <= fVar6) || (fVar2 <= fVar10)) {
              if (fVar6 <= fVar10) {
                auVar19._0_4_ = DAT_00f998f8 + (fVar10 - (fVar6 + fVar2));
                auVar19._4_4_ = DAT_00f998f8 + (fVar10 - (fVar6 + fVar2));
                auVar19._8_4_ = DAT_00f998f8 + (fVar10 - (fVar6 + fVar2));
                auVar19._12_4_ = DAT_00f998f8 + (fVar10 - (fVar6 + fVar2));
                auVar21 = sqrtps(auVar19,auVar19);
                auVar23._4_4_ = _DAT_00f9b5b4;
                auVar23._0_4_ = _DAT_00f9b5b4;
                auVar23._8_4_ = _DAT_00f9b5b4;
                auVar23._12_4_ = _DAT_00f9b5b4;
                auVar24 = divps(auVar23,auVar21);
                fStack_80 = (fVar8 + fVar4) * auVar24._0_4_;
                fStack_7c = (fVar7 + fVar9) * auVar24._4_4_;
                fStack_78 = auVar21._8_4_ * _DAT_00f9b5b4;
                fStack_74 = (fVar3 - fVar5) * auVar24._12_4_;
              }
              else {
                auVar18._0_4_ = DAT_00f998f8 + (fVar6 - (fVar10 + fVar2));
                auVar18._4_4_ = DAT_00f998f8 + (fVar6 - (fVar10 + fVar2));
                auVar18._8_4_ = DAT_00f998f8 + (fVar6 - (fVar10 + fVar2));
                auVar18._12_4_ = DAT_00f998f8 + (fVar6 - (fVar10 + fVar2));
                auVar24 = sqrtps(ZEXT416((uint)fVar6),auVar18);
                auVar22._4_4_ = _DAT_00f9b5b4;
                auVar22._0_4_ = _DAT_00f9b5b4;
                auVar22._8_4_ = _DAT_00f9b5b4;
                auVar22._12_4_ = _DAT_00f9b5b4;
                auVar21 = divps(auVar22,auVar24);
                fStack_80 = (fVar5 + fVar3) * auVar21._0_4_;
                fStack_7c = auVar24._4_4_ * _DAT_00f9b5b4;
                fStack_78 = (fVar7 + fVar9) * auVar21._8_4_;
                fStack_74 = (fVar8 - fVar4) * auVar21._12_4_;
              }
            }
            else {
              auVar21._0_4_ = DAT_00f998f8 + (fVar2 - (fVar10 + fVar6));
              auVar21._4_4_ = DAT_00f998f8 + (fVar2 - (fVar10 + fVar6));
              auVar21._8_4_ = DAT_00f998f8 + (fVar2 - (fVar10 + fVar6));
              auVar21._12_4_ = DAT_00f998f8 + (fVar2 - (fVar10 + fVar6));
              auVar21 = sqrtps(auVar21,auVar21);
              auVar24._4_4_ = _DAT_00f9b5b4;
              auVar24._0_4_ = _DAT_00f9b5b4;
              auVar24._8_4_ = _DAT_00f9b5b4;
              auVar24._12_4_ = _DAT_00f9b5b4;
              auVar24 = divps(auVar24,auVar21);
              fStack_80 = auVar21._0_4_ * _DAT_00f9b5b4;
              fStack_78 = (fVar8 + fVar4) * auVar24._8_4_;
              fStack_7c = (fVar5 + fVar3) * auVar24._4_4_;
              fStack_74 = (fVar7 - fVar9) * auVar24._12_4_;
            }
          }
          else {
            auVar17._0_4_ = DAT_00f998f8 + fStack_70;
            auVar17._4_4_ = DAT_00f998f8 + fVar6 + fVar2 + fVar10;
            auVar17._8_4_ = DAT_00f998f8 + fVar6 + fVar2 + fVar10;
            auVar17._12_4_ = DAT_00f998f8 + fVar6 + fVar2 + fVar10;
            auVar24 = sqrtps(ZEXT416((uint)fStack_70),auVar17);
            auVar20._4_4_ = _DAT_00f9b5b4;
            auVar20._0_4_ = _DAT_00f9b5b4;
            auVar20._8_4_ = _DAT_00f9b5b4;
            auVar20._12_4_ = _DAT_00f9b5b4;
            auVar21 = divps(auVar20,auVar24);
            fStack_80 = (fVar7 - fVar9) * auVar21._0_4_;
            fStack_7c = (fVar8 - fVar4) * auVar21._4_4_;
            fStack_78 = (fVar3 - fVar5) * auVar21._8_4_;
            fStack_74 = auVar24._12_4_ * _DAT_00f9b5b4;
          }
          (**(code **)(*piVar15 + 0x144))(&fStack_80);
        }
        if (*(char *)((int)piVar12 + 0x141) != '\0') {
          fStack_80 = fStack_20;
          fStack_7c = fStack_1c;
          fStack_78 = fStack_18;
          fStack_74 = fStack_14;
          (**(code **)(*piVar15 + 0x148))(&fStack_80);
        }
      }
      goto LAB_007550f7;
    }
    if (piVar15 != (int *)0x0) {
      piVar1 = piVar15 + 1;
      LOCK();
      iVar13 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar13 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar15)(1);
      }
    }
  }
  if (piVar12 != (int *)0x0) {
    (**(code **)(*piVar12 + 0x14))();
  }
LAB_00755150:
  if (piVar11 != (int *)0x0) {
    (**(code **)(*piVar11 + 0x14))();
  }
  return;
}

