/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Complete stored
   multi-range rebuild: lot/floor/terrain admission, prior 0x60 (96-byte) records copied and16-bit
   IDs reserved, z-then-x seed scan, -1unvisited/0dry, eight-neighbor flood from01184984/011849A4.
   Positive prior seed-ID plus nonzero helperGUID can reuse identity; otherwise allocate avoiding
   reserved IDs. Calls AEA420 water getter and B63F90 rectangle selection. Actual helper registry
   lookup/retain/create with ProductName94A61341E464E854, transform/component/admission updates,
   releases and destruction of unreused prior helpers remain native lifecycle work, not a current
   managed serializer implementation. Five body ranges and separate nonowned envelope gaps
   preserved; RET4. Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains
   its authority. All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain
   unchanged; current resource/cache policy is preserved. */

void __fastcall LotPonds_RebuildAndUpdateNativeHelpers(int param_1)

{
  ulonglong *puVar1;
  undefined2 *puVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  bool bVar9;
  short sVar10;
  bool bVar11;
  void *this;
  undefined4 uVar12;
  short *psVar13;
  ulonglong *puVar14;
  short **ppsVar15;
  undefined4 *puVar16;
  void *this_00;
  float *pfVar17;
  int iVar18;
  short sVar19;
  int *piVar20;
  int *piVar21;
  int iVar22;
  void *pvVar23;
  int iVar24;
  int iVar25;
  float10 fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  float fVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  float fVar35;
  float fVar36;
  float fVar37;
  float fVar38;
  ulonglong guid;
  uint local_2fc;
  int iStack_2f0;
  uint local_2ec;
  undefined4 *local_2e8;
  int local_2e0;
  int *piStack_2d0;
  int *piStack_2cc;
  int *piStack_2c8;
  char *pcStack_2c4;
  int iStack_2c0;
  int iStack_2bc;
  int local_2b8;
  int local_2b4;
  float local_2b0;
  float local_2ac;
  int local_2a4;
  ulonglong *local_2a0;
  ulonglong *local_29c;
  undefined1 local_290 [4];
  undefined4 *local_28c;
  uint local_288;
  undefined4 local_284;
  float local_280;
  undefined4 local_27c;
  undefined4 local_278;
  char *local_274;
  int local_270;
  float local_26c;
  uint local_268;
  char *local_264;
  undefined4 *puStack_260;
  short *local_25c;
  float fStack_258;
  float fStack_254;
  undefined4 local_244;
  uint local_240;
  void *local_23c [4];
  short *local_22c;
  undefined4 *local_228;
  uint uStack_224;
  uint uStack_220;
  int iStack_21c;
  int iStack_218;
  short *local_214;
  undefined4 *local_210;
  void **local_20c;
  int local_208;
  int local_204;
  float local_200;
  undefined4 uStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  float fStack_1e8;
  undefined4 uStack_1e4;
  float fStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 uStack_1d4;
  undefined4 uStack_1d0;
  float fStack_1cc;
  undefined4 uStack_1c8;
  undefined4 uStack_1c4;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  int iStack_1b0;
  int iStack_1ac;
  int iStack_1a8;
  int iStack_1a4;
  float local_1a0;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  undefined4 uStack_194;
  uint local_190;
  uint local_18c;
  int local_188;
  int local_184;
  uint local_180;
  uint local_17c;
  int local_178;
  int local_174;
  int local_170;
  undefined4 local_16c;
  undefined4 local_168;
  undefined4 local_164;
  float fStack_160;
  int local_158;
  int local_154;
  undefined4 local_150;
  undefined4 uStack_14c;
  short *local_138;
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float local_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  float local_e0;
  undefined4 uStack_dc;
  float fStack_d8;
  float fStack_d4;
  undefined4 uStack_d0;
  float fStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined4 local_ac [3];
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined1 local_60 [16];
  uint auStack_50 [19];
  
  iVar22 = *(int *)(param_1 + 4);
  if (((iVar22 != 0) && (pvVar23 = *(void **)(iVar22 + 0x294), pvVar23 != (void *)0x0)) &&
     (local_270 = *(int *)(iVar22 + 0x290), local_270 != 0)) {
    this = ObjectRegistry_GetGlobal();
    local_2b8 = thunk_FUN_00835d40();
    if ((local_2b8 == 0) || (bVar9 = true, *(char *)(local_2b8 + 0x97e) == '\0')) {
      bVar9 = false;
    }
    iVar22 = *(int *)(*(int *)(param_1 + 4) + 0x174) + 1;
    iVar24 = *(int *)(*(int *)(param_1 + 4) + 0x178) + 1;
    local_2b4 = iVar24;
    FUN_00b63b70(&local_2a0,(int *)(param_1 + 0xc));
    local_274 = "Lot/PondManager";
    local_264 = "Lot/PondManager";
    local_284 = 0;
    local_278 = 0;
    local_280 = 1.0;
    local_27c = 0x40000000;
    local_288 = 1;
    local_28c = &DAT_0114d900;
    local_244 = 0xffffffff;
    FUN_00b63f40(local_23c,iVar24 * iVar22,(undefined2 *)&local_244,&local_264);
    puVar1 = local_29c;
    *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0xc);
    local_20c = local_23c;
    sVar10 = 0;
    local_208 = iVar22;
    local_204 = iVar24;
    for (puVar14 = local_2a0; puVar14 != puVar1; puVar14 = puVar14 + 0xc) {
      local_240 = (uint)(ushort)puVar14[3];
      local_268 = local_268 & 0xffffff00;
      FUN_00ae4420(local_290,local_ac,(short *)&local_240);
    }
    local_2fc = 0;
    if (0 < iVar24) {
      do {
        local_2ec = 0;
        if (0 < iVar22) {
          local_2e0 = local_2fc * iVar22 * 2;
          do {
            puVar2 = (undefined2 *)(local_2e0 + (int)local_23c[0]);
            if (*(short *)(local_2e0 + (int)local_23c[0]) == -1) {
              uVar12 = LotWater_IsVertexUnderWater(pvVar23,local_2ec,local_2fc);
              if ((char)uVar12 == '\0') {
                *puVar2 = 0;
              }
              else {
                iVar24 = *(int *)(local_270 + 0x24);
                local_26c = (float)(int)local_2fc;
                local_2b0 = (float)(int)local_2ec;
                local_200 = local_2b0 + 0.001;
                fStack_1f8 = local_26c + 0.001;
                uStack_1fc = *(undefined4 *)
                              (*(int *)(iVar24 + 0x10) +
                              (((int)(char)local_2ec -
                               *(int *)(iVar24 + 4) * *(int *)(local_270 + 0x10)) *
                               *(int *)(iVar24 + 8) + (int)(char)local_2fc) * 4);
                fStack_1f4 = local_200;
                local_e0 = local_200;
                uStack_dc = uStack_1fc;
                fStack_d8 = fStack_1f8;
                fStack_d4 = local_200;
                Lot_LocalPositionToWorldVector(*(void **)(param_1 + 4),&local_e0,&local_f0);
                local_2a4 = 0;
                local_2e8 = (undefined4 *)0x0;
                iVar24 = 0;
                if (local_2a0 != local_29c) {
                  if ((int)local_2ec < *(int *)(param_1 + 0x1c)) {
                    if ((int)local_2fc < *(int *)(param_1 + 0x20)) {
                      psVar13 = (short *)FUN_00b63590((void *)(param_1 + 0x1c),local_2ec,local_2fc);
                      sVar19 = *psVar13;
                      if (0 < sVar19) {
                        puVar14 = local_2a0;
                        do {
                          if ((int)puVar14[3] == (int)sVar19) {
                            iVar25 = (int)puVar14[9];
                            iVar18 = *(int *)((int)puVar14 + 0x4c);
                            if (iVar25 != 0 || iVar18 != 0) {
                              *(int *)(puVar14 + 9) = 0;
                              *(int *)((int)puVar14 + 0x4c) = 0;
                              iVar24 = iVar25;
                              local_2a4 = iVar18;
                              if (iVar25 != 0 || iVar18 != 0) goto LAB_00b65600;
                            }
                            break;
                          }
                          puVar14 = puVar14 + 0xc;
                        } while (puVar14 != local_29c);
                      }
                    }
                  }
                }
                local_138 = (short *)local_28c[local_288];
                sVar19 = sVar10;
                do {
                  sVar19 = sVar19 + 1;
                  for (psVar13 = (short *)local_28c[(uint)(int)sVar19 % local_288];
                      psVar13 != (short *)0x0; psVar13 = *(short **)(psVar13 + 2)) {
                    if (sVar19 == *psVar13) {
                      local_214 = psVar13;
                      local_210 = local_28c + (uint)(int)sVar19 % local_288;
                      ppsVar15 = &local_214;
                      goto LAB_00b655c4;
                    }
                  }
                  local_228 = local_28c + local_288;
                  local_22c = (short *)local_28c[local_288];
                  ppsVar15 = &local_22c;
LAB_00b655c4:
                  local_25c = ppsVar15[1];
                } while (*ppsVar15 != local_138);
                iVar25 = iVar24;
                sVar10 = sVar19;
LAB_00b65600:
                bVar11 = false;
                if (this != (void *)0x0) {
                  if ((iVar25 == 0 && local_2a4 == 0) ||
                     (puVar16 = ObjectRegistry_FindBorrowed(this,CONCAT44(local_2a4,iVar25)),
                     puVar16 == (undefined4 *)0x0)) {
                    guid = FUN_0076d250(0xe464e854,0x94a61341,0);
                    local_2a4 = (int)(guid >> 0x20);
                    iVar25 = (int)guid;
                    puVar16 = ObjectRegistry_FindBorrowed(this,guid);
                    if (puVar16 == (undefined4 *)0x0) {
                      iVar25 = 0;
                      local_2a4 = 0;
                    }
                    else {
                      LOCK();
                      puVar16[1] = puVar16[1] + 1;
                      UNLOCK();
                      bVar11 = true;
                      local_2e8 = puVar16;
                    }
                  }
                  else {
                    LOCK();
                    puVar16[1] = puVar16[1] + 1;
                    UNLOCK();
                    local_2e8 = puVar16;
                  }
                }
                fVar26 = LotWater_GetVertexHeight(pvVar23,local_2ec,local_2fc);
                local_2ac = (float)fVar26;
                local_188 = (int)sVar19;
                local_178 = local_2ec + 1;
                local_174 = local_2fc + 1;
                local_168 = 0xffffffff;
                local_164 = 0xffffffff;
                local_150 = 0;
                local_170 = 0;
                local_16c = 0;
                local_154 = local_2a4;
                local_190 = local_2ec;
                local_18c = local_2fc;
                local_184 = 1;
                local_180 = local_2ec;
                local_17c = local_2fc;
                local_1a0 = local_f0;
                uStack_19c = uStack_ec;
                uStack_198 = uStack_e8;
                uStack_194 = uStack_e4;
                local_158 = iVar25;
                puStack_260 = (undefined4 *)(**(code **)(**(int **)(param_1 + 4) + 100))(local_60);
                uStack_d0 = *puStack_260;
                fStack_cc = (float)puStack_260[1];
                uStack_c8 = puStack_260[2];
                uStack_c4 = puStack_260[3];
                fStack_160 = fStack_cc + local_2ac;
                uStack_14c = 0xffffffff;
                pcStack_2c4 = "Lot/PondPointsStack";
                piStack_2d0 = (int *)0x0;
                piStack_2c8 = (int *)0x0;
                piStack_2cc = (int *)0x0;
                uStack_224 = local_2ec;
                uStack_220 = local_2fc;
                fStack_c0 = fStack_160;
                fStack_bc = fStack_160;
                fStack_b8 = fStack_160;
                fStack_b4 = fStack_160;
                FUN_0040c540(&piStack_2d0,(undefined4 *)0x0,&uStack_224);
                piVar21 = piStack_2cc;
                if (piStack_2d0 != piStack_2cc) {
                  do {
                    iStack_2bc = piVar21[-1];
                    iStack_2c0 = piVar21[-2];
                    iVar24 = iStack_2bc * iVar22 + iStack_2c0;
                    piVar21 = piVar21 + -2;
                    piStack_2cc = piVar21;
                    if (*(short *)((int)local_23c[0] + iVar24 * 2) == -1) {
                      *(short *)((int)local_23c[0] + iVar24 * 2) = sVar19;
                      iStack_1a8 = iStack_2c0 + 1;
                      iStack_1a4 = iStack_2bc + 1;
                      iStack_1b0 = iStack_2c0;
                      iStack_1ac = iStack_2bc;
                      FUN_00524610(&local_180,(int *)&local_180,&iStack_1b0);
                      local_184 = local_184 + 1;
                      iStack_2f0 = 0;
                      piVar20 = piVar21;
                      do {
                        iVar24 = *(int *)(&DAT_011849a4 + iStack_2f0) + iStack_2c0;
                        iVar25 = *(int *)(&DAT_01184984 + iStack_2f0) + iStack_2bc;
                        piVar21 = piVar20;
                        if (-1 < iVar24) {
                          if (iVar24 <= *(int *)(*(int *)(param_1 + 4) + 0x174)) {
                            if (-1 < iVar25) {
                              if (iVar25 <= *(int *)(*(int *)(param_1 + 4) + 0x178)) {
                                iVar18 = iVar25 * iVar22 + iVar24;
                                puStack_260 = (undefined4 *)((int)local_23c[0] + iVar18 * 2);
                                if (*(short *)((int)local_23c[0] + iVar18 * 2) == -1) {
                                  uVar12 = LotWater_IsVertexUnderWater(pvVar23,iVar24,iVar25);
                                  if ((char)uVar12 == '\0') {
                                    *(undefined2 *)puStack_260 = 0;
                                  }
                                  else {
                                    iStack_21c = iVar24;
                                    iStack_218 = iVar25;
                                    if (piVar20 < piStack_2c8) {
                                      piStack_2cc = piVar20 + 2;
                                      piVar21 = piStack_2cc;
                                      if (piVar20 != (int *)0x0) {
                                        *piVar20 = iVar24;
                                        piVar20[1] = iVar25;
                                      }
                                    }
                                    else {
                                      FUN_0040c540(&piStack_2d0,piVar20,&iStack_21c);
                                      piVar21 = piStack_2cc;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                        iStack_2f0 = iStack_2f0 + 4;
                        piVar20 = piVar21;
                      } while (iStack_2f0 < 0x20);
                    }
                  } while (piStack_2d0 != piVar21);
                }
                LotPonds_FindLargestRectangle(&local_20c,(char *)&local_180,local_188,&local_170);
                puVar16 = *(undefined4 **)(param_1 + 0x10);
                if (puVar16 < *(undefined4 **)(param_1 + 0x14)) {
                  *(undefined4 **)(param_1 + 0x10) = puVar16 + 0x18;
                  if (puVar16 != (undefined4 *)0x0) {
                    FUN_00b62dc0(puVar16,&local_1a0);
                  }
                }
                else {
                  FUN_00b63e10((void *)(param_1 + 0xc),puVar16,&local_1a0);
                }
                if (local_2e8 != (undefined4 *)0x0) {
                  this_00 = Object_GetComponentByMask(local_2e8,DAT_011ea158);
                  if (this_00 != (void *)0x0) {
                    TransformComponent_SetWorldPosition(this_00,&local_f0);
                    uStack_1d4 = 0;
                    uStack_1d8 = 0;
                    uStack_1dc = 0;
                    uStack_1c4 = 0;
                    uStack_1c8 = 0;
                    uStack_1d0 = 0;
                    uStack_1e4 = 0;
                    uStack_1ec = 0;
                    uStack_1f0 = 0;
                    fStack_1e8 = 1.0;
                    fStack_110 = 0.0;
                    fStack_10c = 0.0;
                    fStack_108 = 1.0;
                    fStack_104 = 0.0;
                    fStack_1b8 = local_26c;
                    fStack_1bc = local_2ac;
                    fStack_1e0 = 1.0;
                    fStack_1cc = 1.0;
                    fStack_1b4 = 1.0;
                    fStack_1c0 = local_2b0;
                    fStack_130 = 1.0;
                    fStack_12c = 0.0;
                    fStack_128 = 0.0;
                    fStack_124 = 0.0;
                    fStack_120 = 0.0;
                    fStack_11c = 1.0;
                    fStack_118 = 0.0;
                    fStack_114 = 0.0;
                    fStack_100 = local_2b0;
                    fStack_fc = local_2ac;
                    fStack_f8 = local_26c;
                    fStack_f4 = 1.0;
                    pfVar17 = (float *)Lot_BuildLocalToWorldPoseMatrix
                                                 (*(void **)(param_1 + 4),auStack_50);
                    fVar3 = *pfVar17;
                    fVar33 = pfVar17[1];
                    fVar34 = pfVar17[2];
                    fVar35 = pfVar17[3];
                    fVar4 = pfVar17[4];
                    fVar5 = pfVar17[5];
                    fVar37 = pfVar17[6];
                    fVar38 = pfVar17[7];
                    fVar6 = pfVar17[8];
                    fVar7 = pfVar17[9];
                    fVar8 = pfVar17[10];
                    fVar36 = pfVar17[0xb];
                    puStack_260 = (undefined4 *)pfVar17[0xc];
                    local_25c = (short *)pfVar17[0xd];
                    fStack_258 = pfVar17[0xe];
                    fStack_254 = pfVar17[0xf];
                    fVar30 = fStack_12c * fVar37;
                    fVar31 = fStack_12c * fVar38;
                    fVar27 = fStack_130 * fVar33;
                    fVar28 = fStack_130 * fVar34;
                    fVar29 = fStack_130 * fVar35;
                    fVar32 = fStack_128 * fVar36;
                    fStack_130 = fStack_130 * fVar3 + fStack_12c * fVar4 + fStack_128 * fVar6 +
                                 fStack_124 * (float)puStack_260;
                    fStack_12c = fVar27 + fStack_12c * fVar5 + fStack_128 * fVar7 +
                                 fStack_124 * (float)local_25c;
                    fStack_128 = fVar28 + fVar30 + fStack_128 * fVar8 + fStack_124 * fStack_258;
                    fStack_124 = fVar29 + fVar31 + fVar32 + fStack_124 * fStack_254;
                    fVar30 = fStack_11c * fVar37;
                    fVar31 = fStack_11c * fVar38;
                    fVar27 = fStack_120 * fVar33;
                    fVar28 = fStack_120 * fVar34;
                    fVar29 = fStack_120 * fVar35;
                    fVar32 = fStack_118 * fVar36;
                    fStack_120 = fStack_120 * fVar3 + fStack_11c * fVar4 + fStack_118 * fVar6 +
                                 fStack_114 * (float)puStack_260;
                    fStack_11c = fVar27 + fStack_11c * fVar5 + fStack_118 * fVar7 +
                                 fStack_114 * (float)local_25c;
                    fStack_118 = fVar28 + fVar30 + fStack_118 * fVar8 + fStack_114 * fStack_258;
                    fStack_114 = fVar29 + fVar31 + fVar32 + fStack_114 * fStack_254;
                    fVar27 = fStack_110 * fVar33;
                    fVar28 = fStack_110 * fVar34;
                    fVar29 = fStack_110 * fVar35;
                    fVar30 = fStack_10c * fVar37;
                    fVar31 = fStack_10c * fVar38;
                    fVar32 = fStack_108 * fVar36;
                    fStack_110 = fStack_110 * fVar3 + fStack_10c * fVar4 + fStack_108 * fVar6 +
                                 fStack_104 * (float)puStack_260;
                    fStack_10c = fVar27 + fStack_10c * fVar5 + fStack_108 * fVar7 +
                                 fStack_104 * (float)local_25c;
                    fStack_108 = fVar28 + fVar30 + fStack_108 * fVar8 + fStack_104 * fStack_258;
                    fStack_104 = fVar29 + fVar31 + fVar32 + fStack_104 * fStack_254;
                    fVar33 = fStack_100 * fVar33;
                    fVar34 = fStack_100 * fVar34;
                    fVar35 = fStack_100 * fVar35;
                    fVar37 = fStack_fc * fVar37;
                    fVar38 = fStack_fc * fVar38;
                    fVar36 = fStack_f8 * fVar36;
                    fStack_100 = fStack_100 * fVar3 + fStack_fc * fVar4 + fStack_f8 * fVar6 +
                                 fStack_f4 * (float)puStack_260;
                    fStack_fc = fVar33 + fStack_fc * fVar5 + fStack_f8 * fVar7 +
                                fStack_f4 * (float)local_25c;
                    fStack_f8 = fVar34 + fVar37 + fStack_f8 * fVar8 + fStack_f4 * fStack_258;
                    fStack_f4 = fVar35 + fVar38 + fVar36 + fStack_f4 * fStack_254;
                    fStack_a0 = fStack_130;
                    fStack_9c = fStack_12c;
                    fStack_98 = fStack_128;
                    fStack_94 = fStack_124;
                    fStack_90 = fStack_120;
                    fStack_8c = fStack_11c;
                    fStack_88 = fStack_118;
                    fStack_84 = fStack_114;
                    fStack_80 = fStack_110;
                    fStack_7c = fStack_10c;
                    fStack_78 = fStack_108;
                    fStack_74 = fStack_104;
                    fStack_70 = fStack_100;
                    fStack_6c = fStack_fc;
                    fStack_68 = fStack_f8;
                    fStack_64 = fStack_f4;
                    TransformComponent_SetWorldMatrix(this_00,&fStack_130);
                  }
                  LotPonds_SetHelperRectangleFootprint(local_2e8,(int)&local_1a0);
                  iVar24 = FUN_0068f130((int)local_2e8);
                  if ((iVar24 == 0) || (bVar11)) {
                    if (bVar9) {
                      *(undefined1 *)(local_2b8 + 0x978) = 1;
                    }
                    (**(code **)(**(int **)(param_1 + 4) + 0x30))(local_2e8);
                    if (bVar9) {
                      *(undefined1 *)(local_2b8 + 0x978) = 0;
                    }
                  }
                  else {
                    Lot_NotifyObjectLocationChanged(*(void **)(param_1 + 4),local_2e8);
                  }
                }
                if (piStack_2d0 != (int *)0x0) {
                  Memory_FreeIfNonNull(piStack_2d0);
                }
                if (local_2e8 != (undefined4 *)0x0) {
                  piVar21 = local_2e8 + 1;
                  LOCK();
                  iVar24 = *piVar21;
                  *piVar21 = *piVar21 + -1;
                  UNLOCK();
                  if (iVar24 == 1) {
                    LOCK();
                    *piVar21 = 1;
                    UNLOCK();
                    (**(code **)*local_2e8)(1);
                  }
                }
              }
            }
            local_2e0 = local_2e0 + 2;
            local_2ec = local_2ec + 1;
          } while ((int)local_2ec < iVar22);
        }
        local_2fc = local_2fc + 1;
      } while ((int)local_2fc < local_2b4);
    }
    pvVar23 = (void *)(param_1 + 0x1c);
    FUN_00b646b0(pvVar23,iVar22,local_2b4);
    FUN_00b64940(pvVar23,(int *)local_23c);
    FUN_00b64390((int)pvVar23);
    puVar14 = local_2a0;
    if ((local_2a0 != local_29c) && (this != (void *)0x0)) {
      puVar14 = local_2a0 + 9;
      do {
        if (((int)*puVar14 != 0 || *(int *)((int)puVar14 + 4) != 0) &&
           (puVar16 = ObjectRegistry_FindBorrowed(this,*puVar14), puVar16 != (undefined4 *)0x0)) {
          piVar21 = puVar16 + 1;
          LOCK();
          *piVar21 = *piVar21 + 1;
          UNLOCK();
          (**(code **)(**(int **)(param_1 + 4) + 0x3c))(puVar16,0);
          FUN_0076d2a0(puVar16[2],puVar16[3]);
          LOCK();
          iVar22 = *piVar21;
          *piVar21 = *piVar21 + -1;
          UNLOCK();
          if (iVar22 == 1) {
            LOCK();
            *piVar21 = 1;
            UNLOCK();
            (**(code **)*puVar16)(1);
          }
        }
        puVar1 = puVar14 + 3;
        puVar14 = puVar14 + 0xc;
      } while (puVar1 != local_29c);
      puVar14 = local_2a0;
    }
    if (local_23c[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_23c[0]);
    }
    FUN_00ae0410((int)local_28c,local_288);
    local_284 = 0;
    if (1 < local_288) {
      Memory_FreeIfNonNull(local_28c);
    }
    if (puVar14 != (ulonglong *)0x0) {
      Memory_FreeIfNonNull(puVar14);
    }
  }
  return;
}

