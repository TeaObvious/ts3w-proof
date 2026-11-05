/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Executes job synchronously and assembles refcounted
   RoutingPathImp objects (allocation0x190) into output list. Converts64-byte world start/goal
   candidates into lower graph's32-byte start and28-byte goal records, maps options to native flags,
   invokes00661fa0. Numeric status0→path state2 success; default fail
   state3;status2→5,3→6,4→7,5/8→8. Builds typed subpaths/links and end transforms; optional
   obstacle-info recovery replan for statuses4/5/8 with option0x100. Result pointers and raw status
   values were initially conflated as deep pointer types by decompiler. */

void __fastcall RoutingJob_ExecuteAndAssembleSubpaths(void *param_1)

{
  bool bVar1;
  undefined1 auVar2 [16];
  int iVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  char cVar7;
  undefined4 *puVar8;
  int *piVar9;
  void *pvVar10;
  int iVar11;
  undefined4 uVar12;
  uint uVar13;
  int *piVar14;
  uint uVar15;
  int *piVar16;
  int iVar17;
  undefined4 *puVar18;
  int *piVar19;
  float *pfVar20;
  float10 fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  undefined1 auVar27 [16];
  undefined8 uVar28;
  int iStack_2d0;
  uint local_2b0;
  undefined4 *puStack_2a8;
  float *pfStack_2a4;
  float *pfStack_2a0;
  int *local_29c;
  int *piStack_298;
  undefined4 uStack_294;
  float fStack_290;
  int *piStack_28c;
  int *piStack_288;
  float fStack_284;
  float fStack_280;
  float fStack_27c;
  void *pvStack_278;
  void *pvStack_274;
  int *piStack_270;
  int *piStack_26c;
  undefined4 uStack_268;
  char *pcStack_264;
  float fStack_260;
  float fStack_25c;
  float fStack_258;
  float fStack_254;
  int aiStack_248 [3];
  char *pcStack_23c;
  float *pfStack_238;
  undefined4 uStack_234;
  undefined4 uStack_230;
  char *pcStack_22c;
  uint auStack_228 [2];
  undefined4 uStack_220;
  undefined4 uStack_21c;
  undefined4 uStack_218;
  undefined4 uStack_214;
  undefined4 uStack_210;
  undefined4 *puStack_208;
  undefined1 uStack_204;
  undefined1 uStack_203;
  void *pvStack_200;
  int *piStack_1f4;
  float fStack_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  int iStack_1d4;
  float fStack_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  int *piStack_1a8;
  float fStack_1a4;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_190;
  undefined4 uStack_18c;
  undefined4 uStack_188;
  uint uStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float fStack_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float afStack_160 [2];
  float fStack_158;
  float fStack_154;
  float fStack_150;
  undefined4 uStack_14c;
  float fStack_148;
  float fStack_144;
  int aiStack_140 [4];
  int iStack_130;
  undefined4 uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  undefined4 uStack_118;
  undefined4 uStack_114;
  undefined1 uStack_110;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  undefined4 uStack_e0;
  float fStack_d0;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float afStack_a0 [4];
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  puVar8 = (undefined4 *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
  if (puVar8 == (undefined4 *)0x0) {
    piVar14 = (int *)0x0;
  }
  else {
    uVar28 = FUN_00820020(puVar8);
    piVar14 = (int *)uVar28;
  }
  if (piVar14 != (int *)0x0) {
    LOCK();
    piVar14[1] = piVar14[1] + 1;
    UNLOCK();
  }
  bVar4 = false;
  bVar5 = false;
  bVar6 = false;
  if (piVar14 == (int *)0x0) {
    return;
  }
  piVar19 = piVar14 + 1;
  LOCK();
  *piVar19 = *piVar19 + 1;
  UNLOCK();
  iVar11 = *(int *)((int)param_1 + 0xc);
  local_29c = piVar14;
  piVar9 = (int *)FUN_004e4500(0xc,*(undefined4 *)(iVar11 + 8),0);
  if (piVar9 + 2 != (int *)0x0) {
    piVar9[2] = (int)piVar14;
    LOCK();
    *piVar19 = *piVar19 + 1;
    UNLOCK();
  }
  *piVar9 = iVar11;
  piVar9[1] = *(int *)(iVar11 + 4);
  **(undefined4 **)(iVar11 + 4) = piVar9;
  *(int **)(iVar11 + 4) = piVar9;
  LOCK();
  iVar11 = *piVar19;
  *piVar19 = *piVar19 + -1;
  UNLOCK();
  if (iVar11 == 1) {
    LOCK();
    *piVar19 = 1;
    UNLOCK();
    (**(code **)*piVar14)(1);
  }
  piVar9 = piVar14 + 0x25;
  LOCK();
  *piVar9 = 1;
  UNLOCK();
  (**(code **)(*piVar14 + 4))();
  iStack_1d4 = thunk_FUN_00835d40();
  if (iStack_1d4 == 0) {
    LOCK();
    *piVar9 = 3;
    UNLOCK();
    LOCK();
    iVar11 = *piVar19;
    *piVar19 = *piVar19 + -1;
    UNLOCK();
    if (iVar11 != 1) {
      return;
    }
    LOCK();
    *piVar19 = 1;
    UNLOCK();
    (**(code **)*piVar14)(1);
    return;
  }
  if (*(int *)((int)param_1 + 0x14) == 0) {
LAB_0081c441:
    FUN_007462e0((int *)&local_29c);
    return;
  }
  pvVar10 = (void *)FUN_00829600(iStack_1d4);
  pvStack_278 = pvVar10;
  iVar11 = FUN_00c60a50(*(int *)((int)param_1 + 0x14));
  if ((pvVar10 == (void *)0x0) || (*(int *)(iVar11 + 100) == 0)) goto LAB_0081c441;
  if ((*(int *)((int)param_1 + 0x18) == *(int *)((int)param_1 + 0x1c)) ||
     (*(int *)((int)param_1 + 0x28) == *(int *)((int)param_1 + 0x2c))) {
    LOCK();
    *piVar9 = 3;
    UNLOCK();
    if (*(int *)((int)param_1 + 0x18) == *(int *)((int)param_1 + 0x1c)) {
      LOCK();
      *piVar9 = 5;
      UNLOCK();
    }
    if (*(int *)((int)param_1 + 0x28) == *(int *)((int)param_1 + 0x2c)) {
      LOCK();
      *piVar9 = 6;
      UNLOCK();
    }
    goto LAB_0081c441;
  }
  pvVar10 = (void *)((int)param_1 + 0x40);
  piStack_298 = (int *)0x0;
  pvStack_274 = pvVar10;
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x20000,'\0');
  if ((char)uVar12 == '\0') {
    uVar12 = RoutingOptions_TestMask(pvVar10,0,0x40000,'\0');
    if ((char)uVar12 == '\0') {
      uVar12 = RoutingOptions_TestMask(pvVar10,0,0x80000,'\0');
      if ((char)uVar12 == '\0') {
        uVar12 = RoutingOptions_TestMask(pvVar10,0,0x100000,'\0');
        if ((char)uVar12 == '\0') {
          uVar12 = RoutingOptions_TestMask(pvVar10,0x20,0,'\x01');
          if ((char)uVar12 != '\0') {
            *(undefined4 *)((int)param_1 + 0xc0) = 0x4400;
          }
        }
        else {
          *(undefined4 *)((int)param_1 + 0xc0) = 0xb00;
        }
      }
      else {
        *(undefined4 *)((int)param_1 + 0xc0) = 0xa00;
      }
    }
    else {
      *(undefined4 *)((int)param_1 + 0xc0) = 0x900;
    }
  }
  else {
    *(undefined4 *)((int)param_1 + 0xc0) = 0x800;
  }
  puStack_208 = (undefined4 *)0x0;
  FUN_008753c0(&puStack_208,(int *)&local_29c);
  uStack_220 = *(undefined4 *)((int)param_1 + 200);
  auStack_228[0] = *(uint *)((int)param_1 + 0xc0);
  uStack_21c = *(undefined4 *)((int)param_1 + 0xcc);
  uStack_204 = 1;
  uStack_203 = 0;
  uStack_218 = 0;
  uStack_214 = 0;
  uStack_210 = 0;
  pvStack_200 = pvVar10;
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x10000000,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = *(uint *)((int)param_1 + 0xc0);
    uVar12 = RoutingOptions_TestMask(pvVar10,0x40,0,'\x01');
    if ((char)uVar12 == '\0') {
      uVar12 = RoutingOptions_TestMask(pvVar10,0x80,0,'\x01');
      if ((char)uVar12 == '\0') {
        if ((uVar13 >> 2 & 1) == 0) {
          uStack_218 = DAT_01022310;
          uStack_214 = _DAT_00fedecc;
          uStack_210 = DAT_00fedec8;
        }
        else {
          uStack_218 = DAT_0102231c;
          uStack_214 = DAT_01022318;
          uStack_210 = DAT_01022314;
        }
      }
      else {
        uStack_218 = _DAT_00faab8c;
        uStack_214 = DAT_01022324;
        uStack_210 = DAT_01022320;
      }
    }
    else {
      uStack_218 = DAT_01022330;
      uStack_214 = DAT_0102232c;
      uStack_210 = DAT_01022328;
    }
  }
  pfStack_238 = (float *)0x0;
  uStack_234 = 0;
  uStack_230 = 0;
  pcStack_22c = "Routing/RoutingJob/startPts";
  aiStack_248[0] = 0;
  aiStack_248[1] = 0;
  aiStack_248[2] = 0;
  pcStack_23c = "Routing/RoutingJob/goalPts";
  fStack_284 = 0.0;
  fStack_280 = 0.0;
  fStack_27c = 0.0;
  fStack_290 = 0.0;
  if (*(int *)((int)param_1 + 0x1c) - *(int *)((int)param_1 + 0x18) >> 6 != 0) {
    iStack_2d0 = 0;
    do {
      pfVar20 = (float *)(*(int *)((int)param_1 + 0x18) + iStack_2d0);
      fStack_1a0 = *pfVar20;
      fStack_8c = pfVar20[1];
      fStack_19c = pfVar20[2];
      fStack_84 = pfVar20[3];
      fStack_198 = pfVar20[9];
      uStack_18c = DAT_010221d4;
      fStack_194 = pfVar20[4];
      fStack_7c = pfVar20[5];
      fStack_190 = pfVar20[6];
      fStack_74 = pfVar20[7];
      uStack_188 = 0;
      uStack_184 = (uint)fStack_290;
      fStack_90 = fStack_1a0;
      fStack_88 = fStack_19c;
      fStack_80 = fStack_194;
      fStack_78 = fStack_190;
      fStack_50 = fStack_194;
      fStack_4c = fStack_7c;
      fStack_48 = fStack_190;
      fStack_44 = fStack_74;
      fStack_20 = fStack_1a0;
      fStack_1c = fStack_8c;
      fStack_18 = fStack_19c;
      fStack_14 = fStack_84;
      FUN_00656a10(&pfStack_238,&fStack_1a0);
      fStack_60 = *pfVar20;
      fStack_5c = pfVar20[1];
      fStack_58 = pfVar20[2];
      fStack_54 = pfVar20[3];
      fStack_40 = fStack_60;
      fStack_3c = fStack_5c;
      fStack_38 = fStack_58;
      fStack_34 = fStack_54;
      pvVar10 = LotSpatialIndex_FindContainingLotAtWorldXZ
                          (*(void **)((int)param_1 + 0x14),fStack_60,fStack_58);
      if ((pvVar10 != (void *)0x0) &&
         (uVar13 = FUN_00aff9d0(pvVar10,pfVar20,(int *)0x0,1), (char)uVar13 != '\0')) {
        bVar4 = true;
      }
      if (*(void **)((int)pvStack_278 + 0x14) != (void *)0x0) {
        fStack_180 = *pfVar20;
        fStack_17c = pfVar20[1];
        fStack_178 = pfVar20[2];
        fStack_174 = pfVar20[3];
        fStack_170 = fStack_180;
        fStack_16c = fStack_17c;
        fStack_168 = fStack_178;
        fStack_164 = fStack_174;
        uVar13 = FUN_0066de10(*(void **)((int)pvStack_278 + 0x14),*(int *)((int)param_1 + 0x14),
                              fStack_180,fStack_178);
        if ((char)uVar13 != '\0') {
          fStack_1f0 = *pfVar20;
          fStack_1ec = pfVar20[1];
          fStack_1e8 = pfVar20[2];
          fStack_1e4 = pfVar20[3];
          bVar5 = true;
          fStack_1d0 = fStack_1f0;
          fStack_1cc = fStack_1ec;
          fStack_1c8 = fStack_1e8;
          fStack_1c4 = fStack_1e4;
          fVar21 = FUN_00c6a380(*(void **)((int)param_1 + 0x14),fStack_1f0,fStack_1e8,0,'\0','\x01',
                                (char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,
                                (undefined1 *)0x0,'\x01');
          fStack_d0 = pfVar20[1];
          fStack_70 = (float)(fVar21 + (float10)DAT_00f998f8);
          if ((fStack_70 < fStack_d0) ||
             (((pvVar10 != (void *)0x0 &&
               (uVar12 = FUN_00624bc0((int)pvVar10), (char)uVar12 != '\0')) && (pfVar20[9] == 0.0)))
             ) {
            bVar5 = false;
          }
        }
      }
      iStack_2d0 = iStack_2d0 + 0x40;
      fStack_290 = (float)((int)fStack_290 + 1);
    } while ((uint)fStack_290 <
             (uint)(*(int *)((int)param_1 + 0x1c) - *(int *)((int)param_1 + 0x18) >> 6));
  }
  iVar11 = *(int *)((int)param_1 + 0x28);
  piVar19 = (int *)0x0;
  bVar1 = 1 < (uint)(*(int *)((int)param_1 + 0x2c) - iVar11 >> 6);
  pfStack_2a4 = DAT_01022278;
  fStack_290 = *(float *)(iVar11 + 0x20);
  piVar14 = (int *)(*(int *)((int)param_1 + 0x2c) - iVar11 >> 6);
  piStack_28c = (int *)0x0;
  if (piVar14 != (int *)0x0) {
    iStack_2d0 = 0;
    do {
      pfVar20 = (float *)(*(int *)((int)param_1 + 0x28) + iStack_2d0);
      fStack_1f0 = *pfVar20;
      fStack_1ec = pfVar20[1];
      fStack_1e8 = pfVar20[2];
      fStack_1e4 = pfVar20[3];
      fStack_1b4 = pfVar20[9];
      fStack_1a4 = pfVar20[8];
      fStack_1b0 = pfVar20[4];
      fStack_17c = pfVar20[5];
      fStack_1ac = pfVar20[6];
      fStack_174 = pfVar20[7];
      fStack_1d0 = fStack_1f0;
      fStack_1cc = fStack_1ec;
      fStack_1c8 = fStack_1e8;
      fStack_1c4 = fStack_1e4;
      fStack_1bc = fStack_1f0;
      fStack_1b8 = fStack_1e8;
      piStack_1a8 = piVar19;
      fStack_180 = fStack_1b0;
      fStack_178 = fStack_1ac;
      fStack_170 = fStack_1b0;
      fStack_16c = fStack_17c;
      fStack_168 = fStack_1ac;
      fStack_164 = fStack_174;
      FUN_0062b010(aiStack_248,&fStack_1bc);
      pfStack_2a0 = (float *)((fStack_1bc - *pfStack_238) * (fStack_1bc - *pfStack_238) +
                             (fStack_1b8 - pfStack_238[1]) * (fStack_1b8 - pfStack_238[1]));
      if (((bVar1) && (piVar19 != (int *)0x0)) &&
         (DAT_0106d788 < ABS((float)pfStack_2a0 - (float)pfStack_2a4))) {
        bVar1 = false;
      }
      fVar22 = pfVar20[8];
      if (fVar22 != fStack_290) {
        bVar1 = false;
      }
      if ((piVar19 == (int *)0x0) || (fStack_290 < fVar22)) {
        fStack_284 = fStack_1bc;
        fStack_280 = fStack_1b8;
        fStack_27c = fStack_1b4;
        fStack_290 = pfVar20[8];
        pfStack_2a4 = pfStack_2a0;
        piStack_28c = piVar19;
      }
      else if ((fVar22 == fStack_290) && ((float)pfStack_2a0 < (float)pfStack_2a4)) {
        pfStack_2a4 = pfStack_2a0;
        FUN_0061c0d0(&fStack_284,&fStack_260,&fStack_1bc);
        piStack_28c = piVar19;
      }
      iStack_2d0 = iStack_2d0 + 0x40;
      piVar19 = (int *)((int)piVar19 + 1);
    } while (piVar19 < piVar14);
  }
  piVar19 = piStack_28c;
  if (((!bVar4) &&
      (pvVar10 = LotSpatialIndex_FindContainingLotAtWorldXZ
                           (*(void **)((int)param_1 + 0x14),fStack_284,fStack_280),
      piVar19 = piStack_28c, pvVar10 != (void *)0x0)) &&
     (uVar13 = FUN_00aff9d0(pvVar10,(float *)((int)piStack_28c * 0x40 +
                                             *(int *)((int)param_1 + 0x28)),(int *)0x0,1),
     (char)uVar13 != '\0')) {
    bVar4 = true;
  }
  if (*(void **)((int)pvStack_278 + 0x14) != (void *)0x0) {
    iVar11 = (int)piVar19 * 0x40;
    pfVar20 = (float *)(*(int *)((int)param_1 + 0x28) + iVar11);
    fStack_1f0 = *pfVar20;
    fStack_1ec = pfVar20[1];
    fStack_1e8 = pfVar20[2];
    fStack_1e4 = pfVar20[3];
    fStack_1d0 = fStack_1f0;
    fStack_1cc = fStack_1ec;
    fStack_1c8 = fStack_1e8;
    fStack_1c4 = fStack_1e4;
    uVar13 = FUN_0066de10(*(void **)((int)pvStack_278 + 0x14),*(int *)((int)param_1 + 0x14),
                          fStack_1f0,fStack_1e8);
    if ((char)uVar13 != '\0') {
      pfStack_2a0 = LotSpatialIndex_FindContainingLotAtWorldXZ
                              (*(void **)((int)param_1 + 0x14),fStack_284,fStack_280);
      pfVar20 = (float *)(*(int *)((int)param_1 + 0x28) + iVar11);
      fStack_1f0 = *pfVar20;
      fStack_1ec = pfVar20[1];
      fStack_1e8 = pfVar20[2];
      fStack_1e4 = pfVar20[3];
      bVar6 = true;
      fStack_1d0 = fStack_1f0;
      fStack_1cc = fStack_1ec;
      fStack_1c8 = fStack_1e8;
      fStack_1c4 = fStack_1e4;
      fVar21 = FUN_00c6a380(*(void **)((int)param_1 + 0x14),fStack_1f0,fStack_1e8,0,'\0','\x01',
                            (char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,(undefined1 *)0x0,
                            '\x01');
      fStack_b0 = *(float *)(iVar11 + *(int *)((int)param_1 + 0x28) + 4);
      pfVar20 = (float *)(iVar11 + *(int *)((int)param_1 + 0x28));
      fStack_30 = (float)(fVar21 + (float10)DAT_00f998f8);
      pfStack_2a4 = pfVar20;
      if ((fStack_30 < fStack_b0) ||
         (((pfStack_2a0 != (float *)0x0 &&
           (uVar12 = FUN_00624bc0((int)pfStack_2a0), (char)uVar12 != '\0')) && (pfVar20[9] == 0.0)))
         ) {
        bVar6 = false;
      }
    }
  }
  if (bVar1) {
    cVar7 = FUN_00588be0();
    if (cVar7 != '\0') {
      FUN_004fa9f0((void *)((int)param_1 + 0xd0),0x539);
    }
    piVar19 = (int *)FUN_004faa30((void *)((int)param_1 + 0xd0),(uint)piVar14);
    fStack_284 = *(float *)(aiStack_248[0] + (int)piVar19 * 0x1c);
    iVar11 = aiStack_248[0] + (int)piVar19 * 0x1c;
    fStack_280 = *(float *)(iVar11 + 4);
    fStack_27c = *(float *)(iVar11 + 8);
    piStack_28c = piVar19;
  }
  pvVar10 = pvStack_274;
  **(undefined4 **)((int)param_1 + 0x3c) = piVar19;
  uVar13 = 0;
  uVar12 = RoutingOptions_TestMask(pvStack_274,2,0,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = 4;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,1,0,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 8;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,8,0,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x10;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0x1000,0,'\0');
  if ((char)uVar12 != '\0') {
    uStack_203 = 1;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0x80000000,0,'\0');
  if (((char)uVar12 != '\0') && (!bVar4)) {
    uVar13 = uVar13 | 0x400;
  }
  pfStack_2a4 = (float *)0x1;
  uVar12 = RoutingOptions_TestMask(pvVar10,0x10,0,'\0');
  if ((char)uVar12 != '\0') {
    pfStack_2a4 = (float *)0x3;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0x20,0,'\0');
  if ((char)uVar12 != '\0') {
    pfStack_2a4 = (float *)((uint)pfStack_2a4 & 0xfffffffe);
    uStack_204 = 0;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x8000,'\0');
  if ((char)uVar12 != '\0') {
    pfStack_2a4 = (float *)&DAT_00000004;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0x40,0,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x80;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0x80,0,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x200;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x1000,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x200000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x4000,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x400000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x80,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x800;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x100,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x1000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x200,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x2000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x400,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x4000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x10000000,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x1000000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0,0x20000000,'\0');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x8000000;
  }
  if (bVar5) {
    uVar13 = uVar13 | 0x10000000;
  }
  if (bVar6) {
    uVar13 = uVar13 | 0x20000000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,8,0,'\x01');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x40000000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,0x10,0,'\x01');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x80000000;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,4,0,'\x01');
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x40;
  }
  uVar12 = RoutingOptions_TestMask(pvVar10,2,0,'\x01');
  piVar14 = piStack_298;
  if ((char)uVar12 != '\0') {
    uVar13 = uVar13 | 0x8000;
  }
  uVar15 = *(uint *)((int)param_1 + 0xc0) & 0xcf00;
  if (((uVar15 == 0x4100) || (uVar15 == 0x4200)) || (uVar15 == 0x4300)) {
    uVar13 = uVar13 | 0x4000000;
  }
  if (piStack_298 != (int *)0x0) {
    piStack_298 = (int *)0x0;
    (**(code **)(*piVar14 + 4))();
  }
  puStack_2a8 = (undefined4 *)
                RouteGraph_PlanWithRecovery
                          (pvStack_278,auStack_228,(int *)&pfStack_238,&fStack_284,fStack_290,
                           aiStack_248,(int *)&piStack_298,*(undefined4 **)((int)param_1 + 0x38),
                           *(uint **)((int)param_1 + 0x3c),uVar13,(void *)0x0,
                           (undefined *)pfStack_2a4,(int *)0x0);
  if (puStack_2a8 == (undefined4 *)0x0) {
    piStack_270 = (int *)0x0;
    piStack_26c = (int *)0x0;
    uStack_268 = 0;
    pcStack_264 = "Routing/SubPaths";
    FUN_00819fa0(param_1,(int)piStack_298,(int *)&piStack_270);
    uVar12 = RoutingOptions_TestMask(pvVar10,0x200000,0,'\0');
    if ((char)uVar12 == '\0') {
      if (1 < (uint)((int)piStack_26c - (int)piStack_270 >> 6)) {
        puStack_2a8 = (undefined4 *)&DAT_00000005;
      }
      piStack_26c = piStack_270;
      FUN_00819780((int)aiStack_140);
      aiStack_140[0] = piStack_298[3];
      uVar12 = RoutingOptions_TestMask(pvVar10,0x40,0,'\0');
      if ((char)uVar12 == '\0') {
        uVar12 = RoutingOptions_TestMask(pvVar10,8,0,'\x01');
        iStack_130 = (-(uint)((char)uVar12 != '\0') & 0xc6e389a3) + 0xc6600b67;
      }
      else {
        iStack_130 = -0xff1de6e;
      }
      fStack_254 = 0.0;
      fStack_258 = 0.0;
      fStack_25c = 0.0;
      fStack_260 = 0.0;
      uStack_128 = 0;
      uStack_124 = 0;
      uStack_120 = 0;
      uStack_11c = 0;
      uStack_118 = 0;
      uStack_114 = 0;
      uStack_110 = 0;
      FUN_00819de0(&piStack_270,aiStack_140);
    }
    piVar14 = piStack_298 + 2;
    pfStack_2a0 = (float *)*piVar14;
    if (piStack_270 != piStack_26c) {
      piVar19 = piStack_270 + 8;
      do {
        if (puStack_2a8 != (undefined4 *)0x0) goto LAB_0081c153;
        piVar9 = local_29c;
        if (piVar19 + -8 != piStack_270) {
          puVar8 = (undefined4 *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
          if (puVar8 == (undefined4 *)0x0) {
            puVar8 = (undefined4 *)0x0;
          }
          else {
            uVar28 = FUN_00820020(puVar8);
            puVar8 = (undefined4 *)uVar28;
          }
          FUN_00874fb0(&local_29c,puVar8);
          piVar9 = local_29c;
          piStack_1f4 = local_29c;
          if (local_29c != (int *)0x0) {
            LOCK();
            local_29c[1] = local_29c[1] + 1;
            UNLOCK();
          }
          iVar11 = *(int *)((int)param_1 + 0xc);
          piVar16 = (int *)FUN_004e4500(0xc,*(undefined4 *)(iVar11 + 8),0);
          if ((piVar16 + 2 != (int *)0x0) && (piVar16[2] = (int)piVar9, piVar9 != (int *)0x0)) {
            LOCK();
            piVar9[1] = piVar9[1] + 1;
            UNLOCK();
          }
          *piVar16 = iVar11;
          piVar16[1] = *(int *)(iVar11 + 4);
          **(undefined4 **)(iVar11 + 4) = piVar16;
          *(int **)(iVar11 + 4) = piVar16;
          FUN_007462e0((int *)&piStack_1f4);
        }
        piVar9[0x2c] = piVar19[-4];
        piVar9[0x2e] = piVar19[-2];
        piVar9[0x2f] = piVar19[-1];
        iVar11 = piVar19[1];
        iVar17 = piVar19[2];
        iVar3 = piVar19[3];
        piVar9[0x30] = *piVar19;
        piVar9[0x31] = iVar11;
        piVar9[0x32] = iVar17;
        piVar9[0x33] = iVar3;
        pfVar20 = (float *)piVar19[-8];
        if (pfVar20 < pfStack_2a0) {
          puStack_2a8 = (undefined4 *)0x2;
          pfVar20 = pfStack_2a0;
        }
        else {
          fVar21 = FUN_008192e0(pfVar20 + -0x10,piVar14,afStack_160);
          if ((char)piVar19[4] == '\0') {
            piStack_288 = (int *)0x0;
            fVar21 = (float10)0.0;
          }
          uVar12 = FUN_00819a70(piStack_298,pfStack_2a0,pfVar20,piVar14,afStack_160,(float)fVar21,
                                piVar9);
          if ((char)uVar12 == '\0') {
            puStack_2a8 = (undefined4 *)0x2;
            pfVar20 = pfStack_2a0;
          }
          else {
            fStack_258 = pfVar20[-0xe];
            fStack_260 = pfVar20[-0x10];
            fStack_25c = pfVar20[-0xf];
            fStack_254 = fStack_260;
            fStack_100 = fStack_260;
            fStack_fc = fStack_25c;
            fStack_f8 = fStack_258;
            fStack_f4 = fStack_260;
            (**(code **)(*piVar9 + 0x148))(&fStack_100);
            fStack_150 = afStack_160[0];
            fStack_148 = fStack_158;
            fStack_144 = fStack_154;
            uStack_14c = 0;
            fVar22 = afStack_160[0] * afStack_160[0];
            auVar27._4_4_ = fVar22;
            auVar27._0_4_ = fVar22;
            auVar27._8_4_ = fVar22;
            auVar27._12_4_ = 0;
            fStack_f0 = fStack_158 * fStack_158 + 0.0 + fVar22;
            uStack_e0 = 0;
            if (0.0 < fStack_f0) {
              fVar22 = fStack_158 * fStack_158 + 0.0 + fVar22;
              auVar2._4_4_ = fVar22;
              auVar2._0_4_ = fVar22;
              auVar2._8_4_ = fVar22;
              auVar2._12_4_ = fVar22;
              auVar27 = rsqrtps(auVar27 << 0x20,auVar2);
              fVar23 = auVar27._0_4_;
              fVar24 = auVar27._4_4_;
              fVar25 = auVar27._8_4_;
              fVar26 = auVar27._12_4_;
              fVar23 = (DAT_00f998f8 - fVar23 * fVar23 * fVar22) * fVar23 * _DAT_00f9b5b4 + fVar23;
              fVar24 = (DAT_00f998f8 - fVar24 * fVar24 * fVar22) * fVar24 * _DAT_00f9b5b4 + fVar24;
              fVar25 = (DAT_00f998f8 - fVar25 * fVar25 * fVar22) * fVar25 * _DAT_00f9b5b4 + fVar25;
              fVar26 = (DAT_00f998f8 - fVar26 * fVar26 * fVar22) * fVar26 * _DAT_00f9b5b4 + fVar26;
              fStack_c0 = ((DAT_00f998f8 - fVar23 * fVar23 * fVar22) * fVar23 * _DAT_00f9b5b4 +
                          fVar23) * afStack_160[0];
              fStack_bc = ((DAT_00f998f8 - fVar24 * fVar24 * fVar22) * fVar24 * _DAT_00f9b5b4 +
                          fVar24) * 0.0;
              fStack_b8 = ((DAT_00f998f8 - fVar25 * fVar25 * fVar22) * fVar25 * _DAT_00f9b5b4 +
                          fVar25) * fStack_158;
              fStack_b4 = ((DAT_00f998f8 - fVar26 * fVar26 * fVar22) * fVar26 * _DAT_00f9b5b4 +
                          fVar26) * fStack_154;
              FUN_0085fb10(&fStack_c0,afStack_a0);
              (**(code **)(*piVar9 + 0x144))(afStack_a0);
            }
          }
        }
        pfStack_2a0 = pfVar20;
        piVar9 = piVar19 + 8;
        piVar19 = piVar19 + 0x10;
      } while (piVar9 != piStack_26c);
    }
    if (puStack_2a8 == (undefined4 *)0x0) {
      piStack_288 = *(int **)((int)param_1 + 0xc);
      if ((int *)*piStack_288 != piStack_288) {
        pfStack_2a0 = (float *)*piStack_288;
        piVar14 = (int *)*pfStack_2a0;
        if (piVar14 != piStack_288) {
          do {
            piVar19 = (int *)pfStack_2a0[2];
            if (piVar19 != (int *)0x0) {
              LOCK();
              piVar19[1] = piVar19[1] + 1;
              UNLOCK();
            }
            piVar9 = (int *)piVar14[2];
            if (piVar9 != (int *)0x0) {
              LOCK();
              piVar9[1] = piVar9[1] + 1;
              UNLOCK();
            }
            (**(code **)(*piVar19 + 0x78))(piVar9);
            (**(code **)(*piVar9 + 0x80))(piVar19);
            piVar16 = piVar9 + 1;
            LOCK();
            iVar11 = *piVar16;
            *piVar16 = *piVar16 + -1;
            UNLOCK();
            if (iVar11 == 1) {
              LOCK();
              *piVar16 = 1;
              UNLOCK();
              (**(code **)*piVar9)(1);
            }
            piVar9 = piVar19 + 1;
            LOCK();
            iVar11 = *piVar9;
            *piVar9 = *piVar9 + -1;
            UNLOCK();
            if (iVar11 == 1) {
              LOCK();
              *piVar9 = 1;
              UNLOCK();
              (**(code **)*piVar19)(1);
            }
            piVar14 = (int *)*piVar14;
            pfStack_2a0 = (float *)*pfStack_2a0;
          } while (piVar14 != piStack_288);
        }
      }
      piVar14 = local_29c;
      iVar11 = *local_29c;
      iVar17 = (**(code **)(iVar11 + 0x48))(DAT_00fa2b9c,1);
      (**(code **)(iVar11 + 0xec))(iVar17 + -1);
      uVar13 = (**(code **)(*piVar14 + 0x4c))();
      (**(code **)(*piVar14 + 0xc4))(uVar13 - 1,8);
      if (1 < uVar13) {
        (**(code **)(*piVar14 + 0xc4))(uVar13 - 2,4);
      }
    }
LAB_0081c153:
    if (piStack_270 != (int *)0x0) {
      FUN_004e44e0((int)piStack_270);
    }
    piVar14 = local_29c;
    if (puStack_2a8 == (undefined4 *)0x0) {
      LOCK();
      local_29c[0x25] = 2;
      UNLOCK();
      if (aiStack_248[0] != 0) {
        FUN_004e44e0(aiStack_248[0]);
      }
      if (pfStack_238 != (float *)0x0) {
        FUN_004e44e0((int)pfStack_238);
      }
      if (puStack_208 != (undefined4 *)0x0) {
        piVar19 = puStack_208 + 1;
        LOCK();
        iVar11 = *piVar19;
        *piVar19 = *piVar19 + -1;
        UNLOCK();
        if (iVar11 == 1) {
          LOCK();
          *piVar19 = 1;
          UNLOCK();
          if (puStack_208 != (undefined4 *)0x0) {
            (**(code **)*puStack_208)(1);
          }
        }
      }
      if (piStack_298 != (int *)0x0) {
        (**(code **)(*piStack_298 + 4))();
      }
      if (piVar14 == (int *)0x0) {
        return;
      }
      piVar19 = piVar14 + 1;
      LOCK();
      iVar11 = *piVar19;
      *piVar19 = *piVar19 + -1;
      UNLOCK();
      if (iVar11 != 1) {
        return;
      }
      LOCK();
      *piVar19 = 1;
      UNLOCK();
      (**(code **)*piVar14)(1);
      return;
    }
  }
  piVar14 = local_29c;
  LOCK();
  local_29c[0x25] = 3;
  UNLOCK();
  switch(puStack_2a8) {
  case (undefined4 *)0x2:
    iVar11 = 5;
    break;
  case (undefined4 *)0x3:
    iVar11 = 6;
    break;
  case (undefined4 *)0x4:
    iVar11 = 7;
    break;
  case (undefined4 *)0x5:
  case (undefined4 *)0x8:
    iVar11 = 8;
    break;
  default:
    goto switchD_0081c233_caseD_6;
  }
  LOCK();
  local_29c[0x25] = iVar11;
  UNLOCK();
switchD_0081c233_caseD_6:
  piVar19 = piVar14;
  if ((((puStack_2a8 == (undefined4 *)&DAT_00000005) || (puStack_2a8 == (undefined4 *)0x8)) ||
      (puStack_2a8 == (undefined4 *)&DAT_00000004)) &&
     (uVar12 = RoutingOptions_TestMask(pvStack_274,0x100,0,'\0'), (char)uVar12 != '\0')) {
    piStack_288 = piStack_28c;
    puStack_2a8 = (undefined4 *)0x0;
    uStack_294 = 0;
    RouteGraph_PlanWithRecovery
              (pvStack_278,auStack_228,(int *)&pfStack_238,&fStack_284,fStack_290,aiStack_248,
               (int *)0x0,&uStack_294,(uint *)&piStack_288,0x1f,(void *)0x0,(undefined *)pfStack_2a4
               ,(int *)&puStack_2a8);
    if (puStack_2a8 != (undefined4 *)0x0) {
      iVar11 = FUN_0064edf0((int)puStack_2a8);
      if (iVar11 != 0) {
        piVar14[0x35] = piVar14[0x34];
        local_2b0 = 0;
        iVar11 = FUN_0064edf0((int)puStack_2a8);
        if (iVar11 != 0) {
          do {
            puVar18 = (undefined4 *)FUN_0064ee10(puStack_2a8,local_2b0);
            puVar8 = (undefined4 *)piVar14[0x35];
            if (puVar8 < (undefined4 *)piVar14[0x36]) {
              piVar14[0x35] = (int)(puVar8 + 10);
              if (puVar8 != (undefined4 *)0x0) {
                for (iVar11 = 10; iVar11 != 0; iVar11 = iVar11 + -1) {
                  *puVar8 = *puVar18;
                  puVar18 = puVar18 + 1;
                  puVar8 = puVar8 + 1;
                }
              }
            }
            else {
              FUN_0064eea0(piVar14 + 0x34,puVar8,puVar18);
            }
            local_2b0 = local_2b0 + 1;
            uVar13 = FUN_0064edf0((int)puStack_2a8);
            piVar19 = local_29c;
          } while (local_2b0 < uVar13);
        }
      }
      if (puStack_2a8 != (undefined4 *)0x0) {
        iVar11 = puStack_2a8[1];
        puStack_2a8[1] = iVar11 + -1;
        if (iVar11 + -1 == 0) {
          puStack_2a8[1] = 1;
          (**(code **)*puStack_2a8)(1);
        }
      }
    }
  }
  if (aiStack_248[0] != 0) {
    FUN_004e44e0(aiStack_248[0]);
  }
  if (pfStack_238 != (float *)0x0) {
    FUN_004e44e0((int)pfStack_238);
  }
  if (puStack_208 != (undefined4 *)0x0) {
    piVar14 = puStack_208 + 1;
    LOCK();
    iVar11 = *piVar14;
    *piVar14 = *piVar14 + -1;
    UNLOCK();
    if (iVar11 == 1) {
      LOCK();
      *piVar14 = 1;
      UNLOCK();
      if (puStack_208 != (undefined4 *)0x0) {
        (**(code **)*puStack_208)(1);
      }
    }
  }
  if (piStack_298 != (int *)0x0) {
    (**(code **)(*piStack_298 + 4))();
  }
  if (piVar19 != (int *)0x0) {
    piVar14 = piVar19 + 1;
    LOCK();
    iVar11 = *piVar14;
    *piVar14 = *piVar14 + -1;
    UNLOCK();
    if (iVar11 == 1) {
      LOCK();
      *piVar14 = 1;
      UNLOCK();
      (**(code **)*piVar19)(1);
    }
  }
  return;
}

