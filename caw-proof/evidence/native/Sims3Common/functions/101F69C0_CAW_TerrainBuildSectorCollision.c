/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Selects the terrain chunk using the supplied centre X/Z.
   Optimizer returns source(X,Z,height,X) vectors and adaptive ordered faces; subtracts the centre
   vector(centerX,centerZ,0,centerX) before101F63D0 packing. Selects initialized fine/coarse
   threshold through the explicit detail mode. Lot clipping, alternative modes and budget/LOD
   scheduling are separate caller contracts. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

uint __thiscall
CAW_TerrainBuildSectorCollision
          (void *this,int param_1,int param_2,int param_3,void *param_4,undefined4 *param_5,
          void *param_6,int *param_7,void *param_8,void *param_9,uint *param_10,uint *param_11)

{
  float *pfVar1;
  void *_Dst;
  undefined1 auVar2 [16];
  float fVar3;
  float fVar4;
  undefined4 *puVar5;
  int *piVar6;
  int iVar7;
  int *piVar8;
  float *pfVar9;
  undefined4 uVar10;
  uint uVar11;
  undefined4 extraout_ECX;
  int iVar12;
  undefined4 extraout_EDX;
  short *psVar13;
  uint uVar14;
  float10 fVar15;
  undefined1 auVar16 [16];
  float fVar17;
  float fVar18;
  ulonglong uVar19;
  int *local_234;
  int *local_230;
  int local_22c;
  int local_228;
  undefined4 local_224;
  char *local_220;
  float local_21c;
  float *local_218;
  short *local_214;
  int local_210;
  undefined4 local_20c;
  char *local_208;
  float *local_204;
  float local_200;
  float *pfStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  int *local_1e8;
  int local_1e4;
  int local_1e0;
  undefined4 *local_1dc;
  int local_1d8;
  char *local_1d4;
  float *local_1d0;
  float *pfStack_1cc;
  float *pfStack_1c8;
  float *pfStack_1c4;
  int local_1c0;
  int local_1bc;
  undefined4 local_1b8;
  char *local_1b4;
  char *local_1b0;
  int *local_1ac;
  int *local_1a8;
  char *local_1a4;
  float local_19c;
  float *local_198;
  int local_194;
  float local_190;
  float *pfStack_18c;
  float fStack_188;
  float fStack_184;
  float afStack_180 [4];
  float fStack_170;
  float fStack_16c;
  float fStack_168;
  undefined1 local_15c [60];
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float *pfStack_10c;
  float fStack_108;
  float fStack_104;
  undefined4 uStack_100;
  float *pfStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  char *pcStack_f0;
  float fStack_ec;
  int *piStack_e8;
  char *pcStack_e4;
  undefined1 auStack_e0 [16];
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  undefined1 local_c0 [96];
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50 [5];
  float *pfStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  FUN_1025d830((int)local_15c);
  FUN_1025c860((int)local_c0);
  local_218 = (float *)FUN_101fa8b0(*(void **)((int)this + 8),param_1,param_2);
  local_208 = "Terrain/Builder";
  local_1d4 = "Terrain/Builder";
  local_214 = (short *)0x0;
  local_210 = 0;
  local_20c = 0;
  local_1e0 = 0;
  local_1dc = (undefined4 *)0x0;
  local_1d8 = 0;
  if (param_5 != (undefined4 *)0x0) {
    local_214 = (short *)*param_5;
    *param_5 = 0;
    local_210 = param_5[1];
    param_5[1] = 0;
    local_20c = param_5[2];
    param_5[2] = 0;
  }
  if (param_7 != (int *)0x0) {
    local_1e0 = *param_7;
    *param_7 = 0;
    local_1dc = (undefined4 *)param_7[1];
    param_7[1] = 0;
    local_1d8 = param_7[2];
    param_7[2] = 0;
  }
  fVar18 = local_218[2];
  local_200 = (float)param_1;
  pfStack_1fc = (float *)(float)param_2;
  fStack_1f8 = 0.0;
  local_220 = "Terrain/Builder";
  local_1b4 = "Terrain/Builder";
  fStack_188 = 0.0;
  local_22c = 0;
  local_228 = 0;
  local_224 = 0;
  local_1c0 = 0;
  local_1bc = 0;
  local_1b8 = 0;
  fStack_1f4 = local_200;
  local_19c = local_200;
  local_198 = pfStack_1fc;
  local_190 = local_200;
  pfStack_18c = pfStack_1fc;
  fStack_184 = local_200;
  CAW_EmitAdaptiveTerrainChunkTopology
            (*(void **)((int)this + 0x68),
             (*(uint *)((int)*(void **)((int)this + 0x68) + 8) / (uint)fVar18) *
             ((uint)local_218[1] / (uint)fVar18) + (uint)*local_218 / (uint)fVar18,
             *(float *)((int)this + (param_3 * 3 + 0x15) * 4),(uint)fVar18,&local_1c0,&local_22c);
  iVar7 = local_228 - local_22c >> 4;
  if (iVar7 != 0) {
    iVar12 = 0;
    do {
      pfVar9 = (float *)(local_22c + iVar12);
      fVar17 = pfVar9[1];
      fVar3 = pfVar9[2];
      fVar4 = pfVar9[3];
      pfVar1 = (float *)(local_22c + iVar12);
      *pfVar1 = *pfVar9 - local_190;
      pfVar1[1] = fVar17 - (float)pfStack_18c;
      pfVar1[2] = fVar3 - fStack_188;
      pfVar1[3] = fVar4 - fStack_184;
      iVar12 = iVar12 + 0x10;
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
  }
  local_1e8 = (int *)0xffffffff;
  if (DAT_10c0f9bb == '\0') {
LAB_101f6fa6:
    local_1e8 = (int *)(local_228 - local_22c >> 4);
  }
  else {
    local_21c = local_218[1];
    local_204 = (float *)*local_218;
    fStack_1f8 = (float)((int)local_204 + (int)fVar18);
    fStack_1f4 = (float)((int)local_21c + (int)fVar18);
    local_1b0 = (char *)0x0;
    local_1ac = (int *)0x0;
    local_1a8 = (int *)0x0;
    local_1a4 = "Terrain/Builder";
    local_1e4 = 0;
    piVar8 = (int *)FUN_1023d040(*(void **)((int)this + 100),'\x01');
    uVar14 = piVar8[1] - *piVar8 >> 2;
    local_234 = (int *)0x0;
    local_230 = piVar8;
    if (uVar14 != 0) {
      do {
        iVar7 = *(int *)(*piVar8 + (int)local_234 * 4);
        piVar6 = local_1ac;
        local_194 = iVar7;
        if (((((*(char *)(iVar7 + 0x74) != '\0') && (*(char *)(iVar7 + 0xb8) == '\0')) &&
             ((int)local_204 < *(int *)(iVar7 + 0x15c))) &&
            ((*(int *)(iVar7 + 0x154) < (int)fStack_1f8 &&
             ((int)local_21c < *(int *)(iVar7 + 0x160))))) &&
           (*(int *)(iVar7 + 0x158) < (int)fStack_1f4)) {
          if (local_1e4 == 0) {
            FUN_1025cab0(local_15c,&local_22c,&local_1c0);
          }
          local_1e4 = local_1e4 + 1;
          uVar11 = 0;
          pfVar9 = local_50;
          do {
            local_1d0 = *(float **)(iVar7 + 0x134 + uVar11 * 8);
            pfStack_1cc = *(float **)(iVar7 + 0x138 + uVar11 * 8);
            pfStack_1c8 = DAT_10aae184;
            *pfVar9 = (float)local_1d0;
            pfVar9[1] = (float)pfStack_1cc;
            pfVar9[2] = (float)DAT_10aae184;
            pfVar9[3] = (float)local_1d0;
            *pfVar9 = *pfVar9 - local_190;
            pfVar9[1] = pfVar9[1] - (float)pfStack_18c;
            pfVar9[2] = pfVar9[2] - fStack_188;
            pfVar9[3] = pfVar9[3] - fStack_184;
            uVar11 = uVar11 + 1;
            pfVar9 = pfVar9 + 4;
          } while (uVar11 < 4);
          pfStack_1c4 = local_1d0;
          FUN_1025d030(local_15c,(int)local_50,4);
          if (local_1ac < local_1a8) {
            piVar6 = local_1ac + 1;
            if (local_1ac != (int *)0x0) {
              *local_1ac = iVar7;
            }
          }
          else {
            FUN_105ee480(&local_1b0,local_1ac,&local_194);
            piVar6 = local_1ac;
          }
        }
        local_1ac = piVar6;
        local_234 = (int *)((int)local_234 + 1);
      } while (local_234 < uVar14);
      if (local_1e4 != 0) {
        FUN_1025c3e0((int)local_15c);
        FUN_1025c6e0(local_15c,(int *)&local_1b0,&local_190);
        FUN_1025d050(local_15c,*(int *)((int)this + 8),local_19c,(float)local_198);
      }
    }
    if (DAT_10c0f9ba != '\0') {
      local_1e8 = (int *)(local_228 - local_22c >> 4);
      FUN_1025c400(local_c0,&local_1c0,&local_22c);
      FUN_1025d590(local_c0);
      if ((param_3 == 0) && (uVar11 = 0, uVar14 != 0)) {
        do {
          piVar8 = *(int **)(*local_230 + uVar11 * 4);
          if (((piVar8 != (int *)0x0) &&
              ((((char)piVar8[0x2e] == '\0' && ((int)local_204 < piVar8[0x57])) &&
               (piVar8[0x55] < (int)fStack_1f8)))) &&
             (((int)local_21c < piVar8[0x58] && (piVar8[0x56] < (int)fStack_1f4)))) {
            local_1d0 = (float *)0x0;
            pfStack_1cc = (float *)0x0;
            pfStack_1c8 = (float *)0x0;
            pfStack_1c4 = (float *)0x10ac6c54;
            fVar17 = 0.0;
            fVar15 = (float10)(**(code **)(*piVar8 + 0x68))();
            fVar18 = (float)fVar15;
            pfVar9 = (float *)(**(code **)(*piVar8 + 100))(&fStack_120);
            FUN_10087100(piVar8,(int *)&local_1d0,pfVar9,fVar18,fVar17);
            for (pfVar9 = local_1d0; pfVar9 != pfStack_1cc; pfVar9 = pfVar9 + 4) {
              fVar18 = pfVar9[1];
              *pfVar9 = *pfVar9 - local_190;
              pfVar9[1] = pfVar9[2] - (float)pfStack_18c;
              pfVar9[2] = fVar18 - fStack_188;
              pfVar9[3] = fVar18 - fStack_188;
            }
            FUN_1025d3f0(local_c0,(int *)&local_1d0,(int *)local_218);
            if (local_1d0 != (float *)0x0) {
              FUN_10918e90((int)local_1d0);
            }
          }
          uVar11 = uVar11 + 1;
        } while (uVar11 < uVar14);
      }
      FUN_1025d3b0((int)local_c0);
    }
    if (local_1b0 != (char *)0x0) {
      FUN_10918e90((int)local_1b0);
    }
    if ((int)local_1e8 < 0) goto LAB_101f6fa6;
  }
  if ((uint)(local_228 - local_22c >> 4) < 0x10000) {
    CAW_TerrainPackCollisionVertices(this,&local_22c,(int *)&local_214,param_10,param_11);
    puVar5 = local_1dc;
    uVar14 = local_1bc - local_1c0 >> 2;
    uVar11 = (int)local_1dc - local_1e0 >> 1;
    if (uVar11 < uVar14) {
      local_230 = (int *)0x0;
      FUN_1003e530(&local_1e0,local_1dc,uVar14 - uVar11,(undefined2 *)&local_230);
    }
    else {
      _Dst = (void *)(local_1e0 + uVar14 * 2);
      memmove(_Dst,local_1dc,0);
      local_1dc = (undefined4 *)((int)puVar5 + ((int)puVar5 - (int)_Dst >> 1) * -2);
    }
    iVar7 = local_1e0;
    uVar14 = 0;
    uVar11 = local_1bc - local_1c0 >> 2;
    if (uVar11 != 0) {
      do {
        if (0xffff < *(uint *)(local_1c0 + uVar14 * 4)) {
          if (local_1c0 != 0) {
            FUN_10918e90(local_1c0);
          }
          if (local_22c != 0) {
            FUN_10918e90(local_22c);
          }
          if (iVar7 != 0) {
            FUN_10918e90(iVar7);
          }
          if (local_214 != (short *)0x0) {
            FUN_10918e90((int)local_214);
          }
          FUN_1025c580((int)local_c0);
          uVar14 = FUN_1025c3a0((int)local_15c);
          return uVar14 & 0xffffff00;
        }
        *(undefined2 *)(local_1e0 + uVar14 * 2) = *(undefined2 *)(local_1c0 + uVar14 * 4);
        uVar14 = uVar14 + 1;
      } while (uVar14 < uVar11);
    }
    CAW_RemapTerrainVerticesInIndexOrder((char *)&local_214,&local_1e0);
    if ((DAT_10c0f9b9 != '\0') && (param_9 != (void *)0x0)) {
      local_204 = (float *)(float)*(int *)(*(int *)((int)this + 8) + 0x34);
      if (*(int *)(*(int *)((int)this + 8) + 0x34) < 0) {
        local_204 = (float *)((float)local_204 + _DAT_10aae190);
      }
      fStack_1f4 = 0.0;
      fStack_1f8 = 0.0;
      pfStack_1fc = DAT_10aae184;
      local_200 = 0.0;
      local_230 = (int *)(local_210 - (int)local_214 >> 3);
      uStack_100 = 0;
      pfStack_fc = DAT_10aae184;
      uStack_f8 = 0;
      uStack_f4 = 0;
      local_234 = (int *)0x0;
      psVar13 = local_214;
      if (local_230 != (int *)0x0) {
        do {
          fVar18 = *(float *)((int)this + 0x10);
          fVar17 = (float)(int)*psVar13;
          fStack_c4 = *(float *)((int)this + 0x30);
          local_200 = fStack_c4 + fVar18 * fVar17;
          fStack_cc = fStack_c4 + fVar18 * fVar17;
          fStack_c8 = fStack_c4 + fVar18 * fVar17;
          fStack_c4 = fStack_c4 + fVar18 * fVar17;
          fVar18 = *(float *)((int)this + 0x18);
          fVar17 = (float)(int)psVar13[2];
          fStack_54 = *(float *)((int)this + 0x38);
          fStack_1f8 = fStack_54 + fVar18 * fVar17;
          fStack_5c = fStack_54 + fVar18 * fVar17;
          fStack_58 = fStack_54 + fVar18 * fVar17;
          fStack_54 = fStack_54 + fVar18 * fVar17;
          pfStack_1fc = local_204;
          pfStack_10c = local_204;
          fStack_1f4 = local_200;
          fStack_110 = local_200;
          fStack_108 = fStack_1f8;
          fStack_104 = local_200;
          fStack_d0 = local_200;
          fStack_60 = fStack_1f8;
          uVar10 = CAW_TerrainKdRayWorld(param_9,&fStack_110,afStack_180);
          if ((char)uVar10 == '\0') {
            local_50[4] = (float)uStack_100;
            pfStack_3c = pfStack_fc;
            uStack_38 = uStack_f8;
            uStack_34 = uStack_f4;
            local_1d0 = DAT_10acf464;
            pfStack_1cc = DAT_10acf464;
            pfStack_1c8 = DAT_10acf464;
            pfStack_1c4 = DAT_10acf464;
            local_21c = 4.2039e-45;
            do {
              iVar7 = 0;
              do {
                local_1a8 = *(int **)((int)&DAT_10ac6c44 + iVar7);
                local_1b0 = *(char **)((int)&DAT_10ac6c34 + iVar7);
                local_1ac = (int *)0x0;
                fStack_ec = 0.0;
                local_50[0] = (float)local_1b0 * (float)local_1d0 + fStack_110;
                local_50[1] = (float)pfStack_1cc * 0.0 + (float)pfStack_10c;
                local_50[2] = (float)local_1a8 * (float)pfStack_1c8 + fStack_108;
                local_50[3] = (float)local_1b0 * (float)pfStack_1c4 + fStack_104;
                local_1a4 = local_1b0;
                pcStack_f0 = local_1b0;
                piStack_e8 = local_1a8;
                pcStack_e4 = local_1b0;
                uVar10 = CAW_TerrainKdRayWorld(param_9,local_50,afStack_180);
                if ((char)uVar10 != '\0') {
                  fVar18 = fStack_168 * (float)piStack_e8 + fStack_16c * fStack_ec +
                           fStack_170 * (float)pcStack_f0;
                  auVar16._4_4_ = fVar18;
                  auVar16._0_4_ = fVar18;
                  auVar16._8_4_ = fVar18;
                  auVar16._12_4_ = fVar18;
                  auVar2._4_4_ = fStack_16c;
                  auVar2._0_4_ = fStack_16c;
                  auVar2._8_4_ = fStack_16c;
                  auVar2._12_4_ = fStack_16c;
                  auStack_e0 = divps(auVar16,auVar2);
                  afStack_180[0] = afStack_180[0] - (float)auStack_e0._0_4_;
                  break;
                }
                iVar7 = iVar7 + 4;
              } while (iVar7 < 0x10);
              local_21c = (float)((int)local_21c + -1);
              local_1d0 = (float *)((float)local_1d0 + (float)local_1d0);
              pfStack_1cc = (float *)((float)pfStack_1cc + (float)pfStack_1cc);
              pfStack_1c8 = (float *)((float)pfStack_1c8 + (float)pfStack_1c8);
              pfStack_1c4 = (float *)((float)pfStack_1c4 + (float)pfStack_1c4);
            } while (local_21c != 0.0);
            local_21c = 0.0;
            if ((char)uVar10 != '\0') goto LAB_101f73e4;
          }
          else {
LAB_101f73e4:
            fVar18 = (float)local_204 - afStack_180[0];
            if (local_1e8 <= local_234) {
              fVar18 = fVar18 - _DAT_10aadffc;
            }
            fVar17 = *(float *)((int)this + 0x24);
            fStack_120 = _DAT_10b310ec + fVar17 * fVar18;
            fStack_11c = _DAT_10b310ec + fVar17 * fVar18;
            fStack_118 = _DAT_10b310ec + fVar17 * fVar18;
            fStack_114 = _DAT_10b310ec + fVar17 * fVar18;
            floor((double)fStack_120);
            uVar19 = FUN_10a90930(extraout_ECX,extraout_EDX);
            iVar7 = (int)uVar19;
            if (iVar7 < -0x7fff) {
              iVar7 = -0x7fff;
            }
            uVar14 = iVar7 - psVar13[1];
            if (0xffff < uVar14 + 0x8000) {
              uVar14 = (int)uVar14 >> 0x1f ^ 0x7fff;
            }
            psVar13[3] = (short)uVar14;
          }
          local_234 = (int *)((int)local_234 + 1);
          psVar13 = psVar13 + 4;
        } while (local_234 < local_230);
      }
    }
    iVar7 = local_1e0;
    psVar13 = local_214;
    if (param_8 != (void *)0x0) {
      CAW_BuildPackedTerrainKdShape
                (param_8,local_214,local_210 - (int)local_214 >> 3,8,local_1e0,
                 (int)local_1dc - local_1e0 >> 1,(undefined4 *)((int)this + 0x10));
    }
    if (param_4 != (void *)0x0) {
      uVar14 = (local_210 - (int)psVar13 >> 3) * 8;
      uVar10 = FUN_104133f0(param_4,uVar14,0);
      if (((char)uVar10 == '\0') ||
         (uVar10 = FUN_10413470(param_4,psVar13,uVar14), (char)uVar10 == '\0')) {
        if (local_1c0 != 0) {
          FUN_10918e90(local_1c0);
        }
        if (local_22c != 0) {
          FUN_10918e90(local_22c);
        }
        if (iVar7 != 0) {
          FUN_10918e90(iVar7);
        }
        goto joined_r0x101f7520;
      }
    }
    if (param_6 == (void *)0x0) {
LAB_101f759c:
      psVar13 = local_214;
      if (param_5 != (undefined4 *)0x0) {
        psVar13 = (short *)*param_5;
        *param_5 = local_214;
        param_5[1] = local_210;
        param_5[2] = local_20c;
      }
      iVar12 = iVar7;
      if (param_7 != (int *)0x0) {
        iVar12 = *param_7;
        *param_7 = iVar7;
        param_7[1] = (int)local_1dc;
        param_7[2] = local_1d8;
      }
      if (local_1c0 != 0) {
        FUN_10918e90(local_1c0);
      }
      if (local_22c != 0) {
        FUN_10918e90(local_22c);
      }
      if (iVar12 != 0) {
        FUN_10918e90(iVar12);
      }
      if (psVar13 != (short *)0x0) {
        FUN_10918e90((int)psVar13);
      }
      FUN_1025c580((int)local_c0);
      uVar10 = FUN_1025c3a0((int)local_15c);
      return CONCAT31((int3)((uint)uVar10 >> 8),1);
    }
    iVar12 = (int)local_1dc - iVar7 >> 1;
    uVar10 = FUN_104101d0(param_6,iVar12,0,0);
    if (((char)uVar10 != '\0') &&
       (uVar10 = FUN_10410230(param_6,iVar7,iVar12 * 2), (char)uVar10 != '\0')) goto LAB_101f759c;
    if (local_1c0 != 0) {
      FUN_10918e90(local_1c0);
    }
    if (local_22c != 0) {
      FUN_10918e90(local_22c);
    }
  }
  else {
    if (local_1c0 != 0) {
      FUN_10918e90(local_1c0);
    }
    iVar7 = local_1e0;
    if (local_22c != 0) {
      FUN_10918e90(local_22c);
      iVar7 = local_1e0;
    }
  }
  psVar13 = local_214;
  if (iVar7 != 0) {
    FUN_10918e90(iVar7);
    psVar13 = local_214;
  }
joined_r0x101f7520:
  if (psVar13 != (short *)0x0) {
    FUN_10918e90((int)psVar13);
  }
  FUN_1025c580((int)local_c0);
  uVar14 = FUN_1025c3a0((int)local_15c);
  return uVar14 & 0xffffff00;
}

