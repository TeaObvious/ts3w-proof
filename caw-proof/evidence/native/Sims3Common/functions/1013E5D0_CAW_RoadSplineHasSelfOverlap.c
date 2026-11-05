/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Spline vtable0x10ABF190 slot+5C; cache producer traced
   through0x1013F340→0x1013ECC0/0x1013C460→0x1013F010. Compares every pair of cached64byte quads
   after inward edge movement by-0.05. Strict planar AABB intersection gates outcodes; all four
   subject corners inside accepts, a common outside bit rejects, otherwise clipping0x10148070
   accepts nonempty final output. Returns AL true for overlap; creation0x10146A20 discards the new
   object, delta worker0x1013D2E0 returns false. One cached quad has no pairs. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

uint __fastcall CAW_RoadSplineHasSelfOverlap(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auVar4 [16];
  undefined4 *puVar5;
  undefined4 uVar6;
  undefined3 uVar8;
  uint uVar7;
  undefined3 extraout_var;
  int iVar9;
  int iVar10;
  int iVar11;
  uint uVar12;
  char *pcVar13;
  uint uVar14;
  float *pfVar15;
  bool bVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  int local_2bc;
  char local_2b8 [4];
  int local_2b4;
  int local_2b0;
  undefined4 *local_2ac;
  undefined4 *local_2a8;
  char *local_2a4;
  int local_2a0;
  uint local_29c;
  uint local_298;
  uint local_294;
  int local_290;
  int local_28c;
  undefined4 local_288;
  char *local_284;
  undefined4 local_280;
  undefined4 uStack_27c;
  undefined4 uStack_278;
  undefined4 uStack_274;
  undefined4 local_270;
  undefined4 uStack_26c;
  undefined4 uStack_268;
  undefined4 uStack_264;
  undefined4 local_260;
  undefined4 uStack_25c;
  undefined4 uStack_258;
  undefined4 uStack_254;
  undefined4 local_250;
  undefined4 uStack_24c;
  undefined4 uStack_248;
  undefined4 uStack_244;
  float local_240;
  undefined4 uStack_23c;
  undefined4 uStack_238;
  float fStack_234;
  float local_230 [7];
  undefined4 uStack_214;
  undefined4 local_210;
  undefined4 uStack_20c;
  undefined4 uStack_208;
  undefined4 uStack_204;
  undefined4 local_200;
  undefined4 uStack_1fc;
  undefined4 uStack_1f8;
  undefined4 uStack_1f4;
  undefined1 local_1f0 [16];
  undefined1 local_1e0 [16];
  undefined1 local_1d0 [16];
  undefined1 local_1c0 [16];
  undefined1 local_1b0 [16];
  undefined4 local_1a0;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  undefined4 uStack_194;
  undefined1 local_190 [16];
  undefined4 local_180;
  undefined4 uStack_17c;
  undefined4 uStack_178;
  undefined4 uStack_174;
  undefined1 local_170 [16];
  undefined4 local_160;
  undefined4 uStack_15c;
  undefined4 uStack_158;
  undefined4 uStack_154;
  undefined1 local_150 [16];
  undefined4 local_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 local_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 local_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  float local_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined1 local_f0 [16];
  undefined1 local_e0 [16];
  float local_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined1 local_c0 [16];
  undefined4 local_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined1 local_a0 [16];
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  char local_70;
  undefined4 local_6c;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  float local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  float fStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  uVar12 = *(int *)(param_1 + 0x198) - *(int *)(param_1 + 0x194) >> 6;
  uVar7 = 0;
  if (uVar12 != 1) {
    local_2bc = 0;
    uVar14 = 0;
    local_2a0 = param_1;
    local_298 = uVar12;
    do {
      puVar5 = (undefined4 *)(*(int *)(param_1 + 0x194) + local_2bc);
      iVar9 = 3;
      iVar11 = (int)local_230 - (int)puVar5;
      do {
        uVar6 = puVar5[1];
        uVar2 = puVar5[2];
        uVar3 = puVar5[3];
        puVar1 = (undefined4 *)(iVar11 + (int)puVar5);
        *puVar1 = *puVar5;
        puVar1[1] = uVar6;
        puVar1[2] = uVar2;
        puVar1[3] = uVar3;
        puVar5 = puVar5 + 4;
        iVar9 = iVar9 + -1;
      } while (-1 < iVar9);
      CAW_RoadQuadExpandEdges(local_230,DAT_10abf2b0,0xf);
      auVar18._4_4_ = local_230[1];
      auVar18._0_4_ = local_230[0];
      auVar18._8_4_ = local_230[2];
      auVar18._12_4_ = local_230[3];
      auVar20._4_4_ = uStack_20c;
      auVar20._0_4_ = local_210;
      auVar20._8_4_ = uStack_208;
      auVar20._12_4_ = uStack_204;
      auVar19._4_4_ = local_230[5];
      auVar19._0_4_ = local_230[4];
      auVar19._8_4_ = local_230[6];
      auVar19._12_4_ = uStack_214;
      auVar4._4_4_ = uStack_1fc;
      auVar4._0_4_ = local_200;
      auVar4._8_4_ = uStack_1f8;
      auVar4._12_4_ = uStack_1f4;
      local_294 = uVar14 + 1;
      auVar17 = minps(auVar18,auVar19);
      auVar21 = minps(auVar20,auVar4);
      local_150 = minps(auVar17,auVar21);
      auVar18 = maxps(auVar18,auVar19);
      auVar19 = maxps(auVar20,auVar4);
      local_a0 = maxps(auVar18,auVar19);
      local_190 = local_a0;
      local_1b0 = local_150;
      local_29c = local_294;
      if (local_294 < uVar12) {
        local_2b4 = local_2bc + 0x40;
        do {
          puVar5 = (undefined4 *)local_1f0;
          iVar10 = local_2b4 - (int)puVar5;
          iVar11 = *(int *)(param_1 + 0x194);
          iVar9 = 3;
          do {
            puVar1 = (undefined4 *)((int)puVar5 + iVar10 + iVar11);
            uVar6 = puVar1[1];
            uVar2 = puVar1[2];
            uVar3 = puVar1[3];
            *puVar5 = *puVar1;
            puVar5[1] = uVar6;
            puVar5[2] = uVar2;
            puVar5[3] = uVar3;
            puVar5 = puVar5 + 4;
            iVar9 = iVar9 + -1;
          } while (-1 < iVar9);
          CAW_RoadQuadExpandEdges((float *)local_1f0,DAT_10abf2b0,0xf);
          auVar18 = minps(local_1f0,local_1e0);
          auVar19 = minps(local_1d0,local_1c0);
          local_e0 = minps(auVar18,auVar19);
          auVar19 = local_e0;
          local_170 = local_e0;
          auVar20 = maxps(local_1d0,local_1c0);
          auVar18 = maxps(local_1f0,local_1e0);
          local_f0 = maxps(auVar18,auVar20);
          auVar18 = local_f0;
          local_c0 = local_f0;
          bVar16 = (float)local_e0._0_4_ < (float)local_190._0_4_;
          local_f0 = auVar18;
          local_e0 = auVar19;
          if (bVar16) {
            local_c0._0_4_ = local_f0._0_4_;
            bVar16 = (float)local_1b0._0_4_ < (float)local_c0._0_4_;
            if (bVar16) {
              local_170._4_4_ = local_e0._4_4_;
              bVar16 = (float)local_170._4_4_ < (float)local_a0._4_4_;
              if (bVar16) {
                bVar16 = (float)local_150._4_4_ < (float)local_f0._4_4_;
                if (bVar16) {
                  pcVar13 = local_2b8;
                  pfVar15 = (float *)local_1f0;
                  iVar11 = 4;
                  do {
                    uVar6 = CAW_RoadQuadPointOutcode(local_230,pfVar15,pcVar13);
                    pcVar13 = pcVar13 + 1;
                    pfVar15 = pfVar15 + 4;
                    iVar11 = iVar11 + -1;
                  } while (iVar11 != 0);
                  uVar8 = (undefined3)((uint)uVar6 >> 8);
                  if (((local_2b8[3] == 0 && local_2b8[2] == 0) && local_2b8[1] == 0) &&
                      local_2b8[0] == 0) {
LAB_1013eb10:
                    return CONCAT31(uVar8,1);
                  }
                  uVar12 = local_298;
                  if ((byte)(local_2b8[0] & local_2b8[3] & local_2b8[2] & local_2b8[1]) == 0) {
                    local_2b0 = 0;
                    local_2ac = (undefined4 *)0x0;
                    local_2a8 = (undefined4 *)0x0;
                    local_2a4 = "RoadNetwork/InputVerts";
                    local_290 = 0;
                    local_28c = 0;
                    local_288 = 0;
                    local_284 = "Road/OutputVerts";
                    pcVar13 = local_2b8;
                    puVar5 = (undefined4 *)local_1f0;
                    iVar11 = 4;
                    do {
                      puVar1 = local_2ac;
                      local_130 = *puVar5;
                      uStack_12c = puVar5[1];
                      local_70 = *pcVar13;
                      uStack_128 = puVar5[2];
                      uStack_124 = puVar5[3];
                      local_b0 = local_130;
                      uStack_ac = uStack_12c;
                      uStack_a8 = puVar5[2];
                      uStack_a4 = puVar5[3];
                      uStack_274 = local_130;
                      uStack_278 = uStack_12c;
                      uStack_27c = 0;
                      local_280 = local_130;
                      local_90 = local_130;
                      uStack_8c = 0;
                      uStack_88 = uStack_12c;
                      uStack_84 = local_130;
                      if (local_2ac < local_2a8) {
                        bVar16 = local_2ac != (undefined4 *)0x0;
                        local_2ac = local_2ac + 0x10;
                        if (bVar16) {
                          *puVar1 = local_130;
                          puVar1[1] = 0;
                          puVar1[2] = uStack_12c;
                          puVar1[3] = local_130;
                          puVar1[4] = local_80;
                          puVar1[5] = uStack_7c;
                          puVar1[6] = uStack_78;
                          puVar1[7] = uStack_74;
                          *(char *)(puVar1 + 8) = local_70;
                          puVar1[9] = local_6c;
                          puVar1[0xc] = local_60;
                          puVar1[0xd] = uStack_5c;
                          puVar1[0xe] = uStack_58;
                          puVar1[0xf] = uStack_54;
                        }
                      }
                      else {
                        FUN_1013dfd0(&local_2b0,local_2ac,&local_90);
                      }
                      puVar5 = puVar5 + 4;
                      pcVar13 = pcVar13 + 1;
                      iVar11 = iVar11 + -1;
                    } while (iVar11 != 0);
                    local_110 = local_230[0];
                    uStack_10c = local_230[1];
                    uStack_108 = local_230[2];
                    uStack_104 = local_230[3];
                    local_d0 = local_230[0];
                    uStack_cc = local_230[1];
                    uStack_c8 = local_230[2];
                    uStack_c4 = local_230[3];
                    fStack_234 = local_230[0];
                    local_240 = local_230[0];
                    uStack_238 = 0;
                    uStack_23c = local_230[1];
                    local_50 = local_230[0];
                    uStack_4c = local_230[1];
                    uStack_48 = 0;
                    fStack_44 = local_230[0];
                    local_180 = local_230[4];
                    uStack_17c = local_230[5];
                    uStack_178 = local_230[6];
                    uStack_174 = uStack_214;
                    local_1a0 = local_230[4];
                    uStack_19c = local_230[5];
                    uStack_198 = local_230[6];
                    uStack_194 = uStack_214;
                    uStack_244 = local_230[4];
                    local_250 = local_230[4];
                    uStack_248 = 0;
                    uStack_24c = local_230[5];
                    local_40 = local_230[4];
                    uStack_3c = local_230[5];
                    uStack_38 = 0;
                    uStack_34 = local_230[4];
                    local_140 = local_210;
                    uStack_13c = uStack_20c;
                    uStack_138 = uStack_208;
                    uStack_134 = uStack_204;
                    local_160 = local_210;
                    uStack_15c = uStack_20c;
                    uStack_158 = uStack_208;
                    uStack_154 = uStack_204;
                    uStack_264 = local_210;
                    uStack_268 = 0;
                    local_270 = local_210;
                    uStack_26c = uStack_20c;
                    local_30 = local_210;
                    uStack_2c = uStack_20c;
                    uStack_28 = 0;
                    uStack_24 = local_210;
                    local_100 = local_200;
                    uStack_fc = uStack_1fc;
                    uStack_f8 = uStack_1f8;
                    uStack_f4 = uStack_1f4;
                    local_120 = local_200;
                    uStack_11c = uStack_1fc;
                    uStack_118 = uStack_1f8;
                    uStack_114 = uStack_1f4;
                    uStack_258 = 0;
                    uStack_254 = local_200;
                    uStack_25c = uStack_1fc;
                    local_260 = local_200;
                    local_20 = local_200;
                    uStack_1c = uStack_1fc;
                    uStack_18 = 0;
                    uStack_14 = local_200;
                    CAW_RoadClipPolygonAgainstQuad(&local_50,&local_2b0,&local_290);
                    if (local_290 != local_28c) {
                      if (local_290 != 0) {
                        FUN_10918e90(local_290);
                      }
                      uVar8 = 0;
                      if (local_2b0 != 0) {
                        FUN_10918e90(local_2b0);
                        uVar8 = extraout_var;
                      }
                      goto LAB_1013eb10;
                    }
                    if (local_290 != 0) {
                      FUN_10918e90(local_290);
                    }
                    uVar12 = local_298;
                    if (local_2b0 != 0) {
                      FUN_10918e90(local_2b0);
                      uVar12 = local_298;
                    }
                  }
                }
              }
            }
          }
          local_2b4 = local_2b4 + 0x40;
          local_29c = local_29c + 1;
          param_1 = local_2a0;
        } while (local_29c < uVar12);
      }
      local_2bc = local_2bc + 0x40;
      uVar7 = uVar12 - 1;
      uVar14 = local_294;
    } while (local_294 < uVar7);
  }
  return uVar7 & 0xffffff00;
}

