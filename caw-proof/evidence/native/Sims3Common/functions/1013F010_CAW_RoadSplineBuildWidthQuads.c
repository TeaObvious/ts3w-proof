/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Consumes the64byte polyline cache+184..+188 and writes
   one64byte planar quad per consecutive sample into+194..+198. Offsets each sample along
   (-tangentY,tangentX) by readonly road half-width6 at0x10C0F38C or footpath half-width1
   at0x10C0F390 (walkway flag+12C). Uses two cross-sign tests to order the four corner vectors. This
   is the actual producer consumed by0x1013E5D0, distinct from renderer tessellation.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

void __fastcall CAW_RoadSplineBuildWidthQuads(int param_1)

{
  float *pfVar1;
  float *pfVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  float fVar6;
  uint local_114;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float local_80;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  float local_50;
  float fStack_4c;
  undefined4 uStack_48;
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
  float fStack_18;
  float fStack_14;
  
  uVar4 = *(int *)(param_1 + 0x188) - *(int *)(param_1 + 0x184) >> 6;
  *(undefined4 *)(param_1 + 0x198) = *(undefined4 *)(param_1 + 0x194);
  local_114 = uVar4 - 1;
  FUN_1013df70((void *)(param_1 + 0x194),local_114);
  iVar3 = *(int *)(param_1 + 0x184);
  local_50 = *(float *)(iVar3 + 0x20);
  fStack_4c = *(float *)(iVar3 + 0x24);
  uStack_48 = *(undefined4 *)(iVar3 + 0x28);
  uStack_44 = *(undefined4 *)(iVar3 + 0x2c);
  fVar6 = 0.0 - fStack_4c;
  local_60 = 0.0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  local_70 = DAT_10c0f38c;
  if (*(char *)(param_1 + 300) != '\0') {
    local_70 = DAT_10c0f390;
  }
  if (1 < uVar4) {
    iVar5 = 0x40;
    local_a0 = *(float *)(iVar3 + 0x10) - local_70 * fVar6;
    fStack_9c = *(float *)(iVar3 + 0x14) - local_70 * local_50;
    fStack_98 = *(float *)(iVar3 + 0x18) - local_70 * fVar6;
    fStack_94 = *(float *)(iVar3 + 0x1c) - local_70 * fVar6;
    local_b0 = local_70 * fVar6 + *(float *)(iVar3 + 0x10);
    fStack_ac = local_70 * local_50 + *(float *)(iVar3 + 0x14);
    fStack_a8 = local_70 * fVar6 + *(float *)(iVar3 + 0x18);
    fStack_a4 = local_70 * fVar6 + *(float *)(iVar3 + 0x1c);
    fStack_6c = local_70;
    fStack_68 = local_70;
    fStack_64 = local_70;
    do {
      pfVar1 = (float *)(iVar5 + 0x20 + *(int *)(param_1 + 0x184));
      pfVar2 = (float *)(iVar5 + 0x10 + *(int *)(param_1 + 0x184));
      fVar6 = local_60 - pfVar1[1];
      fStack_bc = fStack_6c * *pfVar1;
      local_d0 = *pfVar2 - local_70 * fVar6;
      fStack_cc = pfVar2[1] - fStack_bc;
      fStack_c8 = pfVar2[2] - fStack_68 * fVar6;
      fStack_c4 = pfVar2[3] - fStack_64 * fVar6;
      local_c0 = local_70 * fVar6 + *pfVar2;
      fStack_bc = fStack_bc + pfVar2[1];
      fStack_b8 = fStack_68 * fVar6 + pfVar2[2];
      fStack_b4 = fStack_64 * fVar6 + pfVar2[3];
      local_40 = local_c0 - local_d0;
      fStack_3c = fStack_bc - fStack_cc;
      fStack_38 = fStack_b8 - fStack_c8;
      fStack_34 = fStack_b4 - fStack_c4;
      local_20 = local_b0 - local_d0;
      fStack_1c = fStack_ac - fStack_cc;
      fStack_18 = fStack_a8 - fStack_c8;
      fStack_14 = fStack_a4 - fStack_c4;
      local_90 = local_20 * fStack_3c;
      local_80 = fStack_1c * local_40;
      local_30 = local_a0 - local_d0;
      fStack_2c = fStack_9c - fStack_cc;
      fStack_28 = fStack_98 - fStack_c8;
      fStack_24 = fStack_94 - fStack_c4;
      local_110 = local_d0;
      fStack_10c = fStack_cc;
      fStack_108 = fStack_c8;
      fStack_104 = fStack_c4;
      local_100 = local_b0;
      fStack_fc = fStack_ac;
      fStack_f8 = fStack_a8;
      fStack_f4 = fStack_a4;
      local_f0 = local_c0;
      fStack_ec = fStack_bc;
      fStack_e8 = fStack_b8;
      fStack_e4 = fStack_b4;
      local_e0 = local_a0;
      fStack_dc = fStack_9c;
      fStack_d8 = fStack_98;
      fStack_d4 = fStack_94;
      if (local_90 <= local_80) {
        local_80 = local_30 * fStack_3c;
        local_90 = fStack_2c * local_40;
        local_100 = local_c0;
        fStack_fc = fStack_bc;
        fStack_f8 = fStack_b8;
        fStack_f4 = fStack_b4;
        local_f0 = local_b0;
        fStack_ec = fStack_ac;
        fStack_e8 = fStack_a8;
        fStack_e4 = fStack_a4;
        if (local_90 < local_80) {
          local_110 = local_a0;
          fStack_10c = fStack_9c;
          fStack_108 = fStack_98;
          fStack_104 = fStack_94;
          local_100 = local_c0;
          fStack_fc = fStack_bc;
          fStack_f8 = fStack_b8;
          fStack_f4 = fStack_b4;
          local_e0 = local_d0;
          fStack_dc = fStack_cc;
          fStack_d8 = fStack_c8;
          fStack_d4 = fStack_c4;
        }
      }
      pfVar1 = *(float **)(param_1 + 0x198);
      if (pfVar1 < *(float **)(param_1 + 0x19c)) {
        *(float **)(param_1 + 0x198) = pfVar1 + 0x10;
        if (pfVar1 != (float *)0x0) {
          *pfVar1 = local_110;
          pfVar1[1] = fStack_10c;
          pfVar1[2] = fStack_108;
          pfVar1[3] = fStack_104;
          pfVar1[4] = local_100;
          pfVar1[5] = fStack_fc;
          pfVar1[6] = fStack_f8;
          pfVar1[7] = fStack_f4;
          pfVar1[8] = local_f0;
          pfVar1[9] = fStack_ec;
          pfVar1[10] = fStack_e8;
          pfVar1[0xb] = fStack_e4;
          pfVar1[0xc] = local_e0;
          pfVar1[0xd] = fStack_dc;
          pfVar1[0xe] = fStack_d8;
          pfVar1[0xf] = fStack_d4;
        }
      }
      else {
        FUN_1013e430((void *)(param_1 + 0x194),pfVar1,&local_110);
      }
      iVar5 = iVar5 + 0x40;
      local_114 = local_114 - 1;
      local_a0 = local_d0;
      fStack_9c = fStack_cc;
      fStack_98 = fStack_c8;
      fStack_94 = fStack_c4;
      local_b0 = local_c0;
      fStack_ac = fStack_bc;
      fStack_a8 = fStack_b8;
      fStack_a4 = fStack_b4;
    } while (local_114 != 0);
  }
  return;
}

