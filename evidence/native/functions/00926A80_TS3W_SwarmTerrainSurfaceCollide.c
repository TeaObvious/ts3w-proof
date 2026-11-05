/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name; original PC 1.67 Swarm terrain collision. 00925FA0 converts old/end points
   to game axes and inflates the end by radius. Terrain heights come from C60C20. Nondegenerate
   crossings interpolate a contact on the segment and transform it back; old-position rollback is a
   degenerate branch, not the general hit result. Decompiler temporaries alias SIMD lanes and x87
   returns; verify instructions. */

undefined4 __fastcall
TS3W_SwarmTerrainSurfaceCollide
          (undefined4 param_1,undefined4 param_2,float param_3,float *param_4,float *param_5,
          float *param_6,byte *param_7)

{
  undefined1 auVar1 [16];
  void *pvVar2;
  uint uVar3;
  uint extraout_EAX;
  undefined4 extraout_EAX_00;
  float *extraout_ECX;
  undefined4 extraout_EDX;
  int iVar4;
  float *extraout_EDX_00;
  float10 fVar5;
  float fVar6;
  undefined1 auVar7 [16];
  float fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float fVar13;
  float local_148;
  float local_144;
  float local_140;
  float local_13c;
  float local_138;
  float local_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
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
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  undefined4 local_40;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  uVar3 = TS3W_SwarmSurfaceStepToGame
                    (&local_120,param_2,param_7,param_4,param_5,param_3,&local_120,&local_130);
  pvVar2 = DAT_011edbc4;
  if (param_7[0x71] != 0) {
    if (0.0 <= fStack_12c) goto LAB_00926f46;
    *param_5 = *param_4;
    param_5[1] = param_4[1];
    param_5[2] = param_4[2];
    fVar6 = (*(float *)(param_7 + 0x58) + *(float *)(param_7 + 0x4c)) * 0.0 +
            *(float *)(param_7 + 100);
    fVar8 = (*(float *)(param_7 + 0x5c) + *(float *)(param_7 + 0x50)) * 0.0 +
            *(float *)(param_7 + 0x68);
    fVar13 = (*(float *)(param_7 + 0x60) + *(float *)(param_7 + 0x54)) * 0.0 +
             *(float *)(param_7 + 0x6c);
    goto LAB_00926b45;
  }
  if (DAT_011edbc4 == (void *)0x0) {
LAB_00926f46:
    return uVar3 & 0xffffff00;
  }
  local_50 = local_120;
  fStack_4c = fStack_11c;
  fStack_48 = fStack_118;
  fStack_44 = fStack_114;
  local_a0 = local_120;
  fStack_9c = fStack_11c;
  fStack_98 = fStack_118;
  fStack_94 = fStack_114;
  fVar5 = TS3W_QueryWorldGroundHeight
                    (DAT_011edbc4,local_120,fStack_118,0,'\x01','\0',(undefined1 *)0x0,
                     (undefined1 *)0x0);
  local_b0 = fStack_12c;
  local_f0 = (float)fVar5;
  uVar3 = extraout_EAX;
  if (local_f0 <= fStack_12c) goto LAB_00926f46;
  local_20 = local_130;
  fStack_1c = fStack_128;
  fStack_18 = local_130;
  fStack_14 = local_130;
  local_30 = local_120;
  fStack_2c = fStack_118;
  fStack_28 = local_120;
  fStack_24 = local_120;
  local_110 = (fStack_128 - fStack_118) * (fStack_128 - fStack_118) +
              (local_130 - local_120) * (local_130 - local_120);
  local_40 = 0x3c23d70a;
  fStack_ec = local_f0;
  fStack_e8 = local_f0;
  fStack_e4 = local_f0;
  local_d0 = local_f0;
  if (0.01 <= local_110) {
    local_c0 = local_130;
    fStack_bc = fStack_12c;
    fStack_b8 = fStack_128;
    fStack_b4 = fStack_124;
    local_e0 = local_130;
    fStack_dc = fStack_12c;
    fStack_d8 = fStack_128;
    fStack_d4 = fStack_124;
    fVar5 = TS3W_QueryWorldGroundHeight
                      (pvVar2,local_130,fStack_128,0,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0
                      );
    fStack_d4 = (float)fVar5;
    local_e0 = fStack_12c - fStack_d4;
    fStack_dc = fStack_12c - fStack_d4;
    fStack_d8 = fStack_12c - fStack_d4;
    fStack_d4 = fStack_12c - fStack_d4;
    local_f0 = fStack_11c - local_f0;
    fStack_ec = fStack_11c - fStack_ec;
    fStack_e8 = fStack_11c - fStack_e8;
    fStack_e4 = fStack_11c - fStack_e4;
    fVar6 = local_e0 - local_f0;
    auVar12._4_4_ = fVar6;
    auVar12._0_4_ = fVar6;
    auVar12._8_4_ = fVar6;
    auVar12._12_4_ = fVar6;
    auVar10._0_4_ = fVar6 * -1.0;
    auVar10._4_4_ = fVar6 * -1.0;
    auVar10._8_4_ = fVar6 * -1.0;
    auVar10._12_4_ = fVar6 * -1.0;
    auVar10 = maxps(auVar10,auVar12);
    auVar7._4_4_ = -(uint)(auVar10._4_4_ <= 1.1920929e-07);
    auVar7._0_4_ = -(uint)(auVar10._0_4_ <= 1.1920929e-07);
    auVar7._8_4_ = -(uint)(auVar10._8_4_ <= 1.1920929e-07);
    auVar7._12_4_ = -(uint)(auVar10._12_4_ <= 1.1920929e-07);
    iVar4 = movmskps(extraout_EAX_00,auVar7);
    if (iVar4 == 0xf) goto LAB_00926da6;
                    /* Terrain contact fraction from signed height difference and vertical step;
                       interpolate the segment, then map the contact back to simulation space.
                       General collision does not simply restore the old point. */
    fVar6 = (-1.0 / fVar6) * local_f0;
    local_60 = fVar6 * (local_130 - local_120) + local_120;
    fStack_5c = fVar6 * (fStack_12c - fStack_11c) + fStack_11c;
    fStack_58 = fVar6 * (fStack_128 - fStack_118) + fStack_118;
    fStack_54 = fVar6 * (fStack_124 - fStack_114) + fStack_114;
    FUN_00925f50(&local_13c,&local_60);
    FUN_008c3820(param_7 + 0x38,extraout_EDX_00);
    *param_5 = local_13c;
    param_5[1] = local_138;
    param_5[2] = local_134;
  }
  else {
    local_110 = fStack_12c - fStack_11c;
    fStack_10c = fStack_12c - fStack_11c;
    fStack_108 = fStack_12c - fStack_11c;
    fStack_104 = fStack_12c - fStack_11c;
    auVar9._0_4_ = local_110 * -1.0;
    auVar9._4_4_ = local_110 * -1.0;
    auVar9._8_4_ = local_110 * -1.0;
    auVar9._12_4_ = local_110 * -1.0;
    auVar1._4_4_ = local_110;
    auVar1._0_4_ = local_110;
    auVar1._8_4_ = local_110;
    auVar1._12_4_ = local_110;
    auVar10 = maxps(auVar9,auVar1);
    auVar11._4_4_ = -(uint)(auVar10._4_4_ <= 1.1920929e-07);
    auVar11._0_4_ = -(uint)(auVar10._0_4_ <= 1.1920929e-07);
    auVar11._8_4_ = -(uint)(auVar10._8_4_ <= 1.1920929e-07);
    auVar11._12_4_ = -(uint)(auVar10._12_4_ <= 1.1920929e-07);
    iVar4 = movmskps(extraout_EDX,auVar11);
    if (iVar4 != 0xf) {
      fStack_f4 = (float)fVar5 - fStack_11c;
      fVar6 = 1.0 / local_110;
      local_100 = fStack_f4 * fVar6;
      fStack_fc = fStack_f4 * fVar6;
      fStack_f8 = fStack_f4 * fVar6;
      fStack_f4 = fStack_f4 * fVar6;
      local_70 = (local_130 - local_120) * local_100 + local_120;
      fStack_6c = (fStack_12c - fStack_11c) * local_100 + fStack_11c;
      fStack_68 = (fStack_128 - fStack_118) * local_100 + fStack_118;
      fStack_64 = (fStack_124 - fStack_114) * local_100 + fStack_114;
      FUN_00925f50(&local_148,&local_70);
      FUN_008c3820(param_7 + 0x38,extraout_ECX);
      *param_5 = local_148;
      param_5[1] = local_144;
      param_5[2] = local_140;
      fVar6 = (*(float *)(param_7 + 0x58) + *(float *)(param_7 + 0x4c)) * 0.0 -
              *(float *)(param_7 + 100) * 1.0;
      fVar8 = (*(float *)(param_7 + 0x5c) + *(float *)(param_7 + 0x50)) * 0.0 -
              *(float *)(param_7 + 0x68) * 1.0;
      fVar13 = (*(float *)(param_7 + 0x60) + *(float *)(param_7 + 0x54)) * 0.0 -
               *(float *)(param_7 + 0x6c) * 1.0;
      goto LAB_00926b45;
    }
LAB_00926da6:
    *param_5 = *param_4;
    param_5[1] = param_4[1];
    param_5[2] = param_4[2];
  }
  fVar6 = (*(float *)(param_7 + 0x58) + *(float *)(param_7 + 0x4c)) * 0.0 -
          *(float *)(param_7 + 100) * 1.0;
  fVar8 = (*(float *)(param_7 + 0x5c) + *(float *)(param_7 + 0x50)) * 0.0 -
          *(float *)(param_7 + 0x68) * 1.0;
  fVar13 = (*(float *)(param_7 + 0x60) + *(float *)(param_7 + 0x54)) * 0.0 -
           *(float *)(param_7 + 0x6c) * 1.0;
LAB_00926b45:
  *param_6 = fVar6;
  param_6[1] = fVar8;
  param_6[2] = fVar13;
  return CONCAT31((int3)((uint)param_6 >> 8),1);
}

