/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  char cVar1;
  float *pfVar2;
  undefined4 *puVar3;
  uint uVar4;
  int iVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
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
  
  cVar1 = FUN_007b8850(param_2);
  if (cVar1 == '\0') {
    return param_1;
  }
  local_40 = param_3[0xc];
  fStack_3c = param_3[0xd];
  fStack_38 = param_3[0xe];
  fStack_34 = param_3[0xf];
  Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_40,(undefined2 *)&local_90);
  fVar6 = (float10)fpatan((float10)(FLOAT_00f998f0 -
                                   (FLOAT_00f998f8 * param_3[2] + param_3[1] * 0.0 + *param_3 * 0.0)
                                   ),
                          (float10)(param_3[2] * 0.0 + param_3[1] * 0.0 + FLOAT_00f998f8 * *param_3)
                         );
  fVar7 = (float)fVar6;
  if (fVar7 < 0.0) {
    fVar7 = fVar7 + _DAT_00ffc4e0;
  }
  fVar6 = (float10)fsin((float10)fVar7);
  local_60 = (float)fVar6;
  fVar6 = (float10)fcos((float10)fVar7);
  fStack_5c = (float)fVar6;
  uStack_18 = 0;
  uStack_14 = 0;
  fStack_54 = 0.0 - local_60;
  fStack_58 = 0.0 - local_60;
  local_20 = local_60;
  fStack_1c = fStack_5c;
  Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_60,(undefined2 *)&local_88);
  pfVar2 = (float *)FUN_007b8860(param_2);
  puVar3 = (undefined4 *)FUN_007b8870(param_2);
  local_80[0] = puVar3[4];
  local_80[1] = puVar3[1];
  local_80[2] = puVar3[6];
  local_80[3] = puVar3[3];
  local_80[4] = *puVar3;
  local_80[5] = puVar3[5];
  local_80[6] = puVar3[2];
  uVar4 = (int)(ABS(*pfVar2 - pfVar2[3]) - ABS(pfVar2[5] - pfVar2[8])) >> 0x1f;
  fVar7 = *param_4 *
          (float)(~uVar4 & (uint)ABS(*pfVar2 - pfVar2[3]) | (uint)ABS(pfVar2[5] - pfVar2[8]) & uVar4
                 ) * DAT_00ffc4c0 * DAT_0106f8c8;
  local_80[7] = puVar3[7];
  iVar5 = 0;
  puVar3 = (undefined4 *)(param_1 + 8);
  pfVar2 = pfVar2 + 1;
  do {
    fVar8 = *param_4 * DAT_00ffc4c0;
    local_50._4_4_ = local_80[iVar5 * 2 + 1];
    fVar9 = pfVar2[-1] * fVar8;
    fVar10 = *pfVar2 * fVar8;
    fVar8 = pfVar2[1] * fVar8;
    local_50._0_4_ = local_80[iVar5 * 2];
    local_30 = fVar9 * *param_3 + fVar10 * param_3[4] + fVar8 * param_3[8] +
               FLOAT_00f998f8 * param_3[0xc];
    fStack_2c = fVar9 * param_3[1] + fVar10 * param_3[5] + fVar8 * param_3[9] +
                FLOAT_00f998f8 * param_3[0xd];
    fStack_28 = fVar9 * param_3[2] + fVar10 * param_3[6] + fVar8 * param_3[10] +
                FLOAT_00f998f8 * param_3[0xe];
    fStack_24 = fVar9 * param_3[3] + fVar10 * param_3[7] + fVar8 * param_3[0xb] +
                FLOAT_00f998f8 * param_3[0xf];
    fStack_48 = fVar7;
    uStack_44 = local_50._0_4_;
    Flora_PackHomogeneousShort4((undefined1 (*) [16])&local_30,(undefined2 *)(puVar3 + -2));
    Flora_PackHomogeneousShort4((undefined1 (*) [16])local_50,(undefined2 *)(puVar3 + 2));
    *puVar3 = local_90;
    puVar3[1] = local_8c;
    puVar3[4] = local_88;
    puVar3[5] = local_84;
    puVar3[6] = param_5;
    iVar5 = iVar5 + 1;
    pfVar2 = pfVar2 + 3;
    puVar3 = puVar3 + 9;
  } while (iVar5 < 4);
  return param_1 + 0x90;
}

