/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_UpdatePrecipitationCells:


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
  undefined1 (*pauVar1) [16];
  undefined4 *puVar2;
  undefined1 auVar3 [16];
  bool bVar4;
  short sVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  void *this_00;
  int **ppiVar9;
  float *pfVar10;
  int *piVar11;
  undefined4 *puVar12;
  int extraout_EDX;
  int iVar13;
  int *piVar14;
  int *piVar15;
  int *piVar16;
  float10 fVar17;
  float fVar18;
  float fVar20;
  float fVar21;
  undefined1 auVar19 [16];
  float fVar22;
  float local_178;
  int local_174;
  int *local_170;
  float local_16c;
  int *local_168;
  int *local_164;
  int *local_160;
  float local_15c;
  float local_158;
  undefined4 uStack_154;
  undefined1 local_150 [4];
  undefined1 auStack_14c [4];
  undefined8 uStack_148;
  int *local_140;
  float local_13c;
  float local_138;
  undefined4 uStack_134;
  int *local_130;
  float fStack_12c;
  float fStack_128;
  int *piStack_124;
  int *local_114;
  int *local_110;
  int *local_10c;
  char *local_108;
  float local_100;
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
  float fStack_9c;
  float fStack_98;
  undefined4 uStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  undefined4 uStack_84;
  int *piStack_80;
  float fStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int *piStack_20;
  float fStack_1c;
  float fStack_18;
  undefined4 uStack_14;

  local_168 = this;
  if ((*param_1 == 0) || ((float)param_1[1] <= 0.01)) {
    FUN_00d66430(*(uint *)((int)this + 8),*(uint *)((int)this + 0xc));
    *(undefined4 *)((int)this + 0xc) = *(undefined4 *)((int)this + 8);
    *(undefined4 *)((int)this + 0x34) = 0;
    iVar6 = FUN_006e8170();
    if (iVar6 != 0) {
      *(undefined1 *)(iVar6 + 0x275) = 0;
    }
  }
  else {
    if (*param_1 != *(int *)((int)this + 0x34)) {
      FUN_00d669b0((int)this);
    }
    iVar6 = FUN_006e8170();
    if ((iVar6 == 0) ||
       (((*(char *)(iVar6 + 0x515) != '\0' && (*(char *)(iVar6 + 0x270) == '\0')) ||
        (uVar7 = FUN_006eaf90(iVar6), (char)uVar7 != '\0')))) {
LAB_00d6789e:
      FUN_00d669b0((int)this);
      return;
    }
    iVar8 = FUN_005361d0(iVar6);
    if (iVar8 != 0) {
      uVar7 = FUN_006eb000(iVar6);
      if ((char)uVar7 == '\0') {
        pauVar1 = (undefined1 (*) [16])(iVar8 + 0x200);
        local_f0 = *(float *)*pauVar1;
        fStack_ec = *(float *)(iVar8 + 0x204);
        fStack_e8 = *(float *)(iVar8 + 0x208);
        fStack_e4 = *(float *)(iVar8 + 0x20c);
        fVar18 = local_f0 - *(float *)(iVar8 + 0x60);
        fVar20 = fStack_ec - *(float *)(iVar8 + 100);
        fVar21 = fStack_e8 - *(float *)(iVar8 + 0x68);
        auVar19._0_4_ = fVar21 * fVar21 + fVar20 * fVar20 + fVar18 * fVar18;
        auVar19._4_4_ = auVar19._0_4_;
        auVar19._8_4_ = auVar19._0_4_;
        auVar19._12_4_ = auVar19._0_4_;
        auVar19 = sqrtps(auVar19,auVar19);
        if ((DAT_011ede58 != (void *)0x0) && (local_150 = auVar19._0_4_, (float)local_150 < 20.0)) {
          uStack_148._0_4_ = SUB124(*(undefined1 (*) [12])*pauVar1,8);
          fVar18 = (float)uStack_148;
          _local_150 = *pauVar1;
          local_e0 = local_f0;
          fStack_dc = fStack_ec;
          fStack_d8 = fStack_e8;
          fStack_d4 = fStack_e4;
          this_00 = FUN_00c7e010(DAT_011ede58,local_f0,fVar18);
          if ((this_00 != (void *)0x0) &&
             (local_170 = *(int **)((int)this_00 + 0x230), local_170 != (int *)0x0)) {
            FUN_00adfaa0(this_00,&local_e0,(float *)local_150);
            local_160 = (int *)0xbf800000;
            local_15c = -1.0;
            local_158 = 0.0;
            uVar7 = FUN_00adfb00(this_00,(float *)local_150,(float *)&local_160);
            if (((char)uVar7 != '\0') &&
               (((int)local_158 < -1 ||
                ((sVar5 = FUN_00aa1060(local_170,(float *)&local_160), sVar5 != 0 &&
                 (bVar4 = FUN_006c1f00((int)this_00), !bVar4)))))) goto LAB_00d6789e;
          }
        }
      }
      *(undefined1 *)(iVar6 + 0x275) = 1;
      *(int *)((int)this + 0x34) = *param_1;
      local_90 = *(float *)(iVar8 + 0x60);
      fStack_8c = *(float *)(iVar8 + 100);
      fStack_88 = *(float *)(iVar8 + 0x68);
      uStack_84 = *(undefined4 *)(iVar8 + 0x6c);
      fVar22 = 1.0 / DAT_01192cc0;
      fVar18 = local_90 * fVar22;
      fVar20 = local_90 * fVar22;
      fVar21 = local_90 * fVar22;
      fVar22 = local_90 * fVar22;
      local_e0 = (float)(-(uint)(fVar18 < 0.0) & 0x4b000000 | ~-(uint)(fVar18 < 0.0) & 0xcb000000);
      fStack_dc = (float)(-(uint)(fVar20 < 0.0) & 0x4b000000 | ~-(uint)(fVar20 < 0.0) & 0xcb000000);
      fStack_d8 = (float)(-(uint)(fVar21 < 0.0) & 0x4b000000 | ~-(uint)(fVar21 < 0.0) & 0xcb000000);
      fStack_d4 = (float)(-(uint)(fVar22 < 0.0) & 0x4b000000 | ~-(uint)(fVar22 < 0.0) & 0xcb000000);
      local_e0 = (fVar18 - local_e0) + local_e0;
      fStack_dc = (fVar20 - fStack_dc) + fStack_dc;
      fStack_d8 = (fVar21 - fStack_d8) + fStack_d8;
      fStack_d4 = (fVar22 - fStack_d4) + fStack_d4;
      local_e0 = local_e0 - (float)(-(uint)(fVar18 < local_e0) & 0x3f800000);
      fStack_dc = fStack_dc - (float)(-(uint)(fVar20 < fStack_dc) & 0x3f800000);
      fStack_d8 = fStack_d8 - (float)(-(uint)(fVar21 < fStack_d8) & 0x3f800000);
      fStack_d4 = fStack_d4 - (float)(-(uint)(fVar22 < fStack_d4) & 0x3f800000);
      fVar22 = 1.0 / DAT_01192cc8;
      _local_150 = ZEXT812(0);
      uStack_148._4_4_ = 0;
      fVar18 = fStack_8c * fVar22;
      fVar20 = fStack_8c * fVar22;
      fVar21 = fStack_8c * fVar22;
      fVar22 = fStack_8c * fVar22;
      local_f0 = (float)(-(uint)(fVar18 < 0.0) & 0x4b000000 | ~-(uint)(fVar18 < 0.0) & 0xcb000000);
      fStack_ec = (float)(-(uint)(fVar20 < 0.0) & 0x4b000000 | ~-(uint)(fVar20 < 0.0) & 0xcb000000);
      fStack_e8 = (float)(-(uint)(fVar21 < 0.0) & 0x4b000000 | ~-(uint)(fVar21 < 0.0) & 0xcb000000);
      fStack_e4 = (float)(-(uint)(fVar22 < 0.0) & 0x4b000000 | ~-(uint)(fVar22 < 0.0) & 0xcb000000);
      local_f0 = (fVar18 - local_f0) + local_f0;
      fStack_ec = (fVar20 - fStack_ec) + fStack_ec;
      fStack_e8 = (fVar21 - fStack_e8) + fStack_e8;
      fStack_e4 = (fVar22 - fStack_e4) + fStack_e4;
      local_f0 = local_f0 - (float)(-(uint)(fVar18 < local_f0) & 0x3f800000);
      fStack_ec = fStack_ec - (float)(-(uint)(fVar20 < fStack_ec) & 0x3f800000);
      fStack_e8 = fStack_e8 - (float)(-(uint)(fVar21 < fStack_e8) & 0x3f800000);
      fStack_e4 = fStack_e4 - (float)(-(uint)(fVar22 < fStack_e4) & 0x3f800000);
      fVar22 = 1.0 / DAT_01192cc4;
      fVar18 = fStack_88 * fVar22;
      fVar20 = fStack_88 * fVar22;
      fVar21 = fStack_88 * fVar22;
      fVar22 = fStack_88 * fVar22;
      local_d0 = (float)(-(uint)(fVar18 < 0.0) & 0x4b000000 | ~-(uint)(fVar18 < 0.0) & 0xcb000000);
      fStack_cc = (float)(-(uint)(fVar20 < 0.0) & 0x4b000000 | ~-(uint)(fVar20 < 0.0) & 0xcb000000);
      fStack_c8 = (float)(-(uint)(fVar21 < 0.0) & 0x4b000000 | ~-(uint)(fVar21 < 0.0) & 0xcb000000);
      fStack_c4 = (float)(-(uint)(fVar22 < 0.0) & 0x4b000000 | ~-(uint)(fVar22 < 0.0) & 0xcb000000);
      local_d0 = (fVar18 - local_d0) + local_d0;
      fStack_cc = (fVar20 - fStack_cc) + fStack_cc;
      fStack_c8 = (fVar21 - fStack_c8) + fStack_c8;
      fStack_c4 = (fVar22 - fStack_c4) + fStack_c4;
      local_d0 = local_d0 - (float)(-(uint)(fVar18 < local_d0) & 0x3f800000);
      fStack_cc = fStack_cc - (float)(-(uint)(fVar20 < fStack_cc) & 0x3f800000);
      fStack_c8 = fStack_c8 - (float)(-(uint)(fVar21 < fStack_c8) & 0x3f800000);
      fStack_c4 = fStack_c4 - (float)(-(uint)(fVar22 < fStack_c4) & 0x3f800000);
      if (((*(int *)((int)this + 8) != *(int *)((int)this + 0xc)) || (0 < (int)local_e0)) ||
         (0 < (int)local_d0)) {
        local_138 = (float)(int)local_d0;
        local_13c = (float)(int)local_f0;
        piVar14 = (int *)(int)local_e0;
        local_140 = piVar14;
        local_130 = piVar14;
        fStack_12c = local_13c;
        fStack_128 = local_138;
        local_b8[0] = (void *)FUN_0095fd90(iVar8);
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
            local_178 = -NAN;
            local_160 = piVar14;
            do {
              local_100 = local_a4 * DAT_01192cc0;
              local_60 = local_b0 * DAT_01192cc0;
              fVar20 = (float)((int)local_178 + (int)local_f0);
              puStack_f8 = (undefined4 *)(local_a8 * DAT_01192cc4);
              puStack_fc = (undefined4 *)((float)(int)fVar20 * DAT_01192cc8);
              fStack_58 = local_ac * DAT_01192cc4;
              uStack_148._0_4_ = fStack_58;
              fStack_5c = (float)((int)fVar20 + 1) * DAT_01192cc8;
              uStack_148._4_4_ = local_60;
              auStack_14c = (undefined1  [4])fStack_5c;
              local_150 = (undefined1  [4])local_60;
              local_15c = fVar20;
              pcStack_f4 = (char *)local_100;
              local_70 = local_100;
              fStack_6c = (float)puStack_fc;
              fStack_68 = (float)puStack_f8;
              fStack_64 = local_100;
              fStack_54 = local_60;
              uVar7 = FUN_0068ca50(local_b8[0],&local_70);
              piVar16 = local_168;
              if ((char)uVar7 != '\0') {
                ppiVar9 = &local_130;
                if ((int)piVar14 <= (int)local_130) {
                  ppiVar9 = &local_160;
                }
                local_130 = *ppiVar9;
                pfVar10 = &fStack_12c;
                if ((int)fVar20 <= (int)fStack_12c) {
                  pfVar10 = &local_15c;
                }
                fStack_12c = *pfVar10;
                pfVar10 = &fStack_128;
                if ((int)fVar18 <= (int)fStack_128) {
                  pfVar10 = &local_158;
                }
                fStack_128 = *pfVar10;
                ppiVar9 = &local_140;
                if ((int)local_140 <= (int)piVar14) {
                  ppiVar9 = &local_160;
                }
                local_140 = *ppiVar9;
                pfVar10 = &local_13c;
                if ((int)local_13c <= (int)fVar20) {
                  pfVar10 = &local_15c;
                }
                local_13c = *pfVar10;
                pfVar10 = &local_138;
                if ((int)local_138 <= (int)fVar18) {
                  pfVar10 = &local_158;
                }
                local_138 = *pfVar10;
              }
              local_178 = (float)((int)local_178 + 1);
            } while ((int)local_178 < 2);
            local_16c = (float)((int)local_16c + -1);
            piVar14 = local_164;
          } while (local_16c != 0.0);
          local_174 = local_174 + 1;
        } while (local_174 < 2);
        piVar14 = local_168 + 2;
        if (((((local_168[2] == local_168[3]) || (local_130 != (int *)local_168[6])) ||
             ((fStack_12c != (float)local_168[7] ||
              ((fStack_128 != (float)local_168[8] || (local_140 != (int *)local_168[9])))))) ||
            (local_13c != (float)local_168[10])) || (local_138 != (float)local_168[0xb])) {
          local_168[6] = (int)local_130;
          local_168[7] = (int)fStack_12c;
          local_168[8] = (int)fStack_128;
          local_168[9] = (int)local_140;
          local_168[10] = (int)local_13c;
          local_168[0xb] = (int)local_138;
          fVar20 = ((float)(int)local_d0 + 0.5) * DAT_01192cc4;
          fVar18 = ((float)(int)local_e0 + 0.5) * DAT_01192cc0;
          fVar21 = ((float)(int)local_f0 + 0.5) * DAT_01192cc8;
          auStack_14c = (undefined1  [4])fStack_8c;
          local_150 = (undefined1  [4])local_90;
          uStack_148._0_4_ = fStack_88;
          uStack_148._4_4_ = uStack_84;
          local_16c = fStack_8c;
          if (DAT_011edbc4 != (void *)0x0) {
            auStack_14c = (undefined1  [4])fVar21;
            local_150 = (undefined1  [4])fVar18;
            uStack_148._0_4_ = fVar20;
            uStack_148._4_4_ = fVar18;
            local_100 = fVar18;
            puStack_fc = (undefined4 *)fVar21;
            puStack_f8 = (undefined4 *)fVar20;
            pcStack_f4 = (char *)fVar18;
            fVar17 = FUN_00c60c20(DAT_011edbc4,fVar18,fVar20,0,'\x01','\x01',(undefined1 *)0x0,
                                  (undefined1 *)0x0);
            local_16c = (float)fVar17;
          }
          if ((uint)((piVar16[3] - *piVar14) / 0x14) < 0xc) {
            FUN_00d66a40(piVar14,0xc);
          }
          fVar18 = (float)(int)local_d0;
          fVar20 = (float)(int)local_f0;
          piVar14 = (int *)(int)local_e0;
          local_114 = (int *)0x0;
          local_110 = (int *)0x0;
          local_10c = (int *)0x0;
          local_100 = 0.0;
          puStack_fc = (undefined4 *)0x0;
          puStack_f8 = (undefined4 *)0x0;
          local_108 = "Scratch/Weather/PrecipitationManager";
          pcStack_f4 = "Scratch/Weather/PrecipitationManager";
          local_164 = (int *)FUN_00d65940(local_168,(int)piVar14,(int)fVar20,(int)fVar18);
          if (local_164 == (int *)0x0) {
            local_160 = piVar14;
            local_15c = fVar20;
            local_158 = fVar18;
            FUN_00c4fe90(&local_100,&local_160);
          }
          else {
            FUN_0082d760(&local_114,(int *)local_b8,(int *)&local_164);
          }
          local_178 = fStack_12c;
          if ((int)fStack_12c <= (int)local_13c) {
            do {
              if ((local_16c <= ((float)(int)local_178 + 1.0) * DAT_01192cc8) &&
                 (piVar14 = local_130, (int)local_130 <= (int)local_140)) {
                do {
                  fVar18 = fStack_128;
                  if ((int)fStack_128 <= (int)local_138) {
                    do {
                      piVar16 = local_110;
                      if (((piVar14 != (int *)(int)local_e0) || (local_178 != (float)(int)local_f0))
                         || (puVar12 = puStack_fc, fVar18 != (float)(int)local_d0)) {
                        for (piVar15 = (int *)local_168[2]; piVar15 != (int *)local_168[3];
                            piVar15 = piVar15 + 5) {
                          if (((*piVar15 != 0) && ((int *)piVar15[1] == piVar14)) &&
                             (((float)piVar15[2] == local_178 && ((float)piVar15[3] == fVar18)))) {
                            piVar15 = (int *)*piVar15;
                            goto LAB_00d6731e;
                          }
                        }
                        piVar15 = (int *)0x0;
LAB_00d6731e:
                        local_170 = piVar15;
                        if (piVar15 == (int *)0x0) {
                          local_15c = local_178;
                          local_160 = piVar14;
                          local_158 = fVar18;
                          if (puStack_fc < puStack_f8) {
                            puVar12 = puStack_fc + 3;
                            if (puStack_fc != (undefined4 *)0x0) {
                              *puStack_fc = piVar14;
                              puStack_fc[1] = local_178;
                              puStack_fc[2] = fVar18;
                            }
                          }
                          else {
                            FUN_00d700a0(&local_100,puStack_fc,&local_160);
                            piVar16 = local_110;
                            puVar12 = puStack_fc;
                          }
                        }
                        else {
                          piVar11 = (int *)FUN_0082a5e0((int)local_114,(int)local_110,
                                                        (int *)&local_170);
                          puVar12 = puStack_fc;
                          if ((piVar11 == local_110) ||
                             (piVar16 = local_110, (int)piVar15 < *piVar11)) {
                            if ((local_110 == local_10c) || (piVar11 != local_110)) {
                              FUN_00982420(&local_114,piVar11,&local_170);
                              piVar16 = local_110;
                              puVar12 = puStack_fc;
                            }
                            else {
                              piVar16 = local_110 + 1;
                              if (local_110 != (int *)0x0) {
                                *local_110 = (int)piVar15;
                              }
                            }
                          }
                        }
                      }
                      puStack_fc = puVar12;
                      local_110 = piVar16;
                      fVar18 = (float)((int)fVar18 + 1);
                    } while ((int)fVar18 <= (int)local_138);
                  }
                  piVar14 = (int *)((int)piVar14 + 1);
                } while ((int)piVar14 <= (int)local_140);
              }
              local_178 = (float)((int)local_178 + 1);
            } while ((int)local_178 <= (int)local_13c);
          }
          local_174 = 0;
          local_16c = (float)((int)local_110 - (int)local_114 >> 2);
          if ((int)local_16c < 0xc) {
            local_164 = (int *)(((int)puStack_fc - (int)local_100) / 0xc);
            local_178 = 2.8026e-44;
            piVar14 = (int *)((int)local_100 + 8);
            do {
              if ((int)local_164 <= local_174) break;
              iVar6 = *(int *)(local_168[2] + -0x14 + (int)local_178);
              piVar16 = (int *)(local_168[2] + -0x14 + (int)local_178);
              if (iVar6 == 0) {
LAB_00d674de:
                piVar15 = local_168;
                iVar6 = piVar14[-2];
                iVar8 = piVar14[-1];
                iVar13 = *piVar14;
                local_174 = local_174 + 1;
                *piVar16 = local_168[0xc];
                local_168[0xc] = local_168[0xc] + 1;
                piVar16[1] = iVar6;
                piVar16[2] = iVar8;
                piVar16[3] = iVar13;
                local_130 = (int *)(((float)iVar6 + 0.5) * DAT_01192cc0);
                fStack_128 = ((float)iVar13 + 0.5) * DAT_01192cc4;
                fStack_12c = (float)iVar8 * DAT_01192cc8;
                piVar14 = piVar14 + 3;
                uStack_148._0_4_ = fStack_128;
                uStack_148._4_4_ = local_130;
                auStack_14c = (undefined1  [4])fStack_12c;
                local_150 = (undefined1  [4])local_130;
                local_170 = piVar14;
                piStack_124 = local_130;
                if (piVar16[4] == 0) {
                  puVar12 = (undefined4 *)
                            FUN_004e4500(0x50,
                                         "Renderer/Weather/PrecipitationManager/PrecipitationInstance"
                                         ,0);
                  if (puVar12 == (undefined4 *)0x0) {
                    puVar12 = (undefined4 *)0x0;
                  }
                  else {
                    puVar12[1] = 0;
                    *puVar12 = &PTR_FUN_0108afbc;
                    puVar12[2] = 0;
                    puVar12[3] = 0;
                    puVar12[4] = 0;
                    puVar12[5] = "Misc/PrecipitationManager/PrecipitationInstance";
                    puVar12[6] = 0;
                    puVar12[0x10] = 0;
                    *(undefined1 *)(puVar12 + 0x11) = 0;
                  }
                  puVar2 = (undefined4 *)piVar16[4];
                  if (puVar12 != puVar2) {
                    if (puVar12 != (undefined4 *)0x0) {
                      puVar12[1] = puVar12[1] + 1;
                    }
                    piVar16[4] = (int)puVar12;
                    if ((puVar2 != (undefined4 *)0x0) &&
                       (iVar6 = puVar2[1], puVar2[1] = iVar6 + -1, iVar6 + -1 == 0)) {
                      puVar2[1] = 1;
                      (**(code **)*puVar2)(1);
                    }
                  }
                  Seasons_CreatePrecipitationCellModels
                            ((void *)piVar16[4],piVar15,piVar15[0xd],1,0,*piVar16);
                  iVar13 = extraout_EDX;
                }
                iVar6 = piVar16[4];
                auVar3._4_4_ = -(uint)(fStack_12c == *(float *)(iVar6 + 0x34));
                auVar3._0_4_ = -(uint)((float)local_130 == *(float *)(iVar6 + 0x30));
                auVar3._8_4_ = -(uint)(fStack_128 == *(float *)(iVar6 + 0x38));
                auVar3._12_4_ = -(uint)((float)piStack_124 == *(float *)(iVar6 + 0x3c));
                uVar7 = movmskps(iVar13,auVar3);
                if (((byte)uVar7 & 7) != 7) {
                  *(int **)(iVar6 + 0x30) = local_130;
                  *(float *)(iVar6 + 0x34) = fStack_12c;
                  *(float *)(iVar6 + 0x38) = fStack_128;
                  *(int **)(iVar6 + 0x3c) = piStack_124;
                  if ((uint)(*(int *)(iVar6 + 0xc) - *(int *)(iVar6 + 8) >> 2) < 2) {
                    if (((*(int *)(iVar6 + 0xc) - *(int *)(iVar6 + 8) & 0xfffffffcU) == 4) &&
                       (piVar15 = (int *)**(int **)(iVar6 + 8), piVar14 = local_170,
                       piVar15 != (int *)0x0)) {
                      (**(code **)*piVar15)();
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
                      uStack_28 = 0x3f800000;
                      uStack_24 = 0;
                      local_160 = *(int **)(iVar6 + 0x30);
                      local_15c = *(float *)(iVar6 + 0x34);
                      local_158 = *(float *)(iVar6 + 0x38);
                      uStack_134 = *(undefined4 *)(iVar6 + 0x3c);
                      local_f0 = 1.0;
                      uStack_50 = 0x3f800000;
                      uStack_4c = 0;
                      uStack_48 = 0;
                      uStack_44 = 0;
                      fStack_dc = 1.0;
                      uStack_154 = 0x3f800000;
                      uStack_40 = 0;
                      uStack_3c = 0x3f800000;
                      uStack_38 = 0;
                      uStack_34 = 0;
                      uStack_14 = 0x3f800000;
                      local_140 = local_160;
                      local_13c = local_15c;
                      local_138 = local_158;
                      piStack_a0 = local_160;
                      fStack_9c = local_15c;
                      fStack_98 = local_158;
                      uStack_94 = uStack_134;
                      piStack_80 = local_160;
                      fStack_7c = local_15c;
                      fStack_78 = local_158;
                      uStack_74 = uStack_134;
                      piStack_20 = local_160;
                      fStack_1c = local_15c;
                      fStack_18 = local_158;
                      (**(code **)(*piVar15 + 0x20))(&uStack_50);
                      (**(code **)(*piVar15 + 4))();
                      piVar14 = local_170;
                    }
                  }
                  else {
                    FUN_00d65ad0(iVar6);
                  }
                }
                FUN_00d659e0(piVar16[4]);
                FUN_0082d760(&local_114,(int *)local_b8,piVar16);
                local_16c = (float)((int)local_16c + 1);
              }
              else {
                piVar15 = (int *)FUN_0082a5e0((int)local_114,(int)local_110,piVar16);
                if (((piVar15 == local_110) || (iVar6 < *piVar15)) || (piVar15 == piVar15 + 1))
                goto LAB_00d674de;
              }
              local_178 = (float)((int)local_178 + 0x14);
            } while ((int)local_16c < 0xc);
          }
          piVar14 = (int *)local_168[3];
          piVar16 = (int *)local_168[2];
          local_164 = piVar14;
          if (piVar16 != piVar14) {
            do {
              iVar6 = *piVar16;
              if (iVar6 != 0) {
                iVar8 = (int)local_110 - (int)local_114 >> 2;
                piVar15 = local_114;
                while (iVar13 = iVar8, 0 < iVar13) {
                  iVar8 = iVar13 >> 1;
                  piVar14 = local_164;
                  if (piVar15[iVar8] < iVar6) {
                    piVar15 = piVar15 + iVar8 + 1;
                    iVar8 = iVar13 + (-1 - iVar8);
                  }
                }
                if (((piVar15 == local_110) || (iVar6 < *piVar15)) || (piVar15 == piVar15 + 1)) {
                  FUN_00d65990(piVar16[4]);
                  piVar16[1] = 0;
                  piVar16[2] = 0;
                  piVar16[3] = 0;
                }
              }
              piVar16 = piVar16 + 5;
            } while (piVar16 != piVar14);
          }
          iVar8 = local_168[3];
          for (iVar6 = local_168[2]; iVar6 != iVar8; iVar6 = iVar6 + 0x14) {
            iVar13 = *(int *)(iVar6 + 0x10);
            if ((iVar13 != 0) &&
               (*(float *)(iVar13 + 0x18) = *(float *)(iVar13 + 0x18) + param_4,
               1 < (uint)(*(int *)(iVar13 + 0xc) - *(int *)(iVar13 + 8) >> 2))) {
              FUN_00d65ad0(iVar13);
            }
          }
          if (local_100 != 0.0) {
            FUN_004e44e0((int)local_100);
          }
          if (local_114 != (int *)0x0) {
            FUN_004e44e0((int)local_114);
            return;
          }
        }
        else {
          iVar6 = *piVar14;
          iVar8 = local_168[3];
          if (iVar6 != iVar8) {
            local_16c = 0.0;
            do {
              if (*(void **)(iVar6 + 0x10) != (void *)0x0) {
                FUN_00d662f0(*(void **)(iVar6 + 0x10),param_1,param_4);
              }
              iVar6 = iVar6 + 0x14;
            } while (iVar6 != iVar8);
            return;
          }
        }
      }
    }
  }
  return;
}


