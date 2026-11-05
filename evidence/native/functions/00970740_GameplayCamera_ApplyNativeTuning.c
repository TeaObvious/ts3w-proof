/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Accepts exactly95 tuning words; other counts
   leave state unchanged. Populates four input banks from40 words (5 axis groups of8); group1 copies
   group0, group6 is skipped. Stores next55 scalar words in gameplay camera. Rotation retention
   consumed00976815 is tuning word41 (remaining param1[1]) copied to controller+8D4; pan retention
   word40 to+8D0, zoom retention word42 to+8D8. Subsequent pitch knots are degrees converted to
   radians; values are data supplied to this function, not fixed mouse-delta caps. Native scalar
   arguments are words carrying float bits: Ghidra undefined4-to-float casts and ABI are artifacts;
   original fld/fst instructions govern. This setter is evidence of supplied tuning ownership, not a
   claimed default sensitivity. */

void __thiscall
GameplayCamera_ApplyNativeTuning(void *this,undefined4 *param_1,int param_2,undefined1 param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  uint uVar7;
  float10 fVar8;
  float10 fVar9;
  float fVar10;
  undefined4 local_138;
  undefined4 local_134;
  undefined4 local_130;
  undefined4 local_12c;
  undefined4 local_128;
  undefined4 local_124;
  undefined4 local_120;
  undefined4 local_11c;
  undefined4 local_118;
  undefined4 local_114;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  undefined4 local_f0 [59];

  if (param_2 == 0x5f) {
    *(undefined1 *)((int)this + 0x95c) = param_3;
    FUN_00962080((int)local_f0);
    uVar7 = 0;
    do {
      if ((uVar7 != 6) && (uVar7 != 1)) {
        FUN_009620d0(local_f0,0,uVar7,*param_1);
        FUN_009620f0(local_f0,0,uVar7,param_1[1]);
        FUN_009620d0(local_f0,1,uVar7,param_1[2]);
        FUN_009620f0(local_f0,1,uVar7,param_1[3]);
        FUN_009620d0(local_f0,2,uVar7,param_1[4]);
        FUN_009620f0(local_f0,2,uVar7,param_1[5]);
        FUN_009620d0(local_f0,3,uVar7,param_1[6]);
        FUN_009620f0(local_f0,3,uVar7,param_1[7]);
        param_1 = param_1 + 8;
      }
      uVar7 = uVar7 + 1;
    } while (uVar7 < 7);
    uVar7 = 0;
    do {
      fVar8 = FUN_00962120(local_f0,uVar7,0);
      fVar9 = FUN_00962140(local_f0,uVar7,0);
      FUN_009620d0(local_f0,uVar7,1,(float)fVar8);
      FUN_009620f0(local_f0,uVar7,1,(float)fVar9);
      uVar7 = uVar7 + 1;
    } while (uVar7 < 4);
    CameraInput_ApplyGainTables((void *)((int)this + 0x40),local_f0);
    *(undefined4 *)((int)this + 0x8d0) = *param_1;
    *(undefined4 *)((int)this + 0x8d4) = param_1[1];
    *(undefined4 *)((int)this + 0x8d8) = param_1[2];
    *(undefined4 *)((int)this + 0x8dc) = param_1[3];
    *(undefined4 *)((int)this + 0x8e0) = param_1[4];
    *(undefined4 *)((int)this + 0x8f4) = param_1[5];
    *(undefined4 *)((int)this + 0x8f8) = param_1[6];
    *(undefined4 *)((int)this + 0x960) = param_1[7];
    *(undefined4 *)((int)this + 0x10) = param_1[8];
    *(undefined4 *)((int)this + 0x90c) = param_1[9];
    *(undefined4 *)((int)this + 0x91c) = param_1[10];
    *(undefined4 *)((int)this + 0x92c) = param_1[0xb];
    *(undefined4 *)((int)this + 0x93c) = param_1[0xc];
    fVar6 = DAT_01046cb0;
    *(float *)((int)this + 0x910) = (float)param_1[0xd] * DAT_01046cb0;
    *(float *)((int)this + 0x920) = (float)param_1[0xe] * fVar6;
    fVar1 = (float)param_1[0xf];
    *(float *)((int)this + 0x930) = fVar1 * fVar6;
    fVar10 = (float)param_1[0x10];
    *(float *)((int)this + 0x940) = fVar10 * fVar6;
    *(float *)((int)this + 0x914) = (float)param_1[0x11] * fVar6;
    *(float *)((int)this + 0x924) = (float)param_1[0x12] * fVar6;
    fStack_104 = (float)param_1[0x13];
    local_110 = fStack_104 * fVar6;
    fStack_10c = fStack_104 * fVar6;
    fStack_108 = fStack_104 * fVar6;
    fStack_104 = fStack_104 * fVar6;
    *(float *)((int)this + 0x934) = local_110;
    fVar5 = DAT_0103fd88;
    fVar2 = (float)param_1[0x14];
    *(float *)((int)this + 0x944) = fVar2 * fVar6;
    *(float *)((int)this + 0x918) = (float)param_1[0x15] * fVar6;
    *(float *)((int)this + 0x928) = (float)param_1[0x16] * fVar6;
    fVar3 = (float)param_1[0x17];
    *(float *)((int)this + 0x938) = fVar3 * fVar6;
    fStack_f4 = (float)param_1[0x18];
    local_100 = fStack_f4 * fVar6;
    fStack_fc = fStack_f4 * fVar6;
    fStack_f8 = fStack_f4 * fVar6;
    fStack_f4 = fStack_f4 * fVar6;
    fVar4 = *(float *)((int)this + 0x93c);
    *(undefined4 *)((int)this + 0x8fc) = *(undefined4 *)((int)this + 0x90c);
    *(float *)((int)this + 0x948) = local_100;
    *(undefined4 *)((int)this + 0x900) = *(undefined4 *)((int)this + 0x910);
    *(undefined4 *)((int)this + 0x904) = *(undefined4 *)((int)this + 0x914);
    *(undefined4 *)((int)this + 0x908) = *(undefined4 *)((int)this + 0x918);
    *(float *)((int)this + 0x94c) = fVar4 * fVar5 - *(float *)((int)this + 0x92c);
    *(float *)((int)this + 0x950) = fVar10 * fVar6 * fVar5 - fVar1 * fVar6;
    *(float *)((int)this + 0x954) = fVar2 * fVar6 * fVar5 - local_110;
    *(float *)((int)this + 0x958) = local_100 * fVar5 - fVar3 * fVar6;
    fVar1 = *(float *)((int)this + 0x90c);
    *(float *)((int)this + 0x8e4) = fVar1;
    *(float *)((int)this + 0x8ec) = *(float *)((int)this + 0x92c);
    *(float *)((int)this + 0x8e8) = fVar4;
    fVar10 = DAT_00f998f8;
    if (fVar1 != fVar4) {
      fVar10 = DAT_00f998f8 / (fVar4 - fVar1);
    }
    *(float *)((int)this + 0x8f0) = fVar10;
    *(undefined4 *)((int)this + 0x964) = param_1[0x19];
    *(undefined4 *)((int)this + 0x968) = param_1[0x1a];
    *(undefined4 *)((int)this + 0x96c) = param_1[0x1b];
    *(undefined4 *)((int)this + 0x970) = param_1[0x1c];
    *(undefined4 *)((int)this + 0x974) = param_1[0x1d];
    *(undefined4 *)((int)this + 0x978) = param_1[0x1e];
    *(undefined4 *)((int)this + 0x97c) = param_1[0x1f];
    *(undefined4 *)((int)this + 0x984) = param_1[0x20];
    *(undefined4 *)((int)this + 0x988) = param_1[0x21];
    *(undefined4 *)((int)this + 0x98c) = param_1[0x22];
    *(undefined4 *)((int)this + 0x990) = param_1[0x23];
    *(undefined4 *)((int)this + 0x994) = param_1[0x24];
    *(undefined4 *)((int)this + 0x998) = param_1[0x25];
    FUN_00961fd0(&local_138);
    local_138 = param_1[0x26];
    local_134 = param_1[0x27];
    local_130 = param_1[0x28];
    local_12c = param_1[0x29];
    local_128 = param_1[0x2a];
    local_124 = param_1[0x2b];
    local_120 = param_1[0x2c];
    local_11c = param_1[0x2d];
    local_118 = param_1[0x2e];
    local_114 = param_1[0x2f];
    FUN_00962040((void *)((int)this + 0x5f0),&local_138);
    *(undefined4 *)((int)this + 0x99c) = param_1[0x30];
    *(undefined4 *)((int)this + 0x9a0) = param_1[0x31];
    *(undefined4 *)((int)this + 0x980) = param_1[0x32];
    *(undefined4 *)((int)this + 0x9a4) = param_1[0x33];
    *(undefined4 *)((int)this + 0x9a8) = param_1[0x34];
    *(undefined4 *)((int)this + 0x9ac) = param_1[0x35];
    *(undefined4 *)((int)this + 0x9b0) = param_1[0x36];
    if (*(char *)((int)this + 0x15) != '\0') {
      (**(code **)(*(int *)this + 0x58))();
    }
  }
  return;
}

