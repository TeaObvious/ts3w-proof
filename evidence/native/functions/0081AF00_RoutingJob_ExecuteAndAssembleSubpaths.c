/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
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
  int *piVar1;
  bool bVar2;
  undefined1 auVar3 [16];
  int iVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  char cVar8;
  undefined4 *puVar9;
  int *piVar10;
  void *pvVar11;
  int iVar12;
  undefined4 uVar13;
  uint uVar14;
  int *piVar15;
  uint uVar16;
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
  int *piStack_2d0;
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
  void *pvStack_248;
  undefined4 uStack_244;
  undefined4 uStack_240;
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
  
  puVar9 = (undefined4 *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
  if (puVar9 == (undefined4 *)0x0) {
    piVar15 = (int *)0x0;
  }
  else {
    uVar28 = ConstructRoutingPathImp(puVar9);
    piVar15 = (int *)uVar28;
  }
  if (piVar15 != (int *)0x0) {
    LOCK();
    piVar15[1] = piVar15[1] + 1;
    UNLOCK();
  }
  bVar5 = false;
  bVar6 = false;
  bVar7 = false;
  if (piVar15 == (int *)0x0) {
    return;
  }
  piVar19 = piVar15 + 1;
  LOCK();
  *piVar19 = *piVar19 + 1;
  UNLOCK();
  iVar12 = *(int *)((int)param_1 + 0xc);
  local_29c = piVar15;
  piVar10 = (int *)FUN_004e4500(0xc,*(undefined4 *)(iVar12 + 8),0);
  if (piVar10 + 2 != (int *)0x0) {
    piVar10[2] = (int)piVar15;
    LOCK();
    *piVar19 = *piVar19 + 1;
    UNLOCK();
  }
  *piVar10 = iVar12;
  piVar10[1] = *(int *)(iVar12 + 4);
  **(undefined4 **)(iVar12 + 4) = piVar10;
  *(int **)(iVar12 + 4) = piVar10;
  LOCK();
  iVar12 = *piVar19;
  *piVar19 = *piVar19 + -1;
  UNLOCK();
  if (iVar12 == 1) {
    LOCK();
    *piVar19 = 1;
    UNLOCK();
    (**(code **)*piVar15)(1);
  }
  piVar10 = piVar15 + 0x25;
  LOCK();
  *piVar10 = 1;
  UNLOCK();
  (**(code **)(*piVar15 + 4))();
  iStack_1d4 = thunk_FUN_00835d40();
  if (iStack_1d4 == 0) {
    LOCK();
    *piVar10 = 3;
    UNLOCK();
    LOCK();
    iVar12 = *piVar19;
    *piVar19 = *piVar19 + -1;
    UNLOCK();
    if (iVar12 == 1) {
      LOCK();
      *piVar19 = 1;
      UNLOCK();
      (**(code **)*piVar15)(1);
      return;
    }
    return;
  }
  if (*(int *)((int)param_1 + 0x14) == 0) {
LAB_0081c441:
    FUN_007462e0((int *)&local_29c);
    return;
  }
  pvVar11 = (void *)FUN_00829600(iStack_1d4);
  pvStack_278 = pvVar11;
  iVar12 = FUN_00c60a50(*(int *)((int)param_1 + 0x14));
  if ((pvVar11 == (void *)0x0) || (*(int *)(iVar12 + 100) == 0)) goto LAB_0081c441;
  if ((*(int *)((int)param_1 + 0x18) == *(int *)((int)param_1 + 0x1c)) ||
     (*(int *)((int)param_1 + 0x28) == *(int *)((int)param_1 + 0x2c))) {
    LOCK();
    *piVar10 = 3;
    UNLOCK();
    if (*(int *)((int)param_1 + 0x18) == *(int *)((int)param_1 + 0x1c)) {
      LOCK();
      *piVar10 = 5;
      UNLOCK();
    }
    if (*(int *)((int)param_1 + 0x28) == *(int *)((int)param_1 + 0x2c)) {
      LOCK();
      *piVar10 = 6;
      UNLOCK();
    }
    goto LAB_0081c441;
  }
  pvVar11 = (void *)((int)param_1 + 0x40);
  piStack_298 = (int *)0x0;
  pvStack_274 = pvVar11;
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x20000,'\0');
  if ((char)uVar13 == '\0') {
    uVar13 = RoutingOptions_TestMask(pvVar11,0,0x40000,'\0');
    if ((char)uVar13 == '\0') {
      uVar13 = RoutingOptions_TestMask(pvVar11,0,0x80000,'\0');
      if ((char)uVar13 == '\0') {
        uVar13 = RoutingOptions_TestMask(pvVar11,0,0x100000,'\0');
        if ((char)uVar13 == '\0') {
          uVar13 = RoutingOptions_TestMask(pvVar11,0x20,0,'\x01');
          if ((char)uVar13 != '\0') {
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
  pvStack_200 = pvVar11;
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x10000000,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = *(uint *)((int)param_1 + 0xc0);
    uVar13 = RoutingOptions_TestMask(pvVar11,0x40,0,'\x01');
    if ((char)uVar13 == '\0') {
      uVar13 = RoutingOptions_TestMask(pvVar11,0x80,0,'\x01');
      if ((char)uVar13 == '\0') {
        if ((uVar14 >> 2 & 1) == 0) {
          uStack_218 = 0x3fb1cac1;
          uStack_214 = 0x3f1851ec;
          uStack_210 = 0x3f6353f8;
        }
        else {
          uStack_218 = 0x3f79db23;
          uStack_214 = 0x3ed374bc;
          uStack_210 = 0x3f18d4fe;
        }
      }
      else {
        uStack_218 = 0x3f8ccccd;
        uStack_214 = 0x408c0000;
        uStack_210 = 0x3f995810;
      }
    }
    else {
      uStack_218 = 0x3f8872b0;
      uStack_214 = 0x406e0419;
      uStack_210 = 0x3fcf7cee;
    }
  }
  pfStack_238 = (float *)0x0;
  uStack_234 = 0;
  uStack_230 = 0;
  pcStack_22c = "Routing/RoutingJob/startPts";
  pvStack_248 = (void *)0x0;
  uStack_244 = 0;
  uStack_240 = 0;
  pcStack_23c = "Routing/RoutingJob/goalPts";
  fStack_284 = 0.0;
  fStack_280 = 0.0;
  fStack_27c = 0.0;
  fStack_290 = 0.0;
  if (*(int *)((int)param_1 + 0x1c) - *(int *)((int)param_1 + 0x18) >> 6 != 0) {
    piStack_2d0 = (int *)0x0;
    do {
      pfVar20 = (float *)(*(int *)((int)param_1 + 0x18) + (int)piStack_2d0);
      fStack_1a0 = *pfVar20;
      fStack_8c = pfVar20[1];
      fStack_19c = pfVar20[2];
      fStack_84 = pfVar20[3];
      fStack_198 = pfVar20[9];
      uStack_18c = 0xc479c000;
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
      pvVar11 = LotSpatialIndex_FindContainingLotAtWorldXZ
                          (*(void **)((int)param_1 + 0x14),fStack_60,fStack_58);
      if ((pvVar11 != (void *)0x0) &&
         (uVar14 = FUN_00aff9d0(pvVar11,pfVar20,(int *)0x0,1), (char)uVar14 != '\0')) {
        bVar5 = true;
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
        uVar14 = FUN_0066de10(*(void **)((int)pvStack_278 + 0x14),*(int *)((int)param_1 + 0x14),
                              fStack_180,fStack_178);
        if ((char)uVar14 != '\0') {
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
                                (char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,
                                (undefined1 *)0x0,'\x01');
          fStack_d0 = pfVar20[1];
          fStack_70 = (float)(fVar21 + (float10)1.0);
          if ((fStack_70 < fStack_d0) ||
             (((pvVar11 != (void *)0x0 &&
               (uVar13 = FUN_00624bc0((int)pvVar11), (char)uVar13 != '\0')) && (pfVar20[9] == 0.0)))
             ) {
            bVar6 = false;
          }
        }
      }
      piStack_2d0 = (int *)((int)piStack_2d0 + 0x40);
      fStack_290 = (float)((int)fStack_290 + 1);
    } while ((uint)fStack_290 <
             (uint)(*(int *)((int)param_1 + 0x1c) - *(int *)((int)param_1 + 0x18) >> 6));
  }
  iVar12 = *(int *)((int)param_1 + 0x28);
  piVar19 = (int *)0x0;
  bVar2 = 1 < (uint)(*(int *)((int)param_1 + 0x2c) - iVar12 >> 6);
  pfStack_2a4 = (float *)0x7f7fffff;
  fStack_290 = *(float *)(iVar12 + 0x20);
  piVar15 = (int *)(*(int *)((int)param_1 + 0x2c) - iVar12 >> 6);
  piStack_28c = (int *)0x0;
  if (piVar15 != (int *)0x0) {
    piStack_2d0 = (int *)0x0;
    do {
      pfVar20 = (float *)(*(int *)((int)param_1 + 0x28) + (int)piStack_2d0);
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
      FUN_0062b010(&pvStack_248,&fStack_1bc);
      pfStack_2a0 = (float *)((fStack_1bc - *pfStack_238) * (fStack_1bc - *pfStack_238) +
                             (fStack_1b8 - pfStack_238[1]) * (fStack_1b8 - pfStack_238[1]));
      if (((bVar2) && (piVar19 != (int *)0x0)) &&
         (0.05 < ABS((float)pfStack_2a0 - (float)pfStack_2a4))) {
        bVar2 = false;
      }
      fVar22 = pfVar20[8];
      if (fVar22 != fStack_290) {
        bVar2 = false;
      }
      if ((piVar19 == (int *)0x0) || (fStack_290 < fVar22)) {
        fStack_284 = fStack_1bc;
        fStack_280 = fStack_1b8;
        fStack_27c = fStack_1b4;
        fStack_290 = pfVar20[8];
        pfStack_2a4 = pfStack_2a0;
LAB_0081b70d:
        piStack_28c = piVar19;
      }
      else if ((fVar22 == fStack_290) && ((float)pfStack_2a0 < (float)pfStack_2a4)) {
        pfStack_2a4 = pfStack_2a0;
        FUN_0061c0d0(&fStack_284,&fStack_260,&fStack_1bc);
        goto LAB_0081b70d;
      }
      piStack_2d0 = (int *)((int)piStack_2d0 + 0x40);
      piVar19 = (int *)((int)piVar19 + 1);
    } while (piVar19 < piVar15);
  }
  if (bVar5) {
    piVar19 = piStack_28c;
  }
  else {
    pvVar11 = LotSpatialIndex_FindContainingLotAtWorldXZ
                        (*(void **)((int)param_1 + 0x14),fStack_284,fStack_280);
    piVar19 = piStack_28c;
    if (pvVar11 != (void *)0x0) {
      uVar14 = FUN_00aff9d0(pvVar11,(float *)((int)piStack_28c * 0x40 +
                                             *(int *)((int)param_1 + 0x28)),(int *)0x0,1);
      if ((char)uVar14 != '\0') {
        bVar5 = true;
      }
    }
  }
  if (*(void **)((int)pvStack_278 + 0x14) != (void *)0x0) {
    iVar12 = (int)piVar19 * 0x40;
    pfVar20 = (float *)(*(int *)((int)param_1 + 0x28) + iVar12);
    fStack_1f0 = *pfVar20;
    fStack_1ec = pfVar20[1];
    fStack_1e8 = pfVar20[2];
    fStack_1e4 = pfVar20[3];
    fStack_1d0 = fStack_1f0;
    fStack_1cc = fStack_1ec;
    fStack_1c8 = fStack_1e8;
    fStack_1c4 = fStack_1e4;
    uVar14 = FUN_0066de10(*(void **)((int)pvStack_278 + 0x14),*(int *)((int)param_1 + 0x14),
                          fStack_1f0,fStack_1e8);
    if ((char)uVar14 != '\0') {
      pfStack_2a0 = LotSpatialIndex_FindContainingLotAtWorldXZ
                              (*(void **)((int)param_1 + 0x14),fStack_284,fStack_280);
      pfVar20 = (float *)(*(int *)((int)param_1 + 0x28) + iVar12);
      fStack_1f0 = *pfVar20;
      fStack_1ec = pfVar20[1];
      fStack_1e8 = pfVar20[2];
      fStack_1e4 = pfVar20[3];
      bVar7 = true;
      fStack_1d0 = fStack_1f0;
      fStack_1cc = fStack_1ec;
      fStack_1c8 = fStack_1e8;
      fStack_1c4 = fStack_1e4;
      fVar21 = FUN_00c6a380(*(void **)((int)param_1 + 0x14),fStack_1f0,fStack_1e8,0,'\0','\x01',
                            (char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,(undefined1 *)0x0,
                            '\x01');
      fStack_b0 = *(float *)(iVar12 + *(int *)((int)param_1 + 0x28) + 4);
      pfVar20 = (float *)(iVar12 + *(int *)((int)param_1 + 0x28));
      fStack_30 = (float)(fVar21 + (float10)1.0);
      pfStack_2a4 = pfVar20;
      if ((fStack_30 < fStack_b0) ||
         (((pfStack_2a0 != (float *)0x0 &&
           (uVar13 = FUN_00624bc0((int)pfStack_2a0), (char)uVar13 != '\0')) && (pfVar20[9] == 0.0)))
         ) {
        bVar7 = false;
      }
    }
  }
  if (bVar2) {
    cVar8 = FUN_00588be0();
    if (cVar8 != '\0') {
      TreeVariation_Reseed((void *)((int)param_1 + 0xd0),0x539);
    }
    piVar19 = (int *)FUN_004faa30((void *)((int)param_1 + 0xd0),(uint)piVar15);
    fStack_284 = *(float *)((int)pvStack_248 + (int)piVar19 * 0x1c);
    fStack_280 = *(float *)((int)pvStack_248 + (int)piVar19 * 0x1c + 4);
    fStack_27c = *(float *)((int)pvStack_248 + (int)piVar19 * 0x1c + 8);
    piStack_28c = piVar19;
  }
  pvVar11 = pvStack_274;
  **(undefined4 **)((int)param_1 + 0x3c) = piVar19;
  uVar14 = 0;
  uVar13 = RoutingOptions_TestMask(pvStack_274,2,0,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = 4;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,1,0,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 8;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,8,0,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x10;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0x1000,0,'\0');
  if ((char)uVar13 != '\0') {
    uStack_203 = 1;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0x80000000,0,'\0');
  if (((char)uVar13 != '\0') && (!bVar5)) {
    uVar14 = uVar14 | 0x400;
  }
  pfStack_2a4 = (float *)0x1;
  uVar13 = RoutingOptions_TestMask(pvVar11,0x10,0,'\0');
  if ((char)uVar13 != '\0') {
    pfStack_2a4 = (float *)0x3;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0x20,0,'\0');
  if ((char)uVar13 != '\0') {
    pfStack_2a4 = (float *)((uint)pfStack_2a4 & 0xfffffffe);
    uStack_204 = 0;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x8000,'\0');
  if ((char)uVar13 != '\0') {
    pfStack_2a4 = (float *)&DAT_00000004;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0x40,0,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x80;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0x80,0,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x200;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x1000,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x200000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x4000,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x400000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x80,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x800;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x100,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x1000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x200,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x2000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x400,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x4000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x10000000,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x1000000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0,0x20000000,'\0');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x8000000;
  }
  if (bVar6) {
    uVar14 = uVar14 | 0x10000000;
  }
  if (bVar7) {
    uVar14 = uVar14 | 0x20000000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,8,0,'\x01');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x40000000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,0x10,0,'\x01');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x80000000;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,4,0,'\x01');
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x40;
  }
  uVar13 = RoutingOptions_TestMask(pvVar11,2,0,'\x01');
  piVar15 = piStack_298;
  if ((char)uVar13 != '\0') {
    uVar14 = uVar14 | 0x8000;
  }
  uVar16 = *(uint *)((int)param_1 + 0xc0) & 0xcf00;
  if (((uVar16 == 0x4100) || (uVar16 == 0x4200)) || (uVar16 == 0x4300)) {
    uVar14 = uVar14 | 0x4000000;
  }
  if (piStack_298 != (int *)0x0) {
    piStack_298 = (int *)0x0;
    (**(code **)(*piVar15 + 4))();
  }
  puStack_2a8 = (undefined4 *)
                RouteGraph_PlanWithRecovery
                          (pvStack_278,auStack_228,(int *)&pfStack_238,&fStack_284,fStack_290,
                           (int *)&pvStack_248,(int *)&piStack_298,
                           *(undefined4 **)((int)param_1 + 0x38),*(uint **)((int)param_1 + 0x3c),
                           uVar14,(void *)0x0,(undefined *)pfStack_2a4,(int *)0x0);
  if (puStack_2a8 == (undefined4 *)0x0) {
    piStack_270 = (int *)0x0;
    piStack_26c = (int *)0x0;
    uStack_268 = 0;
    pcStack_264 = "Routing/SubPaths";
    RoutePath_BuildTypedSegments(param_1,(int)piStack_298,(int *)&piStack_270);
    uVar13 = RoutingOptions_TestMask(pvVar11,0x200000,0,'\0');
    if ((char)uVar13 == '\0') {
      if (1 < (uint)((int)piStack_26c - (int)piStack_270 >> 6)) {
        puStack_2a8 = (undefined4 *)&DAT_00000005;
      }
      piStack_26c = piStack_270;
      FUN_00819780((int)aiStack_140);
      aiStack_140[0] = piStack_298[3];
      uVar13 = RoutingOptions_TestMask(pvVar11,0x40,0,'\0');
      if ((char)uVar13 == '\0') {
        uVar13 = RoutingOptions_TestMask(pvVar11,8,0,'\x01');
        iStack_130 = (-(uint)((char)uVar13 != '\0') & 0xc6e389a3) + 0xc6600b67;
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
    piVar15 = piStack_298 + 2;
    pfStack_2a0 = (float *)*piVar15;
    if (piStack_270 != piStack_26c) {
      piStack_2d0 = piStack_270 + 8;
      do {
        if (puStack_2a8 != (undefined4 *)0x0) goto LAB_0081c153;
        if (piStack_2d0 + -8 == piStack_270) {
          piVar19 = local_29c;
        }
        else {
          puVar9 = (undefined4 *)FUN_004e4500(400,"Routing/RoutingPathImp",0);
          if (puVar9 == (undefined4 *)0x0) {
            puVar9 = (undefined4 *)0x0;
          }
          else {
            uVar28 = ConstructRoutingPathImp(puVar9);
            puVar9 = (undefined4 *)uVar28;
          }
          FUN_00874fb0(&local_29c,puVar9);
          piVar19 = local_29c;
          piStack_1f4 = local_29c;
          if (local_29c != (int *)0x0) {
            LOCK();
            local_29c[1] = local_29c[1] + 1;
            UNLOCK();
          }
          iVar12 = *(int *)((int)param_1 + 0xc);
          piVar10 = (int *)FUN_004e4500(0xc,*(undefined4 *)(iVar12 + 8),0);
          if ((piVar10 + 2 != (int *)0x0) && (piVar10[2] = (int)piVar19, piVar19 != (int *)0x0)) {
            LOCK();
            piVar19[1] = piVar19[1] + 1;
            UNLOCK();
          }
          *piVar10 = iVar12;
          piVar10[1] = *(int *)(iVar12 + 4);
          **(undefined4 **)(iVar12 + 4) = piVar10;
          *(int **)(iVar12 + 4) = piVar10;
          FUN_007462e0((int *)&piStack_1f4);
        }
        piVar19[0x2c] = piStack_2d0[-4];
        piVar19[0x2e] = piStack_2d0[-2];
        piVar19[0x2f] = piStack_2d0[-1];
        iVar12 = piStack_2d0[1];
        iVar17 = piStack_2d0[2];
        iVar4 = piStack_2d0[3];
        piVar19[0x30] = *piStack_2d0;
        piVar19[0x31] = iVar12;
        piVar19[0x32] = iVar17;
        piVar19[0x33] = iVar4;
        pfVar20 = (float *)piStack_2d0[-8];
        if (pfVar20 < pfStack_2a0) {
          puStack_2a8 = (undefined4 *)0x2;
        }
        else {
          fVar21 = FUN_008192e0(pfVar20 + -0x10,piVar15,afStack_160);
          if ((char)piStack_2d0[4] == '\0') {
            piStack_288 = (int *)0x0;
            fVar21 = (float10)0.0;
          }
          uVar13 = FUN_00819a70(piStack_298,pfStack_2a0,pfVar20,piVar15,afStack_160,(float)fVar21,
                                piVar19);
          if ((char)uVar13 == '\0') {
            puStack_2a8 = (undefined4 *)0x2;
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
            (**(code **)(*piVar19 + 0x148))(&fStack_100);
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
              auVar3._4_4_ = fVar22;
              auVar3._0_4_ = fVar22;
              auVar3._8_4_ = fVar22;
              auVar3._12_4_ = fVar22;
              auVar27 = rsqrtps(auVar27 << 0x20,auVar3);
              fVar23 = auVar27._0_4_;
              fVar24 = auVar27._4_4_;
              fVar25 = auVar27._8_4_;
              fVar26 = auVar27._12_4_;
              fVar23 = (1.0 - fVar23 * fVar23 * fVar22) * fVar23 * 0.5 + fVar23;
              fVar24 = (1.0 - fVar24 * fVar24 * fVar22) * fVar24 * 0.5 + fVar24;
              fVar25 = (1.0 - fVar25 * fVar25 * fVar22) * fVar25 * 0.5 + fVar25;
              fVar26 = (1.0 - fVar26 * fVar26 * fVar22) * fVar26 * 0.5 + fVar26;
              fStack_c0 = ((1.0 - fVar23 * fVar23 * fVar22) * fVar23 * 0.5 + fVar23) *
                          afStack_160[0];
              fStack_bc = ((1.0 - fVar24 * fVar24 * fVar22) * fVar24 * 0.5 + fVar24) * 0.0;
              fStack_b8 = ((1.0 - fVar25 * fVar25 * fVar22) * fVar25 * 0.5 + fVar25) * fStack_158;
              fStack_b4 = ((1.0 - fVar26 * fVar26 * fVar22) * fVar26 * 0.5 + fVar26) * fStack_154;
              FUN_0085fb10(&fStack_c0,afStack_a0);
              (**(code **)(*piVar19 + 0x144))(afStack_a0);
            }
            pfStack_2a0 = pfVar20;
          }
        }
        piVar19 = piStack_2d0 + 8;
        piStack_2d0 = piStack_2d0 + 0x10;
      } while (piVar19 != piStack_26c);
    }
    if (puStack_2a8 == (undefined4 *)0x0) {
      piStack_288 = *(int **)((int)param_1 + 0xc);
      if ((int *)*piStack_288 != piStack_288) {
        pfStack_2a0 = (float *)*piStack_288;
        piVar15 = (int *)*pfStack_2a0;
        if (piVar15 != piStack_288) {
          do {
            piVar19 = (int *)pfStack_2a0[2];
            if (piVar19 != (int *)0x0) {
              LOCK();
              piVar19[1] = piVar19[1] + 1;
              UNLOCK();
            }
            piVar10 = (int *)piVar15[2];
            if (piVar10 != (int *)0x0) {
              LOCK();
              piVar10[1] = piVar10[1] + 1;
              UNLOCK();
            }
            (**(code **)(*piVar19 + 0x78))(piVar10);
            (**(code **)(*piVar10 + 0x80))(piVar19);
            piVar1 = piVar10 + 1;
            LOCK();
            iVar12 = *piVar1;
            *piVar1 = *piVar1 + -1;
            UNLOCK();
            if (iVar12 == 1) {
              LOCK();
              *piVar1 = 1;
              UNLOCK();
              (**(code **)*piVar10)(1);
            }
            piVar10 = piVar19 + 1;
            LOCK();
            iVar12 = *piVar10;
            *piVar10 = *piVar10 + -1;
            UNLOCK();
            if (iVar12 == 1) {
              LOCK();
              *piVar10 = 1;
              UNLOCK();
              (**(code **)*piVar19)(1);
            }
            piVar15 = (int *)*piVar15;
            pfStack_2a0 = (float *)*pfStack_2a0;
          } while (piVar15 != piStack_288);
        }
      }
      piVar15 = local_29c;
      iVar12 = *local_29c;
      iVar17 = (**(code **)(iVar12 + 0x48))(0x40400000,1);
      (**(code **)(iVar12 + 0xec))(iVar17 + -1);
      uVar14 = (**(code **)(*piVar15 + 0x4c))();
      (**(code **)(*piVar15 + 0xc4))(uVar14 - 1,8);
      if (1 < uVar14) {
        (**(code **)(*piVar15 + 0xc4))(uVar14 - 2,4);
      }
    }
LAB_0081c153:
    if (piStack_270 != (int *)0x0) {
      Memory_FreeIfNonNull(piStack_270);
    }
    piVar15 = local_29c;
    if (puStack_2a8 == (undefined4 *)0x0) {
      LOCK();
      local_29c[0x25] = 2;
      UNLOCK();
      if (pvStack_248 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_248);
      }
      if (pfStack_238 != (float *)0x0) {
        Memory_FreeIfNonNull(pfStack_238);
      }
      if (puStack_208 != (undefined4 *)0x0) {
        piVar19 = puStack_208 + 1;
        LOCK();
        iVar12 = *piVar19;
        *piVar19 = *piVar19 + -1;
        UNLOCK();
        if (iVar12 == 1) {
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
      if (piVar15 == (int *)0x0) {
        return;
      }
      piVar19 = piVar15 + 1;
      LOCK();
      iVar12 = *piVar19;
      *piVar19 = *piVar19 + -1;
      UNLOCK();
      if (iVar12 == 1) {
        LOCK();
        *piVar19 = 1;
        UNLOCK();
        (**(code **)*piVar15)(1);
        return;
      }
      return;
    }
  }
  piVar15 = local_29c;
  LOCK();
  local_29c[0x25] = 3;
  UNLOCK();
  switch(puStack_2a8) {
  case (undefined4 *)0x2:
    iVar12 = 5;
    break;
  case (undefined4 *)0x3:
    iVar12 = 6;
    break;
  case (undefined4 *)0x4:
    iVar12 = 7;
    break;
  case (undefined4 *)0x5:
  case (undefined4 *)0x8:
    iVar12 = 8;
    break;
  default:
    goto switchD_0081c233_caseD_6;
  }
  LOCK();
  local_29c[0x25] = iVar12;
  UNLOCK();
switchD_0081c233_caseD_6:
  if ((((puStack_2a8 == (undefined4 *)&DAT_00000005) || (puStack_2a8 == (undefined4 *)0x8)) ||
      (puStack_2a8 == (undefined4 *)&DAT_00000004)) &&
     (uVar13 = RoutingOptions_TestMask(pvStack_274,0x100,0,'\0'), (char)uVar13 != '\0')) {
    piStack_288 = piStack_28c;
    puStack_2a8 = (undefined4 *)0x0;
    uStack_294 = 0;
    RouteGraph_PlanWithRecovery
              (pvStack_278,auStack_228,(int *)&pfStack_238,&fStack_284,fStack_290,
               (int *)&pvStack_248,(int *)0x0,&uStack_294,(uint *)&piStack_288,0x1f,(void *)0x0,
               (undefined *)pfStack_2a4,(int *)&puStack_2a8);
    if (puStack_2a8 != (undefined4 *)0x0) {
      iVar12 = FUN_0064edf0((int)puStack_2a8);
      if (iVar12 != 0) {
        piVar15[0x35] = piVar15[0x34];
        local_2b0 = 0;
        iVar12 = FUN_0064edf0((int)puStack_2a8);
        if (iVar12 != 0) {
          do {
            puVar18 = (undefined4 *)FUN_0064ee10(puStack_2a8,local_2b0);
            puVar9 = (undefined4 *)piVar15[0x35];
            if (puVar9 < (undefined4 *)piVar15[0x36]) {
              piVar15[0x35] = (int)(puVar9 + 10);
              if (puVar9 != (undefined4 *)0x0) {
                for (iVar12 = 10; iVar12 != 0; iVar12 = iVar12 + -1) {
                  *puVar9 = *puVar18;
                  puVar18 = puVar18 + 1;
                  puVar9 = puVar9 + 1;
                }
              }
            }
            else {
              FUN_0064eea0(piVar15 + 0x34,puVar9,puVar18);
            }
            local_2b0 = local_2b0 + 1;
            uVar14 = FUN_0064edf0((int)puStack_2a8);
          } while (local_2b0 < uVar14);
          piVar15 = local_29c;
        }
      }
      if (puStack_2a8 != (undefined4 *)0x0) {
        iVar12 = puStack_2a8[1];
        puStack_2a8[1] = iVar12 + -1;
        if (iVar12 + -1 == 0) {
          puStack_2a8[1] = 1;
          (**(code **)*puStack_2a8)(1);
        }
      }
    }
  }
  if (pvStack_248 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_248);
  }
  if (pfStack_238 != (float *)0x0) {
    Memory_FreeIfNonNull(pfStack_238);
  }
  if (puStack_208 != (undefined4 *)0x0) {
    piVar19 = puStack_208 + 1;
    LOCK();
    iVar12 = *piVar19;
    *piVar19 = *piVar19 + -1;
    UNLOCK();
    if (iVar12 == 1) {
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
  if (piVar15 != (int *)0x0) {
    piVar19 = piVar15 + 1;
    LOCK();
    iVar12 = *piVar19;
    *piVar19 = *piVar19 + -1;
    UNLOCK();
    if (iVar12 == 1) {
      LOCK();
      *piVar19 = 1;
      UNLOCK();
      (**(code **)*piVar15)(1);
    }
  }
  return;
}

