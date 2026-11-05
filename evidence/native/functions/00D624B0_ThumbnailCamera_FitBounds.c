/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  float fVar2;
  uint uVar3;
  float fVar4;
  float10 fVar5;
  float fVar6;
  float fVar9;
  float fVar10;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  float fVar14;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  fVar4 = _DAT_00f9b5b4;
  auVar7._0_4_ = (param_1[6] - param_1[2]) * (param_1[6] - param_1[2]) +
                 (param_1[5] - param_1[1]) * (param_1[5] - param_1[1]) +
                 (param_1[4] - *param_1) * (param_1[4] - *param_1);
  auVar7._4_4_ = auVar7._0_4_;
  auVar7._8_4_ = auVar7._0_4_;
  auVar7._12_4_ = auVar7._0_4_;
  auVar7 = sqrtps(auVar7,auVar7);
  fVar14 = auVar7._12_4_ * _DAT_00f9b5b4;
  FUN_004dac30(*(void **)((int)this + 0x10),param_2[0xd]);
  if (param_2[0xd] == 0.0) {
    FUN_00960e30(*(void **)((int)this + 0x10),param_2[0xc]);
    fVar5 = (float10)fsin((float10)(*(float *)(*(int *)((int)this + 0x10) + 0x14) * fVar4));
    fVar1 = (float)fVar5;
    auVar12._4_4_ = fVar14;
    auVar12._0_4_ = fVar14;
    auVar12._8_4_ = fVar14;
    auVar12._12_4_ = fVar14;
    auVar8._4_4_ = fVar1;
    auVar8._0_4_ = fVar1;
    auVar8._8_4_ = fVar1;
    auVar8._12_4_ = fVar1;
    auVar13 = divps(auVar12,auVar8);
  }
  else {
    FUN_0095ff10(*(void **)((int)this + 0x10),1.0);
    auVar13._0_4_ = fVar14 * DAT_0103fd88;
    auVar13._4_4_ = fVar14 * DAT_0103fd88;
    auVar13._8_4_ = fVar14 * DAT_0103fd88;
    auVar13._12_4_ = fVar14 * DAT_0103fd88;
  }
  fVar1 = (float)*(int *)((int)this + 0x24);
  fVar6 = param_3 * auVar13._0_4_;
  fVar9 = param_3 * auVar13._4_4_;
  fVar10 = param_3 * auVar13._8_4_;
  fVar11 = param_3 * auVar13._12_4_;
  if (*(int *)((int)this + 0x24) < 0) {
    fVar1 = fVar1 + FLOAT_00f99948;
  }
  fVar2 = (float)*(int *)((int)this + 0x28);
  if (*(int *)((int)this + 0x28) < 0) {
    fVar2 = fVar2 + FLOAT_00f99948;
  }
  FUN_00960ef0(*(void **)((int)this + 0x10),fVar1 / fVar2);
  local_30 = (*param_1 + param_1[4]) * fVar4;
  fStack_2c = (param_1[1] + param_1[5]) * fVar4;
  fStack_28 = (param_1[2] + param_1[6]) * fVar4;
  fStack_24 = (param_1[3] + param_1[7]) * fVar4;
  local_20 = (0.0 - *param_2) * fVar6 + local_30;
  fStack_1c = (0.0 - param_2[1]) * fVar9 + fStack_2c;
  fStack_18 = (0.0 - param_2[2]) * fVar10 + fStack_28;
  fStack_14 = (0.0 - param_2[3]) * fVar11 + fStack_24;
  FUN_00961e90(*(void **)((int)this + 0x10),&local_20,param_2 + 4,&local_30);
  local_20 = fVar6 - fVar14;
  fStack_1c = fVar9 - fVar14;
  fStack_18 = fVar10 - fVar14;
  fStack_14 = fVar11 - fVar14;
  uVar3 = (int)(param_2[8] - local_20 * DAT_0107ebd4) >> 0x1f;
  fVar4 = (float)(~uVar3 & (uint)param_2[8] | (uint)(local_20 * DAT_0107ebd4) & uVar3);
  uVar3 = (int)(param_2[9] - fVar4) >> 0x1f;
  FUN_0095fd80(*(void **)((int)this + 0x10),~uVar3 & (uint)fVar4 | (uint)param_2[9] & uVar3);
  local_20 = fVar14 + fVar6;
  fStack_1c = fVar14 + fVar9;
  fStack_18 = fVar14 + fVar10;
  fStack_14 = fVar14 + fVar11;
  uVar3 = (int)(param_2[10] - local_20 * _DAT_00fa2ba0) >> 0x1f;
  fVar4 = (float)(~uVar3 & (uint)param_2[10] | (uint)(local_20 * _DAT_00fa2ba0) & uVar3);
  uVar3 = (int)(param_2[0xb] - fVar4) >> 0x1f;
  FUN_00535ac0(*(void **)((int)this + 0x10),~uVar3 & (uint)fVar4 | (uint)param_2[0xb] & uVar3);
  FUN_009612e0(*(void **)((int)this + 0x10),'\0');
  return;
}

