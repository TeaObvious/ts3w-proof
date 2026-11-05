/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Nine physical stack words, cdecl plainRET, inferred void. Catalog type/flag resolution and axis/diagonal partner selection precede room coverage; first native catalog match cannot define CLR duplicate rejection. Normal decomposition order is CC5A10 then CC7320 with stored weight2 and flag0 then CC6FB0. Rectangle construction precedes deferred CC4C10 walls; optional B96BA0 is last. AAFE30/AB0C60 provide threshold: FUCOMIP/LAHF/TEST44/JP replaces ordered exact zero with binary32half, preserves unordered NaN. COMISS ratio,threshold plus JNC sends ordered >= to diagonal; unordered follows less edge if axis edges exist. Flat path emits0462AC25, CBD4A0,0462AC2E; complete floor paint data/caller semantics remain unexpanded. Stored C aliases and all geometry/greedy/trim/sort/balcony/failure math are not fully accepted from this caller; full owned pair is supplied for inspection, not full semantic parity. */

void __cdecl
FUN_00cc7ab0(int *param_1,int param_2,uint *param_3,void *param_4,void *param_5,void *param_6,
            void *param_7,undefined4 param_8,char param_9)

{
  ushort uVar1;
  undefined4 *puVar2;
  int iVar3;
  float fVar4;
  void *this;
  ushort *puVar5;
  uint *puVar6;
  uint uVar7;
  int *piVar8;
  undefined4 uVar9;
  undefined4 *puVar10;
  int *piVar11;
  char *pcVar12;
  int **ppiVar13;
  int **ppiVar14;
  int iVar15;
  int iVar16;
  ushort *puVar17;
  int *piVar18;
  int iVar19;
  int *piVar20;
  float10 fVar21;
  float fVar22;
  double dVar23;
  int iVar24;
  int *local_220;
  uint local_21c;
  int *local_218;
  char local_211;
  int *local_210;
  int *local_20c;
  int *local_208;
  int *local_204;
  int local_200;
  int *local_1fc;
  int *local_1f8;
  float local_1f4;
  int *local_1f0;
  int *local_1ec;
  int *local_1e8;
  int *local_1e4;
  int local_1e0;
  int *local_1dc;
  float local_1d8;
  int local_1d4;
  undefined4 local_1d0;
  undefined4 local_1cc;
  undefined4 local_1c8;
  undefined4 local_1c4;
  int local_1c0;
  int *local_1bc;
  int *local_1b8;
  int *local_1b4;
  char *local_1b0;
  int *local_1ac;
  int *local_1a8;
  int local_1a4;
  int *local_1a0;
  int *local_19c;
  int local_198;
  uint local_194;
  uint local_190;
  uint local_18c;
  uint local_188;
  uint local_184;
  uint local_180;
  uint local_17c;
  uint local_178;
  int local_174;
  void *local_170;
  int local_16c;
  undefined4 local_166;
  undefined2 local_162;
  int *local_160;
  int *local_15c;
  int local_158;
  undefined4 local_152;
  undefined2 local_14e;
  int *local_14c;
  int *local_148;
  int local_144;
  ushort *local_140;
  ushort *local_13c;
  undefined4 local_138;
  char *local_134;
  void *local_12c;
  uint *local_128;
  uint *local_124;
  char *local_120;
  undefined1 local_11c [4];
  undefined4 *local_118;
  uint local_114;
  undefined4 local_110;
  float local_10c;
  undefined4 local_108;
  undefined4 local_104;
  char *local_100;
  int local_fc;
  float local_f8;
  float local_f4;
  undefined4 local_f0;
  int *local_ec;
  int *local_e8;
  int local_e4;
  int *local_e0;
  int *local_dc;
  int local_d8;
  int local_d4;
  uint local_d0;
  int local_cc;
  int local_c8;
  uint local_c4;
  uint local_c0;
  uint local_bc;
  uint local_b8;
  uint local_b4;
  uint local_b0;
  uint local_ac;
  undefined1 local_a8;
  undefined1 local_a7;
  int local_a4;
  uint local_a0;
  int local_9c;
  int local_98;
  undefined1 auStack_88 [8];
  uint local_80;
  undefined1 local_7c;
  undefined1 local_7b;
  void *local_78 [11];
  int local_4c;
  int *local_48;
  undefined4 *local_44;
  undefined4 *local_28;
  int local_10;
  undefined4 uStack_8;
  int local_4;
  
  this = DAT_011ee034;
  local_170 = (void *)param_1[0xab];
  local_218 = (int *)param_1[0xa6];
  local_211 = '\0';
  local_1d0 = 0;
  local_1cc = 0;
  local_1c8 = 0;
  local_1c4 = 0;
  local_220 = ProductCatalog_LookupRoofStyle(DAT_011ee034,param_3,1);
  if (local_220 == (int *)0x0) {
    return;
  }
  local_180 = param_3[1];
  local_184 = *param_3;
  local_178 = param_3[3];
  local_17c = param_3[2];
  local_190 = param_3[1];
  local_194 = *param_3;
  local_188 = param_3[3];
  local_18c = param_3[2];
  local_20c = local_220;
  uVar7 = RoofProduct_ReadDiagonalFlag(local_220);
  if ((char)uVar7 == '\0') {
    iVar16 = local_220[0x22];
    iVar15 = iVar16;
    switch(iVar16) {
    case 1:
      iVar15 = 10;
      break;
    case 2:
      iVar15 = 0xb;
      break;
    case 3:
      iVar15 = 0xc;
      break;
    case 4:
      iVar15 = 0x11;
      break;
    case 5:
      iVar15 = 0xd;
      break;
    case 6:
      iVar15 = 0xe;
      break;
    case 0x12:
    case 0x13:
      iVar15 = 0x17;
      break;
    case 0x14:
      iVar15 = 0x19;
      break;
    case 0x15:
      iVar15 = 0x1a;
      break;
    case 0x1b:
      iVar15 = 0x1c;
    }
    if (iVar15 != iVar16) {
      local_1f4 = (float)FUN_00c8bc80((int)this);
      uVar7 = 0;
      if (local_1f4 != 0.0) {
        do {
          piVar8 = (int *)FUN_00c8bca0(this,uVar7);
          if ((piVar8 != (int *)0x0) && (piVar8[0x22] == iVar15)) {
            local_194 = piVar8[2];
            local_190 = piVar8[3];
            local_18c = piVar8[4];
            local_188 = piVar8[5];
            local_20c = piVar8;
            break;
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < (uint)local_1f4);
      }
    }
  }
  else {
    iVar16 = local_220[0x22];
    iVar15 = iVar16;
    switch(iVar16) {
    case 10:
      iVar15 = 1;
      break;
    case 0xb:
      iVar15 = 2;
      break;
    case 0xc:
      iVar15 = 3;
      break;
    case 0xd:
      iVar15 = 5;
      break;
    case 0xe:
      iVar15 = 6;
      break;
    case 0x11:
      iVar15 = 4;
      break;
    case 0x17:
      iVar15 = 0x12;
      break;
    case 0x18:
      iVar15 = 0x13;
      break;
    case 0x19:
      iVar15 = 0x14;
      break;
    case 0x1a:
      iVar15 = 0x15;
      break;
    case 0x1c:
      iVar15 = 0x1b;
    }
    if (iVar15 != iVar16) {
      local_1f4 = (float)FUN_00c8bc80((int)this);
      uVar7 = 0;
      if (local_1f4 != 0.0) {
        do {
          piVar8 = (int *)FUN_00c8bca0(this,uVar7);
          if ((piVar8 != (int *)0x0) && (piVar8[0x22] == iVar15)) {
            local_184 = piVar8[2];
            local_180 = piVar8[3];
            local_17c = piVar8[4];
            local_178 = piVar8[5];
            local_220 = piVar8;
            break;
          }
          uVar7 = uVar7 + 1;
        } while (uVar7 < (uint)local_1f4);
      }
    }
  }
  iVar16 = local_220[0x22];
  local_174 = local_20c[0x22];
  local_1d4 = iVar16;
  uVar9 = FUN_00c02b50(iVar16);
  if ((char)uVar9 == '\0') {
    if (iVar16 != 0x10) goto LAB_00cc7d7c;
    puVar10 = (undefined4 *)FUN_00c8b450();
    local_211 = '\x01';
  }
  else {
    puVar10 = (undefined4 *)FUN_00c8b440();
  }
  local_1d0 = *puVar10;
  local_1cc = puVar10[1];
  local_1c8 = puVar10[2];
  local_1c4 = puVar10[3];
LAB_00cc7d7c:
  local_140 = (ushort *)0x0;
  local_13c = (ushort *)0x0;
  local_138 = 0;
  local_134 = "Lot/RoofManager/DoAutoRoof/roomIDSet";
  FUN_00b47120(local_218,param_2 - 1,1,&local_140,'\0');
  FUN_00cc7250(local_78,param_1[0x5d],param_1[0x5e]);
  puVar5 = local_13c;
  puVar17 = local_140;
  fVar21 = FUN_00b94550((int)local_170);
  local_1f4 = (float)fVar21;
  for (; puVar17 != puVar5; puVar17 = puVar17 + 1) {
    uVar1 = *puVar17;
    uVar7 = FUN_00cbc670(param_1,(uint)uVar1);
    if (((char)uVar7 == '\0') && (uVar7 = FUN_00b48cf0(local_218,1,uVar1), (char)uVar7 == '\0')) {
      FUN_00cbfb50(local_78,param_1,(uint)uVar1,param_4);
    }
  }
  if (local_211 == '\0') {
    pcVar12 = FUN_00aafe30();
    fVar21 = FUN_00ab0c60(pcVar12);
    local_218 = (int *)(float)fVar21;
    if (fVar21 == (float10)0) {
      local_218 = (int *)0x3f000000;
    }
    local_220 = (int *)0x0;
    local_20c = (int *)0x0;
    FUN_00cbf280(local_78,(int *)&local_220,(int *)&local_20c);
    iVar16 = (int)local_20c + (int)local_220;
    if (iVar16 == 0) {
      fVar22 = 0.0;
    }
    else {
      fVar22 = (float)(int)local_220;
      if ((int)local_220 < 0) {
        fVar22 = fVar22 + 4.2949673e+09;
      }
      fVar4 = (float)iVar16;
      if (iVar16 < 0) {
        fVar4 = fVar4 + 4.2949673e+09;
      }
      fVar22 = fVar22 / fVar4;
      local_1d8 = fVar22;
      local_1c0 = iVar16;
    }
    if ((local_220 == (int *)0x0) || ((fVar22 < (float)local_218 && (local_20c != (int *)0x0)))) {
      FUN_00cc6d00(local_78);
    }
    else {
      FUN_00cc6da0(local_78,param_1,0);
      FUN_00cc6da0(local_78,param_1,1);
    }
    FUN_00cc5a10((int)local_78);
    FUN_00cc7320(local_78,0x40000000,'\0');
    FUN_00cc6fb0((int)local_78);
    local_fc = param_1[0x5d];
    local_1c0 = param_1[0x5e];
    local_1bc = (int *)0x0;
    local_1b8 = (int *)0x0;
    local_1b4 = (int *)0x0;
    local_1b0 = "Lot/RoofManager/roofWallList";
    local_12c = (void *)0x0;
    local_128 = (uint *)0x0;
    local_124 = (uint *)0x0;
    local_120 = "Lot/RoofManager/roofsAdded";
    local_220 = local_48;
    if (local_48 != &local_4c) {
      do {
        iVar24 = local_1d4;
        iVar16 = local_220[6];
        iVar15 = local_220[4];
        iVar19 = local_220[7];
        iVar3 = local_220[5];
        local_210 = (int *)(iVar19 - iVar3);
        puVar6 = local_128;
        if (0.1 <= ABS((float)(iVar16 - iVar15) * (float)(int)local_210)) {
          if (*(char *)((int)local_220 + 0x29) == '\0') {
            local_1ac = (int *)(float)iVar15;
            local_1a8 = (int *)(float)iVar3;
            local_1a4 = param_2;
            local_1a0 = (int *)(float)iVar16;
            local_19c = (int *)(float)iVar19;
            local_198 = param_2;
            piVar8 = (int *)((float)local_fc - 1.0);
            if ((float)local_1ac < 1.0) {
              local_1ac = (int *)1.0;
            }
            if ((float)piVar8 < (float)local_1ac) {
              local_1ac = piVar8;
            }
            piVar11 = (int *)((float)local_1c0 - 1.0);
            if ((float)local_1a8 < 1.0) {
              local_1a8 = (int *)1.0;
            }
            if ((float)piVar11 < (float)local_1a8) {
              local_1a8 = piVar11;
            }
            if ((float)local_1a0 < 1.0) {
              local_1a0 = (int *)1.0;
            }
            if ((float)piVar8 < (float)local_1a0) {
              local_1a0 = piVar8;
            }
            if ((float)local_19c < 1.0) {
              local_19c = (int *)1.0;
            }
            if ((float)piVar11 < (float)local_19c) {
              local_19c = piVar11;
            }
            fVar21 = FUN_00c02c60(local_1d4);
            dVar23 = ceil((double)fVar21);
            local_210 = (int *)(float)dVar23;
            local_1fc = (int *)((float)param_1[0x5d] - (float)local_210);
            local_1ec = (int *)((float)param_1[0x5e] - (float)local_210);
            if ((float)local_1ac < (float)local_210) {
              local_1ac = local_210;
            }
            if ((float)local_1fc < (float)local_1ac) {
              local_1ac = local_1fc;
            }
            if ((float)local_1a8 < (float)local_210) {
              local_1a8 = local_210;
            }
            if ((float)local_1ec < (float)local_1a8) {
              local_1a8 = local_1ec;
            }
            if ((float)local_1a0 < (float)local_210) {
              local_1a0 = local_210;
            }
            if ((float)local_1fc < (float)local_1a0) {
              local_1a0 = local_1fc;
            }
            if ((float)local_19c < (float)local_210) {
              local_19c = local_210;
            }
            if ((float)local_1ec < (float)local_19c) {
              local_19c = local_1ec;
            }
            if (param_5 != (void *)0x0) {
              FUN_00d2a0c0(param_5,param_1,(float *)&local_1ac,(float *)&local_1a0,&local_184,
                           &local_21c,local_1f4,'\0');
            }
            uVar7 = FUN_00c02f20(iVar24);
            piVar8 = local_1b8;
            if ((char)uVar7 != '\0') {
              local_160 = local_1a0;
              local_15c = local_19c;
              local_14c = local_1ac;
              local_158 = param_2;
              local_148 = local_1a8;
              local_144 = param_2;
              FUN_00784da0(&local_152,(float *)&local_14c);
              FUN_00784da0((void *)((int)&local_152 + 3),(float *)&local_160);
              local_4 = CONCAT22(local_4._2_2_,local_14e);
              local_a4 = iVar24;
              local_a0 = local_21c;
              local_9c = local_152;
              local_98 = local_4;
              if (local_1b8 < local_1b4) {
                piVar8 = local_1b8 + 4;
                if (local_1b8 != (int *)0x0) {
                  *local_1b8 = iVar24;
                  local_1b8[1] = local_21c;
                  local_1b8[2] = local_152;
                  local_1b8[3] = local_4;
                }
              }
              else {
                FUN_00cca0b0(&local_1bc,local_1b8,&local_a4);
                piVar8 = local_1b8;
              }
            }
            local_1b8 = piVar8;
          }
          else {
            local_1f0 = (int *)((iVar3 + iVar15) / 2);
            iVar16 = iVar16 + -2;
            iVar19 = iVar19 + -2;
            local_1dc = (int *)((iVar16 - iVar19) / 2);
            piVar8 = (int *)((iVar15 - iVar3) / 2);
            local_1e8 = (int *)(float)(int)piVar8;
            local_1e4 = (int *)((float)(int)local_1f0 - 1.0);
            local_218 = (int *)((iVar19 + iVar16) / 2);
            local_208 = (int *)(float)(int)local_1dc;
            local_204 = (int *)((float)(int)local_218 + 1.0);
            local_1e0 = param_2;
            local_200 = param_2;
            local_1ec = piVar8;
            if (local_174 == local_1d4) {
              local_1f8 = (int *)((iVar15 - iVar19) / 2);
              piVar20 = (int *)((iVar15 + iVar19) / 2);
              piVar18 = (int *)((iVar16 - iVar3) / 2);
              piVar11 = (int *)((iVar3 + iVar16) / 2);
              local_210 = piVar20;
              local_20c = piVar18;
              local_1fc = piVar11;
              uVar7 = FUN_00c02b90(local_1d4);
              if ((char)uVar7 != '\0') {
                local_1f0 = (int *)((int)local_1f0 + -1);
                local_1f8 = (int *)((int)local_1f8 + -1);
                piVar18 = (int *)((int)piVar18 + 1);
                local_218 = (int *)((int)local_218 + 1);
                local_20c = piVar18;
              }
              ppiVar14 = &local_20c;
              if ((int)local_1f8 <= (int)piVar18) {
                ppiVar14 = &local_1f8;
              }
              ppiVar13 = &local_1dc;
              if ((int)piVar8 <= (int)local_1dc) {
                ppiVar13 = &local_1ec;
              }
              if ((int)*ppiVar14 < (int)*ppiVar13) {
                ppiVar13 = ppiVar14;
              }
              local_1e8 = (int *)(float)(int)*ppiVar13;
              ppiVar14 = &local_20c;
              if ((int)piVar18 <= (int)local_1f8) {
                ppiVar14 = &local_1f8;
              }
              ppiVar13 = &local_1dc;
              if ((int)local_1dc <= (int)piVar8) {
                ppiVar13 = &local_1ec;
              }
              if ((int)*ppiVar13 < (int)*ppiVar14) {
                ppiVar13 = ppiVar14;
              }
              local_208 = (int *)(float)(int)*ppiVar13;
              ppiVar14 = &local_1fc;
              if ((int)piVar20 <= (int)piVar11) {
                ppiVar14 = &local_210;
              }
              ppiVar13 = &local_218;
              if ((int)local_1f0 <= (int)local_218) {
                ppiVar13 = &local_1f0;
              }
              if ((int)*ppiVar14 < (int)*ppiVar13) {
                ppiVar13 = ppiVar14;
              }
              local_1e4 = (int *)(float)(int)*ppiVar13;
              ppiVar14 = &local_1fc;
              if ((int)piVar11 <= (int)piVar20) {
                ppiVar14 = &local_210;
              }
              ppiVar13 = &local_218;
              if ((int)local_218 <= (int)local_1f0) {
                ppiVar13 = &local_1f0;
              }
              if ((int)*ppiVar13 < (int)*ppiVar14) {
                ppiVar13 = ppiVar14;
              }
              local_204 = (int *)(float)(int)*ppiVar13;
            }
            iVar24 = local_174;
            fVar21 = FUN_00c02c60(local_174);
            dVar23 = ceil((double)fVar21);
            local_210 = (int *)(float)dVar23;
            local_1fc = (int *)((float)param_1[0x5d] - (float)local_210);
            local_1ec = (int *)((float)param_1[0x5e] - (float)local_210);
            if ((float)local_1e8 < (float)local_210) {
              local_1e8 = local_210;
            }
            if ((float)local_1fc < (float)local_1e8) {
              local_1e8 = local_1fc;
            }
            if ((float)local_1e4 < (float)local_210) {
              local_1e4 = local_210;
            }
            if ((float)local_1ec < (float)local_1e4) {
              local_1e4 = local_1ec;
            }
            if ((float)local_208 < (float)local_210) {
              local_208 = local_210;
            }
            if ((float)local_1fc < (float)local_208) {
              local_208 = local_1fc;
            }
            if ((float)local_204 < (float)local_210) {
              local_204 = local_210;
            }
            if ((float)local_1ec < (float)local_204) {
              local_204 = local_1ec;
            }
            local_f4 = (float)local_1e4 + (float)local_1e8;
            local_1d8 = (float)(int)ROUND(local_f4);
            local_f8 = (float)local_204 + (float)local_208;
            local_16c = (int)ROUND(local_f8);
            if (((~(byte)local_16c ^ ~local_1d8._0_1_) & 1) != 0) {
              if ((float)param_1[0x5d] <= (float)local_208) {
                if ((float)local_204 < (float)param_1[0x5e]) {
                  local_204 = (int *)((float)local_204 + 1.0);
                }
                else {
                  local_208 = (int *)((float)local_208 - 1.0);
                }
              }
              else {
                local_208 = (int *)((float)local_208 + 1.0);
              }
            }
            uVar7 = FUN_00c02b90(local_1d4);
            local_f0 = CONCAT31(local_f0._1_3_,(char)uVar7);
            uVar9 = FUN_00cbc330((float *)&local_1e8,(float *)&local_208,(char)uVar7);
            puVar6 = local_128;
            if ((char)uVar9 != '\0') goto LAB_00cc89c9;
            if (param_5 != (void *)0x0) {
              FUN_00d2a0c0(param_5,param_1,(float *)&local_1e8,(float *)&local_208,&local_194,
                           &local_21c,local_1f4,'\0');
            }
            uVar7 = FUN_00c02f20(iVar24);
            piVar8 = local_1b8;
            if ((char)uVar7 != '\0') {
              local_e0 = local_208;
              local_dc = local_204;
              local_d8 = param_2;
              local_e4 = param_2;
              local_ec = local_1e8;
              local_e8 = local_1e4;
              FUN_00784da0(&local_166,(float *)&local_ec);
              FUN_00784da0((void *)((int)&local_166 + 3),(float *)&local_e0);
              local_10 = CONCAT22(local_10._2_2_,local_162);
              local_d4 = iVar24;
              local_d0 = local_21c;
              local_cc = local_166;
              local_c8 = local_10;
              if (local_1b8 < local_1b4) {
                piVar8 = local_1b8 + 4;
                if (local_1b8 != (int *)0x0) {
                  *local_1b8 = iVar24;
                  local_1b8[1] = local_21c;
                  local_1b8[2] = local_166;
                  local_1b8[3] = local_10;
                  local_1b8 = local_1b8 + 4;
                  goto LAB_00cc88d3;
                }
              }
              else {
                FUN_00cca0b0(&local_1bc,local_1b8,&local_d4);
                piVar8 = local_1b8;
              }
            }
            local_1b8 = piVar8;
          }
LAB_00cc88d3:
          FUN_00cc0930(param_1,local_21c,iVar24);
          local_ac = local_220[9];
          local_c0 = local_220[4];
          local_bc = local_220[5];
          local_b8 = local_220[6];
          local_b4 = local_220[7];
          local_b0 = local_220[8];
          local_a8 = (undefined1)local_220[10];
          local_a7 = *(undefined1 *)((int)local_220 + 0x29);
          local_c4 = local_21c;
          local_80 = local_ac;
          local_7c = local_a8;
          local_7b = local_a7;
          if (local_128 < local_124) {
            puVar6 = local_128 + 8;
            if (local_128 != (uint *)0x0) {
              *local_128 = local_21c;
              local_128[1] = local_c0;
              local_128[5] = local_b0;
              local_128[6] = local_ac;
              local_128[2] = local_bc;
              local_128[3] = local_b8;
              local_128[4] = local_b4;
              *(undefined1 *)(local_128 + 7) = local_a8;
              *(undefined1 *)((int)local_128 + 0x1d) = local_a7;
            }
          }
          else {
            FUN_00cc6180(&local_12c,local_128,&local_c4);
            puVar6 = local_128;
          }
        }
LAB_00cc89c9:
        local_128 = puVar6;
        local_220 = FUN_004e1030(local_220);
      } while (local_220 != &local_4c);
    }
    piVar8 = local_1b8;
    local_10c = 1.0;
    local_108 = 0x40000000;
    local_100 = "UserTool/RoofPlacementHelper/newWalls";
    local_114 = 1;
    local_118 = &DAT_0114d900;
    local_110 = 0;
    local_104 = 0;
    if (local_1bc != local_1b8) {
      pcVar12 = (char *)((int)local_1bc + 10);
      do {
        local_144 = (int)*pcVar12;
        local_14c = (int *)(float)(int)pcVar12[-2];
        local_148 = (int *)(float)(int)pcVar12[-1];
        local_160 = (int *)(float)(int)pcVar12[1];
        local_158 = (int)pcVar12[3];
        local_15c = (int *)(float)(int)pcVar12[2];
        FUN_00cc4c10((int)param_1,*(uint *)(pcVar12 + -6),*(int *)(pcVar12 + -10),
                     (float *)&local_14c,(float *)&local_160,param_5,param_6,param_7,local_11c);
        piVar11 = (int *)(pcVar12 + 6);
        pcVar12 = pcVar12 + 0x10;
      } while (piVar11 != piVar8);
    }
    if (param_9 != '\0') {
      FUN_00b96ba0(local_170,param_2,(undefined4 *)0x0);
    }
    FUN_0073ebe0((int)local_118,local_114);
    local_110 = 0;
    if (1 < local_114) {
      Memory_FreeIfNonNull(local_118);
    }
    if (local_12c != (void *)0x0) {
      Memory_FreeIfNonNull(local_12c);
    }
    if (local_1bc != (int *)0x0) {
      Memory_FreeIfNonNull(local_1bc);
    }
    while (puVar10 = local_44, local_28 != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*local_28);
      puVar10 = (undefined4 *)local_28[1];
      Memory_FreeIfNonNull(local_28);
      local_28 = puVar10;
    }
    while (puVar10 != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*puVar10);
      puVar2 = (undefined4 *)puVar10[1];
      Memory_FreeIfNonNull(puVar10);
      puVar10 = puVar2;
    }
  }
  else {
    piVar8 = (int *)MessageDispatch_GetCurrent();
    piVar11 = FloorMessagePool_AcquireStorage();
    if (piVar11 == (int *)0x0) {
      piVar11 = (int *)0x0;
    }
    else {
      *piVar11 = (int)&PTR_FUN_01065f8c;
      LOCK();
      piVar11[1] = 0;
      UNLOCK();
      *piVar11 = (int)&PTR_FUN_01065f8c;
      (**(code **)(*piVar11 + 4))();
    }
    piVar11[2] = param_1[0x12];
    piVar11[3] = param_1[0x13];
    (**(code **)(*piVar8 + 0x1c))(0x462ac25,piVar11,0);
    (**(code **)(*piVar11 + 8))();
    FUN_00cbd4a0(auStack_88,param_1,(undefined1)uStack_8,&local_1e0,param_1,param_4);
    piVar8 = (int *)MessageDispatch_GetCurrent();
    piVar11 = FloorMessagePool_AcquireStorage();
    if (piVar11 == (int *)0x0) {
      piVar11 = (int *)0x0;
    }
    else {
      *piVar11 = (int)&PTR_FUN_01065f8c;
      LOCK();
      piVar11[1] = 0;
      UNLOCK();
      *piVar11 = (int)&PTR_FUN_01065f8c;
      (**(code **)(*piVar11 + 4))();
    }
    piVar11[2] = param_1[0x12];
    piVar11[3] = param_1[0x13];
    (**(code **)(*piVar8 + 0x1c))(0x462ac2e,piVar11,0,0);
    (**(code **)(*piVar11 + 8))();
    while (local_28 != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*local_28);
      puVar10 = (undefined4 *)local_28[1];
      Memory_FreeIfNonNull(local_28);
      local_28 = puVar10;
    }
    puVar10 = local_44;
    while (puVar10 != (undefined4 *)0x0) {
      FUN_008b19b0((undefined4 *)*puVar10);
      puVar2 = (undefined4 *)puVar10[1];
      Memory_FreeIfNonNull(puVar10);
      puVar10 = puVar2;
    }
  }
  if (local_78[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_78[0]);
  }
  if (local_140 != (ushort *)0x0) {
    Memory_FreeIfNonNull(local_140);
  }
  return;
}
