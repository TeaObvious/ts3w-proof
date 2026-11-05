/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00ac37ec) */
/* WARNING: Type propagation algorithm not settling */
/* Analyst-assigned name. Chooses a fitting content rotation and terrain-height offset. Scores nine
   offsets over perimeter heights; stores the winning floating-point offset in placement header
   +0x34 and vertex transform at +0x64. The offset is computed for exact-size, rotation-zero imports
   as well. Water-lot adjustments are a separate later branch. Decompiled pointer types in the float
   scoring temporaries are artifacts; use the original floating-point instructions.
   
   Additional PC1.67 ground wire closure: physical ECXlot+four stack words RET10hex, result Boolean
   AL only (false AC3746; true AC40A1). C6DA60 atAC36DB reads B125533A/group0093D6D4 using
   content-ID low/high and header signed minimum/maximum. On successful header allocates a DWORD
   vector of returned width*depth*levels, invokes4DDA40 thunk with stream,output,count,byteOrder
   (ADD ESP10), accumulates status and closes. It tests vector begin/end for emptiness, not exact
   stream EOF. AC3890/95 forms minLevel*depth*width; selected world-level0 uses negative of this
   offset, so sample index is (-minLevel*width+x)*depth+z. Original reads the full raw vector; a
   bounded selected-slice host may omit allocation of unselected levels while requiring the full
   declared input body. Existing Ghidra pointer-shaped scoring temporaries and packed coordinate
   output types are decompiler artifacts, not integer conversion of float samples. Full placement
   scoring, target-height admission and water-lot correction remain separate from this reader scope.
    */

bool __thiscall
LotImport_ChooseTerrainPlacement
          (void *this,undefined *context,uint *placementHeader,ushort *rotationInOut,
          ushort *positionInOut)

{
  int *piVar1;
  char cVar2;
  undefined4 *puVar3;
  bool bVar4;
  undefined4 *puVar5;
  uchar uVar6;
  undefined4 uVar7;
  undefined4 *****pppppuVar8;
  int **ppiVar9;
  float *pfVar10;
  int iVar11;
  int **ppiVar12;
  undefined4 ******ppppppuVar13;
  int iVar14;
  int **ppiVar15;
  uint uVar16;
  int iVar17;
  int iVar18;
  int iVar19;
  float10 fVar20;
  float fVar21;
  int *piVar22;
  float fVar23;
  undefined4 ******local_144;
  int *local_140;
  int local_13c;
  char local_138 [4];
  char local_134 [4];
  uint local_130;
  float local_12c;
  undefined4 *****local_128;
  undefined4 local_124;
  int **local_120;
  uint local_11c;
  uint local_118;
  uint local_114;
  int **local_110;
  int **local_10c;
  undefined4 local_108;
  char *local_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  uint local_e4;
  uint local_e0;
  undefined1 local_dc [4];
  undefined4 *******local_d8;
  undefined4 *******local_d4;
  undefined4 *local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  char *local_c4;
  undefined **local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  void *local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  char *local_a4;
  int local_a0 [5];
  undefined4 local_8c;
  int local_88;
  int local_84;
  int local_80;
  int local_7c;
  int local_78;
  int local_74;
  undefined4 local_70;
  int local_6c;
  undefined4 local_68;
  int local_64;
  float local_60 [23];
  
  local_bc = 0;
  local_b8 = 0;
  local_b4 = 0;
  local_c0 = &PTR_FUN_01063dd8;
  local_b0 = (void *)0x0;
  local_ac = 0;
  local_a8 = 0;
  local_a4 = "Lot/HeightContents/FloorElevationLayer";
  local_11c = 0;
  local_130 = 0;
  local_114 = 0;
  local_110 = (int **)0x0;
  local_10c = (int **)0x0;
  local_108 = 0;
  local_104 = "Lot/HeightContents";
  local_140 = this;
  uVar6 = LotGrid_ReadExternalDimensions
                    (&local_c0,context,0x93d6d4,*placementHeader,placementHeader[1],
                     placementHeader[9],placementHeader[10],&local_11c,&local_130,&local_114);
  if (uVar6 == '\0') goto LAB_00ac373b;
  Word32Vector_Resize(&local_110,local_114);
  uVar7 = Stream_ReadUInt32ArrayByByteOrder
                    (*(int **)(context + 8),(uint *)local_110,local_114,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,(byte)uVar7);
  ResourceStreamContext_Close(context);
  if (local_110 == local_10c) {
    if (local_110 != (int **)0x0) {
      Memory_FreeIfNonNull(local_110);
    }
    goto LAB_00ac373b;
  }
  iVar11 = *(int *)((int)this + 0x290);
  local_144 = (undefined4 ******)0x7f7fffff;
  local_e4 = 0;
  pppppuVar8 = local_128;
  switch(*rotationInOut) {
  case 0:
    local_124 = 0;
    pppppuVar8 = (undefined4 *****)0x0;
    break;
  case 1:
    local_124 = 1;
    pppppuVar8 = (undefined4 *****)0x1;
    break;
  case 2:
    local_124 = 2;
    pppppuVar8 = (undefined4 *****)0x2;
    break;
  case 3:
    local_124 = 3;
    pppppuVar8 = (undefined4 *****)0x3;
    break;
  case 4:
    local_124 = 3;
    pppppuVar8 = (undefined4 *****)0x0;
  }
  local_118 = (uint)pppppuVar8 & 0xffff;
  bVar4 = false;
  local_e0 = (uint)*positionInOut;
  if ((ushort)pppppuVar8 <= (ushort)local_124) {
    do {
      local_120 = (int **)local_140[0x5d];
      if ((local_118 & 1) == 0) {
        ppiVar12 = (int **)placementHeader[7];
        if (ppiVar12 <= local_120) {
          ppiVar15 = (int **)placementHeader[8];
          ppiVar9 = (int **)local_140[0x5e];
          if (ppiVar15 <= ppiVar9) goto LAB_00ac3848;
        }
      }
      else {
        ppiVar15 = (int **)placementHeader[8];
        if (ppiVar15 <= local_120) {
          ppiVar12 = (int **)placementHeader[7];
          ppiVar9 = (int **)local_140[0x5e];
          if (ppiVar12 <= ppiVar9) {
LAB_00ac3848:
            local_12c = (float)(local_130 - 1);
            bVar4 = true;
            iVar19 = local_11c - 1;
            FUN_00cb2fd0(&local_100,(int)local_120 + 1,(int)ppiVar9 + 1,(int)ppiVar12 + 1,
                         (int)ppiVar15 + 1,local_118 & 0xffff,local_e0);
            iVar17 = placementHeader[9] * local_130 * local_11c;
            local_a0[0] = 0;
            local_a0[1] = 0;
            local_a0[3] = 0;
            local_8c = 0;
            local_a0[4] = iVar19 >> 1;
            local_78 = iVar19 >> 1;
            iVar18 = -iVar17;
            local_7c = (int)local_12c >> 1;
            local_70 = 0;
            local_68 = 0;
            local_64 = (int)local_12c >> 1;
            local_a0[2] = iVar19;
            local_88 = iVar19;
            local_84 = (int)local_12c;
            local_80 = iVar19;
            local_74 = (int)local_12c;
            local_6c = (int)local_12c;
            pfVar10 = local_60;
            iVar14 = 8;
            do {
              *pfVar10 = 0.0;
              pfVar10[1] = 0.0;
              pfVar10 = pfVar10 + 2;
              iVar14 = iVar14 + -1;
            } while (-1 < iVar14);
            local_13c = 0;
            do {
              FUN_00cb30c0(&local_100,local_a0[local_13c * 2],local_a0[local_13c * 2 + 1],
                           (int *)local_134,(int *)local_138);
              iVar14 = *(int *)(iVar11 + 0x24);
              local_60[local_13c * 2 + 1] =
                   *(float *)(*(int *)(iVar14 + 0x10) +
                             (((int)local_134[0] - *(int *)(iVar14 + 4) * *(int *)(iVar11 + 0x10)) *
                              *(int *)(iVar14 + 8) + (int)local_138[0]) * 4);
              local_13c = local_13c + 1;
            } while (local_13c < 8);
            local_60[local_13c * 2 + 1] = 0.0;
            local_13c = 0;
            if (0 < (int)local_130) {
              local_120 = local_110 + -iVar17;
              do {
                FUN_00cb30c0(&local_100,0,local_13c,(int *)local_134,(int *)local_138);
                iVar14 = *(int *)(iVar11 + 0x24);
                piVar1 = *local_120;
                fVar23 = *(float *)(*(int *)(iVar14 + 0x10) +
                                   (((int)local_134[0] -
                                    *(int *)(iVar14 + 4) * *(int *)(iVar11 + 0x10)) *
                                    *(int *)(iVar14 + 8) + (int)local_138[0]) * 4);
                iVar14 = 0;
                do {
                  fVar21 = (local_60[iVar14 * 2 + 1] + (float)piVar1) - fVar23;
                  local_60[iVar14 * 2] = fVar21 * fVar21 + local_60[iVar14 * 2];
                  iVar14 = iVar14 + 1;
                } while (iVar14 < 9);
                FUN_00cb30c0(&local_100,iVar19,local_13c,(int *)local_134,(int *)local_138);
                iVar14 = *(int *)(iVar11 + 0x24);
                piVar1 = local_110[iVar19 * local_130 + local_13c + iVar18];
                fVar23 = *(float *)(*(int *)(iVar14 + 0x10) +
                                   (((int)local_134[0] -
                                    *(int *)(iVar14 + 4) * *(int *)(iVar11 + 0x10)) *
                                    *(int *)(iVar14 + 8) + (int)local_138[0]) * 4);
                iVar14 = 0;
                do {
                  fVar21 = (local_60[iVar14 * 2 + 1] + (float)piVar1) - fVar23;
                  local_60[iVar14 * 2] = fVar21 * fVar21 + local_60[iVar14 * 2];
                  iVar14 = iVar14 + 1;
                } while (iVar14 < 9);
                local_120 = local_120 + 1;
                local_13c = local_13c + 1;
              } while (local_13c < (int)local_130);
            }
            iVar14 = 0;
            if (0 < (int)local_11c) {
              do {
                FUN_00cb30c0(&local_100,iVar14,0,(int *)local_134,(int *)local_138);
                piVar1 = local_110[iVar14 * local_130 + iVar18];
                iVar17 = *(int *)(iVar11 + 0x24);
                fVar23 = *(float *)(*(int *)(iVar17 + 0x10) +
                                   (((int)local_134[0] -
                                    *(int *)(iVar17 + 4) * *(int *)(iVar11 + 0x10)) *
                                    *(int *)(iVar17 + 8) + (int)local_138[0]) * 4);
                iVar17 = 0;
                do {
                  fVar21 = (local_60[iVar17 * 2 + 1] + (float)piVar1) - fVar23;
                  local_60[iVar17 * 2] = fVar21 * fVar21 + local_60[iVar17 * 2];
                  iVar17 = iVar17 + 1;
                } while (iVar17 < 9);
                FUN_00cb30c0(&local_100,iVar14,(int)local_12c,(int *)local_134,(int *)local_138);
                iVar17 = *(int *)(iVar11 + 0x24);
                piVar1 = local_110[iVar14 * local_130 + iVar18 + (int)local_12c];
                fVar23 = *(float *)(*(int *)(iVar17 + 0x10) +
                                   (((int)local_134[0] -
                                    *(int *)(iVar17 + 4) * *(int *)(iVar11 + 0x10)) *
                                    *(int *)(iVar17 + 8) + (int)local_138[0]) * 4);
                iVar17 = 0;
                do {
                  fVar21 = (local_60[iVar17 * 2 + 1] + (float)piVar1) - fVar23;
                  local_60[iVar17 * 2] = fVar21 * fVar21 + local_60[iVar17 * 2];
                  iVar17 = iVar17 + 1;
                } while (iVar17 < 9);
                iVar14 = iVar14 + 1;
              } while (iVar14 < (int)local_11c);
            }
            local_d8 = &local_d8;
            local_c4 = "Lot/TerrainOffsetResultSet";
            local_d0 = (undefined4 *)0x0;
            local_cc = 0;
            local_c8 = 0;
            pfVar10 = local_60;
            iVar14 = 9;
            local_d4 = local_d8;
            do {
              local_128 = (undefined4 *****)((uint)local_128 & 0xffffff00);
              FUN_00abbe60(local_dc,local_60 + 0x12,pfVar10);
              pfVar10 = pfVar10 + 2;
              iVar14 = iVar14 + -1;
            } while (iVar14 != 0);
            ppppppuVar13 = local_d4[4];
            puVar5 = local_d0;
            if ((float)ppppppuVar13 < (float)local_144) {
              placementHeader[0xd] = (uint)local_d4[5];
              local_e4 = local_118 & 0xffff;
              *rotationInOut = (ushort)local_118;
              local_144 = ppppppuVar13;
              if (ABS((float)local_d4[4]) < 0.01) goto joined_r0x00ac3d86;
            }
            while (puVar5 != (undefined4 *)0x0) {
              FUN_008b19b0((undefined4 *)*puVar5);
              puVar3 = (undefined4 *)puVar5[1];
              Memory_FreeIfNonNull(puVar5);
              puVar5 = puVar3;
            }
          }
        }
      }
      local_118 = local_118 + 1;
    } while ((ushort)local_118 <= (ushort)local_124);
    if (bVar4) goto LAB_00ac3db6;
  }
  if (local_110 != (int **)0x0) {
    Memory_FreeIfNonNull(local_110);
  }
LAB_00ac373b:
  if (local_b0 != (void *)0x0) {
    Memory_FreeIfNonNull(local_b0);
  }
  return false;
joined_r0x00ac3d86:
  while (puVar5 != (undefined4 *)0x0) {
    FUN_008b19b0((undefined4 *)*puVar5);
    puVar3 = (undefined4 *)puVar5[1];
    Memory_FreeIfNonNull(puVar5);
    puVar5 = puVar3;
  }
LAB_00ac3db6:
  piVar1 = local_140;
  local_12c = ABS(DAT_01183e84 - 3.4028235e+38);
  if (1.5258789e-05 <= ABS(DAT_01183e84 - 3.4028235e+38)) {
    placementHeader[0xd] = (uint)DAT_01183e84;
  }
  cVar2 = (char)local_140[300];
  if (cVar2 == '\0') {
LAB_00ac3ea6:
    if (((local_140[0x102] == 1) && (local_140[0x103] == 0x50)) ||
       ((char)placementHeader[0x12] == '\0')) {
      if (cVar2 == '\0') goto LAB_00ac401c;
LAB_00ac3f26:
      if (((local_140[0x102] != 1) || (local_140[0x103] != 0x50)) &&
         ((char)placementHeader[0x12] == '\0')) {
        piVar22 = (int *)0x501502f9;
        local_140 = (int *)0x501502f9;
        ppiVar12 = local_110;
        uVar16 = local_114;
        if (0 < (int)local_114) {
          do {
            ppiVar15 = ppiVar12;
            if ((float)piVar22 < (float)*ppiVar12 || (float)piVar22 == (float)*ppiVar12) {
              ppiVar15 = &local_140;
            }
            piVar22 = *ppiVar15;
            uVar16 = uVar16 - 1;
            local_140 = piVar22;
            ppiVar12 = ppiVar12 + 1;
          } while (uVar16 != 0);
        }
        if (DAT_011edbc4 == 0) {
          local_144 = (undefined4 ******)0x0;
        }
        else {
          fVar20 = WorldWater_GetSeaLevel(DAT_011edbc4);
          local_144 = (undefined4 ******)(float)fVar20;
        }
        iVar11 = (**(code **)(*piVar1 + 100))(&local_100);
        local_100 = (float)local_144 - *(float *)(iVar11 + 4);
        fStack_fc = local_100;
        fStack_f8 = local_100;
        fStack_f4 = local_100;
        local_128 = (undefined4 *****)(local_100 + 1.0);
        if ((*(char *)((int)piVar1 + 0x4bd) == '\0') || (0.0 <= (float)local_140)) {
          local_144 = (undefined4 ******)((float)local_140 + (float)placementHeader[0xd]);
          ppppppuVar13 = &local_128;
          if ((float)local_128 <= (float)local_140 + (float)placementHeader[0xd]) {
            ppppppuVar13 = &local_144;
          }
          placementHeader[0xd] = (uint)*ppppppuVar13;
        }
        else {
          placementHeader[0xd] = (uint)((float)local_128 - (float)local_140);
        }
      }
      goto LAB_00ac401c;
    }
    if ((float)placementHeader[0x13] <= -1000.0) goto LAB_00ac401c;
    fVar23 = (float)placementHeader[0xd];
    fVar21 = ((float)local_140[99] + (float)local_140[0x62]) * 0.5 -
             (fVar23 + (float)placementHeader[0x13]);
  }
  else {
    if (((local_140[0x102] == 1) && (local_140[0x103] == 0x50)) ||
       ((char)placementHeader[0x12] == '\0')) {
      if (cVar2 == '\0') goto LAB_00ac3ea6;
      goto LAB_00ac3f26;
    }
    local_128 = (undefined4 *****)placementHeader[0x13];
    if ((float)local_128 <= -1000.0) goto LAB_00ac401c;
    if (DAT_011edbc4 == 0) {
      local_144 = (undefined4 ******)0x0;
    }
    else {
      fVar20 = WorldWater_GetSeaLevel(DAT_011edbc4);
      local_144 = (undefined4 ******)(float)fVar20;
    }
    iVar11 = (**(code **)(*piVar1 + 100))(&local_100);
    fVar23 = (float)placementHeader[0xd];
    local_100 = (float)local_144 - *(float *)(iVar11 + 4);
    fVar21 = local_100 - (fVar23 + (float)local_128);
    fStack_fc = local_100;
    fStack_f8 = local_100;
    fStack_f4 = local_100;
  }
  if ((0.1 < fVar21) || (fVar21 < -0.1)) {
    placementHeader[0xd] = (uint)(fVar23 + fVar21);
  }
LAB_00ac401c:
  uVar16 = local_e0;
  FUN_00cb2fd0(placementHeader + 0x15,piVar1[0x5d],piVar1[0x5e],placementHeader[7],
               placementHeader[8],local_e4,local_e0);
  FUN_00cb2fd0(placementHeader + 0x19,piVar1[0x5d] + 1,piVar1[0x5e] + 1,placementHeader[7] + 1,
               placementHeader[8] + 1,local_e4,uVar16);
  if (local_110 != (int **)0x0) {
    Memory_FreeIfNonNull(local_110);
  }
  if (local_b0 != (void *)0x0) {
    Memory_FreeIfNonNull(local_b0);
  }
  return true;
}

