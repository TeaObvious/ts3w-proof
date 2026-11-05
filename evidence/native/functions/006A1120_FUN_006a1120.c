/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Room fill coarse sampling and four-lane reduction. ECX retains room owner. The char result/CONCAT31 at 6A9960 is misleading: actual producer clears full EAX, counts four matching DWORD room lanes, and returns0..4. The caller consumes full EAX and multiplies by.25. Two probes at tileY and tileY+4 use five physical stack words and room ECX at 69FF70; two pushed zero words are observed, complete child ABI remains separate. Sum/max use four lanes, not RGB-only. Area adds wall+24 times3. Exposure/fill/tuning/finite/fault and outer scheduling are not inferred from names.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 006A1120_FUN_006a1120.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_006a1120(undefined4 *param_1)

{
  float fVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fVar9;
  float fVar10;
  float fVar11;
  char cVar12;
  uint uVar13;
  undefined4 *puVar14;
  void *this;
  uint uVar15;
  int3 extraout_var;
  undefined1 (*extraout_EAX) [16];
  undefined1 (*extraout_EAX_00) [16];
  int *piVar16;
  float *pfVar17;
  undefined *puVar18;
  int iVar19;
  undefined1 auVar20 [16];
  float local_108;
  char local_104 [4];
  float local_100;
  float local_fc;
  uint local_f8;
  float local_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  undefined1 local_d0 [16];
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  undefined4 local_a0;
  float fStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  float local_90 [4];
  float local_80 [4];
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined4 local_60;
  float fStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  undefined4 local_30;
  float fStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  if (param_1[0x32] == param_1[0x33]) {
    param_1[0x58] = FLOAT_00f998f8;
    uVar13 = FUN_00c62c10(DAT_011edbc4,param_1[4],param_1[5]);
    puVar18 = &DAT_011d1b60;
    if ((char)uVar13 == '\0') {
      puVar18 = &DAT_011d1b40;
    }
    puVar14 = (undefined4 *)FUN_007e51a0(puVar18);
    uVar2 = *puVar14;
    uVar3 = puVar14[1];
    uVar4 = puVar14[2];
    uVar5 = puVar14[3];
    param_1[0x44] = uVar2;
    param_1[0x45] = uVar3;
    param_1[0x46] = uVar4;
    param_1[0x47] = uVar5;
    param_1[0x48] = uVar2;
    param_1[0x49] = uVar3;
    param_1[0x4a] = uVar4;
    param_1[0x4b] = uVar5;
    RoomLighting_ReducePhysicalFloorColorLanes(param_1);
    FUN_006a05d0((int)param_1);
    return;
  }
  local_108 = 0.0;
  local_f0 = 0.0;
  fStack_ec = 0.0;
  fStack_e8 = 0.0;
  fStack_e4 = 0.0;
  local_d0 = ZEXT816(0);
  local_104[0] = '\0';
  local_104[1] = 0;
  local_f8 = 0;
  do {
    uVar13 = 0;
    do {
      if ((local_f8 < (uint)param_1[0x30]) && (uVar13 < (uint)param_1[0x31])) {
        this = (void *)FUN_006a42c0((void *)*param_1,param_1[7] + local_f8,param_1[9] + uVar13);
        uVar15 = FUN_006a9930(this,param_1[3]);
        if (((char)uVar15 != '\0') && (this != (void *)0x0)) {
          cVar12 = FUN_006a9960(this,param_1[3]);
          fVar1 = (float)CONCAT31(extraout_var,cVar12);
          if (extraout_var < 0) {
            fVar1 = fVar1 + FLOAT_00f99948;
          }
          local_100 = *(float *)((int)this + 0x78);
          local_108 = fVar1 * DAT_0106f8c8 + local_108;
          local_f4 = (float)*(int *)((int)this + 0x40);
          if (*(int *)((int)this + 0x40) < 0) {
            local_f4 = local_f4 + FLOAT_00f99948;
          }
          local_fc = (float)*(int *)((int)this + 0x44);
          if (*(int *)((int)this + 0x44) < 0) {
            local_fc = local_fc + FLOAT_00f99948;
          }
          if (CONCAT31(extraout_var,cVar12) != 0) {
            pfVar17 = (float *)param_1[0x3e];
            local_70 = local_f4 * *pfVar17 + pfVar17[0xc] + local_100 * pfVar17[4] +
                       local_fc * pfVar17[8];
            fStack_6c = local_f4 * pfVar17[1] + pfVar17[0xd] + local_100 * pfVar17[5] +
                        local_fc * pfVar17[9];
            fStack_68 = local_f4 * pfVar17[2] + pfVar17[0xe] + local_100 * pfVar17[6] +
                        local_fc * pfVar17[10];
            fStack_64 = local_f4 * pfVar17[3] + pfVar17[0xf] + local_100 * pfVar17[7] +
                        local_fc * pfVar17[0xb];
            uStack_94 = 0;
            uStack_98 = 0;
            fStack_9c = FLOAT_00f998f8;
            local_a0 = 0;
            local_60 = 0;
            fStack_5c = FLOAT_00f998f8;
            uStack_58 = 0;
            uStack_54 = 0;
            local_b0 = local_f4;
            fStack_ac = local_100;
            fStack_a8 = local_fc;
            fStack_a4 = local_f4;
            FUN_0069ff70(param_1,local_80,(int *)0x0,(int *)0x0,local_104,&local_70);
            auVar20 = *extraout_EAX;
            pfVar17 = (float *)param_1[0x3e];
            local_f0 = auVar20._0_4_ + local_f0;
            fStack_ec = auVar20._4_4_ + fStack_ec;
            fStack_e8 = auVar20._8_4_ + fStack_e8;
            fStack_e4 = auVar20._12_4_ + fStack_e4;
            local_d0 = maxps(local_d0,auVar20);
            fStack_b4 = local_f4;
            fStack_b8 = local_fc;
            fStack_bc = local_100 + DAT_00fb3f7c;
            local_c0 = local_f4;
            local_40 = local_f4 * *pfVar17 + pfVar17[0xc] + fStack_bc * pfVar17[4] +
                       local_fc * pfVar17[8];
            fStack_3c = local_f4 * pfVar17[1] + pfVar17[0xd] + fStack_bc * pfVar17[5] +
                        local_fc * pfVar17[9];
            fStack_38 = local_f4 * pfVar17[2] + pfVar17[0xe] + fStack_bc * pfVar17[6] +
                        local_fc * pfVar17[10];
            fStack_34 = local_f4 * pfVar17[3] + pfVar17[0xf] + fStack_bc * pfVar17[7] +
                        local_fc * pfVar17[0xb];
            fStack_d4 = 0.0;
            fStack_d8 = 0.0;
            fStack_dc = FLOAT_00fab218;
            local_e0 = 0.0;
            local_30 = 0;
            fStack_2c = FLOAT_00fab218;
            uStack_28 = 0;
            uStack_24 = 0;
            FUN_0069ff70(param_1,local_90,(int *)0x0,(int *)0x0,local_104,&local_40);
            auVar20 = *extraout_EAX_00;
            local_f0 = auVar20._0_4_ + local_f0;
            fStack_ec = auVar20._4_4_ + fStack_ec;
            fStack_e8 = auVar20._8_4_ + fStack_e8;
            fStack_e4 = auVar20._12_4_ + fStack_e4;
            local_d0 = maxps(local_d0,auVar20);
          }
        }
      }
      uVar13 = uVar13 + 2;
    } while (uVar13 <= (uint)param_1[0x31]);
    local_f8 = local_f8 + 2;
  } while (local_f8 <= (uint)param_1[0x30]);
  uVar13 = 0;
  uVar15 = (int)(param_1[0x37] - param_1[0x36]) >> 2;
  if (3 < (int)uVar15) {
    piVar16 = (int *)(param_1[0x36] + 8);
    iVar19 = (uVar15 - 4 >> 2) + 1;
    uVar13 = iVar19 * 4;
    do {
      fVar1 = (float)*(int *)(piVar16[-2] + 0x24);
      if (*(int *)(piVar16[-2] + 0x24) < 0) {
        fVar1 = fVar1 + FLOAT_00f99948;
      }
      fVar11 = (float)*(int *)(piVar16[-1] + 0x24);
      if (*(int *)(piVar16[-1] + 0x24) < 0) {
        fVar11 = fVar11 + FLOAT_00f99948;
      }
      fVar10 = (float)*(int *)(*piVar16 + 0x24);
      if (*(int *)(*piVar16 + 0x24) < 0) {
        fVar10 = fVar10 + FLOAT_00f99948;
      }
      local_100 = *(float *)(piVar16[1] + 0x24);
      fVar9 = (float)(int)local_100;
      if ((int)local_100 < 0) {
        fVar9 = fVar9 + FLOAT_00f99948;
      }
      piVar16 = piVar16 + 4;
      iVar19 = iVar19 + -1;
      local_108 = fVar9 * DAT_00ff4344 +
                  fVar10 * DAT_00ff4344 + fVar11 * DAT_00ff4344 + fVar1 * DAT_00ff4344 + local_108;
    } while (iVar19 != 0);
  }
  if (uVar13 < uVar15) {
    piVar16 = (int *)(param_1[0x36] + uVar13 * 4);
    iVar19 = uVar15 - uVar13;
    do {
      local_100 = *(float *)(*piVar16 + 0x24);
      fVar1 = (float)(int)local_100;
      if ((int)local_100 < 0) {
        fVar1 = fVar1 + FLOAT_00f99948;
      }
      piVar16 = piVar16 + 1;
      iVar19 = iVar19 + -1;
      local_108 = fVar1 * DAT_00ff4344 + local_108;
    } while (iVar19 != 0);
  }
  FUN_006a0440(param_1,(float *)local_d0);
  auVar8._4_4_ = fStack_ec;
  auVar8._0_4_ = local_f0;
  auVar8._8_4_ = fStack_e8;
  auVar8._12_4_ = fStack_e4;
  auVar20._4_4_ = local_108;
  auVar20._0_4_ = local_108;
  auVar20._8_4_ = local_108;
  auVar20._12_4_ = local_108;
  auVar20 = divps(auVar8,auVar20);
  fStack_d4 = (float)param_1[0x58];
  local_e0 = auVar20._0_4_ * fStack_d4;
  fStack_dc = auVar20._4_4_ * fStack_d4;
  fStack_d8 = auVar20._8_4_ * fStack_d4;
  fStack_d4 = auVar20._12_4_ * fStack_d4;
  puVar14 = (undefined4 *)FUN_006a02b0(param_1,local_90,&local_e0,'\x01');
  uVar2 = puVar14[1];
  uVar3 = puVar14[2];
  uVar4 = puVar14[3];
  param_1[0x44] = *puVar14;
  param_1[0x45] = uVar2;
  param_1[0x46] = uVar3;
  param_1[0x47] = uVar4;
  puVar14 = (undefined4 *)FUN_006a02b0(param_1,local_90,&local_e0,'\0');
  uVar15 = DAT_011d1330;
  uVar2 = puVar14[1];
  uVar3 = puVar14[2];
  uVar4 = puVar14[3];
  uVar13 = DAT_011d1330 & 1;
  param_1[0x48] = *puVar14;
  param_1[0x49] = uVar2;
  param_1[0x4a] = uVar3;
  param_1[0x4b] = uVar4;
  if (uVar13 == 0) {
    uVar15 = uVar15 | 1;
    _DAT_011d1320 = DAT_00ff3ae4;
    uRam011d1324 = DAT_00ff3ae4;
    uRam011d1328 = DAT_00ff3ae4;
    uRam011d132c = DAT_00ff3ae4;
    DAT_011d1330 = uVar15;
  }
  if ((uVar15 & 2) == 0) {
    DAT_011d1330 = uVar15 | 2;
    _DAT_011d1310 = _DAT_00f9b5b4;
    uRam011d1314 = _DAT_00f9b5b4;
    uRam011d1318 = _DAT_00f9b5b4;
    uRam011d131c = _DAT_00f9b5b4;
  }
  auVar20 = maxps(*(undefined1 (*) [16])(param_1 + 0x44),ZEXT816(0));
  auVar7._4_4_ = uRam011d1324;
  auVar7._0_4_ = _DAT_011d1320;
  auVar7._8_4_ = uRam011d1328;
  auVar7._12_4_ = uRam011d132c;
  auVar20 = minps(auVar20,auVar7);
  *(undefined1 (*) [16])(param_1 + 0x44) = auVar20;
  auVar20 = maxps(*(undefined1 (*) [16])(param_1 + 0x48),ZEXT816(0));
  auVar6._4_4_ = uRam011d1314;
  auVar6._0_4_ = _DAT_011d1310;
  auVar6._8_4_ = uRam011d1318;
  auVar6._12_4_ = uRam011d131c;
  auVar20 = minps(auVar20,auVar6);
  *(undefined1 (*) [16])(param_1 + 0x48) = auVar20;
  if (*(char *)((int)param_1 + 0x19) != '\0') {
    pfVar17 = (float *)FUN_007e51a0(&DAT_011d1c50);
    fVar1 = *pfVar17;
    param_1[0x44] = fVar1 * (float)param_1[0x44];
    param_1[0x45] = fVar1 * (float)param_1[0x45];
    param_1[0x46] = fVar1 * (float)param_1[0x46];
    param_1[0x47] = fVar1 * (float)param_1[0x47];
    param_1[0x48] = fVar1 * (float)param_1[0x48];
    param_1[0x49] = fVar1 * (float)param_1[0x49];
    param_1[0x4a] = fVar1 * (float)param_1[0x4a];
    param_1[0x4b] = fVar1 * (float)param_1[0x4b];
    param_1[0x4c] = fVar1 * (float)param_1[0x4c];
    param_1[0x4d] = fVar1 * (float)param_1[0x4d];
    param_1[0x4e] = fVar1 * (float)param_1[0x4e];
    param_1[0x4f] = fVar1 * (float)param_1[0x4f];
    param_1[0x50] = fVar1 * (float)param_1[0x50];
    param_1[0x51] = fVar1 * (float)param_1[0x51];
    param_1[0x52] = fVar1 * (float)param_1[0x52];
    param_1[0x53] = fVar1 * (float)param_1[0x53];
  }
  return;
}

