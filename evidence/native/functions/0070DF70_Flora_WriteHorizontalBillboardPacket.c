/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 original contract. cdecl five stack words, RET, returns output advanced144 bytes;
   absent horizontal authored geometry returns original output. Four36-byte vertices: SHORT4
   transformed world corner at0, SHORT4 tree translation at8, SHORT4 authored UV/quarter-scaled
   horizontal extent at16, SHORT4 instance-azimuth trig at24, opaque instance+78 word at32.
   Selected9277 consumes only v0/v1/v2. Do not mistake later packet words for the separate
   instance+74 opacity or a consumed ordinary alpha varying. Square-extent maximum uses original
   float-bit sign selection; retain actual instructions for boundary cases. */

int __cdecl
Flora_WriteHorizontalBillboardPacket
          (int param_1,int param_2,float *param_3,float *param_4,undefined4 param_5)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  char cVar5;
  float *pfVar6;
  undefined4 *puVar7;
  uint uVar8;
  int iVar9;
  float10 fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80 [8];
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined1 local_50 [8];
  float fStack_48;
  undefined4 uStack_44;
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
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  cVar5 = FUN_007b8850(param_2);
  if (cVar5 == '\0') {
    return param_1;
  }
  local_40 = param_3[0xc];
  fStack_3c = param_3[0xd];
  fStack_38 = param_3[0xe];
  fStack_34 = param_3[0xf];
  Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_40,(undefined2 *)&local_90);
  fVar10 = (float10)fpatan((float10)(-0.0 - (param_3[2] * 1.0 + param_3[1] * 0.0 + *param_3 * 0.0)),
                           (float10)(param_3[2] * 0.0 + param_3[1] * 0.0 + *param_3 * 1.0));
  fVar11 = (float)fVar10;
  if (fVar11 < 0.0) {
    fVar11 = fVar11 + 6.2831855;
  }
  fVar10 = (float10)fsin((float10)fVar11);
  local_60 = (float)fVar10;
  fVar10 = (float10)fcos((float10)fVar11);
  fStack_5c = (float)fVar10;
  uStack_18 = 0;
  uStack_14 = 0;
  fStack_54 = 0.0 - local_60;
  fStack_58 = 0.0 - local_60;
  local_20 = local_60;
  fStack_1c = fStack_5c;
  Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_60,(undefined2 *)&local_88);
  pfVar6 = (float *)SpeedTree_GetHorizontalBillboardCorners(param_2);
  puVar7 = (undefined4 *)SpeedTree_GetHorizontalBillboardTextureRow(param_2);
  fVar1 = pfVar6[5];
  fVar2 = pfVar6[8];
  local_80[0] = puVar7[4];
  local_80[1] = puVar7[1];
  fVar3 = *pfVar6;
  fVar4 = pfVar6[3];
  local_80[2] = puVar7[6];
  local_80[3] = puVar7[3];
  local_80[4] = *puVar7;
  local_80[5] = puVar7[5];
  local_80[6] = puVar7[2];
  uVar8 = (int)(ABS(fVar3 - fVar4) - ABS(fVar1 - fVar2)) >> 0x1f;
  fVar11 = *param_4;
  local_80[7] = puVar7[7];
  iVar9 = 0;
  puVar7 = (undefined4 *)(param_1 + 8);
  pfVar6 = pfVar6 + 1;
  do {
    fVar12 = *param_4 * 0.3048;
    local_50._4_4_ = local_80[iVar9 * 2 + 1];
    fVar13 = pfVar6[-1] * fVar12;
    fVar14 = *pfVar6 * fVar12;
    fVar12 = pfVar6[1] * fVar12;
    local_50._0_4_ = local_80[iVar9 * 2];
    local_30 = fVar13 * *param_3 + fVar14 * param_3[4] + fVar12 * param_3[8] + param_3[0xc] * 1.0;
    fStack_2c = fVar13 * param_3[1] + fVar14 * param_3[5] + fVar12 * param_3[9] + param_3[0xd] * 1.0
    ;
    fStack_28 = fVar13 * param_3[2] + fVar14 * param_3[6] + fVar12 * param_3[10] +
                param_3[0xe] * 1.0;
    fStack_24 = fVar13 * param_3[3] + fVar14 * param_3[7] + fVar12 * param_3[0xb] +
                param_3[0xf] * 1.0;
    fStack_48 = fVar11 * (float)(~uVar8 & (uint)ABS(fVar3 - fVar4) |
                                (uint)ABS(fVar1 - fVar2) & uVar8) * 0.3048 * 0.25;
    uStack_44 = local_50._0_4_;
    Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_30,(undefined2 *)(puVar7 + -2));
    Flora_PackHomogeneousShort4((undefined1 (*) [16])local_50,(undefined2 *)(puVar7 + 2));
    *puVar7 = local_90;
    puVar7[1] = local_8c;
    puVar7[4] = local_88;
    puVar7[5] = local_84;
    puVar7[6] = param_5;
    iVar9 = iVar9 + 1;
    pfVar6 = pfVar6 + 3;
    puVar7 = puVar7 + 9;
  } while (iVar9 < 4);
  return param_1 + 0x90;
}

