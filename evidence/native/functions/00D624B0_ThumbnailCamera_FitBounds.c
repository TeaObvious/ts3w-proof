/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 SACS migration contract): ECX render owner, bounds/settings/scale three
   stack words. Half-diagonal radius; projection0 uses radius/sin(cameraFOV*0.5), orthographic
   uses2*radius and camera width1. Multiply distance by scale, aspect=requestWidth/requestHeight
   with UInt32 conversion, center=(min+max)*0.5, eye=center-view*distance. Clamp
   near(distance-radius)*0.99 to authored range and far(distance+radius)*1.01; bit-select float
   comparisons in decompiler are not integer clipping. Constants verified in original
   data/instructions. */

void __thiscall ThumbnailCamera_FitBounds(void *this,float *param_1,float *param_2,float param_3)

{
  float fVar1;
  uint uVar2;
  float fVar3;
  float10 fVar4;
  float fVar5;
  float fVar8;
  float fVar9;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  float fVar10;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar13;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  auVar6._0_4_ = (param_1[6] - param_1[2]) * (param_1[6] - param_1[2]) +
                 (param_1[5] - param_1[1]) * (param_1[5] - param_1[1]) +
                 (param_1[4] - *param_1) * (param_1[4] - *param_1);
  auVar6._4_4_ = auVar6._0_4_;
  auVar6._8_4_ = auVar6._0_4_;
  auVar6._12_4_ = auVar6._0_4_;
  auVar6 = sqrtps(auVar6,auVar6);
  fVar13 = auVar6._12_4_ * 0.5;
  Camera_SetProjectionMode(*(void **)((int)this + 0x10),param_2[0xd]);
  if (param_2[0xd] == 0.0) {
    Camera_SetHorizontalFieldOfViewDegrees(*(void **)((int)this + 0x10),param_2[0xc]);
    fVar4 = (float10)fsin((float10)(*(float *)(*(int *)((int)this + 0x10) + 0x14) * 0.5));
    fVar3 = (float)fVar4;
    auVar11._4_4_ = fVar13;
    auVar11._0_4_ = fVar13;
    auVar11._8_4_ = fVar13;
    auVar11._12_4_ = fVar13;
    auVar7._4_4_ = fVar3;
    auVar7._0_4_ = fVar3;
    auVar7._8_4_ = fVar3;
    auVar7._12_4_ = fVar3;
    auVar12 = divps(auVar11,auVar7);
  }
  else {
    Camera_SetOrthographicWidth(*(void **)((int)this + 0x10),1.0);
    auVar12._0_4_ = fVar13 * 2.0;
    auVar12._4_4_ = fVar13 * 2.0;
    auVar12._8_4_ = fVar13 * 2.0;
    auVar12._12_4_ = fVar13 * 2.0;
  }
  fVar3 = (float)*(int *)((int)this + 0x24);
  fVar5 = param_3 * auVar12._0_4_;
  fVar8 = param_3 * auVar12._4_4_;
  fVar9 = param_3 * auVar12._8_4_;
  fVar10 = param_3 * auVar12._12_4_;
  if (*(int *)((int)this + 0x24) < 0) {
    fVar3 = fVar3 + 4.2949673e+09;
  }
  fVar1 = (float)*(int *)((int)this + 0x28);
  if (*(int *)((int)this + 0x28) < 0) {
    fVar1 = fVar1 + 4.2949673e+09;
  }
  FUN_00960ef0(*(void **)((int)this + 0x10),fVar3 / fVar1);
  local_30 = (*param_1 + param_1[4]) * 0.5;
  fStack_2c = (param_1[1] + param_1[5]) * 0.5;
  fStack_28 = (param_1[2] + param_1[6]) * 0.5;
  fStack_24 = (param_1[3] + param_1[7]) * 0.5;
  local_20 = (0.0 - *param_2) * fVar5 + local_30;
  fStack_1c = (0.0 - param_2[1]) * fVar8 + fStack_2c;
  fStack_18 = (0.0 - param_2[2]) * fVar9 + fStack_28;
  fStack_14 = (0.0 - param_2[3]) * fVar10 + fStack_24;
  FUN_00961e90(*(void **)((int)this + 0x10),&local_20,param_2 + 4,&local_30);
  local_20 = fVar5 - fVar13;
  fStack_1c = fVar8 - fVar13;
  fStack_18 = fVar9 - fVar13;
  fStack_14 = fVar10 - fVar13;
  uVar2 = (int)(param_2[8] - local_20 * 0.99) >> 0x1f;
  fVar3 = (float)(~uVar2 & (uint)param_2[8] | (uint)(local_20 * 0.99) & uVar2);
  uVar2 = (int)(param_2[9] - fVar3) >> 0x1f;
  FUN_0095fd80(*(void **)((int)this + 0x10),~uVar2 & (uint)fVar3 | (uint)param_2[9] & uVar2);
  local_20 = fVar13 + fVar5;
  fStack_1c = fVar13 + fVar8;
  fStack_18 = fVar13 + fVar9;
  fStack_14 = fVar13 + fVar10;
  uVar2 = (int)(param_2[10] - local_20 * 1.01) >> 0x1f;
  fVar13 = (float)(~uVar2 & (uint)param_2[10] | (uint)(local_20 * 1.01) & uVar2);
  uVar2 = (int)(param_2[0xb] - fVar13) >> 0x1f;
  FUN_00535ac0(*(void **)((int)this + 0x10),~uVar2 & (uint)fVar13 | (uint)param_2[0xb] & uVar2);
  FUN_009612e0(*(void **)((int)this + 0x10),'\0');
  return;
}

