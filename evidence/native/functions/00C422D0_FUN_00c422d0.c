/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX graph plus four physical stack words, RET10 and lowbyte result. Source vector-range, camera, signed level byte and output edge set govern tile allocation/rasterization. DeltaY is capped3; original x87 conversion and sign-bit correction form tile floors before major/minor stepping. Reads actual wall-grid bits, inserts diagonals or axial edges when adjacent selected, then frees tile storage. Pseudocode float integer/pointer aliases and casts are representation artifacts. Two-byte nonowned gap excluded. Allocation failure, native set insertion and full caller/source semantics remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00C422D0_FUN_00c422d0.asm
 */

undefined1 __thiscall
FUN_00c422d0(void *this,undefined4 *param_1,float *param_2,char param_3,void *param_4)

{
  ushort uVar1;
  float fVar2;
  byte *pbVar3;
  int iVar4;
  int iVar5;
  char cVar6;
  float *pfVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  undefined1 local_155;
  undefined4 local_154;
  undefined1 local_150;
  undefined1 local_14f;
  float local_14c;
  void *local_148;
  float local_144;
  float *local_140;
  void *local_13c;
  float *local_138;
  void *local_134;
  int local_130;
  float local_12c;
  float local_128;
  float *local_124;
  float local_120;
  float local_11c;
  void *local_118;
  int local_114;
  int local_110;
  float local_10c;
  float local_108;
  int local_104;
  float local_100;
  float local_fc;
  float local_f8;
  int local_f4;
  int local_f0;
  float local_ec;
  int local_e8;
  int local_e4;
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
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50 [4];
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30 [4];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_110 = *(int *)(*(int *)((int)this + 0x44) + 4);
  local_130 = *(int *)(*(int *)((int)this + 0x44) + 8);
  uVar8 = local_130 * local_110;
  local_e8 = local_110 + -1;
  local_114 = local_130 + -1;
  local_155 = 0;
  local_13c = this;
  if (uVar8 == 0) {
    local_134 = (void *)0x0;
  }
  else {
    local_134 = (void *)FUN_004e4500(uVar8,"World/WallGraph/TilesSelected",0);
    memset(local_134,0,uVar8);
  }
  fVar12 = DAT_00fa2b9c;
  local_138 = (float *)*param_1;
  local_124 = (float *)param_1[1];
  while( true ) {
    if (local_138 == local_124) {
      local_154 = (float *)0xff00ffff;
      local_150 = 0xff;
      local_14f = 0;
      local_14c = 0.0;
      if (0 < local_110) {
        local_148 = local_134;
        local_138 = (float *)((int)local_134 - local_130);
        iVar9 = local_130;
        do {
          local_140 = (float *)0x0;
          if (0 < iVar9) {
            do {
              pfVar7 = local_140;
              if (*(char *)((int)local_140 + (int)local_148) != '\0') {
                iVar9 = *(int *)((int)local_13c + 0x44);
                cVar6 = (char)local_140;
                if (iVar9 != 0) {
                  local_144 = (float)(int)param_3;
                  uVar11 = (uint)local_14c._0_1_;
                  uVar8 = (uint)cVar6;
                  iVar4 = (((int)local_144 - *(int *)((int)local_13c + 0x48)) *
                           *(int *)(iVar9 + 0x20) + ((int)uVar11 >> 2)) * *(int *)(iVar9 + 0x24) +
                          ((int)uVar8 >> 2);
                  uVar1 = *(ushort *)(*(int *)(iVar9 + 0x48) + iVar4 * 2);
                  if ((uVar1 & 0x8000) == 0) {
                    pbVar3 = (byte *)(*(int *)(iVar9 + 0x28) + ((uVar11 & 3) + (uint)uVar1 * 4) * 4
                                     + (uVar8 & 3));
                  }
                  else {
                    pbVar3 = (byte *)(*(int *)(iVar9 + 0x38) + iVar4);
                  }
                  if ((*pbVar3 >> 3 & 1) != 0) {
                    local_e0 = (float)(int)uVar11;
                    fStack_dc = (float)(int)(uVar8 + 1);
                    fStack_d8 = local_144;
                    FUN_00784da0(&local_154,&local_e0);
                    local_90 = (float)(int)(uVar11 + 1);
                    fStack_8c = (float)(int)uVar8;
                    fStack_88 = local_144;
                    FUN_00784da0((void *)((int)&local_154 + 3),&local_90);
                    local_124 = (float *)((uint)local_124 & 0xffffff00);
                    FUN_00a56040(param_4,&local_60,(char *)&local_154);
                    local_155 = 1;
                  }
                }
                iVar9 = *(int *)((int)local_13c + 0x44);
                if (iVar9 != 0) {
                  local_144 = (float)(int)param_3;
                  uVar11 = (uint)local_14c._0_1_;
                  uVar8 = (uint)cVar6;
                  iVar4 = (((int)local_144 - *(int *)((int)local_13c + 0x48)) *
                           *(int *)(iVar9 + 0x20) + ((int)uVar11 >> 2)) * *(int *)(iVar9 + 0x24) +
                          ((int)uVar8 >> 2);
                  uVar1 = *(ushort *)(*(int *)(iVar9 + 0x48) + iVar4 * 2);
                  if ((uVar1 & 0x8000) == 0) {
                    pbVar3 = (byte *)(*(int *)(iVar9 + 0x28) + ((uVar11 & 3) + (uint)uVar1 * 4) * 4
                                     + (uVar8 & 3));
                  }
                  else {
                    pbVar3 = (byte *)(*(int *)(iVar9 + 0x38) + iVar4);
                  }
                  if ((*pbVar3 >> 2 & 1) != 0) {
                    local_b0 = (float)(int)uVar11;
                    fStack_ac = (float)(int)uVar8;
                    fStack_a8 = local_144;
                    FUN_00784da0(&local_154,&local_b0);
                    local_70 = (float)(int)(uVar11 + 1);
                    fStack_6c = (float)(int)(uVar8 + 1);
                    fStack_68 = local_144;
                    FUN_00784da0((void *)((int)&local_154 + 3),&local_70);
                    local_118 = (void *)((uint)local_118 & 0xffffff00);
                    FUN_00a56040(param_4,local_30,(char *)&local_154);
                    local_155 = 1;
                  }
                }
                if (((int)local_14c < 1) || (*(char *)((int)pfVar7 + (int)local_138) != '\0')) {
                  iVar9 = *(int *)((int)local_13c + 0x44);
                  if (iVar9 != 0) {
                    fVar12 = (float)(int)param_3;
                    uVar10 = (uint)cVar6;
                    uVar11 = (uint)SUB41(local_14c,0);
                    uVar8 = (((int)fVar12 - *(int *)((int)local_13c + 0x48)) *
                             *(int *)(iVar9 + 0x20) + ((int)uVar11 >> 2)) * *(int *)(iVar9 + 0x24) +
                            ((int)uVar10 >> 2);
                    uVar1 = *(ushort *)(*(int *)(iVar9 + 0x48) + uVar8 * 2);
                    if ((uVar1 & 0x8000) == 0) {
                      iVar9 = *(int *)(iVar9 + 0x28) + ((uVar11 & 3) + (uint)uVar1 * 4) * 4;
                      uVar8 = uVar10 & 3;
                    }
                    else {
                      iVar9 = *(int *)(iVar9 + 0x38);
                    }
                    if ((*(byte *)(iVar9 + uVar8) & 1) != 0) {
                      local_120 = (float)(int)uVar11;
                      fStack_7c = (float)(int)uVar10;
                      local_80 = local_120;
                      fStack_78 = fVar12;
                      FUN_00784da0(&local_154,&local_80);
                      local_a0 = local_120;
                      fStack_9c = (float)(int)(uVar10 + 1);
                      fStack_98 = fVar12;
                      FUN_00784da0((void *)((int)&local_154 + 3),&local_a0);
                      local_128 = (float)((uint)local_128 & 0xffffff00);
                      FUN_00a56040(param_4,local_50,(char *)&local_154);
                      local_155 = 1;
                    }
                    pfVar7 = local_140;
                  }
                }
                if (((int)pfVar7 < 1) || (*(char *)((int)pfVar7 + -1 + (int)local_148) != '\0')) {
                  iVar9 = *(int *)((int)local_13c + 0x44);
                  if (iVar9 != 0) {
                    fVar12 = (float)(int)param_3;
                    uVar10 = (uint)local_14c._0_1_;
                    uVar11 = (uint)(char)pfVar7;
                    uVar8 = (((int)fVar12 - *(int *)((int)local_13c + 0x48)) *
                             *(int *)(iVar9 + 0x20) + ((int)uVar10 >> 2)) * *(int *)(iVar9 + 0x24) +
                            ((int)uVar11 >> 2);
                    uVar1 = *(ushort *)(*(int *)(iVar9 + 0x48) + uVar8 * 2);
                    if ((uVar1 & 0x8000) == 0) {
                      iVar9 = *(int *)(iVar9 + 0x28) + ((uVar10 & 3) + (uint)uVar1 * 4) * 4;
                      uVar8 = uVar11 & 3;
                    }
                    else {
                      iVar9 = *(int *)(iVar9 + 0x38);
                    }
                    if ((*(byte *)(iVar9 + uVar8) >> 1 & 1) != 0) {
                      local_d0 = (float)(int)(uVar10 + 1);
                      local_11c = (float)(int)uVar11;
                      fStack_cc = local_11c;
                      fStack_c8 = fVar12;
                      FUN_00784da0(&local_154,&local_d0);
                      local_c0 = (float)(int)uVar10;
                      fStack_bc = local_11c;
                      fStack_b8 = fVar12;
                      FUN_00784da0((void *)((int)&local_154 + 3),&local_c0);
                      local_12c = (float)((uint)local_12c & 0xffffff00);
                      FUN_00a56040(param_4,&local_40,(char *)&local_154);
                      local_155 = 1;
                    }
                    pfVar7 = local_140;
                  }
                }
              }
              local_140 = (float *)((int)pfVar7 + 1);
              iVar9 = local_130;
            } while ((int)local_140 < local_130);
          }
          local_148 = (void *)((int)local_148 + iVar9);
          local_138 = (float *)((int)local_138 + iVar9);
          local_14c = (float)((int)local_14c + 1);
        } while ((int)local_14c < local_110);
      }
      if (local_134 != (void *)0x0) {
        Memory_FreeIfNonNull(local_134);
      }
      return local_155;
    }
    local_128 = *param_2;
    fStack_7c = param_2[1];
    local_120 = param_2[2];
    fStack_74 = param_2[3];
    local_12c = *local_138;
    fStack_cc = local_138[1];
    fStack_c8 = local_138[2];
    fStack_c4 = local_138[3];
    local_40 = local_128 - local_12c;
    local_50[0] = fStack_7c - fStack_cc;
    fStack_38 = local_120 - fStack_c8;
    fStack_34 = fStack_74 - fStack_c4;
    local_e0 = local_40;
    fStack_dc = local_50[0];
    fStack_d8 = fStack_38;
    fStack_d4 = fStack_34;
    if (fVar12 < local_50[0]) {
      local_c0 = fVar12 / local_50[0];
      local_e0 = local_c0 * local_40;
      fStack_dc = local_c0 * local_50[0];
      fStack_d8 = local_c0 * fStack_38;
      fStack_d4 = local_c0 * fStack_34;
      local_128 = local_12c + local_e0;
      fStack_7c = fStack_cc + fStack_dc;
      local_120 = fStack_c8 + fStack_d8;
      fStack_74 = fStack_c4 + fStack_d4;
      fStack_bc = local_c0;
      fStack_b8 = local_c0;
      fStack_b4 = local_c0;
      local_60 = local_40;
      fStack_5c = local_50[0];
      fStack_58 = fStack_38;
      fStack_54 = fStack_34;
    }
    local_f0 = (int)ROUND(local_12c);
    local_100 = local_12c - (float)local_f0;
    local_144 = (float)(local_f0 + -1 + (uint)((uint)local_100 < 0x80000001));
    local_a0 = *local_138;
    fStack_9c = local_138[1];
    local_11c = local_138[2];
    fStack_94 = local_138[3];
    local_104 = (int)ROUND(local_11c);
    local_10c = local_11c - (float)local_104;
    local_14c = (float)(local_104 + -1 + (uint)((uint)local_10c < 0x80000001));
    local_f4 = (int)ROUND(local_128);
    local_fc = local_128 - (float)local_f4;
    local_e4 = (int)ROUND(local_120);
    local_ec = local_120 - (float)local_e4;
    local_118 = (void *)(local_e4 + -1 + (uint)((uint)local_ec < 0x80000001));
    if (local_e0 <= 0.0) {
      if (0.0 <= local_e0) {
        iVar9 = 0;
      }
      else {
        iVar9 = -1;
      }
    }
    else {
      iVar9 = 1;
    }
    if (fStack_d8 <= 0.0) {
      if (0.0 <= fStack_d8) {
        iVar4 = 0;
      }
      else {
        iVar4 = -1;
      }
    }
    else {
      iVar4 = 1;
    }
    if (iVar9 < 0) {
      local_144 = (float)((int)local_144 + -1);
    }
    if (iVar4 < 0) {
      local_14c = (float)((int)local_14c + -1);
    }
    local_108 = ABS(local_e0);
    local_f8 = ABS(fStack_d8);
    if (local_108 <= local_f8) {
      local_140 = &local_14c;
      local_154 = &local_144;
      local_148 = local_118;
      iVar5 = iVar9;
      fVar14 = local_f8;
      fVar15 = local_108;
    }
    else {
      local_140 = &local_144;
      local_154 = &local_14c;
      local_148 = (void *)(local_f4 + -1 + (uint)((uint)local_fc < 0x80000001));
      iVar5 = iVar4;
      iVar4 = iVar9;
      fVar14 = local_108;
      fVar15 = local_f8;
    }
    fVar13 = fVar15;
    if ((iVar4 != 0) || (iVar5 != 0)) break;
    if (((-1 < (int)local_144) && ((int)local_144 <= local_e8)) &&
       ((-1 < (int)local_14c && ((int)local_14c <= local_114)))) {
      *(undefined1 *)((int)local_134 + (int)local_14c + (int)local_144 * local_130) = 1;
    }
LAB_00c4262a:
    local_138 = local_138 + 4;
    local_d0 = local_12c;
    local_b0 = local_e0;
    fStack_ac = fStack_dc;
    fStack_a8 = fStack_d8;
    fStack_a4 = fStack_d4;
    fStack_98 = local_11c;
    local_90 = local_e0;
    fStack_8c = fStack_dc;
    fStack_88 = fStack_d8;
    fStack_84 = fStack_d4;
    local_80 = local_128;
    fStack_78 = local_120;
    local_70 = local_128;
    fStack_6c = fStack_7c;
    fStack_68 = local_120;
    fStack_64 = fStack_74;
    fStack_3c = local_50[0];
    local_30[0] = fVar12;
    local_20 = local_e0;
    fStack_1c = fStack_dc;
    fStack_18 = fStack_d8;
    fStack_14 = fStack_d4;
  }
LAB_00c42702:
  fVar2 = *local_140;
  if (iVar4 < 1) {
    if ((int)fVar2 < (int)local_148) goto LAB_00c4262a;
  }
  else if ((int)local_148 < (int)fVar2) goto LAB_00c4262a;
  if (((((int)local_144 < 0) || (local_e8 < (int)local_144)) || ((int)local_14c < 0)) ||
     (local_114 < (int)local_14c)) goto LAB_00c4262a;
  *(undefined1 *)((int)local_134 + (int)local_14c + (int)local_144 * local_130) = 1;
  if (fVar14 <= fVar13) {
    *local_154 = (float)((int)*local_154 + iVar5);
    fVar13 = fVar13 - fVar14;
  }
  else {
    *local_140 = (float)((int)fVar2 + iVar4);
    fVar13 = fVar13 + fVar15;
  }
  goto LAB_00c42702;
}

