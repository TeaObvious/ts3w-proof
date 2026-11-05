/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Native precipitation cell frame: clears for type0/strength<=.01,
   basement/underwater or close sheltered target without precipitation shadow. Computes
   frustum-visible inclusive range around eye cell10x7.5x10m. Rebuilds up to12 slots when range
   changes; terrain query at eye-cell center filters layers, eye cell retained. Reuses
   instances/ids, hides stale slots and advances all allocated instance clocks. SIMD floor
   pseudocode is verbose compiler output. */

void __thiscall
Seasons_UpdatePrecipitationCells
          (void *this,int *param_1,undefined4 param_2,undefined4 param_3,float param_4)

{
  undefined4 *puVar1;
  undefined1 auVar2 [16];
  bool bVar3;
  short sVar4;
  void *pvVar5;
  undefined4 uVar6;
  int iVar7;
  void *this_00;
  int **ppiVar8;
  float *pfVar9;
  int *piVar10;
  undefined4 *puVar11;
  int iVar12;
  int iVar13;
  int extraout_EDX;
  int *piVar14;
  int *piVar15;
  int *piVar16;
  float10 fVar17;
  float fVar18;
  ulonglong uVar19;
  float fVar21;
  float fVar22;
  undefined1 auVar20 [16];
  float fVar23;
  int *local_178;
  int local_174;
  int *local_170;
  float local_16c;
  int *local_168;
  int *local_164;
  int *local_160;
  int *local_15c;
  float local_158;
  float fStack_154;
  undefined1 local_150 [4];
  undefined1 auStack_14c [4];
  undefined8 uStack_148;
  int *local_140;
  int *local_13c;
  float local_138;
  undefined4 uStack_134;
  int *local_130;
  int *piStack_12c;
  float fStack_128;
  int *piStack_124;
  int *local_114;
  int *local_110;
  int *local_10c;
  char *local_108;
  void *local_100;
  undefined4 *puStack_fc;
  undefined4 *puStack_f8;
  char *pcStack_f4;
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
  void *local_b8 [2];
  float local_b0;
  float local_ac;
  float local_a8;
  float local_a4;
  int *piStack_a0;
  int *piStack_9c;
  float fStack_98;
  undefined4 uStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  undefined4 uStack_84;
  int *piStack_80;
  int *piStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  void *local_70;
  float fStack_6c;
  float fStack_68;
  void *pvStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  float fStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  int *piStack_20;
  int *piStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_168 = this;
  if ((*param_1 == 0) || ((float)param_1[1] <= 0.01)) {
    FUN_00d66430(*(uint *)((int)this + 8),*(uint *)((int)this + 0xc));
    *(undefined4 *)((int)this + 0xc) = *(undefined4 *)((int)this + 8);
    *(undefined4 *)((int)this + 0x34) = 0;
    pvVar5 = LoadPump_ReadFrameServiceGlobal();
    if (pvVar5 != (void *)0x0) {
      *(undefined1 *)((int)pvVar5 + 0x275) = 0;
    }
  }
  else {
    if (*param_1 != *(int *)((int)this + 0x34)) {
      FUN_00d669b0((int)this);
    }
    pvVar5 = LoadPump_ReadFrameServiceGlobal();
    if ((pvVar5 == (void *)0x0) ||
       (((*(char *)((int)pvVar5 + 0x515) != '\0' && (*(char *)((int)pvVar5 + 0x270) == '\0')) ||
        (uVar6 = CameraFlags_TestBelowHeightThreshold((int)pvVar5), (char)uVar6 != '\0')))) {
LAB_00d6789e:
      FUN_00d669b0((int)this);
      return;
    }
    iVar7 = FUN_005361d0((int)pvVar5);
    if (iVar7 != 0) {
      uVar6 = FUN_006eb000((int)pvVar5);
      if ((char)uVar6 == '\0') {
        local_f0 = *(float *)*(undefined1 (*) [16])(iVar7 + 0x200);
        fStack_ec = *(float *)(iVar7 + 0x204);
        fStack_e8 = *(float *)(iVar7 + 0x208);
        fStack_e4 = *(float *)(iVar7 + 0x20c);
        auVar2 = *(undefined1 (*) [16])(iVar7 + 0x200);
        fVar18 = local_f0 - *(float *)(iVar7 + 0x60);
        fVar21 = fStack_ec - *(float *)(iVar7 + 100);
        fVar22 = fStack_e8 - *(float *)(iVar7 + 0x68);
        auVar20._0_4_ = fVar22 * fVar22 + fVar21 * fVar21 + fVar18 * fVar18;
        auVar20._4_4_ = auVar20._0_4_;
        auVar20._8_4_ = auVar20._0_4_;
        auVar20._12_4_ = auVar20._0_4_;
        auVar20 = sqrtps(auVar20,auVar20);
        if ((DAT_011ede58 != (void *)0x0) && (local_150 = auVar20._0_4_, (float)local_150 < 20.0)) {
          uStack_148._0_4_ = auVar2._8_4_;
          fVar18 = (float)uStack_148;
          _local_150 = auVar2;
          local_e0 = local_f0;
          fStack_dc = fStack_ec;
          fStack_d8 = fStack_e8;
          fStack_d4 = fStack_e4;
          this_00 = FUN_00c7e010(DAT_011ede58,local_f0,fVar18);
          if ((this_00 != (void *)0x0) &&
             (local_170 = *(int **)((int)this_00 + 0x230), local_170 != (int *)0x0)) {
            FUN_00adfaa0(this_00,&local_e0,(float *)local_150);
            local_160 = (int *)0xbf800000;
            local_158 = 0.0;
            local_15c = local_160;
            uVar6 = FUN_00adfb00(this_00,(float *)local_150,(float *)&local_160);
            if (((char)uVar6 != '\0') &&
               (((int)local_158 < -1 ||
                ((sVar4 = FUN_00aa1060(local_170,(float *)&local_160), sVar4 != 0 &&
                 (bVar3 = FUN_006c1f00((int)this_00), !bVar3)))))) goto LAB_00d6789e;
          }
        }
      }
      *(undefined1 *)((int)pvVar5 + 0x275) = 1;
      *(int *)((int)this + 0x34) = *param_1;
      local_90 = *(float *)(iVar7 + 0x60);
      fStack_8c = *(float *)(iVar7 + 100);
      fStack_88 = *(float *)(iVar7 + 0x68);
      uStack_84 = *(undefined4 *)(iVar7 + 0x6c);
      fVar23 = 1.0 / DAT_01192cc0;
      fVar18 = local_90 * fVar23;
      fVar21 = local_90 * fVar23;
      fVar22 = local_90 * fVar23;
      fVar23 = local_90 * fVar23;
      local_e0 = (float)(-(uint)(fVar18 < 0.0) & 0x4b000000 | ~-(uint)(fVar18 < 0.0) & 0xcb000000);
      fStack_dc = (float)(-(uint)(fVar21 < 0.0) & 0x4b000000 | ~-(uint)(fVar21 < 0.0) & 0xcb000000);
      fStack_d8 = (float)(-(uint)(fVar22 < 0.0) & 0x4b000000 | ~-(uint)(fVar22 < 0.0) & 0xcb000000);
      fStack_d4 = (float)(-(uint)(fVar23 < 0.0) & 0x4b000000 | ~-(uint)(fVar23 < 0.0) & 0xcb000000);
      local_e0 = (fVar18 - local_e0) + local_e0;
      fStack_dc = (fVar21 - fStack_dc) + fStack_dc;
      fStack_d8 = (fVar22 - fStack_d8) + fStack_d8;
      fStack_d4 = (fVar23 - fStack_d4) + fStack_d4;
      local_e0 = local_e0 - (float)(-(uint)(fVar18 < local_e0) & 0x3f800000);
      fStack_dc = fStack_dc - (float)(-(uint)(fVar21 < fStack_dc) & 0x3f800000);
      fStack_d8 = fStack_d8 - (float)(-(uint)(fVar22 < fStack_d8) & (uint)1.0);
      fStack_d4 = fStack_d4 - (float)(-(uint)(fVar23 < fStack_d4) & (uint)1.0);
      fVar23 = 1.0 / DAT_01192cc8;
      _local_150 = ZEXT816(0);
      fVar18 = fStack_8c * fVar23;
      fVar21 = fStack_8c * fVar23;
      fVar22 = fStack_8c * fVar23;
      fVar23 = fStack_8c * fVar23;
      local_f0 = (float)(-(uint)(fVar18 < 0.0) & 0x4b000000 | ~-(uint)(fVar18 < 0.0) & 0xcb000000);
      fStack_ec = (float)(-(uint)(fVar21 < 0.0) & 0x4b000000 | ~-(uint)(fVar21 < 0.0) & 0xcb000000);
      fStack_e8 = (float)(-(uint)(fVar22 < 0.0) & 0x4b000000 | ~-(uint)(fVar22 < 0.0) & 0xcb000000);
      fStack_e4 = (float)(-(uint)(fVar23 < 0.0) & 0x4b000000 | ~-(uint)(fVar23 < 0.0) & 0xcb000000);
      local_f0 = (fVar18 - local_f0) + local_f0;
      fStack_ec = (fVar21 - fStack_ec) + fStack_ec;
      fStack_e8 = (fVar22 - fStack_e8) + fStack_e8;
      fStack_e4 = (fVar23 - fStack_e4) + fStack_e4;
      uVar19 = CONCAT44(-(uint)(fVar21 < fStack_ec),-(uint)(fVar18 < local_f0)) & 0x3f8000003f800000
      ;
      local_f0 = local_f0 - (float)uVar19;
      fStack_ec = fStack_ec - (float)(uVar19 >> 0x20);
      fStack_e8 = fStack_e8 - (float)(-(uint)(fVar22 < fStack_e8) & (uint)1.0);
      fStack_e4 = fStack_e4 - (float)(-(uint)(fVar23 < fStack_e4) & (uint)1.0);
      fVar23 = 1.0 / DAT_01192cc4;
      fVar18 = fStack_88 * fVar23;
      fVar21 = fStack_88 * fVar23;
      fVar22 = fStack_88 * fVar23;
      fVar23 = fStack_88 * fVar23;
      local_d0 = (float)(-(uint)(fVar18 < 0.0) & 0x4b000000 | ~-(uint)(fVar18 < 0.0) & 0xcb000000);
      fStack_cc = (float)(-(uint)(fVar21 < 0.0) & 0x4b000000 | ~-(uint)(fVar21 < 0.0) & 0xcb000000);
      fStack_c8 = (float)(-(uint)(fVar22 < 0.0) & 0x4b000000 | ~-(uint)(fVar22 < 0.0) & 0xcb000000);
      fStack_c4 = (float)(-(uint)(fVar23 < 0.0) & 0x4b000000 | ~-(uint)(fVar23 < 0.0) & 0xcb000000);
      local_d0 = (fVar18 - local_d0) + local_d0;
      fStack_cc = (fVar21 - fStack_cc) + fStack_cc;
      fStack_c8 = (fVar22 - fStack_c8) + fStack_c8;
      fStack_c4 = (fVar23 - fStack_c4) + fStack_c4;
      uVar19 = CONCAT44(-(uint)(fVar21 < fStack_cc),-(uint)(fVar18 < local_d0)) & 0x3f8000003f800000
      ;
      local_d0 = local_d0 - (float)uVar19;
      fStack_cc = fStack_cc - (float)(uVar19 >> 0x20);
      fStack_c8 = fStack_c8 - (float)(-(uint)(fVar22 < fStack_c8) & (uint)1.0);
      fStack_c4 = fStack_c4 - (float)(-(uint)(fVar23 < fStack_c4) & (uint)1.0);
      if (((*(int *)((int)this + 8) != *(int *)((int)this + 0xc)) || (0 < (int)local_e0)) ||
         (0 < (int)local_d0)) {
        local_138 = (float)(int)local_d0;
        local_13c = (int *)(int)local_f0;
        piVar14 = (int *)(int)local_e0;
        local_140 = piVar14;
        local_130 = piVar14;
        piStack_12c = local_13c;
        fStack_128 = local_138;
        local_b8[0] = (void *)FUN_0095fd90(iVar7);
        local_170 = (int *)((int)piVar14 + -1);
        local_174 = -1;
        do {
          fVar18 = (float)(local_174 + (int)local_d0);
          local_a8 = (float)(int)fVar18;
          local_ac = (float)((int)fVar18 + 1);
          local_16c = 4.2039e-45;
          piVar14 = local_170;
          local_158 = fVar18;
          do {
            local_164 = (int *)((int)piVar14 + 1);
            local_b0 = (float)(int)local_164;
            local_a4 = (float)(int)piVar14;
            local_178 = (int *)0xffffffff;
            local_160 = piVar14;
            do {
              local_100 = (void *)(local_a4 * DAT_01192cc0);
              local_60 = local_b0 * DAT_01192cc0;
              piVar15 = (int *)((int)local_178 + (int)local_f0);
              puStack_f8 = (undefined4 *)(local_a8 * DAT_01192cc4);
              puStack_fc = (undefined4 *)((float)(int)piVar15 * DAT_01192cc8);
              fStack_58 = local_ac * DAT_01192cc4;
              uStack_148._0_4_ = fStack_58;
              fStack_5c = (float)((int)piVar15 + 1) * DAT_01192cc8;
              uStack_148._4_4_ = local_60;
              auStack_14c = (undefined1  [4])fStack_5c;
              local_150 = (undefined1  [4])local_60;
              local_15c = piVar15;
              pcStack_f4 = local_100;
              local_70 = local_100;
              fStack_6c = (float)puStack_fc;
              fStack_68 = (float)puStack_f8;
              pvStack_64 = local_100;
              fStack_54 = local_60;
              uVar6 = FUN_0068ca50(local_b8[0],(float *)&local_70);
              piVar16 = local_168;
              if ((char)uVar6 != '\0') {
                ppiVar8 = &local_130;
                if ((int)piVar14 <= (int)local_130) {
                  ppiVar8 = &local_160;
                }
                local_130 = *ppiVar8;
                ppiVar8 = &piStack_12c;
                if ((int)piVar15 <= (int)piStack_12c) {
                  ppiVar8 = &local_15c;
                }
                piStack_12c = *ppiVar8;
                pfVar9 = &fStack_128;
                if ((int)fVar18 <= (int)fStack_128) {
                  pfVar9 = &local_158;
                }
                fStack_128 = *pfVar9;
                ppiVar8 = &local_140;
                if ((int)local_140 <= (int)piVar14) {
                  ppiVar8 = &local_160;
                }
                local_140 = *ppiVar8;
                ppiVar8 = &local_13c;
                if ((int)local_13c <= (int)piVar15) {
                  ppiVar8 = &local_15c;
                }
                local_13c = *ppiVar8;
                pfVar9 = &local_138;
                if ((int)local_138 <= (int)fVar18) {
                  pfVar9 = &local_158;
                }
                local_138 = *pfVar9;
              }
              local_178 = (int *)((int)local_178 + 1);
            } while ((int)local_178 < 2);
            local_16c = (float)((int)local_16c + -1);
            piVar14 = local_164;
          } while (local_16c != 0.0);
          local_174 = local_174 + 1;
        } while (local_174 < 2);
        piVar14 = local_168 + 2;
        if (((((local_168[2] == local_168[3]) || (local_130 != (int *)local_168[6])) ||
             ((piStack_12c != (int *)local_168[7] ||
              ((fStack_128 != (float)local_168[8] || (local_140 != (int *)local_168[9])))))) ||
            (local_13c != (int *)local_168[10])) || (local_138 != (float)local_168[0xb])) {
          local_168[6] = (int)local_130;
          local_168[7] = (int)piStack_12c;
          local_168[8] = (int)fStack_128;
          local_168[9] = (int)local_140;
          local_168[10] = (int)local_13c;
          local_168[0xb] = (int)local_138;
          fVar18 = ((float)(int)local_d0 + 0.5) * DAT_01192cc4;
          pvVar5 = (void *)(((float)(int)local_e0 + 0.5) * DAT_01192cc0);
          fVar21 = ((float)(int)local_f0 + 0.5) * DAT_01192cc8;
          auStack_14c = (undefined1  [4])fStack_8c;
          local_150 = (undefined1  [4])local_90;
          uStack_148._0_4_ = fStack_88;
          uStack_148._4_4_ = uStack_84;
          local_16c = fStack_8c;
          if (DAT_011edbc4 != (void *)0x0) {
            auStack_14c = (undefined1  [4])fVar21;
            local_150 = (undefined1  [4])pvVar5;
            uStack_148._0_4_ = fVar18;
            uStack_148._4_4_ = pvVar5;
            local_100 = pvVar5;
            puStack_fc = (undefined4 *)fVar21;
            puStack_f8 = (undefined4 *)fVar18;
            pcStack_f4 = pvVar5;
            fVar17 = TS3W_QueryWorldGroundHeight
                               (DAT_011edbc4,(float)pvVar5,fVar18,0,'\x01','\x01',(undefined1 *)0x0,
                                (undefined1 *)0x0);
            local_16c = (float)fVar17;
          }
          if ((uint)((piVar16[3] - *piVar14) / 0x14) < 0xc) {
            FUN_00d66a40(piVar14,0xc);
          }
          fVar18 = (float)(int)local_d0;
          piVar15 = (int *)(int)local_f0;
          piVar14 = (int *)(int)local_e0;
          local_114 = (int *)0x0;
          local_110 = (int *)0x0;
          local_10c = (int *)0x0;
          local_100 = (void *)0x0;
          puStack_fc = (undefined4 *)0x0;
          puStack_f8 = (undefined4 *)0x0;
          local_108 = "Scratch/Weather/PrecipitationManager";
          pcStack_f4 = "Scratch/Weather/PrecipitationManager";
          local_164 = (int *)FUN_00d65940(local_168,(int)piVar14,(int)piVar15,(int)fVar18);
          if (local_164 == (int *)0x0) {
            local_160 = piVar14;
            local_15c = piVar15;
            local_158 = fVar18;
            FUN_00c4fe90(&local_100,&local_160);
          }
          else {
            FUN_0082d760(&local_114,(int *)local_b8,(int *)&local_164);
          }
          local_178 = piStack_12c;
          if ((int)piStack_12c <= (int)local_13c) {
            do {
              if ((local_16c <= ((float)(int)local_178 + 1.0) * DAT_01192cc8) &&
                 (piVar14 = local_130, (int)local_130 <= (int)local_140)) {
                do {
                  fVar18 = fStack_128;
                  if ((int)fStack_128 <= (int)local_138) {
                    do {
                      piVar15 = local_110;
                      if ((piVar14 == (int *)(int)local_e0) && (local_178 == (int *)(int)local_f0))
                      {
                        puVar11 = puStack_fc;
                        if (fVar18 != (float)(int)local_d0) goto LAB_00d672f3;
                      }
                      else {
LAB_00d672f3:
                        for (piVar16 = (int *)local_168[2]; piVar16 != (int *)local_168[3];
                            piVar16 = piVar16 + 5) {
                          if ((((*piVar16 != 0) && ((int *)piVar16[1] == piVar14)) &&
                              ((int *)piVar16[2] == local_178)) && ((float)piVar16[3] == fVar18)) {
                            piVar16 = (int *)*piVar16;
                            goto LAB_00d6731e;
                          }
                        }
                        piVar16 = (int *)0x0;
LAB_00d6731e:
                        local_170 = piVar16;
                        if (piVar16 == (int *)0x0) {
                          local_15c = local_178;
                          local_160 = piVar14;
                          local_158 = fVar18;
                          if (puStack_fc < puStack_f8) {
                            puVar11 = puStack_fc + 3;
                            if (puStack_fc != (undefined4 *)0x0) {
                              *puStack_fc = piVar14;
                              puStack_fc[1] = local_178;
                              puStack_fc[2] = fVar18;
                            }
                          }
                          else {
                            FUN_00d700a0(&local_100,puStack_fc,&local_160);
                            piVar15 = local_110;
                            puVar11 = puStack_fc;
                          }
                        }
                        else {
                          piVar10 = (int *)FUN_0082a5e0((int)local_114,(int)local_110,
                                                        (int *)&local_170);
                          puVar11 = puStack_fc;
                          if (piVar10 != local_110) {
                            piVar15 = local_110;
                            if (*piVar10 <= (int)piVar16) goto LAB_00d673ee;
                          }
                          if ((local_110 == local_10c) || (piVar10 != local_110)) {
                            FUN_00982420(&local_114,piVar10,&local_170);
                            piVar15 = local_110;
                            puVar11 = puStack_fc;
                          }
                          else {
                            piVar15 = local_110 + 1;
                            if (local_110 != (int *)0x0) {
                              *local_110 = (int)piVar16;
                            }
                          }
                        }
                      }
LAB_00d673ee:
                      puStack_fc = puVar11;
                      local_110 = piVar15;
                      fVar18 = (float)((int)fVar18 + 1);
                    } while ((int)fVar18 <= (int)local_138);
                  }
                  piVar14 = (int *)((int)piVar14 + 1);
                } while ((int)piVar14 <= (int)local_140);
              }
              local_178 = (int *)((int)local_178 + 1);
            } while ((int)local_178 <= (int)local_13c);
          }
          local_174 = 0;
          local_16c = (float)((int)local_110 - (int)local_114 >> 2);
          if ((int)local_16c < 0xc) {
            local_164 = (int *)(((int)puStack_fc - (int)local_100) / 0xc);
            local_178 = (int *)0x14;
            piVar14 = (int *)((int)local_100 + 8);
            do {
              if ((int)local_164 <= local_174) break;
              iVar7 = *(int *)(local_168[2] + -0x14 + (int)local_178);
              piVar15 = (int *)(local_168[2] + -0x14 + (int)local_178);
              if (iVar7 == 0) {
LAB_00d674de:
                piVar16 = local_168;
                iVar7 = piVar14[-2];
                iVar13 = piVar14[-1];
                iVar12 = *piVar14;
                local_174 = local_174 + 1;
                *piVar15 = local_168[0xc];
                local_168[0xc] = local_168[0xc] + 1;
                piVar15[1] = iVar7;
                piVar15[2] = iVar13;
                piVar15[3] = iVar12;
                local_130 = (int *)(((float)iVar7 + 0.5) * DAT_01192cc0);
                fStack_128 = ((float)iVar12 + 0.5) * DAT_01192cc4;
                piStack_12c = (int *)((float)iVar13 * DAT_01192cc8);
                piVar14 = piVar14 + 3;
                uStack_148._0_4_ = fStack_128;
                uStack_148._4_4_ = local_130;
                auStack_14c = (undefined1  [4])piStack_12c;
                local_150 = (undefined1  [4])local_130;
                local_170 = piVar14;
                piStack_124 = local_130;
                if (piVar15[4] == 0) {
                  puVar11 = (undefined4 *)
                            FUN_004e4500(0x50,
                                         "Renderer/Weather/PrecipitationManager/PrecipitationInstance"
                                         ,0);
                  if (puVar11 == (undefined4 *)0x0) {
                    puVar11 = (undefined4 *)0x0;
                  }
                  else {
                    puVar11[1] = 0;
                    *puVar11 = &PTR_FUN_0108afbc;
                    puVar11[2] = 0;
                    puVar11[3] = 0;
                    puVar11[4] = 0;
                    puVar11[5] = "Misc/PrecipitationManager/PrecipitationInstance";
                    puVar11[6] = 0;
                    puVar11[0x10] = 0;
                    *(undefined1 *)(puVar11 + 0x11) = 0;
                  }
                  puVar1 = (undefined4 *)piVar15[4];
                  if (puVar11 != puVar1) {
                    if (puVar11 != (undefined4 *)0x0) {
                      puVar11[1] = puVar11[1] + 1;
                    }
                    piVar15[4] = (int)puVar11;
                    if ((puVar1 != (undefined4 *)0x0) &&
                       (iVar7 = puVar1[1], puVar1[1] = iVar7 + -1, iVar7 + -1 == 0)) {
                      puVar1[1] = 1;
                      (**(code **)*puVar1)(1);
                    }
                  }
                  Seasons_CreatePrecipitationCellModels
                            ((void *)piVar15[4],piVar16,piVar16[0xd],1,0,*piVar15);
                  iVar12 = extraout_EDX;
                }
                iVar7 = piVar15[4];
                auVar2._4_4_ = -(uint)((float)piStack_12c == *(float *)(iVar7 + 0x34));
                auVar2._0_4_ = -(uint)((float)local_130 == *(float *)(iVar7 + 0x30));
                auVar2._8_4_ = -(uint)(fStack_128 == *(float *)(iVar7 + 0x38));
                auVar2._12_4_ = -(uint)((float)piStack_124 == *(float *)(iVar7 + 0x3c));
                uVar6 = movmskps(iVar12,auVar2);
                if (((byte)uVar6 & 7) != 7) {
                  *(int **)(iVar7 + 0x30) = local_130;
                  *(int **)(iVar7 + 0x34) = piStack_12c;
                  *(float *)(iVar7 + 0x38) = fStack_128;
                  *(int **)(iVar7 + 0x3c) = piStack_124;
                  if ((uint)(*(int *)(iVar7 + 0xc) - *(int *)(iVar7 + 8) >> 2) < 2) {
                    if ((*(int *)(iVar7 + 0xc) - *(int *)(iVar7 + 8) & 0xfffffffcU) == 4) {
                      piVar14 = (int *)**(int **)(iVar7 + 8);
                      if (piVar14 != (int *)0x0) {
                        (**(code **)*piVar14)();
                        fStack_e4 = 0.0;
                        fStack_e8 = 0.0;
                        fStack_ec = 0.0;
                        fStack_d4 = 0.0;
                        fStack_d8 = 0.0;
                        local_e0 = 0.0;
                        fStack_c4 = 0.0;
                        fStack_cc = 0.0;
                        local_d0 = 0.0;
                        fStack_c8 = 1.0;
                        uStack_30 = 0;
                        uStack_2c = 0;
                        fStack_28 = 1.0;
                        uStack_24 = 0;
                        local_160 = *(int **)(iVar7 + 0x30);
                        local_15c = *(int **)(iVar7 + 0x34);
                        local_158 = *(float *)(iVar7 + 0x38);
                        uStack_134 = *(undefined4 *)(iVar7 + 0x3c);
                        local_f0 = 1.0;
                        fStack_50 = 1.0;
                        uStack_4c = 0;
                        uStack_48 = 0;
                        uStack_44 = 0;
                        fStack_dc = 1.0;
                        fStack_154 = 1.0;
                        uStack_40 = 0;
                        fStack_3c = 1.0;
                        uStack_38 = 0;
                        uStack_34 = 0;
                        fStack_14 = 1.0;
                        local_140 = local_160;
                        local_13c = local_15c;
                        local_138 = local_158;
                        piStack_a0 = local_160;
                        piStack_9c = local_15c;
                        fStack_98 = local_158;
                        uStack_94 = uStack_134;
                        piStack_80 = local_160;
                        piStack_7c = local_15c;
                        fStack_78 = local_158;
                        uStack_74 = uStack_134;
                        piStack_20 = local_160;
                        piStack_1c = local_15c;
                        fStack_18 = local_158;
                        (**(code **)(*piVar14 + 0x20))(&fStack_50);
                        (**(code **)(*piVar14 + 4))();
                      }
                      piVar14 = local_170;
                    }
                  }
                  else {
                    FUN_00d65ad0(iVar7);
                  }
                }
                FUN_00d659e0(piVar15[4]);
                FUN_0082d760(&local_114,(int *)local_b8,piVar15);
                local_16c = (float)((int)local_16c + 1);
              }
              else {
                piVar16 = (int *)FUN_0082a5e0((int)local_114,(int)local_110,piVar15);
                if (((piVar16 == local_110) || (iVar7 < *piVar16)) || (piVar16 == piVar16 + 1))
                goto LAB_00d674de;
              }
              local_178 = (int *)((int)local_178 + 0x14);
            } while ((int)local_16c < 0xc);
          }
          piVar14 = (int *)local_168[3];
          piVar15 = (int *)local_168[2];
          local_164 = piVar14;
          if (piVar15 != piVar14) {
            do {
              iVar7 = *piVar15;
              if (iVar7 != 0) {
                iVar13 = (int)local_110 - (int)local_114 >> 2;
                piVar16 = local_114;
                if (0 < iVar13) {
                  do {
                    iVar12 = iVar13 >> 1;
                    if (piVar16[iVar12] < iVar7) {
                      piVar16 = piVar16 + iVar12 + 1;
                      iVar12 = iVar13 + (-1 - iVar12);
                    }
                    iVar13 = iVar12;
                  } while (0 < iVar12);
                  piVar14 = local_164;
                }
                if (((piVar16 == local_110) || (iVar7 < *piVar16)) || (piVar16 == piVar16 + 1)) {
                  FUN_00d65990(piVar15[4]);
                  piVar15[1] = 0;
                  piVar15[2] = 0;
                  piVar15[3] = 0;
                }
              }
              piVar15 = piVar15 + 5;
            } while (piVar15 != piVar14);
          }
          iVar13 = local_168[3];
          for (iVar7 = local_168[2]; iVar7 != iVar13; iVar7 = iVar7 + 0x14) {
            iVar12 = *(int *)(iVar7 + 0x10);
            if ((iVar12 != 0) &&
               (*(float *)(iVar12 + 0x18) = *(float *)(iVar12 + 0x18) + param_4,
               1 < (uint)(*(int *)(iVar12 + 0xc) - *(int *)(iVar12 + 8) >> 2))) {
              FUN_00d65ad0(iVar12);
            }
          }
          if (local_100 != (void *)0x0) {
            Memory_FreeIfNonNull(local_100);
          }
          if (local_114 != (int *)0x0) {
            Memory_FreeIfNonNull(local_114);
            return;
          }
        }
        else {
          iVar7 = *piVar14;
          iVar13 = local_168[3];
          if (iVar7 != iVar13) {
            local_16c = 0.0;
            do {
              if (*(void **)(iVar7 + 0x10) != (void *)0x0) {
                FUN_00d662f0(*(void **)(iVar7 + 0x10),param_1,param_4);
              }
              iVar7 = iVar7 + 0x14;
            } while (iVar7 != iVar13);
            return;
          }
        }
      }
    }
  }
  return;
}

