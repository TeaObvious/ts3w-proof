/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX routing manager
   plus record and child-operation argument; RET8/ALonlyBoolean. Clears record+14 toFFFFFFFF
   at0063BF6C before lotlookup. Candidate scans require nonnull portal and bit1 at+58 before
   boundary/score filters, and include target/EntrancePaint resource-driven paths. Successful
   observed paths call0063A9E0 before publishing selected routing identifier: MOVSX stackbyte
   at0063C3C5->store0063C3D0, or candidate+C byte at0063CD1C->store0063CD24. Those bytes originate
   from low ordinals in pointer-sequence walks (63C204/21B/364 and63CA3C/53/5A/CBCA/CE); this does
   not establish an unrestricted vector-index domain or header/live join. Values80..FF
   signextendnegative;FF becomes getter rejection. Complete stored body has two ranges
   and7nonownedgapbytes; no body/flow/analysis repair, full candidate-child policy or live
   script-target parity is claimed. Complete actual C/Listing and pristine PE support the selected
   observations. Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain
   unchanged; current managed resource/cache policy is preserved. */

undefined4 LotRouting_SelectMainEntranceIdentifier(int *param_1,float *param_2)

{
  int iVar1;
  bool bVar2;
  uint uVar3;
  undefined1 uVar4;
  char cVar5;
  byte bVar6;
  char cVar7;
  int *piVar8;
  undefined3 extraout_var;
  uint uVar9;
  undefined4 uVar10;
  undefined4 extraout_EAX;
  int *extraout_EAX_00;
  char cVar11;
  uint uVar12;
  char cVar13;
  char cVar14;
  int iVar15;
  float fVar16;
  float fVar17;
  char *pcVar18;
  char local_15d;
  char local_15c;
  char local_15b;
  char local_159;
  void *local_158;
  int *local_154;
  uint local_14c;
  void *local_148;
  undefined2 local_144;
  char *local_140;
  float fStack_13c;
  char *pcStack_138;
  char *pcStack_134;
  float local_130;
  uint local_12c;
  uint local_128 [5];
  void *local_114;
  char *local_110;
  float fStack_10c;
  char *pcStack_108;
  char *pcStack_104;
  char *local_100;
  char *pcStack_fc;
  char *pcStack_f8;
  char *pcStack_f4;
  float local_f0;
  undefined1 local_ec;
  undefined1 local_eb;
  undefined1 local_ea;
  float local_dc;
  void *local_d8;
  char *local_d4;
  float local_d0;
  float local_cc;
  float local_c8;
  char *local_c4;
  float local_c0;
  int local_bc;
  int local_b8;
  int local_b4;
  void *local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  char *local_a4;
  int local_a0;
  float local_9c;
  undefined4 *local_98;
  undefined4 *local_94;
  undefined1 *local_90;
  undefined4 local_88 [24];
  undefined1 local_28 [12];
  char local_1c;
  
  local_b4 = param_1[0x24] + (uint)*(ushort *)(param_1 + 0x5b) * 0x44;
  param_1[5] = -1;
  piVar8 = WorldObjects_FindLotByGuid(DAT_011edbc4,*param_1,param_1[1],(uint *)0x0);
  if ((piVar8 == (int *)0x0) || (local_d8 = (void *)piVar8[0xa5], local_d8 == (void *)0x0))
  goto LAB_0063cd5a;
  local_d4 = (char *)(float)piVar8[0x5d];
  local_98 = local_88;
  local_c8 = (float)piVar8[0x5e];
  local_90 = local_28;
  bVar2 = false;
  local_94 = local_98;
  uVar4 = Lot_IsCommercialDivingLot((int)piVar8);
  local_b8 = CONCAT31(extraout_var,uVar4);
  if (param_1[8] != 0) {
    local_c4 = (char *)param_1[0xc];
    local_c0 = (float)param_1[0xe];
    pcStack_fc = (char *)param_1[0xe];
    local_100 = (char *)param_1[0xc];
    cVar5 = '\b';
    pcStack_134 = (char *)0x0;
    local_15d = '\b';
    fVar16 = ABS((float)local_100);
    fStack_13c = (float)pcStack_fc;
    if (ABS((float)pcStack_fc) < ABS((float)local_100)) {
      cVar5 = '\x01';
      fStack_13c = 0.0;
      local_15d = '\x01';
      fVar16 = ABS((float)pcStack_fc);
      pcStack_134 = local_100;
    }
    if (ABS((float)local_100 - (float)local_d4) < fVar16) {
      cVar5 = '\x02';
      pcStack_134 = local_d4;
      local_15d = '\x02';
      fVar16 = ABS((float)local_100 - (float)local_d4);
      fStack_13c = (float)pcStack_fc;
    }
    local_110 = (char *)((float)pcStack_fc - local_c8);
    fStack_10c = (float)pcStack_fc - local_c8;
    pcStack_108 = (char *)((float)pcStack_fc - local_c8);
    pcStack_104 = (char *)((float)pcStack_fc - local_c8);
    pcStack_f8 = local_100;
    pcStack_f4 = local_100;
    local_bc = local_b8;
    if (fVar16 <= ABS((float)local_110)) {
      local_140 = pcStack_134;
      pcStack_138 = pcStack_134;
      if (cVar5 == '\0') goto LAB_0063c3e2;
    }
    else {
      local_15d = '\x04';
      fStack_13c = local_c8;
      pcStack_134 = local_100;
    }
    iVar15 = 0;
    local_1c = -1;
    local_130 = DAT_01159278;
    local_158 = (void *)0x0;
    local_140 = pcStack_134;
    pcStack_138 = pcStack_134;
    local_110 = pcStack_134;
    fStack_10c = fStack_13c;
    pcStack_108 = pcStack_134;
    pcStack_104 = pcStack_134;
    local_c4 = pcStack_134;
    local_c0 = fStack_13c;
    bVar2 = true;
    if (param_1[4] != 0) {
      local_dc = (float)param_1[4];
      local_154 = *(int **)(local_b4 + 4);
      do {
        iVar1 = *local_154;
        if (iVar1 != 0) {
          if ((*(byte *)(iVar1 + 0x58) >> 1 & 1) != 0) {
            local_d0 = *(float *)(iVar1 + 0x18);
            fVar16 = *(float *)(iVar1 + 0x14);
            uVar9 = 0;
            if (0.25 <= fVar16) {
              if ((float)piVar8[0x5d] - 0.25 < fVar16) {
                uVar9 = 2;
              }
            }
            else {
              uVar9 = 8;
            }
            if (0.25 <= local_d0) {
              if ((float)piVar8[0x5e] - 0.25 < local_d0) {
                uVar9 = uVar9 | 4;
              }
            }
            else {
              uVar9 = uVar9 | 1;
            }
            if (((uVar9 != 8) && (uVar9 != 1)) && (uVar9 != 2)) {
              if (uVar9 != 4) goto LAB_0063c37f;
            }
            if (uVar9 == (int)local_15d) {
              local_cc = (float)FUN_00624e80((int)piVar8,uVar9,fVar16,local_d0);
              UInt32PairMap_Find(param_1 + 0x50,local_128,(uint *)&local_cc);
              if (local_128[0] != *(uint *)(param_1[0x51] + param_1[0x52] * 4)) {
                if ((*(byte *)(local_128[0] + 4) & 1) != 0) goto LAB_0063c37f;
              }
              fVar17 = *(float *)(iVar1 + 0x18) - fStack_10c;
              fVar16 = (fVar16 - (float)local_140) * (fVar16 - (float)local_140) + fVar17 * fVar17;
              if (fVar16 < local_130) {
                local_1c = (char)local_158;
                iVar15 = iVar1;
                local_130 = fVar16;
              }
            }
          }
        }
LAB_0063c37f:
        local_154 = local_154 + 1;
        local_158 = (void *)((int)local_158 + 1);
      } while (local_158 < (uint)local_dc);
      if (iVar15 != 0) {
        FUN_0063a9e0(local_114,piVar8,iVar15,*(void **)(iVar15 + 0x14),*(void **)(iVar15 + 0x18),
                     '\x01',param_2);
        param_1[5] = (int)local_1c;
        return CONCAT31((int3)((uint)param_1 >> 8),1);
      }
      bVar2 = true;
    }
  }
LAB_0063c3e2:
  iVar15 = local_b8;
  local_b0 = (void *)0x0;
  local_ac = 0;
  local_a8 = 0;
  local_a4 = "Routing/EntrancePaintIndices";
  if (bVar2) {
LAB_0063c54f:
    pcStack_fc = local_c4;
    local_100._0_1_ = 8;
    pcStack_f8 = (char *)0x0;
    pcStack_f4._0_1_ = 0xff;
    local_f0 = DAT_01159278;
    local_ec = 0xff;
    local_eb = 0xff;
    local_ea = 0;
    FUN_0062a240(&local_98,&local_100);
    pcStack_fc = (char *)((float)local_d4 - (float)local_c4);
    local_100._0_1_ = 2;
    pcStack_f8 = (char *)0x0;
    pcStack_f4._0_1_ = 0xff;
    local_f0 = DAT_01159278;
    local_ec = 0xff;
    local_eb = 0xff;
    local_ea = 0;
    FUN_0062a240(&local_98,&local_100);
    pcStack_fc = (char *)local_c0;
    local_100._0_1_ = 1;
    pcStack_f8 = (char *)0x0;
    pcStack_f4._0_1_ = 0xff;
    local_f0 = DAT_01159278;
    local_ec = 0xff;
    local_eb = 0xff;
    local_ea = 0;
    FUN_0062a240(&local_98,&local_100);
    pcStack_fc = (char *)(local_c8 - local_c0);
    local_100 = (char *)CONCAT31(local_100._1_3_,4);
    pcStack_f8 = (char *)0x0;
    pcStack_f4 = (char *)CONCAT31(pcStack_f4._1_3_,0xff);
    local_f0 = DAT_01159278;
    local_ec = 0xff;
    local_eb = 0xff;
    local_ea = 0;
    FUN_0062a240(&local_98,&local_100);
    FUN_0062a730(local_98,local_94);
    local_d0 = -NAN;
    local_cc = DAT_01159278;
    local_158 = (void *)0x0;
    local_12c = 0;
    do {
      fVar16 = local_c0;
      pcVar18 = local_c4;
      switch(*(undefined1 *)(local_12c + (int)local_98)) {
      case 1:
        fVar16 = 0.125;
        break;
      case 2:
        pcVar18 = (char *)((float)piVar8[0x5d] - 0.125);
        break;
      case 4:
        fVar16 = (float)piVar8[0x5e] - 0.125;
        break;
      case 8:
        pcVar18 = (char *)0x3e000000;
      }
      cVar14 = '\0';
      cVar5 = (char)(int)(float)pcVar18;
      local_130 = (float)CONCAT31(local_130._1_3_,cVar5);
      uVar12 = (uint)fVar16;
      cVar7 = (char)uVar12;
      local_15c = '\x01';
      local_154 = (int *)(uVar12 & 0xff);
      local_14c = 0;
      local_15b = '\0';
      local_159 = '\0';
      local_a0 = -1;
      local_110 = (char *)0xffffffff;
      fStack_10c = -NAN;
      pcStack_108 = (char *)0xffffffff;
      pcStack_104 = (char *)0xffffffff;
      uVar9 = local_12c;
LAB_0063c7c4:
      uVar3 = uVar9;
      cVar13 = cVar14;
      switch(*(undefined1 *)(uVar3 + (int)local_98)) {
      case 1:
      case 4:
        cVar11 = local_15c * cVar14 + cVar5;
        local_154 = (int *)(uVar12 & 0xff);
        local_130 = (float)CONCAT31(local_130._1_3_,cVar11);
        if (('\0' < cVar11) && ((float)(int)cVar11 < (float)local_d4 - 1.0)) break;
        goto LAB_0063c8bd;
      case 2:
      case 8:
        bVar6 = local_15c * cVar14 + cVar7;
        local_130 = (float)CONCAT31(local_130._1_3_,cVar5);
        local_154 = (int *)(uint)bVar6;
        cVar11 = cVar5;
        if (((char)bVar6 < '\x01') || (local_c8 - 1.0 <= (float)(int)(char)bVar6))
        goto LAB_0063c8bd;
      }
      uVar10 = FUN_006295e0((uint)piVar8,(int)param_1,SUB41(local_130,0),(char)local_154,
                            (int)*(char *)(uVar3 + (int)local_98),(int *)&local_b0,(int *)&local_110
                            ,&local_a0);
      cVar11 = local_130._0_1_;
      if ((char)uVar10 == '\0') {
LAB_0063c8bd:
        if (local_14c != 0) {
          if (local_15b != '\0') {
            local_159 = (cVar14 + -1) * local_15c;
            goto LAB_0063c978;
          }
          if (local_15c != '\x01') {
            local_15b = (local_159 - (char)local_14c) + '\x01';
            goto LAB_0063c978;
          }
          local_159 = cVar14 + -1;
          local_15c = -1;
          cVar13 = '\0';
        }
      }
      else {
        if (local_14c == 0) {
          local_15b = local_15c * cVar14;
        }
        local_14c = local_14c + 1;
      }
      if (local_14c == 0) {
        if (('\0' < cVar13) && ('\0' < local_15c)) {
          local_15c = -1;
          cVar14 = cVar13;
          uVar9 = uVar3;
          goto LAB_0063c7c4;
        }
        local_15c = '\x01';
      }
      else {
        cVar14 = cVar13 + '\x01';
        uVar9 = local_12c;
        if (local_15c < '\x01') goto LAB_0063c7c4;
      }
      cVar14 = cVar13 + '\x01';
      iVar15 = (int)cVar14;
      if (((float)local_d4 <= (float)(cVar5 + iVar15)) && (cVar5 - iVar15 < 0)) goto LAB_0063c978;
      uVar9 = uVar3;
      if (((float)(cVar7 + iVar15) < local_c8) || (-1 < cVar7 - iVar15)) goto LAB_0063c7c4;
LAB_0063c978:
      fVar16 = (float)(int)local_158;
      *(undefined4 *)(uVar3 + 8 + (int)local_98) = 0;
      if ((int)local_158 < 0) {
        fVar16 = fVar16 + 4.2949673e+09;
      }
      local_148 = (void *)(fVar16 * 5.0);
      if (local_14c == 0) {
        local_148 = (void *)((float)local_148 + 10.0);
        local_144 = CONCAT11(cVar7,cVar5);
      }
      else {
        cVar14 = (char)(((int)local_159 + (int)local_15b) / 2);
        switch(*(undefined1 *)(uVar3 + (int)local_98)) {
        case 1:
        case 4:
          cVar5 = cVar14 + cVar5;
          break;
        case 2:
        case 8:
          cVar7 = cVar14 + cVar7;
          break;
        default:
          cVar5 = cVar11;
          cVar7 = (char)local_154;
        }
        local_144 = CONCAT11(cVar7,cVar5);
      }
      local_dc = DAT_01159278;
      local_14c = 0;
      if (param_1[4] != 0) {
        do {
          iVar15 = *(int *)(*(int *)(local_b4 + 4) + local_14c * 4);
          if ((iVar15 != 0) && ((*(byte *)(iVar15 + 0x58) >> 1 & 1) != 0)) {
            local_9c = *(float *)(iVar15 + 0x18);
            local_d8 = *(void **)(iVar15 + 0x14);
            uVar9 = 0;
            if (0.25 <= (float)local_d8) {
              if ((float)piVar8[0x5d] - 0.25 < (float)local_d8) {
                uVar9 = 2;
              }
            }
            else {
              uVar9 = 8;
            }
            if (0.25 <= local_9c) {
              if ((float)piVar8[0x5e] - 0.25 < local_9c) {
                uVar9 = uVar9 | 4;
              }
            }
            else {
              uVar9 = uVar9 | 1;
            }
            if (((((uVar9 == 8) || (uVar9 == 1)) || (uVar9 == 2)) || (uVar9 == 4)) &&
               (uVar9 == (int)*(char *)(local_12c + (int)local_98))) {
              local_128[0] = FUN_00624e80((int)piVar8,uVar9,(float)local_d8,local_9c);
              UInt32PairMap_Find(param_1 + 0x50,&local_140,local_128);
              if ((local_140 == *(char **)(param_1[0x51] + param_1[0x52] * 4)) ||
                 ((local_140[4] & 1U) == 0)) {
                fVar16 = *(float *)(iVar15 + 0x18) - (float)(int)local_144._1_1_;
                fVar16 = ((float)local_d8 - (float)(int)(char)local_144) *
                         ((float)local_d8 - (float)(int)(char)local_144) + fVar16 * fVar16 +
                         (float)local_148;
                if (fVar16 < local_dc) {
                  *(int *)(local_12c + 8 + (int)local_98) = iVar15;
                  *(undefined1 *)(local_12c + 0xc + (int)local_98) = (undefined1)local_14c;
                  *(float *)(local_12c + 0x10 + (int)local_98) = fVar16;
                  local_dc = fVar16;
                }
              }
            }
          }
          local_14c = local_14c + 1;
        } while (local_14c < (uint)param_1[4]);
      }
      if ((*(int *)(local_12c + 8 + (int)local_98) != 0) &&
         (fVar16 = *(float *)((int)local_98 + local_12c + 0x10), fVar16 < local_cc)) {
        *(undefined2 *)((int)local_98 + local_12c + 0x14) = local_144;
        *(undefined1 *)((int)local_98 + local_12c + 0x16) = (undefined1)local_b8;
        local_d0 = (float)local_158;
        local_cc = fVar16;
      }
      fVar16 = local_d0;
      local_158 = (void *)((int)local_158 + 1);
      local_12c = local_12c + 0x18;
    } while (local_12c < 0x60);
    if (-1 < (int)local_d0) {
      iVar15 = local_98[(int)local_d0 * 6 + 2];
      local_158 = (void *)0x0;
      local_148 = (void *)0x0;
      switch(*(undefined1 *)(local_98 + (int)local_d0 * 6)) {
      case 1:
      case 4:
        local_158 = (void *)((float)(int)*(char *)(local_98 + (int)local_d0 * 6 + 5) + 0.5);
        local_148 = *(void **)(iVar15 + 0x18);
        break;
      case 2:
      case 8:
        local_158 = *(void **)(iVar15 + 0x14);
        local_148 = (void *)((float)(int)*(char *)((int)local_d0 * 0x18 + 0x15 + (int)local_98) +
                            0.5);
      }
      FUN_0063a9e0(local_114,piVar8,iVar15,local_158,local_148,'\x01',param_2);
      param_1[5] = (int)*(char *)(local_98 + (int)fVar16 * 6 + 3);
      uVar10 = 0;
      if (local_b0 != (void *)0x0) {
        Memory_FreeIfNonNull(local_b0);
        uVar10 = extraout_EAX;
      }
      return CONCAT31((int3)((uint)uVar10 >> 8),1);
    }
  }
  else {
    cVar5 = FUN_0062c520(piVar8,local_b8,&local_c4);
    if ((cVar5 != '\0') || (cVar5 = FUN_0062c520(piVar8,iVar15 + 1,&local_c4), cVar5 != '\0')) {
      local_140 = (char *)0x0;
      fStack_13c = 0.0;
      pcStack_138 = (char *)0x0;
      pcStack_134 = "Routing/EntrancePaintKeys";
      local_128[0] = 0xfeb818ca;
      local_128[1] = 0x4d7a4dfe;
      local_128[2] = 0xb2d882;
      local_128[3] = 0;
      FUN_005c7a30(&local_140,local_128);
      local_128[0] = 0xfaed4c67;
      local_128[1] = 0xbea66f3e;
      local_128[2] = 0xb2d882;
      local_128[3] = 0;
      FUN_005c7a30(&local_140,local_128);
      local_128[0] = 0x4127adf7;
      local_128[1] = 0xe3f735e1;
      local_128[2] = 0xb2d882;
      local_128[3] = 0;
      FUN_005c7a30(&local_140,local_128);
      local_128[0] = 0x7c86740d;
      local_128[1] = 0x2c7661e6;
      local_128[2] = 0xb2d882;
      local_128[3] = 0;
      FUN_005c7a30(&local_140,local_128);
      local_128[0] = 0xcb46c2ce;
      local_128[1] = 0xced3373c;
      local_128[2] = 0xb2d882;
      local_128[3] = 0;
      FUN_005c7a30(&local_140,local_128);
      FUN_00aed300(local_d8,&local_140,&local_b0);
      if (local_140 != (char *)0x0) {
        Memory_FreeIfNonNull(local_140);
      }
      goto LAB_0063c54f;
    }
  }
  piVar8 = (int *)0x0;
  if (local_b0 != (void *)0x0) {
    Memory_FreeIfNonNull(local_b0);
    piVar8 = extraout_EAX_00;
  }
LAB_0063cd5a:
  return (uint)piVar8 & 0xffffff00;
}

