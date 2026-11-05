/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Filters64-byte generated candidates into
   accepted/rejected/deferred groups. Checks route options, XZ/level constraints, lot room
   reachability, target ignores and temporary footprint intersections; may reject road terrain type4
   and water/land constraints. Deferred candidates replace empty accepted group, otherwise are
   appended to rejected. +0x30 contains INTEGER marker1 for a locked-portal result; initial float
   decompiler shows1.4013e-45. Leaf geometry/property flag meanings not all recovered. */

void RouteHost_FilterCandidatePoints
               (float *param_1,int *param_2,float **param_3,float **param_4,void *param_5,
               uint *param_6)

{
  code *pcVar1;
  float *pfVar2;
  void *pvVar3;
  char *pcVar4;
  char cVar5;
  bool bVar6;
  undefined1 uVar7;
  char cVar8;
  byte bVar9;
  ushort uVar10;
  char *pcVar11;
  uint uVar12;
  undefined4 uVar13;
  uint uVar14;
  undefined3 extraout_var;
  int *piVar15;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  int iVar16;
  float *pfVar17;
  int iVar18;
  float **ppfVar19;
  short sVar20;
  short sVar21;
  void *this;
  int *piVar22;
  bool bVar23;
  float10 fVar24;
  longlong lVar25;
  undefined8 uVar26;
  char *pcVar27;
  bool local_286;
  char *local_284;
  char local_27f;
  char local_27e;
  byte bStack_27d;
  int *local_27c;
  char local_277;
  char local_276;
  char local_275;
  int *local_274;
  void *local_270;
  int *local_26c;
  void *local_268;
  void *local_264;
  char *local_260;
  float *local_25c;
  uint local_258;
  undefined4 local_254;
  short local_250;
  uint local_244;
  float *local_240;
  float *pfStack_23c;
  float *pfStack_238;
  char *pcStack_234;
  float local_230;
  float fStack_22c;
  float fStack_228;
  float fStack_224;
  float local_220;
  float fStack_21c;
  float fStack_218;
  float fStack_214;
  float local_210;
  float local_20c;
  float local_208;
  float local_204;
  float local_200;
  int *local_1f0;
  int *local_1ec;
  undefined4 local_1e8;
  char *local_1e4;
  undefined1 local_1dc [4];
  undefined4 *local_1d8;
  uint local_1d4;
  undefined4 local_1d0;
  float local_1cc;
  undefined4 local_1c8;
  undefined4 local_1c4;
  char *local_1c0;
  float *local_1bc;
  int *piStack_1b8;
  int *piStack_1b4;
  undefined4 uStack_1b0;
  char *pcStack_1ac;
  LotXZLevel local_1a4;
  int local_198;
  int local_194;
  float *local_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  LotXZLevel local_17c;
  int local_170;
  int local_16c;
  void *local_164 [3];
  int local_158 [2];
  float fStack_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  int *piStack_110;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
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
  undefined4 local_a8 [2];
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float afStack_80 [4];
  float local_70;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float afStack_50 [19];
  
  local_270 = (void *)thunk_FUN_00835d40();
  local_268 = (void *)FUN_008295c0((int)local_270);
  local_240 = (float *)*param_1;
  pfStack_23c = (float *)param_1[1];
  pfStack_238 = (float *)param_1[2];
  pcStack_234 = (char *)param_1[3];
  local_264 = DAT_011edbc4;
  local_190 = local_240;
  fStack_18c = (float)pfStack_23c;
  fStack_188 = (float)pfStack_238;
  fStack_184 = (float)pcStack_234;
  pcVar11 = LotSpatialIndex_FindContainingLotAtWorldXZ
                      (DAT_011edbc4,(float)local_240,(float)pfStack_238);
  local_260 = pcVar11;
  uVar12 = FUN_0074be70(pcVar11,param_1[9],param_1,2);
  local_244 = uVar12 & 0xffff;
  if ((pcVar11 != (char *)0x0) && ((short)uVar12 == -1)) {
    local_244 = 0;
  }
  uVar13 = FUN_00c73640(param_1,(int)param_6);
  pvVar3 = local_270;
  cVar5 = (char)uVar13;
  local_27e = '\0';
  this = (void *)((int)local_270 + 0x8c);
  local_276 = '\0';
  uVar13 = RoutingOptions_TestMask(param_5,4,0,'\x01');
  if ((char)uVar13 != '\0') {
    local_240 = (float *)*param_1;
    pfStack_23c = (float *)param_1[1];
    pfStack_238 = (float *)param_1[2];
    pcStack_234 = (char *)param_1[3];
    local_276 = '\x01';
    local_190 = local_240;
    fStack_18c = (float)pfStack_23c;
    fStack_188 = (float)pfStack_238;
    fStack_184 = (float)pcStack_234;
    uVar12 = FUN_0066dc30(this,(int)local_264,(float)local_240,0x3f800000,(float)pfStack_238);
    if (uVar12 < *(uint *)((int)pvVar3 + 0x98)) {
      local_27e = *(char *)(*(int *)((int)pvVar3 + 0xa8) + uVar12 * 2);
    }
    else {
      local_27e = '\0';
    }
  }
  local_1cc = DAT_00f998f8;
  local_1c8 = DAT_0103fd88;
  local_1c0 = "Routing/LotRoomRecordToReachabilityMap";
  local_1d4 = 1;
  local_1d8 = &DAT_0114d900;
  local_1d0 = 0;
  local_1c4 = 0;
  FUN_00758830(param_3,param_2[1] - *param_2 >> 6);
  FUN_00758830(param_4,param_2[1] - *param_2 >> 6);
  local_240 = (float *)0x0;
  pfStack_23c = (float *)0x0;
  pfStack_238 = (float *)0x0;
  pcStack_234 = "Routing/tentativePts";
  FUN_0074cc70(local_164,local_274);
  local_27f = '\x01';
  uVar13 = RoutingOptions_TestMask(param_5,0,0x20000000,'\0');
  if ((char)uVar13 == '\0') {
    uVar13 = RoutingOptions_TestMask(param_5,1,0,'\0');
    local_277 = '\0';
    if ((char)uVar13 == '\0') goto LAB_0075c549;
  }
  local_277 = '\x01';
LAB_0075c549:
  if ((local_270 != (void *)0x0) &&
     ((*(char *)((int)local_274 + 0x29) == '\0' ||
      (local_27f = '\x01', *(char *)((int)local_270 + 0x30) == '\0')))) {
    local_27f = '\0';
  }
  local_25c = (float *)*param_2;
  local_1bc = (float *)param_2[1];
  local_1f0 = (int *)0x0;
  local_1ec = (int *)0x0;
  local_1e8 = 0;
  local_1e4 = "Routing/RoutingHost/TemporaryFootprintSet";
  pfVar17 = (float *)0x0;
  if (local_25c != local_1bc) {
    do {
      local_230 = *local_25c;
      fStack_22c = local_25c[1];
      fStack_228 = local_25c[2];
      fStack_224 = local_25c[3];
      local_20c = local_25c[9];
      local_208 = local_25c[10];
      local_220 = local_25c[4];
      fStack_21c = local_25c[5];
      fStack_218 = local_25c[6];
      fStack_214 = local_25c[7];
      local_204 = local_25c[0xb];
      local_200 = local_25c[0xc];
      local_210 = local_25c[8];
      local_284 = (char *)0x0;
      local_275 = '\0';
      uVar12 = FUN_0074cd90(local_274,&local_230,local_164,&local_284);
      pvVar3 = local_270;
      local_286 = (bool)((byte)uVar12 & 1);
      if (((uVar12 & 1) != 0) && (local_276 != '\0')) {
        local_e0 = local_230;
        fStack_dc = fStack_22c;
        fStack_d8 = fStack_228;
        fStack_d4 = fStack_224;
        local_d0 = local_230;
        fStack_cc = fStack_22c;
        fStack_c8 = fStack_228;
        fStack_c4 = fStack_224;
        uVar12 = FUN_0066dc30((void *)((int)local_270 + 0x8c),(int)local_264,local_230,0x3f800000,
                              fStack_228);
        if (uVar12 < *(uint *)((int)pvVar3 + 0x98)) {
          cVar8 = *(char *)(*(int *)((int)pvVar3 + 0xa8) + uVar12 * 2);
        }
        else {
          cVar8 = '\0';
        }
        if (local_27e != cVar8) {
          local_286 = false;
        }
      }
      local_190 = (float *)(*param_1 - local_230);
      fStack_188 = param_1[2] - fStack_228;
      fStack_184 = param_1[3] - fStack_224;
      fStack_18c = 0.0;
      if (local_286 == false) goto LAB_0075ce0e;
      local_90 = fStack_188 * fStack_188 + 0.0 + (float)local_190 * (float)local_190;
      local_70 = _DAT_0106e6ec;
      if ((local_90 <= _DAT_0106e6ec) && (param_1[9] == local_20c)) goto LAB_0075ce7a;
      if (local_284 == (char *)0x0) {
        local_c0 = local_230;
        fStack_bc = fStack_22c;
        fStack_b8 = fStack_228;
        fStack_b4 = fStack_224;
        local_120 = local_230;
        fStack_11c = fStack_22c;
        fStack_118 = fStack_228;
        fStack_114 = fStack_224;
        local_284 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_164[0],local_230,fStack_228);
      }
      pcVar11 = local_284;
      bVar23 = false;
      if ((int)local_20c < 0) {
        if (local_284 != (char *)0x0) {
          local_1a4.x = DAT_00fab218;
          local_1a4.z = DAT_00fab218;
          local_1a4.level = 0;
          Lot_WorldPositionToLocalXZLevel(local_284,&local_230,&local_1a4);
          bVar6 = Lot_TestProperty15AtLocalLocation(pcVar11,&local_1a4);
          if (bVar6) {
            local_286 = true;
            goto LAB_0075c7c8;
          }
          uVar12 = Lot_TestNextLevelAtLocalLocation(pcVar11,&local_1a4,1);
          if ((char)uVar12 == '\0') goto LAB_0075ce0e;
          local_286 = true;
          bVar23 = true;
          goto LAB_0075c824;
        }
LAB_0075ce0e:
        pfVar17 = param_4[1];
        ppfVar19 = param_4;
        if (pfVar17 < param_4[2]) {
LAB_0075ce1f:
          ppfVar19[1] = pfVar17 + 0x10;
          pfVar2 = pfStack_23c;
          if (pfVar17 != (float *)0x0) {
            *pfVar17 = local_230;
            pfVar17[1] = fStack_22c;
            pfVar17[2] = fStack_228;
            pfVar17[3] = fStack_224;
            pfVar17[4] = local_220;
            pfVar17[5] = fStack_21c;
            pfVar17[6] = fStack_218;
            pfVar17[7] = fStack_214;
            pfVar17[8] = local_210;
            pfVar17[9] = local_20c;
            pfVar17[10] = local_208;
            pfVar17[0xb] = local_204;
            pfVar17[0xc] = local_200;
          }
        }
        else {
LAB_0075d203:
          FUN_00654070(ppfVar19,pfVar17,&local_230);
          pfVar2 = pfStack_23c;
        }
      }
      else {
LAB_0075c7c8:
        if (pcVar11 != (char *)0x0) {
          local_17c.x = DAT_00fab218;
          local_17c.z = DAT_00fab218;
          local_17c.level = 0;
          FUN_00adc920(pcVar11,&local_230,&local_17c.x);
          uVar12 = Lot_TestNextLevelAtLocalLocation(pcVar11,&local_17c,1);
          if ((char)uVar12 != '\0') {
            bVar23 = true;
          }
        }
        if (local_286 == false) {
LAB_0075c8ac:
          if (bVar23) goto LAB_0075c8b4;
        }
        else {
LAB_0075c824:
          if ((((local_277 == '\0') && (pcVar11 != (char *)0x0)) && (local_20c == 0.0)) &&
             (((*(int *)(pcVar11 + 0x408) != 1 || (*(int *)(pcVar11 + 0x40c) != 0x50)) &&
              ((uVar12 = FUN_00affb90(pcVar11,&local_230), (char)uVar12 != '\0' &&
               (uVar13 = RoutingOptions_TestMask(param_5,0x10000000,0,'\0'), (char)uVar13 == '\0')))
              ))) {
            local_286 = false;
            goto LAB_0075c8ac;
          }
          uVar13 = RoutingOptions_TestMask(param_5,0x80000000,0,'\0');
          if ((char)uVar13 != '\0') goto LAB_0075c8ac;
LAB_0075c8b4:
          uVar12 = local_244;
          pcVar4 = local_260;
          sVar20 = (short)local_244;
          sVar21 = sVar20;
          if (local_260 == (char *)0x0) {
            if (pcVar11 == (char *)0x0) goto LAB_0075cc17;
            sVar21 = 0;
          }
          if (local_284 == (char *)0x0) {
LAB_0075c8fc:
            local_27c = (int *)0x0;
          }
          else {
            uVar14 = FUN_0074be70(local_284,local_20c,&local_230,2);
            local_27c = (int *)(uVar14 & 0xffff);
            if ((short)uVar14 == -1) goto LAB_0075c8fc;
            pcVar11 = local_284;
            if ((short)uVar14 < 0) goto LAB_0075cc17;
          }
          local_250 = sVar21;
          if (pcVar4 == (char *)0x0) {
LAB_0075cac0:
            if (local_284 == (char *)0x0) {
LAB_0075cacc:
              local_258 = *(uint *)(pcVar4 + 0x48);
              local_254 = *(undefined4 *)(pcVar4 + 0x4c);
            }
            else {
              local_258 = *(uint *)(local_284 + 0x48);
              local_254 = *(undefined4 *)(local_284 + 0x4c);
            }
            if (local_284 != (char *)0x0) {
              local_250 = (short)local_27c;
            }
            FUN_00756590(local_1dc,local_158,&local_258);
            if (local_158[0] != local_1d8[local_1d4]) {
              iVar18 = *(int *)(local_158[0] + 0x10);
              goto LAB_0075ca6c;
            }
            if (pcVar4 == (char *)0x0) {
              iVar18 = 0;
            }
            else {
              uVar7 = FUN_00ab0590((int)pcVar4);
              iVar18 = CONCAT31(extraout_var_01,uVar7);
            }
            if (local_284 == (char *)0x0) {
              iVar16 = 0;
            }
            else {
              uVar7 = FUN_00ab0590((int)local_284);
              iVar16 = CONCAT31(extraout_var_02,uVar7);
            }
            if (pcVar4 == (char *)0x0) {
              pcVar11 = (char *)(iVar16 + 4U & 0xffff);
            }
            else if (sVar20 < 1) {
              if (sVar20 == 0) {
                pcVar11 = (char *)(uint)(ushort)(*(short *)(param_1 + 9) + 4);
              }
              else {
                pcVar11 = (char *)0xffff;
              }
            }
            else {
              pcVar11 = (char *)(uVar12 + 0x10 & 0xffff);
            }
            if (local_284 == (char *)0x0) {
              uVar12 = iVar18 + 4U & 0xffff;
            }
            else if ((short)local_27c < 1) {
              if ((short)local_27c == 0) {
                uVar12 = (int)local_20c + 4U & 0xffff;
              }
              else {
                uVar12 = 0xffff;
              }
            }
            else {
              uVar12 = (uint)(local_27c + 4) & 0xffff;
            }
            pcVar27 = local_284;
            if (local_284 == (char *)0x0) {
              pcVar27 = pcVar4;
            }
LAB_0075cbc8:
            iVar18 = FUN_0063fcb0(local_268,param_6,pcVar27,pcVar11,uVar12);
            if ((iVar18 == 1) || (cVar5 == '\0')) {
              bVar9 = 1;
            }
            else {
              bVar9 = 0;
            }
            local_286 = (bool)(local_286 & bVar9);
            piVar15 = (int *)FUN_007592c0(local_1dc,&local_258);
            bVar23 = iVar18 == -1;
            *piVar15 = iVar18;
          }
          else {
            if (local_284 == (char *)0x0) goto LAB_0075cacc;
            if (pcVar4 == local_284) goto LAB_0075cac0;
            local_258 = *(uint *)(pcVar4 + 0x48);
            local_254 = *(undefined4 *)(pcVar4 + 0x4c);
            FUN_00756590(local_1dc,&local_198,&local_258);
            if (local_198 == local_1d8[local_1d4]) {
              uVar7 = FUN_00ab0590((int)pcVar4);
              uVar10 = FUN_006248f0(sVar20,SUB42(param_1[9],0));
              iVar18 = FUN_0063fcb0(local_268,param_6,pcVar4,(char *)(uint)uVar10,
                                    CONCAT31(extraout_var,uVar7) + 4);
              if ((iVar18 == 1) || (cVar5 == '\0')) {
                bVar9 = 1;
              }
              else {
                bVar9 = 0;
              }
              local_286 = (bool)(local_286 & bVar9);
              piVar15 = (int *)FUN_007592c0(local_1dc,&local_258);
              *piVar15 = iVar18;
              bVar23 = iVar18 == -1;
            }
            else {
              iVar18 = *(int *)(local_198 + 0x10);
              if ((iVar18 == 1) || (cVar5 == '\0')) {
                bVar23 = iVar18 == -1;
              }
              else {
                local_286 = false;
                bVar23 = iVar18 == -1;
              }
            }
            pcVar27 = local_284;
            if (bVar23) {
              local_200 = 1.4013e-45;
            }
            local_258 = *(uint *)(local_284 + 0x48);
            local_254 = *(undefined4 *)(local_284 + 0x4c);
            sVar20 = (short)local_27c;
            local_250 = sVar20;
            piVar15 = (int *)FUN_00756590(local_1dc,local_a8,&local_258);
            local_194 = piVar15[1];
            local_198 = *piVar15;
            if (local_198 == local_1d8[local_1d4]) {
              uVar7 = FUN_00ab0590((int)pcVar27);
              pcVar11 = (char *)(CONCAT31(extraout_var_00,uVar7) + 4U & 0xffff);
              uVar10 = FUN_006248f0(sVar20,SUB42(local_20c,0));
              uVar12 = (uint)uVar10;
              goto LAB_0075cbc8;
            }
            iVar18 = *(int *)(local_198 + 0x10);
LAB_0075ca6c:
            if ((iVar18 == 1) || (cVar5 == '\0')) {
              bVar23 = iVar18 == -1;
            }
            else {
              local_286 = false;
              bVar23 = iVar18 == -1;
            }
          }
          pcVar11 = local_284;
          if (bVar23) {
            local_200 = 1.4013e-45;
          }
        }
LAB_0075cc17:
        piVar15 = local_274;
        if (local_286 == false) goto LAB_0075ce0e;
        if ((char)local_274[10] != '\0') {
          local_16c = local_274[9];
          local_170 = local_274[8];
          lVar25 = FUN_0083acb0(&local_230,DAT_00f9e504,1,(int)&local_170);
          if (lVar25 != 0) goto LAB_0075ce0e;
        }
        pvVar3 = local_270;
        if (local_270 != (void *)0x0) {
          FUN_00ca0570(local_1f0,local_1ec);
          local_1ec = local_1f0;
          uVar13 = FUN_0082e7e0(pvVar3,&local_230,DAT_00fed760,(int *)&local_1f0,'\0',*param_6);
          if ((char)uVar13 != '\0') {
            local_27c = local_1f0;
            local_26c = local_1ec;
            do {
              if (local_27c == local_26c) goto LAB_0075ce7a;
              piVar22 = (int *)*local_27c;
              if (piVar22 != (int *)0x0) {
                pcVar1 = *(code **)(*piVar22 + 4);
                piVar22[1] = piVar22[1] + 1;
                uVar26 = (*pcVar1)();
                if (((int)uVar26 != piVar15[8]) || ((int)((ulonglong)uVar26 >> 0x20) != piVar15[9]))
                {
                  uVar13 = (**(code **)(*piVar22 + 8))();
                  switch(uVar13) {
                  case 2:
                  case 4:
                  case 0xc:
                  case 0xd:
                  case 0x15:
                  case 0x17:
                  case 0x19:
                    cVar8 = (**(code **)(*piVar22 + 0x1c))(0);
LAB_0075cdd9:
                    if (cVar8 != '\0') {
LAB_0075cddd:
                      local_286 = false;
                    }
                    break;
                  case 9:
                  case 0x11:
                  case 0x18:
switchD_0075cd3f_caseD_9:
                    uVar13 = RoutingOptions_TestMask(param_5,0x200000,0,'\0');
                    if ((char)uVar13 != '\0') {
                      cVar8 = (**(code **)(*piVar22 + 0x1c))(0);
                      if (cVar8 == '\0') {
                        if (pcVar11 != (char *)0x0) {
                          Lot_WorldPositionToLocalVector(pcVar11,&local_230,afStack_80);
                          cVar8 = (**(code **)(piVar22[-1] + 0xb8))(0,afStack_80);
                          goto LAB_0075cdd9;
                        }
                        break;
                      }
                      goto LAB_0075cddd;
                    }
                    break;
                  case 0x12:
                    if (local_27f != '\0') {
                      uVar13 = RoutingOptions_TestMask(param_5,0x200000,0,'\0');
                      cVar8 = (char)uVar13;
                      goto LAB_0075cdd9;
                    }
                    break;
                  case 0x13:
                    uVar13 = RoutingOptions_TestMask(param_5,0,0x800000,'\0');
                    if ((char)uVar13 == '\0') goto switchD_0075cd3f_caseD_9;
                  }
                }
                iVar18 = piVar22[1];
                piVar22[1] = iVar18 + -1;
                if (iVar18 + -1 == 0) {
                  piVar22[1] = 1;
                  (**(code **)*piVar22)(1);
                }
              }
              local_27c = local_27c + 1;
            } while (local_286 != false);
            goto LAB_0075ce0e;
          }
        }
LAB_0075ce7a:
        if (local_286 == false) goto LAB_0075ce0e;
        uVar13 = RoutingOptions_TestMask(param_5,0x8000000,0,'\0');
        if ((char)uVar13 != '\0') {
          fStack_100 = local_230;
          fStack_fc = fStack_22c;
          fStack_f8 = fStack_228;
          fStack_f4 = fStack_224;
          fStack_a0 = local_230;
          fStack_9c = fStack_22c;
          fStack_98 = fStack_228;
          fStack_94 = fStack_224;
          iVar18 = ScriptCore.World::World_GetTerrainTypeImpl(local_230,fStack_228,0);
          local_286 = iVar18 != 4;
        }
        if (local_286 == false) goto LAB_0075ce0e;
        uVar13 = RoutingOptions_TestMask(param_5,0,0x40,'\0');
        pvVar3 = local_264;
        if ((char)uVar13 != '\0') {
          if (*(void **)((int)local_264 + 0x5c) != (void *)0x0) {
            fStack_150 = local_230;
            fStack_14c = fStack_22c;
            fStack_148 = fStack_228;
            fStack_144 = fStack_224;
            fStack_60 = local_230;
            fStack_5c = fStack_22c;
            fStack_58 = fStack_228;
            fStack_54 = fStack_224;
            uVar13 = FUN_00b77f60(*(void **)((int)local_264 + 0x5c),local_230,fStack_228,'\x01','\0'
                                  ,(undefined4 *)0x0,(float *)0x0,'\0');
            if ((char)uVar13 != '\0') {
              uVar13 = RoutingOptions_TestMask(param_5,0,0x10000000,'\0');
              if ((char)uVar13 != '\0') {
                fStack_140 = local_230;
                fStack_13c = fStack_22c;
                fStack_138 = fStack_228;
                fStack_134 = fStack_224;
                fStack_130 = local_230;
                fStack_12c = fStack_22c;
                fStack_128 = fStack_228;
                fStack_124 = fStack_224;
                fVar24 = FUN_00c6a380(pvVar3,local_230,fStack_228,0,'\0','\0',(char *)0x0,
                                      (undefined1 *)0x0,(char *)0x0,(char *)0x0,(undefined1 *)0x0,
                                      '\x01');
                fStack_f0 = fStack_22c;
                local_26c = (int *)(float)(fVar24 + (float10)DAT_00f998f8);
                piStack_110 = local_26c;
                if (fStack_22c < (float)local_26c) goto LAB_0075cfee;
              }
              goto LAB_0075ce0e;
            }
          }
LAB_0075cfee:
          local_286 = true;
        }
        if ((((local_260 == (char *)0x0) || (*(char *)((int)local_274 + 0x2a) == '\0')) ||
            (local_270 == (void *)0x0)) || (param_1[9] != local_20c)) {
LAB_0075d1e3:
          if (local_286 == false) goto LAB_0075ce0e;
          pfVar17 = param_3[1];
          ppfVar19 = param_3;
          if (param_3[2] <= pfVar17) goto LAB_0075d203;
          goto LAB_0075ce1f;
        }
        piStack_1b8 = (int *)0x0;
        piStack_1b4 = (int *)0x0;
        uStack_1b0 = 0;
        pcStack_1ac = "Routing/RoutingHost/TemporaryFootprintSet";
        uVar13 = FUN_0082eae0(local_270,param_1,&local_230,(int *)&piStack_1b8,'\x01',*param_6,
                              DAT_00f998e8);
        if ((char)uVar13 != '\0') {
          local_27c = piStack_1b8;
          local_26c = piStack_1b4;
          if (piStack_1b8 != piStack_1b4) {
            do {
              piVar15 = (int *)*local_27c;
              if (((piVar15 != (int *)0x0) && (piVar22 = piVar15 + -1, piVar22 != (int *)0x0)) &&
                 (cVar8 = (**(code **)(*piVar15 + 0x1c))(0), cVar8 != '\0')) {
                FUN_00650a00(afStack_50,param_1);
                Lot_WorldPositionToLocalVector(local_260,afStack_50,afStack_50);
                bStack_27d = 0;
                uVar12 = (**(code **)*piVar22)();
                uVar14 = 0;
                if (uVar12 != 0) {
                  do {
                    bVar9 = (**(code **)(*piVar22 + 0xb8))(uVar14,afStack_50);
                    bStack_27d = bStack_27d | bVar9;
                    uVar14 = uVar14 + 1;
                  } while (uVar14 < uVar12);
                  if (bStack_27d != 0) goto LAB_0075d117;
                }
                local_275 = '\x01';
                break;
              }
LAB_0075d117:
              local_27c = local_27c + 1;
            } while (local_27c != local_26c);
          }
        }
        FUN_00ca0570(piStack_1b8,piStack_1b4);
        if (piStack_1b8 != (int *)0x0) {
          FUN_004e44e0((int)piStack_1b8);
        }
        if (local_275 == '\0') goto LAB_0075d1e3;
        if (pfStack_238 <= pfStack_23c) {
          ppfVar19 = &local_240;
          pfVar17 = pfStack_23c;
          goto LAB_0075d203;
        }
        pfVar2 = pfStack_23c + 0x10;
        if (pfStack_23c != (float *)0x0) {
          *pfStack_23c = local_230;
          pfStack_23c[1] = fStack_22c;
          pfStack_23c[2] = fStack_228;
          pfStack_23c[3] = fStack_224;
          pfStack_23c[4] = local_220;
          pfStack_23c[5] = fStack_21c;
          pfStack_23c[6] = fStack_218;
          pfStack_23c[7] = fStack_214;
          pfStack_23c[8] = local_210;
          pfStack_23c[9] = local_20c;
          pfStack_23c[10] = local_208;
          pfStack_23c[0xb] = local_204;
          pfStack_23c[0xc] = local_200;
        }
      }
      pfStack_23c = pfVar2;
      pfVar17 = local_240;
      local_25c = local_25c + 0x10;
    } while (local_25c != local_1bc);
    if (local_240 != pfStack_23c) {
      pfVar2 = *param_3;
      if (pfVar2 == param_3[1]) {
        *param_3 = local_240;
        param_3[1] = pfStack_23c;
        param_3[2] = pfStack_238;
        pfVar17 = pfVar2;
      }
      else {
        FUN_00756730(param_4,param_4[1],local_240,pfStack_23c);
      }
    }
  }
  FUN_00ca0570(local_1f0,local_1ec);
  if (local_1f0 != (int *)0x0) {
    FUN_004e44e0((int)local_1f0);
  }
  if (pfVar17 != (float *)0x0) {
    FUN_004e44e0((int)pfVar17);
  }
  FUN_009d67f0((int)local_1d8,local_1d4);
  local_1d0 = 0;
  if (1 < local_1d4) {
    FUN_004e44e0((int)local_1d8);
  }
  return;
}

