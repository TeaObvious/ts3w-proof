/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011619e0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_SetPathEndOrientation [assembly=ScriptCore token=0x0600111F; handle:
   System.UInt32, pathIndex: System.UInt32, orientationMatrix: Sims3.SimIFace.Matrix44;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_SetPathEndOrientation(uint param_1,int param_2)

{
  int *piVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  int *piVar5;
  int *piVar6;
  float *pfVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
  if (DAT_011d50c4 == (void *)0x0) {
    return;
  }
  piVar5 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar5 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar5 + 0x10))();
  piVar6 = (int *)piVar5[0x38];
  piVar1 = piVar5 + 0x38;
  if (piVar6 != piVar1) {
    do {
      if (param_2 == 0) break;
      piVar6 = (int *)*piVar6;
      param_2 = param_2 + -1;
    } while (piVar6 != piVar1);
    if ((piVar6 != piVar1) && (piVar1 = (int *)piVar6[2], piVar1 != (int *)0x0)) {
      pfVar7 = (float *)FUN_0076c090(&stack0x0000000c,&fStack_80);
      fStack_50 = *pfVar7;
      fStack_4c = pfVar7[1];
      fStack_48 = pfVar7[2];
      fStack_44 = pfVar7[3];
      pfVar7 = (float *)FUN_0076c090(&stack0x0000001c,&fStack_80);
      fStack_40 = *pfVar7;
      fStack_3c = pfVar7[1];
      fStack_38 = pfVar7[2];
      fStack_34 = pfVar7[3];
      pfVar7 = (float *)FUN_0076c090(&stack0x0000002c,&fStack_80);
      fStack_30 = *pfVar7;
      fStack_2c = pfVar7[1];
      fStack_28 = pfVar7[2];
      fStack_24 = pfVar7[3];
      FUN_0076c090(&stack0x0000003c,&fStack_80);
      auVar12._4_4_ = fStack_50;
      auVar12._0_4_ = fStack_50;
      auVar12._8_4_ = fStack_50;
      auVar12._12_4_ = fStack_50;
      auVar10._4_4_ = fStack_3c;
      auVar10._0_4_ = fStack_3c;
      auVar10._8_4_ = fStack_3c;
      auVar10._12_4_ = fStack_3c;
      fStack_80 = fStack_50 + fStack_3c;
      fStack_7c = fStack_50 + fStack_3c;
      fStack_78 = fStack_50 + fStack_3c;
      fStack_74 = fStack_50 + fStack_3c;
      fStack_60 = fStack_28 + fStack_80;
      if (fStack_60 <= DAT_010f4ccc) {
        if ((fStack_50 <= fStack_3c) || (fStack_50 <= fStack_28)) {
          if (fStack_3c <= fStack_28) {
            auVar8._0_4_ = DAT_00f998f8 + (fStack_28 - fStack_80);
            auVar8._4_4_ = DAT_00f998f8 + (fStack_28 - fStack_7c);
            auVar8._8_4_ = DAT_00f998f8 + (fStack_28 - fStack_78);
            auVar8._12_4_ = DAT_00f998f8 + (fStack_28 - fStack_74);
            auVar10 = sqrtps(auVar12,auVar8);
            auVar14._4_4_ = _DAT_00f9b5b4;
            auVar14._0_4_ = _DAT_00f9b5b4;
            auVar14._8_4_ = _DAT_00f9b5b4;
            auVar14._12_4_ = _DAT_00f9b5b4;
            auVar12 = divps(auVar14,auVar10);
            fStack_70 = (fStack_48 + fStack_30) * auVar12._0_4_;
            fStack_6c = (fStack_2c + fStack_38) * auVar12._4_4_;
            fStack_68 = auVar10._8_4_ * _DAT_00f9b5b4;
            fStack_64 = (fStack_4c - fStack_40) * auVar12._12_4_;
          }
          else {
            auVar4._4_4_ = DAT_00f998f8 + (fStack_3c - (fStack_28 + fStack_50));
            auVar4._0_4_ = DAT_00f998f8 + (fStack_3c - (fStack_28 + fStack_50));
            auVar4._8_4_ = DAT_00f998f8 + (fStack_3c - (fStack_28 + fStack_50));
            auVar4._12_4_ = DAT_00f998f8 + (fStack_3c - (fStack_28 + fStack_50));
            auVar12 = sqrtps(ZEXT416((uint)fStack_3c),auVar4);
            auVar11._4_4_ = _DAT_00f9b5b4;
            auVar11._0_4_ = _DAT_00f9b5b4;
            auVar11._8_4_ = _DAT_00f9b5b4;
            auVar11._12_4_ = _DAT_00f9b5b4;
            auVar10 = divps(auVar11,auVar12);
            fStack_70 = (fStack_4c + fStack_40) * auVar10._0_4_;
            fStack_6c = auVar12._4_4_ * _DAT_00f9b5b4;
            fStack_68 = (fStack_2c + fStack_38) * auVar10._8_4_;
            fStack_64 = (fStack_30 - fStack_48) * auVar10._12_4_;
          }
        }
        else {
          auVar3._4_4_ = DAT_00f998f8 + (fStack_50 - (fStack_28 + fStack_3c));
          auVar3._0_4_ = DAT_00f998f8 + (fStack_50 - (fStack_28 + fStack_3c));
          auVar3._8_4_ = DAT_00f998f8 + (fStack_50 - (fStack_28 + fStack_3c));
          auVar3._12_4_ = DAT_00f998f8 + (fStack_50 - (fStack_28 + fStack_3c));
          auVar10 = sqrtps(auVar10,auVar3);
          auVar13._4_4_ = _DAT_00f9b5b4;
          auVar13._0_4_ = _DAT_00f9b5b4;
          auVar13._8_4_ = _DAT_00f9b5b4;
          auVar13._12_4_ = _DAT_00f9b5b4;
          auVar12 = divps(auVar13,auVar10);
          fStack_70 = auVar10._0_4_ * _DAT_00f9b5b4;
          fStack_6c = (fStack_4c + fStack_40) * auVar12._4_4_;
          fStack_68 = (fStack_48 + fStack_30) * auVar12._8_4_;
          fStack_64 = (fStack_38 - fStack_2c) * auVar12._12_4_;
        }
      }
      else {
        auVar2._4_4_ = DAT_00f998f8 + fStack_28 + fStack_7c;
        auVar2._0_4_ = DAT_00f998f8 + fStack_60;
        auVar2._8_4_ = DAT_00f998f8 + fStack_28 + fStack_78;
        auVar2._12_4_ = DAT_00f998f8 + fStack_28 + fStack_74;
        auVar12 = sqrtps(ZEXT416((uint)fStack_60),auVar2);
        auVar9._4_4_ = _DAT_00f9b5b4;
        auVar9._0_4_ = _DAT_00f9b5b4;
        auVar9._8_4_ = _DAT_00f9b5b4;
        auVar9._12_4_ = _DAT_00f9b5b4;
        auVar10 = divps(auVar9,auVar12);
        fStack_70 = (fStack_38 - fStack_2c) * auVar10._0_4_;
        fStack_6c = (fStack_30 - fStack_48) * auVar10._4_4_;
        fStack_68 = (fStack_4c - fStack_40) * auVar10._8_4_;
        fStack_64 = auVar12._12_4_ * _DAT_00f9b5b4;
      }
      (**(code **)(*piVar1 + 0x144))(&fStack_70);
    }
  }
  (**(code **)(*piVar5 + 0x14))();
  return;
}

