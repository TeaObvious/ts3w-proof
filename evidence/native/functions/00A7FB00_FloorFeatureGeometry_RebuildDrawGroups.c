/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst contract (original PC1.67; instruction-checked selected branches): Shared native render
   geometry rebuild. Scan drawn UInt64 columns and their 3x3 neighbor candidates, deduplicate cell
   identity and validate lot/level and floor mask0F. Additional B49740 exclusion, room grouping,
   cutout grouping and full AppendTileGeometry calls are native responsibilities beyond a plain quad
   mesh. Clears geometry dirty before construction and updates scene registration based on group
   presence. Do not infer exact partial-platform topology from the simplified managed projection. */

undefined4 __thiscall FloorFeatureGeometry_RebuildDrawGroups(void *this,int param_1,char param_2)

{
  uint *puVar1;
  void *pvVar2;
  void *pvVar3;
  bool bVar4;
  void *pvVar5;
  ushort uVar6;
  uint **ppuVar7;
  undefined4 uVar8;
  int *piVar9;
  undefined2 *puVar10;
  void *pvVar11;
  int *piVar12;
  void *pvVar13;
  uint uVar14;
  uint uVar15;
  int iVar16;
  uint *puVar17;
  undefined1 local_1ac [2];
  char local_1aa;
  int *local_1a8;
  int local_1a4;
  int local_1a0;
  uint local_19c;
  undefined8 local_198;
  int local_18c;
  undefined8 local_188;
  undefined1 local_17c [4];
  undefined4 *local_178;
  uint local_174;
  undefined4 local_170;
  float local_16c;
  undefined4 local_168;
  undefined4 local_164;
  undefined4 *local_160;
  undefined1 local_15c [4];
  undefined4 *local_158;
  uint local_154;
  int local_150;
  float local_14c;
  undefined4 local_148;
  undefined4 local_144;
  char *local_140;
  int local_13c;
  int local_138;
  int local_134;
  uint local_130;
  void *local_12c;
  int local_128;
  int local_124;
  undefined1 local_120 [4];
  undefined4 *local_11c;
  uint local_118;
  undefined4 local_114;
  float local_110;
  undefined4 local_10c;
  undefined4 local_108;
  char *local_104;
  undefined4 local_100;
  undefined4 local_fc;
  char *local_f8;
  uint local_f4;
  uint local_f0;
  undefined4 local_ec;
  void *local_e8;
  void *local_e4;
  undefined4 local_e0;
  char *local_dc;
  uint *local_d8;
  uint local_d4;
  uint local_d0;
  int local_cc;
  int local_c8;
  void *local_c4;
  LotXZLevel local_c0;
  uint *local_b4;
  int *local_b0;
  uint *local_ac;
  undefined4 *local_a8;
  int local_a4 [3];
  uint *local_98;
  undefined4 local_94 [2];
  undefined4 local_8c [3];
  int local_80 [24];
  undefined2 local_20;
  ushort local_1e;
  
  *(undefined1 *)((int)this + 0x210) = 0;
  local_124 = *(int *)(param_1 + 0x60);
  local_134 = *(int *)(param_1 + 100);
  local_100 = 0;
  local_fc = 0;
  local_170 = 0;
  local_164 = 0;
  local_150 = 0;
  local_144 = 0;
  local_114 = 0;
  local_108 = 0;
  local_160 = &local_100;
  local_e8 = (void *)0x0;
  local_e4 = (void *)0x0;
  local_e0 = 0;
  local_f8 = "LotRenderer/FloorFeatureGeometry/IndexSetAllocator";
  local_f4 = 0x7fd;
  local_16c = 1.0;
  local_168 = 0x40000000;
  local_174 = 1;
  local_178 = &DAT_0114d900;
  local_14c = 1.0;
  local_148 = 0x40000000;
  local_140 = "LotRenderer/FloorFeatureGeometry/Room2GPMap";
  local_154 = 1;
  local_158 = &DAT_0114d900;
  local_110 = 1.0;
  local_10c = 0x40000000;
  local_104 = "LotRenderer/FloorFeatureGeometry/cutoutInfoMap";
  local_118 = 1;
  local_11c = &DAT_0114d900;
  iVar16 = *(int *)(*(int *)((int)this + 0x29c) + 0x18);
  local_12c = *(void **)(iVar16 + 0x298);
  local_c4 = *(void **)(iVar16 + 0x290);
  local_dc = "LotRenderer/FloorFeatureGeometry/cutoutInfos";
  local_1a8 = this;
  FUN_00a7f530(&local_e8,(int *)((int)this + 0x278));
  uVar14 = *(uint *)((int)this + 0x27c);
  for (uVar15 = *(uint *)((int)this + 0x278); uVar15 < uVar14; uVar15 = uVar15 + 0x28) {
    FUN_00a7cc50(uVar15);
  }
  *(undefined4 *)((int)this + 0x27c) = *(undefined4 *)((int)this + 0x278);
  local_1a4 = 0;
  if (0 < local_124) {
    local_18c = -0x100;
    do {
      iVar16 = 0;
      puVar17 = (uint *)(*(int *)((int)this + 0x214) + local_1a4 * 8);
      local_188 = 1;
      local_d8 = puVar17;
      local_13c = 0;
      if (0 < local_134) {
        do {
          if ((*puVar17 & (uint)local_188) != 0 || (puVar17[1] & local_188._4_4_) != 0) {
            local_19c = local_1a4 - 1;
            local_1a0 = local_18c;
            local_128 = 3;
            do {
              if ((-1 < (int)local_19c) && (local_19c < 0x100)) {
                local_130 = iVar16 - 1;
                local_138 = 3;
                do {
                  uVar14 = local_130;
                  piVar12 = local_1a8;
                  if ((-1 < (int)local_130) && (local_130 < 0x100)) {
                    local_d0 = local_1a0 + local_130;
                    puVar17 = (uint *)local_178[local_174];
                    for (puVar1 = (uint *)local_178[local_d0 % local_174]; puVar1 != (uint *)0x0;
                        puVar1 = (uint *)puVar1[1]) {
                      if (local_d0 == *puVar1) {
                        local_ac = puVar1;
                        local_a8 = local_178 + local_d0 % local_174;
                        ppuVar7 = &local_ac;
                        goto LAB_00a7fd88;
                      }
                    }
                    local_b4 = puVar17;
                    local_b0 = local_178 + local_174;
                    ppuVar7 = &local_b4;
LAB_00a7fd88:
                    local_98 = ppuVar7[1];
                    if (*ppuVar7 == puVar17) {
                      iVar16 = local_1a8[0xa7];
                      local_1ac[0] = (char)local_19c;
                      local_1ac[1] = (char)local_130;
                      local_1aa = param_2;
                      if ((((-1 < (char)local_19c) &&
                           ((int)(char)local_19c < *(int *)(iVar16 + 0x60))) && (-1 < local_1ac[1]))
                         && ((((int)local_1ac[1] < *(int *)(iVar16 + 100) &&
                              (*(int *)(iVar16 + 0x68) <= (int)param_2)) &&
                             ((int)param_2 <= *(int *)(iVar16 + 0x6c))))) {
                        uVar15 = LotLevelSurface_TestCellMask
                                           (*(void **)(*(int *)(iVar16 + 0x18) + 0x290),local_1ac,
                                            0xf,1);
                        if ((char)uVar15 != '\0') {
                          uVar8 = FUN_00b49740(local_12c,(undefined2 *)local_1ac);
                          if ((char)uVar8 == '\0') {
                            uVar14 = 0;
                            local_198._0_4_ = 0;
                            local_198._4_4_ = 0;
                            local_198 = 0;
                            if (local_c4 != (void *)0x0) {
                              piVar9 = (int *)FindFloorCellPayload(local_c4,local_1ac);
                              if (piVar9 != (int *)0x0) {
                                local_198 = FUN_00a7c520(piVar9,(float *)(piVar9 + 4),
                                                         (float)piVar9[6],(float)piVar9[0xc],
                                                         (float)piVar9[0xd]);
                                U64PairMap_Find(local_120,local_a4,&local_198);
                                if (local_a4[0] == local_11c[local_118]) {
                                  uVar15 = (piVar12[0x9f] - piVar12[0x9e]) / 0x28 + 1;
                                  uVar14 = uVar15 & 0xffff;
                                  FUN_00a7f9e0(local_1a8 + 0x9e,uVar14);
                                  piVar12 = (int *)(local_1a8[0x9e] + -0x28 + uVar14 * 0x28);
                                  *piVar12 = *piVar9;
                                  piVar12[1] = piVar9[1];
                                  piVar12[2] = piVar9[2];
                                  piVar12[3] = piVar9[3];
                                  piVar12[5] = piVar9[4];
                                  piVar12[6] = piVar9[5];
                                  piVar12[7] = piVar9[6];
                                  piVar12[8] = piVar9[0xc];
                                  piVar12[9] = piVar9[0xd];
                                  puVar10 = (undefined2 *)FUN_00a7d3f0(local_120,(uint *)&local_198)
                                  ;
                                  *puVar10 = (short)uVar15;
                                  FUN_005ca650(piVar12 + 4,piVar12,0,0,0);
                                }
                                else {
                                  uVar14 = (uint)*(ushort *)(local_a4[0] + 8);
                                }
                              }
                            }
                            local_c0.x = -1.0;
                            local_c0.z = -1.0;
                            local_c0.level = 0;
                            LotLocation_DecodeCellCenter(local_1ac,&local_c0);
                            uVar6 = LotRoom_ResolveForLocalLocation(local_12c,&local_c0.x,0,1);
                            local_f0 = uVar6 | (uint)local_198;
                            local_ec = local_198._4_4_;
                            FUN_00a7ccd0(local_15c,&local_cc,&local_f0);
                            iVar16 = local_cc;
                            if (local_cc == local_158[local_154]) {
                              FUN_00a7d2f0(local_80);
                              piVar12 = local_80;
                              local_20 = (undefined2)uVar14;
                              local_1e = uVar6;
                              pvVar11 = (void *)FUN_00a7fa70(local_15c,&local_f0);
                              FUN_00a7f330(pvVar11,piVar12);
                              piVar12 = (int *)FUN_00a7ccd0(local_15c,local_94,&local_f0);
                              local_c8 = piVar12[1];
                              iVar16 = *piVar12;
                              local_cc = iVar16;
                              FUN_00a7d290(local_80);
                            }
                            FloorFeatureGeometry_AppendTileGeometry
                                      (local_1a8,param_1,(uint3 *)local_1ac,(int *)(iVar16 + 0x10));
                            local_d4 = local_d4 & 0xffffff00;
                            FUN_00a4b3c0(local_17c,local_8c,&local_d0);
                            uVar14 = local_130;
                          }
                        }
                      }
                    }
                  }
                  local_130 = uVar14 + 1;
                  local_138 = local_138 + -1;
                } while (local_138 != 0);
                local_138 = 0;
                this = local_1a8;
                iVar16 = local_13c;
              }
              local_1a0 = local_1a0 + 0x100;
              local_19c = local_19c + 1;
              local_128 = local_128 + -1;
            } while (local_128 != 0);
            local_128 = 0;
            puVar17 = local_d8;
          }
          iVar16 = iVar16 + 1;
          local_13c = iVar16;
          local_188 = __allmul((uint)local_188,local_188._4_4_,2,0);
        } while (iVar16 < local_134);
      }
      local_18c = local_18c + 0x100;
      local_1a4 = local_1a4 + 1;
    } while (local_1a4 < local_124);
  }
  if (local_150 == 0) {
    pvVar11 = local_e8;
    pvVar2 = local_e8;
    pvVar3 = local_e4;
    if ((char)*(int *)((int)this + 0x298) != '\0') {
      pvVar11 = LoadPump_ReadFrameServiceGlobal();
      if (pvVar11 != (void *)0x0) {
        FUN_006e82f0(pvVar11,this);
      }
      *(undefined1 *)((int)this + 0x298) = 0;
      pvVar11 = local_e8;
      pvVar2 = local_e8;
      pvVar3 = local_e4;
    }
    for (; pvVar5 = local_e4, pvVar13 = local_e8, bVar4 = pvVar11 < local_e4, local_e8 = pvVar2,
        local_e4 = pvVar3, bVar4; pvVar11 = (void *)((int)pvVar11 + 0x28)) {
      FUN_00a7cc50((int)pvVar11);
      pvVar2 = local_e8;
      pvVar3 = local_e4;
      local_e4 = pvVar5;
      local_e8 = pvVar13;
    }
  }
  else {
    FUN_00a7f390(this,(int)local_15c);
    FUN_00a7ca70(this,(int)local_15c);
    FUN_00a7cb60(this,(int)local_15c);
    pvVar11 = local_e8;
    pvVar2 = local_e8;
    pvVar3 = local_e4;
    if ((char)*(int *)((int)this + 0x298) == '\0') {
      pvVar13 = LoadPump_ReadFrameServiceGlobal();
      pvVar11 = local_e8;
      pvVar2 = local_e8;
      pvVar3 = local_e4;
      if (pvVar13 != (void *)0x0) {
        if (*(int *)((int)this + 0x29c) == 0) {
          pvVar11 = (void *)0x0;
        }
        else {
          pvVar11 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x29c) + 8))
                                      (*(int *)((int)this + 0x2a0));
        }
        FUN_006e82e0(pvVar13,this,pvVar11);
        *(undefined1 *)((int)this + 0x298) = 1;
        pvVar11 = local_e8;
        pvVar2 = local_e8;
        pvVar3 = local_e4;
      }
    }
    for (; pvVar5 = local_e4, pvVar13 = local_e8, bVar4 = pvVar11 < local_e4, local_e8 = pvVar2,
        local_e4 = pvVar3, bVar4; pvVar11 = (void *)((int)pvVar11 + 0x28)) {
      FUN_00a7cc50((int)pvVar11);
      pvVar2 = local_e8;
      pvVar3 = local_e4;
      local_e4 = pvVar5;
      local_e8 = pvVar13;
    }
  }
  if (pvVar13 != (void *)0x0) {
    Memory_FreeIfNonNull(pvVar13);
  }
  FUN_00b305a0((int)local_11c,local_118);
  local_114 = 0;
  if (1 < local_118) {
    Memory_FreeIfNonNull(local_11c);
  }
  FUN_00a7f7b0((int)local_158,local_154);
  local_150 = 0;
  if (1 < local_154) {
    Memory_FreeIfNonNull(local_158);
  }
  FUN_00d731d0(local_17c,(int)local_178,local_174);
  local_170 = 0;
  if (1 < local_174) {
    if ((local_174 & 0x3fffffff) == 1) {
      *local_178 = *local_160;
      *local_160 = local_178;
    }
    else {
      FUN_004e5e70(DAT_011cc864,(int)local_178);
    }
  }
  if (-1 < (int)local_f4) {
    PayloadCleanup_NoOperation((byte *)(local_f4 & 0x7fffffff));
  }
  uVar8 = FUN_007cd020(&local_100);
  return CONCAT31((int3)((uint)uVar8 >> 8),1);
}

