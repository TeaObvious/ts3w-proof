/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 FindGoodLocation boundary contract. cdecl4pointerargs RET; AL Boolean, upper EAX
   unspecified. Complete4945byte function envelope retained including two internal alignment gaps;
   existing three-range Ghidra body preserved. Selected instruction-verified boundaries only:
   lot/context prerequisites; ignoreGUID iteration uses8byte stride; signedbyte cell coordinates via
   MOVSX; original radius triplet fromquery54/58/5C. Radius>stored1000000 bypasses distance gate;
   otherwise separate SSE squares/add compares against radiusSquared, JB rejects including
   unordered, so NaN radius reaches gate then rejects (ordered C <= artifact must not substitute).
   Selected oriented search initializes shared RNG11ED1A0, asks4FAA30(bound8), tries atmost8rotated
   directions using byte-facingmask; source RNGalgorithm not inferred. Candidate
   wrappersB45930/B45960, room/terrain/occupancy/depth policies remain unexpanded. Oriented accepted
   candidate with delegate calls hostvirtual134
   ECXhost+4stack(resultStorage,delegate,4variantvalues,count4); values constructed from worldXYZ
   and yaw, false converted result rejects current candidate. Full callback exception/boxing ABI
   open. Success tail writes three raw locationwords then optional direction and AL1 after cleanup;
   failure AL0, candidate-free-yaw may already have been written earlier. Large SIMD expression
   expansions and float/int C casts are decompiler artifacts; full search ordering, helperstatus
   taxonomy and complete NaN behavior not established. */

bool __cdecl
LotFgl_SearchCandidates(int *query,float *outLocalLocation,int *outDirection,float *outFreeYaw)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  bool bVar4;
  char cVar5;
  ushort uVar6;
  short sVar7;
  int iVar8;
  void *pvVar9;
  float *pfVar10;
  undefined4 uVar11;
  int ***pppiVar12;
  int *piVar13;
  char *pcVar14;
  uint uVar15;
  int iVar16;
  uint uVar17;
  char cVar18;
  int iVar19;
  uint uVar20;
  float10 fVar21;
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  float fVar25;
  float fVar26;
  float fVar27;
  undefined2 local_518;
  char local_516;
  char local_511;
  char local_510;
  char local_50f;
  char local_50e;
  char local_50c;
  char local_50b;
  char local_50a;
  float local_508;
  char local_501;
  int local_500;
  int local_4fc;
  undefined2 uStack_4f8;
  char cStack_4f6;
  undefined2 local_4f4;
  char local_4f2;
  LotPaintPoint local_4f0;
  float local_4e4;
  int local_4e0;
  float local_4dc;
  uint local_4d8;
  char local_4d4 [4];
  int *local_4d0;
  uint local_4cc;
  char local_4c8;
  undefined3 uStack_4c7;
  void *local_4c4;
  uint local_4c0;
  void *local_4bc;
  float local_4b8;
  float local_4b4;
  void *local_4b0;
  float local_4ac;
  float local_4a8;
  float local_4a4;
  float local_4a0;
  int local_49c;
  int local_498;
  LotPaintPoint local_494;
  float local_488;
  int local_484;
  uint local_480;
  uint local_47c;
  undefined4 local_478;
  float local_474;
  float local_470;
  float local_46c;
  undefined4 local_468;
  uint local_464;
  float local_460;
  float local_45c;
  undefined4 local_458;
  undefined4 local_454;
  undefined4 local_450;
  undefined4 uStack_44c;
  undefined4 uStack_448;
  undefined4 uStack_444;
  undefined4 local_440;
  float fStack_43c;
  undefined4 uStack_438;
  undefined4 uStack_434;
  undefined4 local_430;
  float fStack_42c;
  undefined4 uStack_428;
  undefined4 uStack_424;
  undefined4 local_420;
  float fStack_41c;
  undefined4 uStack_418;
  undefined4 uStack_414;
  float local_410;
  undefined4 uStack_40c;
  undefined4 uStack_408;
  undefined4 uStack_404;
  undefined **appuStack_400 [2];
  undefined2 uStack_3f8;
  undefined2 uStack_3f6;
  void *local_3e0;
  int *local_3dc;
  float local_3d8;
  float local_3d4;
  float local_3d0;
  float local_3cc;
  undefined4 local_3c8;
  undefined4 local_3c4;
  uint local_3c0;
  char local_3b4;
  undefined1 local_3b2;
  undefined1 local_3b1;
  undefined1 local_3b0;
  undefined1 local_3ac [77];
  undefined1 local_35f;
  undefined1 local_35b;
  undefined1 local_35a;
  undefined1 local_359;
  undefined1 local_358;
  undefined1 local_356;
  float local_300;
  undefined4 uStack_2fc;
  float fStack_2f8;
  undefined4 uStack_2f4;
  float local_2f0;
  undefined4 uStack_2ec;
  undefined4 uStack_2e8;
  undefined4 uStack_2e4;
  undefined1 local_2e0 [16];
  float local_2d0;
  undefined4 uStack_2cc;
  float fStack_2c8;
  undefined4 uStack_2c4;
  undefined4 local_2c0;
  float fStack_2bc;
  undefined4 uStack_2b8;
  undefined4 uStack_2b4;
  undefined1 local_2b0 [16];
  undefined1 local_2a0 [16];
  undefined4 local_290;
  float fStack_28c;
  undefined4 uStack_288;
  undefined4 uStack_284;
  float local_280;
  float fStack_27c;
  float fStack_278;
  float fStack_274;
  float local_270;
  float fStack_26c;
  float fStack_268;
  float fStack_264;
  float local_260 [4];
  undefined1 local_250 [16];
  float local_240 [4];
  float local_230;
  undefined4 uStack_22c;
  float fStack_228;
  undefined4 uStack_224;
  float local_220;
  undefined4 uStack_21c;
  float fStack_218;
  undefined4 uStack_214;
  float local_210 [4];
  undefined1 local_200 [16];
  float local_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 uStack_1e4;
  float local_1e0 [4];
  float local_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float local_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float local_1b0 [4];
  float local_1a0;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  undefined4 uStack_194;
  undefined4 local_190;
  float fStack_18c;
  undefined4 uStack_188;
  undefined4 uStack_184;
  float local_180 [4];
  undefined1 local_170 [16];
  undefined4 local_15c [3];
  float local_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  undefined4 local_e0 [8];
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined1 local_b0 [32];
  undefined1 local_90 [32];
  undefined1 local_70 [32];
  undefined1 local_50 [32];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  piVar13 = (int *)query[1];
  if (((piVar13 != (int *)0x0) && (*(char *)((int)query + 0x3b) == '\0')) &&
     (local_4c4 = (void *)piVar13[0xa6], local_4c4 != (void *)0x0)) {
    local_4d0 = piVar13;
    iVar8 = thunk_FUN_00835d40();
    if (iVar8 == 0) {
      local_4bc = (void *)0x0;
    }
    else {
      local_4bc = (void *)FUN_008295c0(iVar8);
    }
    if (((char)query[0xc] == '\0') || (local_4bc != (void *)0x0)) {
      FUN_00793b80(&local_3e0);
      local_3d8 = (float)query[2];
      local_3e0 = (void *)*query;
      local_3d4 = (float)query[3];
      local_3d0 = (float)query[4];
      local_3dc = piVar13;
      if ((local_3e0 != (void *)0x0) &&
         (pvVar9 = Object_GetComponentByMask(local_3e0,DAT_011edf08), pvVar9 != (void *)0x0)) {
        local_3cc = 0.0;
        if (((*(int *)((int)pvVar9 + 8) == piVar13[0x12]) &&
            (*(int *)((int)pvVar9 + 0xc) == piVar13[0x13])) &&
           (*(int *)((int)pvVar9 + 0x18) != 0x7fffffff)) {
          local_3cc = PlacementLocation_ReadYawWithRefresh(pvVar9);
        }
        else {
          uVar11 = FUN_00b089a0(piVar13,local_3e0,&local_460);
          if ((char)uVar11 != '\0') {
            local_3cc = local_460;
          }
        }
        local_3c0 = Placement_QuantizeYawToOctant(local_3cc);
        local_3b4 = *(char *)((int)query + 0x32);
        local_3b2 = *(undefined1 *)((int)query + 0x33);
        local_35f = *(undefined1 *)((int)query + 0x35);
        local_3b1 = (undefined1)query[0xd];
        local_3b0 = (undefined1)query[0xc];
        local_35b = *(undefined1 *)((int)query + 0x36);
        local_35a = *(undefined1 *)((int)query + 0x37);
        local_359 = (undefined1)query[0xe];
        local_358 = *(undefined1 *)((int)query + 0x39);
        local_356 = *(undefined1 *)((int)query + 0x3e);
        local_3c8 = 0;
        if (((query[0x13] != 0) && (query[0x14] != 0)) && (iVar8 = 0, 0 < query[0x14])) {
          do {
            local_464 = local_464 & 0xffffff00;
            FUN_006288f0(local_3ac,local_15c,(uint *)(query[0x13] + iVar8 * 8));
            iVar8 = iVar8 + 1;
          } while (iVar8 < query[0x14]);
        }
        local_3c4 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(*query + 0x18));
        local_4b8 = (float)piVar13[0x5d];
        local_4b4 = (float)piVar13[0x5e];
        pfVar10 = &local_4b4;
        if (piVar13[0x5e] <= piVar13[0x5d]) {
          pfVar10 = &local_4b8;
        }
        local_4e4 = *pfVar10;
        local_4a0 = (float)query[2];
        local_49c = query[3];
        local_4c0 = local_3c0;
        local_498 = query[4];
        local_500 = 0;
        local_4fc = 0;
        local_4d8 = 0;
        local_50c = -1;
        local_50b = -1;
        local_50a = '\0';
        EncodeCellCoordinates(&local_4a0,&local_50c);
        pvVar9 = local_4c4;
        local_4b0 = (void *)0x0;
        if ((char)query[0xb] != '\0') {
          local_4b0 = *(void **)((int)local_4c4 + 0x5c);
        }
        _local_4c8 = CONCAT31(uStack_4c7,(char)piVar13[0x12f]);
        local_518 = 0xffff;
        local_516 = '\0';
        EncodeCellCoordinates(&local_4a0,(char *)&local_518);
        FUN_00b3ae30((int)piVar13,(char *)&local_518,(char *)((int)&local_518 + 1),(char)_local_4c8)
        ;
        local_494.z = (float)(int)local_518._1_1_;
        local_494.level = (int)local_516;
        local_494.x = (float)(int)(char)local_518;
        uVar6 = LotRoom_ResolveForLocalLocation(pvVar9,&local_494.x,2,1);
        local_480 = (uint)uVar6;
        if (((*(char *)((int)query + 0x2d) == '\0') || (query[8] < 0)) ||
           (query[8] == (int)(short)uVar6)) {
          uVar6 = LotRoom_ResolveForLocalLocation(pvVar9,&local_494.x,3,1);
          local_47c = (uint)uVar6;
          if (((*(char *)((int)query + 0x3a) == '\0') || (query[9] < 0)) ||
             (query[9] == (int)(short)uVar6)) {
            local_501 = '\0';
            if ((local_494.level < 0) && (*(char *)((int)query + 0x2d) == '\0')) {
              local_4d4[0] = -1;
              local_4d4[1] = 0xff;
              local_4d4[2] = 0;
              local_4d4[3] = 0xff;
              LotLocation_EncodeCellAndQuadrant(&local_494.x,local_4d4);
              iVar8 = Lot_ResolveCompatibleCellRegion(piVar13,local_4d4,'\0');
              bVar4 = LotRegion_MatchesTypeCode(iVar8,3);
              if (bVar4) {
                local_501 = '\x01';
              }
            }
            local_4cc = query[6];
            if ((-1 < (int)local_4cc) && (local_4cc = local_4cc & 0x80000007, (int)local_4cc < 0)) {
              local_4cc = (local_4cc - 1 | 0xfffffff8) + 1;
            }
            local_4ac = (float)query[0x15];
            local_4a8 = (float)query[0x16];
            local_4a4 = (float)query[0x17];
            Lot_WorldXZToLocalXZ
                      (piVar13,(float)query[0x16],(float)query[0x17],&local_4a8,&local_4a4);
            local_484 = (int)local_4e4 * 8;
            local_4e0 = 0;
            if (0 < local_484) {
              do {
                local_510 = (char)local_500 + (char)local_518;
                cVar18 = (char)local_4fc + local_518._1_1_;
                local_50e = local_516;
                local_511 = '\x01';
                local_50f = cVar18;
                if (local_4c8 == '\0') {
                  cVar5 = Lot_IsSignedTileInBounds(piVar13,&local_510);
                }
                else {
                  uVar11 = FUN_00807670(piVar13,&local_510);
                  cVar5 = (char)uVar11;
                }
                if (cVar5 == '\0') {
                  local_4e0 = local_4e0 + 1;
LAB_00b45e77:
                  if (query[5] == -1) {
                    FUN_00afc9f0(&local_500,&local_4fc,((int)local_4cc < 1) - 1 & local_4cc,
                                 query[0x12]);
                  }
                  else {
                    if ((int)local_4d8 < 1) {
                      local_500 = *(int *)(&DAT_0106d630 + query[5] * 4) * query[0x12];
                      local_4fc = *(int *)(&DAT_0106d650 + query[5] * 4) * query[0x12];
                      local_4d8 = 2;
                    }
                    else {
                      uVar15 = local_4d8 & 0x80000001;
                      bVar4 = uVar15 == 0;
                      if ((int)uVar15 < 0) {
                        bVar4 = (uVar15 - 1 | 0xfffffffe) == 0xffffffff;
                      }
                      if (bVar4) {
                        uVar15 = query[5] + 4U & 0x80000007;
                        if ((int)uVar15 < 0) {
                          uVar15 = (uVar15 - 1 | 0xfffffff8) + 1;
                        }
                        iVar8 = *(int *)(&DAT_0106d630 + uVar15 * 4);
                        iVar16 = (local_4d8 + 1) - ((int)(local_4d8 + 1) >> 0x1f);
                        iVar19 = *(int *)(&DAT_0106d650 + uVar15 * 4);
                      }
                      else {
                        iVar8 = *(int *)(&DAT_0106d630 + query[5] * 4);
                        iVar16 = (local_4d8 + 1) - ((int)(local_4d8 + 1) >> 0x1f);
                        iVar19 = *(int *)(&DAT_0106d650 + query[5] * 4);
                      }
                      local_4d8 = local_4d8 + 1;
                      local_500 = iVar8 * query[0x12] * (iVar16 >> 1);
                      local_4fc = iVar19 * query[0x12] * (iVar16 >> 1);
                    }
                    if (((int)local_4b8 < local_500) || ((int)local_4b4 < local_4fc)) break;
                  }
                }
                else {
                    /* COMISS radius,stored1000000 then JA bypass; unordered does NOT bypass. Later
                       COMISS radiusSquared,distanceSquared / JB rejects unordered. */
                  local_4e0 = 0;
                  if (local_4ac <= 1e+06) {
                    if (local_4ac * local_4ac <
                        ((float)(int)cVar18 - local_4a4) * ((float)(int)cVar18 - local_4a4) +
                        ((float)(int)local_510 - local_4a8) * ((float)(int)local_510 - local_4a8))
                    goto LAB_00b45e77;
                    piVar13 = local_4d0;
                  }
                  if ((local_501 != '\0') &&
                     (uVar15 = LotLevelSurface_TestCellMask((void *)piVar13[0xa4],&local_510,0xf,1),
                     (char)uVar15 == '\0')) {
                    local_50e = local_50e + '\x01';
                  }
                  pvVar9 = local_4c4;
                  local_4f0.level = (int)local_50e;
                  local_4f0.x = (float)(int)local_510 + 0.5;
                  local_4f0.z = (float)(int)local_50f + 0.5;
                  uVar11 = FUN_00b49740(local_4c4,(undefined2 *)&local_510);
                  if ((char)uVar11 == '\0') {
                    if ((*(char *)((int)query + 0x2e) == '\0') ||
                       (uVar11 = FUN_00b433f0(piVar13,&local_510,(local_3b4 != '\0') + 5,local_3ac),
                       (char)uVar11 == '\0')) {
                      if (((char)query[0xb] == '\0') ||
                         ((local_4b0 == (void *)0x0 ||
                          (uVar11 = WallGraph_CrossesLocalSegment
                                              (local_4b0,&local_4a0,&local_4f0.x,(void *)0x0),
                          (char)uVar11 == '\0')))) {
                        if (*(char *)((int)query + 0x2d) != '\0') {
                          sVar7 = LotRoom_ResolveForLocalLocation(pvVar9,&local_4f0.x,2,1);
                          if (sVar7 != (short)local_480) {
                            cVar18 = '\0';
                            goto LAB_00b460d4;
                          }
                        }
                        if ((query[8] < 0) ||
                           (sVar7 = LotRoom_ResolveForLocalLocation(pvVar9,&local_4f0.x,2,1),
                           (int)sVar7 == query[8])) {
                          if (*(char *)((int)query + 0x3a) != '\0') {
                            sVar7 = LotRoom_ResolveForLocalLocation(pvVar9,&local_4f0.x,3,1);
                            if (sVar7 != (short)local_47c) {
                              cVar18 = '\0';
                              goto LAB_00b460d4;
                            }
                          }
                          if ((char)query[0xc] != '\0') {
                            FUN_00ab16e0(piVar13,local_4f0.x,local_4f0.z,&local_46c,&local_474);
                            bVar4 = FUN_00635730(local_4bc,(int)piVar13,local_46c,local_474,
                                                 local_4f0.level,0.01,0);
                            if (!bVar4) {
                              cVar18 = '\0';
                              goto LAB_00b460d4;
                            }
                          }
                          cVar18 = local_511;
                        }
                        else {
                          cVar18 = '\0';
                        }
                      }
                      else {
                        cVar18 = '\0';
                      }
                    }
                    else {
                      cVar18 = '\0';
                    }
                  }
                  else {
                    cVar18 = '\0';
                  }
LAB_00b460d4:
                  local_511 = '\x01';
                  if ((cVar18 == '\0') ||
                     ((*(char *)((int)query + 0x31) == '\0' &&
                      (uVar15 = FUN_00ab0ab0(piVar13,&local_4f0.x,'\x01'), (char)uVar15 != '\0'))))
                  goto LAB_00b45e77;
                  if (*(char *)((int)query + 0x36) == '\0') {
                    if (*(char *)((int)query + 0x37) == '\0') {
                      if ((char)query[0xe] == '\0') {
                        if ((char)query[0xf] != '\0') {
                          LotPoint_ResolveLevelPosition((undefined *)piVar13,&local_494,local_1e0);
                          Lot_LocalPositionToWorldVector(piVar13,local_1e0,&local_300);
                          local_230 = local_300;
                          uStack_22c = uStack_2fc;
                          fStack_228 = fStack_2f8;
                          uStack_224 = uStack_2f4;
                          local_2d0 = local_300;
                          uStack_2cc = uStack_2fc;
                          fStack_2c8 = fStack_2f8;
                          uStack_2c4 = uStack_2f4;
                          local_220 = local_300;
                          uStack_21c = uStack_2fc;
                          fStack_218 = fStack_2f8;
                          uStack_214 = uStack_2f4;
                          FUN_0076bf70(&local_45c,local_300,uStack_2fc,fStack_2f8);
                          uVar11 = FUN_00788a50(local_45c,local_458,local_454,&local_4e4);
                          pvVar9 = DAT_011edbc4;
                          if ((char)uVar11 != '\0') {
                            auVar22._4_4_ = local_4e4;
                            auVar22._0_4_ = local_4e4;
                            auVar22._8_4_ = local_4e4;
                            auVar22._12_4_ = local_4e4;
                            auVar3._8_4_ = 0x40000000;
                            auVar3._0_8_ = 0x4000000040000000;
                            auVar3._12_4_ = 0x40000000;
                            local_2b0 = divps(auVar22,auVar3);
                            fVar21 = (float10)fsin((float10)(float)local_2b0._0_4_);
                            fStack_42c = 1.0;
                            uStack_424 = 0;
                            uStack_428 = 0;
                            local_430 = 0;
                            local_290 = 0;
                            fStack_28c = 1.0;
                            uStack_288 = 0;
                            uStack_284 = 0;
                            uStack_444 = 0;
                            uStack_44c = 0;
                            local_450 = 0;
                            local_511 = '\0';
                            fStack_14 = (float)fVar21;
                            fVar21 = (float10)fcos((float10)(float)local_2b0._0_4_);
                            local_4dc = (float)fVar21;
                            local_150 = fStack_14 * 0.0;
                            fStack_14c = fStack_14 * 0.0;
                            fStack_148 = fStack_14 * 0.0;
                            fStack_144 = fStack_14 * 0.0;
                            local_100 = fStack_14 * 1.0;
                            fStack_fc = fStack_14 * 1.0;
                            fStack_f8 = fStack_14 * 1.0;
                            fStack_f4 = fStack_14 * 1.0;
                            local_20 = fStack_14 * 0.0;
                            fStack_1c = fStack_14 * 0.0;
                            fStack_18 = fStack_14 * 0.0;
                            fStack_14 = fStack_14 * 0.0;
                            uStack_448 = 0xc0800000;
                            fVar25 = local_4dc * 0.0 + (fStack_fc * -4.0 - fStack_148 * 0.0);
                            fVar26 = local_4dc * 0.0 + (fStack_148 * 0.0 - local_20 * -4.0);
                            fVar27 = local_4dc * -4.0 + (local_20 * 0.0 - fStack_fc * 0.0);
                            local_130 = (fVar27 * fStack_fc - fVar26 * fStack_148) * 2.0 + 0.0;
                            fStack_12c = (fVar25 * fStack_148 - fVar27 * local_20) * 2.0 + 0.0;
                            fStack_128 = (fVar26 * local_20 - fVar25 * fStack_fc) * 2.0 + -4.0;
                            fStack_124 = (fVar25 * local_20 - fVar25 * local_20) * 2.0 + 0.0;
                            local_1d0 = fStack_2f8 + fStack_128;
                            fStack_1cc = fStack_2f8 + fStack_128;
                            fStack_1c8 = fStack_2f8 + fStack_128;
                            fStack_1c4 = fStack_2f8 + fStack_128;
                            local_270 = local_300 + local_130;
                            fStack_26c = local_300 + local_130;
                            fStack_268 = local_300 + local_130;
                            fStack_264 = local_300 + local_130;
                            local_200 = local_2b0;
                            fVar21 = WorldSurface_QueryHeight
                                               (DAT_011edbc4,local_270,local_1d0,0,'\x01','\x01',
                                                (undefined1 *)0x0,(undefined1 *)0x0,'\0','\0');
                            local_4dc = (float)fVar21;
                            fVar21 = WorldWater_GetSeaLevel((int)pvVar9);
                            if (((float10)local_4dc <= fVar21) &&
                               (local_4e4 = local_4e4 + 3.1415927, 6.2831855 < local_4e4)) {
                              local_4e4 = local_4e4 - 6.2831855;
                            }
                            *outFreeYaw = local_4e4;
                            local_3cc = local_4e4;
                            local_3c0 = Placement_QuantizeYawToOctant(local_4e4);
                            piVar13 = local_4d0;
                          }
                        }
                      }
                      else {
                        pppiVar12 = FUN_00ab7e80(piVar13,&local_4f0.x,8);
                        cVar18 = pppiVar12 == (int ***)&DAT_00000006;
                      }
                    }
                    else {
                      pppiVar12 = FUN_00ab7e80(piVar13,&local_4f0.x,0x34);
                      uVar11 = FUN_00afd570((int)pppiVar12);
                      cVar18 = (char)uVar11;
                    }
                  }
                  else {
                    pppiVar12 = FUN_00ab7e80(piVar13,&local_4f0.x,0x34);
                    uVar11 = FUN_00afd530((int)pppiVar12);
                    cVar18 = (char)uVar11;
                  }
                  if (cVar18 == '\0') goto LAB_00b45e77;
                  if (((outDirection != (int *)0x0) && ((char)query[7] != '\0')) &&
                     (local_511 != '\0')) {
                    if ((_DAT_011ed1a4 & 1) == 0) {
                      _DAT_011ed1a4 = _DAT_011ed1a4 | 1;
                      TreeVariation_Reseed(&DAT_011ed1a0,-1);
                    }
                    cVar18 = FUN_00588be0();
                    if ((cVar18 != '\0') && (DAT_011ed19c == '\0')) {
                      TreeVariation_Reseed(&DAT_011ed1a0,0x539);
                      DAT_011ed19c = '\x01';
                    }
                    local_4dc = (float)FUN_004faa30(&DAT_011ed1a0,8);
                    uVar15 = 0;
                    do {
                      uVar17 = uVar15 + (int)local_4dc & 7;
                      uVar20 = uVar17 + local_3c0 & 0x80000007;
                      if ((int)uVar20 < 0) {
                        uVar20 = (uVar20 - 1 | 0xfffffff8) + 1;
                      }
                      if (((*(char *)((int)query + 0x2f) == '\0') || ((uVar20 & 1) == 0)) &&
                         ((*(byte *)(query + 7) & (byte)(1 << (sbyte)uVar17)) != 0)) {
                        if (*(char *)((int)query + 0x3d) != '\0') {
                          LotPoint_ResolveLevelPosition((undefined *)query[1],&local_4f0,local_1b0);
                          Lot_LocalPositionToWorldVector((void *)query[1],local_1b0,local_210);
                          fVar21 = FUN_00afbee0(uVar20);
                          uStack_434 = 0;
                          uStack_438 = 0;
                          local_440 = 0;
                          fStack_43c = 1.0;
                          local_190 = 0;
                          fStack_18c = 1.0;
                          uStack_188 = 0;
                          uStack_184 = 0;
                          fVar25 = (float)fVar21;
                          auVar23._4_4_ = fVar25;
                          auVar23._0_4_ = fVar25;
                          auVar23._8_4_ = fVar25;
                          auVar23._12_4_ = fVar25;
                          auVar1._8_4_ = 0x40000000;
                          auVar1._0_8_ = 0x4000000040000000;
                          auVar1._12_4_ = 0x40000000;
                          local_250 = divps(auVar23,auVar1);
                          fVar21 = (float10)fsin((float10)(float)local_250._0_4_);
                          fStack_b4 = (float)fVar21;
                          fVar21 = (float10)fcos((float10)(float)local_250._0_4_);
                          local_30 = fStack_b4 * 0.0;
                          fStack_2c = fStack_b4 * 0.0;
                          fStack_1b8 = fStack_b4 * 0.0;
                          fStack_24 = fStack_b4 * 0.0;
                          local_110 = fStack_b4 * 1.0;
                          fStack_1bc = fStack_b4 * 1.0;
                          fStack_108 = fStack_b4 * 1.0;
                          fStack_104 = fStack_b4 * 1.0;
                          local_1c0 = fStack_b4 * 0.0;
                          fStack_bc = fStack_b4 * 0.0;
                          fStack_b8 = fStack_b4 * 0.0;
                          fStack_b4 = fStack_b4 * 0.0;
                          local_508 = (float)fVar21;
                          fStack_1b4 = local_508;
                          local_170 = local_250;
                          fStack_10c = fStack_1bc;
                          local_c0 = local_1c0;
                          fStack_28 = fStack_1b8;
                          uVar11 = FUN_00c727e0((void *)*query,local_210,&local_1c0,
                                                (float)query[0x10],(float)query[0x11],'\x01');
                          if ((char)uVar11 == '\0') goto LAB_00b466db;
                        }
                        local_3d8 = local_4f0.x;
                        local_3d4 = local_4f0.z;
                        local_3d0 = (float)local_4f0.level;
                        fVar21 = FUN_00afbee0(uVar20);
                        local_3cc = (float)fVar21;
                        local_3c0 = uVar20;
                        cVar18 = FUN_00b45930((int *)&local_3e0,(void *)0x0);
                        if (cVar18 != '\0') {
                          if (query[10] != 0) {
                            piVar13 = (int *)GetGlobalInterfacePointer_11D5BBC();
                            LotPoint_ResolveLevelPosition
                                      ((undefined *)query[1],&local_4f0,local_180);
                            Lot_LocalPositionToWorldVector((void *)query[1],local_180,&local_410);
                            fVar21 = FUN_00afbee0(uVar20);
                            local_470 = (float)fVar21;
                            _vector_constructor_iterator_
                                      (local_b0,0x20,4,(_func_void_ptr_void_ptr *)&LAB_0050e9d0);
                            local_2f0 = local_410;
                            uStack_2ec = uStack_40c;
                            uStack_2e8 = uStack_408;
                            uStack_2e4 = uStack_404;
                            local_488 = local_410;
                            FUN_004f60a0(local_b0,&local_488);
                            local_1f0 = local_410;
                            uStack_1ec = uStack_40c;
                            uStack_1e8 = uStack_408;
                            uStack_1e4 = uStack_404;
                            local_478 = uStack_40c;
                            FUN_004f60a0(local_90,&local_478);
                            local_1a0 = local_410;
                            uStack_19c = uStack_40c;
                            uStack_198 = uStack_408;
                            uStack_194 = uStack_404;
                            local_468 = uStack_408;
                            FUN_004f60a0(local_70,&local_468);
                            FUN_004f60a0(local_50,&local_470);
                    /* ECXhost, fourstackargs: resultStorage,placementDelegate,variantArgs,count4.
                       Original pushes count4 explicitly; no fabricated register argument. */
                            uVar15 = (**(code **)(*piVar13 + 0x134))
                                               (piVar13,local_e0,(void *)query[10],local_b0,4);
                            uStack_3f8 = 0;
                            uStack_3f6 = 0;
                            appuStack_400[0] = &PTR_FUN_00fba6f4;
                            FUN_004f64b0(appuStack_400,uVar15);
                            FUN_004f5820(local_e0);
                            pcVar14 = FUN_007699c0((int)appuStack_400);
                            if (*pcVar14 == '\0') {
                              FUN_004f5820(appuStack_400);
                              FUN_004466e0(local_b0,0x20,4,FUN_004f5820);
                              break;
                            }
                            FUN_004f5820(appuStack_400);
                            FUN_004466e0(local_b0,0x20,4,FUN_004f5820);
                          }
                          uVar15 = local_4cc;
                          if ((((local_500 == 0) && (local_4fc == 0)) && (-1 < (int)local_4cc)) &&
                             (uVar17 = FUN_00afbe60(&local_4a0,&local_4f0.x), uVar17 != uVar15)) {
                            uStack_4f8 = CONCAT11((&DAT_0106d650)[uVar15 * 4] * (char)query[0x12] +
                                                  local_50b,
                                                  (&DAT_0106d630)[uVar15 * 4] * (char)query[0x12] +
                                                  local_50c);
                            cStack_4f6 = local_50a;
                            FUN_00b3ae30((int)local_4d0,(char *)&uStack_4f8,
                                         (char *)((int)&uStack_4f8 + 1),(char)_local_4c8);
                            uVar11 = FUN_00ab05c0(&uStack_4f8,(char *)&local_518);
                            if ((char)uVar11 != '\0') {
                              local_518 = uStack_4f8;
                              local_516 = cStack_4f6;
                              goto LAB_00b46c85;
                            }
                          }
                          local_4c0 = uVar20;
                          goto LAB_00b46cb6;
                        }
                      }
LAB_00b466db:
                      uVar15 = uVar15 + 1;
                    } while (uVar15 < 8);
                    goto LAB_00b45e77;
                  }
                  if (*(char *)((int)query + 0x3d) != '\0') {
                    LotPoint_ResolveLevelPosition((undefined *)query[1],&local_4f0,local_240);
                    Lot_LocalPositionToWorldVector((void *)query[1],local_240,local_260);
                    fVar21 = FUN_00afbee0(0);
                    uStack_414 = 0;
                    uStack_418 = 0;
                    local_420 = 0;
                    fStack_41c = 1.0;
                    local_2c0 = 0;
                    fStack_2bc = 1.0;
                    uStack_2b8 = 0;
                    uStack_2b4 = 0;
                    fVar25 = (float)fVar21;
                    auVar24._4_4_ = fVar25;
                    auVar24._0_4_ = fVar25;
                    auVar24._8_4_ = fVar25;
                    auVar24._12_4_ = fVar25;
                    auVar2._8_4_ = 0x40000000;
                    auVar2._0_8_ = 0x4000000040000000;
                    auVar2._12_4_ = 0x40000000;
                    local_2e0 = divps(auVar24,auVar2);
                    fVar21 = (float10)fsin((float10)(float)local_2e0._0_4_);
                    fStack_114 = (float)fVar21;
                    fVar21 = (float10)fcos((float10)(float)local_2e0._0_4_);
                    local_f0 = fStack_114 * 0.0;
                    fStack_ec = fStack_114 * 0.0;
                    fStack_278 = fStack_114 * 0.0;
                    fStack_e4 = fStack_114 * 0.0;
                    local_140 = fStack_114 * 1.0;
                    fStack_27c = fStack_114 * 1.0;
                    fStack_138 = fStack_114 * 1.0;
                    fStack_134 = fStack_114 * 1.0;
                    local_280 = fStack_114 * 0.0;
                    fStack_11c = fStack_114 * 0.0;
                    fStack_118 = fStack_114 * 0.0;
                    fStack_114 = fStack_114 * 0.0;
                    local_508 = (float)fVar21;
                    local_2a0 = local_2e0;
                    fStack_274 = local_508;
                    fStack_13c = fStack_27c;
                    local_120 = local_280;
                    fStack_e8 = fStack_278;
                    uVar11 = FUN_00c727e0((void *)*query,local_260,&local_280,(float)query[0x10],
                                          (float)query[0x11],'\x01');
                    if ((char)uVar11 == '\0') goto LAB_00b45e77;
                    piVar13 = local_4d0;
                  }
                  local_3d8 = local_4f0.x;
                  local_3d4 = local_4f0.z;
                  local_3d0 = (float)local_4f0.level;
                  uVar17 = FUN_00b45960((int *)&local_3e0,(void *)0x0);
                  uVar15 = local_4cc;
                  if ((char)uVar17 == '\0') goto LAB_00b45e77;
                  if (((local_500 != 0) || ((local_4fc != 0 || ((int)local_4cc < 0)))) ||
                     (uVar17 = FUN_00afbe60(&local_4a0,&local_4f0.x), uVar17 == uVar15)) {
LAB_00b46ca4:
                    if (outDirection != (int *)0x0) {
                      local_4c0 = local_3c0;
                    }
LAB_00b46cb6:
                    /* Success-only common output publication: threeDWORD local location,
                       optionaldirection, cleanup, AL1. Free-yaw output may have earlier writes;
                       don't claim every output untouched on all failures. */
                    *outLocalLocation = local_4f0.x;
                    outLocalLocation[1] = local_4f0.z;
                    outLocalLocation[2] = (float)local_4f0.level;
                    if (outDirection != (int *)0x0) {
                      *outDirection = local_4c0;
                    }
                    FUN_00793aa0((int)&local_3e0);
                    return true;
                  }
                  local_4f4 = CONCAT11((&DAT_0106d650)[uVar15 * 4] * (char)query[0x12] + local_50b,
                                       (&DAT_0106d630)[uVar15 * 4] * (char)query[0x12] + local_50c);
                  local_4f2 = local_50a;
                  FUN_00b3ae30((int)piVar13,(char *)&local_4f4,(char *)((int)&local_4f4 + 1),
                               (char)_local_4c8);
                  uVar11 = FUN_00ab05c0(&local_4f4,(char *)&local_518);
                  if ((char)uVar11 == '\0') goto LAB_00b46ca4;
                  local_518 = local_4f4;
                  local_516 = local_4f2;
                }
LAB_00b46c85:
                if (local_484 <= local_4e0) break;
                piVar13 = local_4d0;
              } while( true );
            }
          }
        }
      }
      FUN_00793aa0((int)&local_3e0);
    }
  }
  return false;
}

