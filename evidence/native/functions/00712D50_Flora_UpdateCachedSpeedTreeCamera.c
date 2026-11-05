/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. Two physical stack pointer arguments plus incidental ECX/EDX
   decompiler inputs; RET8. Scales camera position by1/0.3048, compares XYZ absolute differences
   componentwise against actual epsilon; unchanged cached position AND direction returns. Stores
   direction with Y clamped[-1,1], caches position, then calls7BB2D0. These stored caller values and
   later7BB260 GetCamera feed7135C0 BillboardAzimuth. */

void __fastcall
Flora_UpdateCachedSpeedTreeCamera
          (undefined4 param_1,undefined4 param_2,float *param_3,float *param_4)

{
  undefined1 auVar1 [16];
  undefined4 uVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
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
  
  local_30 = DAT_00ffc70c * *param_3;
  fStack_2c = DAT_00ffc70c * param_3[1];
  fStack_28 = DAT_00ffc70c * param_3[2];
  fStack_24 = DAT_00ffc70c * param_3[3];
  auVar5._0_4_ = FLOAT_00fab218 * (DAT_011d376c - local_30);
  auVar5._4_4_ = FLOAT_00fab218 * (DAT_011d3770 - fStack_2c);
  auVar5._8_4_ = FLOAT_00fab218 * (DAT_011d3774 - fStack_28);
  auVar5._12_4_ = FLOAT_00fab218 * (DAT_011d376c - fStack_24);
  auVar6._4_4_ = DAT_011d3770 - fStack_2c;
  auVar6._0_4_ = DAT_011d376c - local_30;
  auVar6._8_4_ = DAT_011d3774 - fStack_28;
  auVar6._12_4_ = DAT_011d376c - fStack_24;
  auVar6 = maxps(auVar5,auVar6);
  auVar7._4_4_ = -(uint)(auVar6._4_4_ <= DAT_00ffc718);
  auVar7._0_4_ = -(uint)(auVar6._0_4_ <= DAT_00ffc718);
  auVar7._8_4_ = -(uint)(auVar6._8_4_ <= DAT_00ffc718);
  auVar7._12_4_ = -(uint)(auVar6._12_4_ <= DAT_00ffc718);
  uVar2 = movmskps(param_1,auVar7);
  if (((byte)uVar2 & 7) == 7) {
    auVar3._0_4_ = FLOAT_00fab218 * (DAT_011d3760 - *param_4);
    auVar3._4_4_ = FLOAT_00fab218 * (DAT_011d3764 - param_4[1]);
    auVar3._8_4_ = FLOAT_00fab218 * (DAT_011d3768 - param_4[2]);
    auVar3._12_4_ = FLOAT_00fab218 * (DAT_011d3760 - param_4[3]);
    auVar1._4_4_ = DAT_011d3764 - param_4[1];
    auVar1._0_4_ = DAT_011d3760 - *param_4;
    auVar1._8_4_ = DAT_011d3768 - param_4[2];
    auVar1._12_4_ = DAT_011d3760 - param_4[3];
    auVar6 = maxps(auVar3,auVar1);
    auVar4._4_4_ = -(uint)(auVar6._4_4_ <= DAT_00ffc718);
    auVar4._0_4_ = -(uint)(auVar6._0_4_ <= DAT_00ffc718);
    auVar4._8_4_ = -(uint)(auVar6._8_4_ <= DAT_00ffc718);
    auVar4._12_4_ = -(uint)(auVar6._12_4_ <= DAT_00ffc718);
    uVar2 = movmskps(param_2,auVar4);
    if (((byte)uVar2 & 7) == 7) {
      return;
    }
  }
  DAT_011d3760 = *param_4;
  fStack_1c = param_4[1];
  DAT_011d3768 = param_4[2];
  fStack_34 = param_4[3];
  if (FLOAT_00fab218 <= fStack_1c) {
    fStack_3c = fStack_1c;
    if (FLOAT_00f998f8 < fStack_1c) {
      fStack_3c = FLOAT_00f998f8;
    }
  }
  else {
    fStack_3c = FLOAT_00fab218;
  }
  DAT_011d3764 = fStack_3c;
  DAT_011d376c = local_30;
  DAT_011d3770 = fStack_2c;
  DAT_011d3774 = fStack_28;
  local_40 = DAT_011d3760;
  fStack_38 = DAT_011d3768;
  local_20 = DAT_011d3760;
  fStack_18 = DAT_011d3768;
  fStack_14 = fStack_34;
  SpeedTree_SetCameraAndSdkBillboardFades(&local_30,&local_40);
  return;
}

