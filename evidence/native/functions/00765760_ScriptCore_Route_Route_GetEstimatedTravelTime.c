/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011619f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_GetEstimatedTravelTime [assembly=ScriptCore token=0x06001122; handle:
   System.UInt32, pathIndex: System.UInt32, simObjID: System.UInt64, animSpec:
   Sims3.SimIFace.RouteAnimationSpec; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst contract (PC 1.67):
   Registered GetEstimatedTravelTime, original ScriptCore06001122 -> Single; four-field sequential
   RouteAnimationSpec original metadata, physical handle/pathIndex/GUIDlohi/spec4words
   atEBP8/C/10/14/18..24. Resolve typedRoute74B4B0 and for concrete objects
   with0075D540-installed0100583C, retain/release through primaryslots+10/+14; other subtypes/later
   vtable replacements remain open; child index uses+E0 list and child+4 intrusive lifetime. Missing
   route/child/object registry/required component or failed initial style decode reaches cleanup and
   x87+0. Initial style008443F0->00843EB0, ordered variants844140, timing848F90; subordinate
   policies remain explicit. Six Float32 returnterms at stableS+68,70,78,88,80,74 added in that
   order, multiply exact binary32[1005A54]=41EFFFFF(29.999998092651367), storeFloat32 then FLD
   return; no exact30 or physical-unit promise. Prefix vectors populated
   only0<signedrequestedVariantIndex<count; later nonemptyvector selectedordinal0 can reach766599
   unguarded zero-prefixbase load for returnedindex0 orFFFFFFFF. Actual catalog/caller invariant
   resolving these states remains open; not a claimed runtime crash or blanket public precondition.
   Lazyglobals11D5BB0 masks01/02 govern ordinary initialization11D5BAC/11D5BA8; no atomic
   initialization/wholeobjectlocking claim. Complete5709ownedbytes in2ranges,3envelopegap bytes
   excluded. Root term producer, callbacks,resources,allocator,actualruntime/unit contracts remain
   incomplete. */

float10 __cdecl
ScriptCore.Route::Route_GetEstimatedTravelTime
          (uint param_1,int param_2,undefined4 param_3,undefined4 param_4,uint param_5,uint param_6,
          uint param_7,uint param_8)

{
  int *piVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined4 *puVar9;
  undefined4 *puVar10;
  undefined4 *puVar11;
  char cVar12;
  int *piVar13;
  int *piVar14;
  void *pvVar15;
  uint uVar16;
  void *pvVar17;
  undefined1 (*pauVar18) [16];
  int iVar19;
  undefined4 uVar20;
  float *pfVar21;
  uint uVar22;
  uint uVar23;
  int iVar24;
  float10 fVar25;
  float10 fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar35;
  float fVar36;
  float fVar37;
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  float fVar42;
  undefined1 auVar40 [16];
  undefined1 auVar41 [16];
  undefined1 auVar43 [16];
  undefined1 auVar44 [16];
  undefined1 auVar45 [16];
  undefined1 auVar46 [16];
  double dVar47;
  uint uVar48;
  undefined8 uVar49;
  float fStack_470;
  float fStack_46c;
  float fStack_464;
  void *pvStack_45c;
  float fStack_450;
  float fStack_44c;
  float fStack_448;
  float fStack_444;
  float fStack_440;
  float fStack_43c;
  float fStack_438;
  float fStack_434;
  float fStack_424;
  float fStack_420;
  float fStack_41c;
  float fStack_418;
  float fStack_414;
  float fStack_410;
  float fStack_40c;
  float fStack_408;
  int *local_404;
  float fStack_400;
  float fStack_3fc;
  float fStack_3f8;
  float fStack_3f4;
  int *piStack_3f0;
  int *piStack_3ec;
  undefined4 uStack_3e8;
  char *pcStack_3e4;
  void *pvStack_3e0;
  void *pvStack_3dc;
  undefined4 uStack_3d8;
  char *pcStack_3d4;
  void *pvStack_3d0;
  void *pvStack_3cc;
  undefined4 uStack_3c8;
  char *pcStack_3c4;
  undefined1 auStack_3c0 [8];
  float fStack_3b8;
  float fStack_3b4;
  void *pvStack_3ac;
  undefined4 uStack_3a8;
  undefined4 uStack_3a4;
  char *pcStack_3a0;
  undefined4 uStack_39c;
  undefined4 uStack_398;
  float fStack_394;
  float fStack_390;
  float fStack_38c;
  float fStack_388;
  float fStack_384;
  undefined4 uStack_378;
  undefined4 uStack_374;
  void *pvStack_370;
  undefined4 uStack_36c;
  undefined4 uStack_368;
  char *pcStack_364;
  undefined1 auStack_360 [8];
  float fStack_358;
  float fStack_354;
  float fStack_348;
  float fStack_344;
  float fStack_340;
  undefined4 uStack_33c;
  float fStack_338;
  float fStack_334;
  float fStack_330;
  float fStack_32c;
  float fStack_328;
  float fStack_324;
  float fStack_320;
  float fStack_31c;
  float fStack_318;
  float fStack_314;
  float fStack_308;
  float fStack_304;
  int iStack_300;
  int *piStack_2fc;
  int iStack_2f8;
  int *piStack_2f4;
  int *piStack_2e8;
  int *piStack_2e4;
  uint uStack_2ac;
  uint uStack_2a8;
  float fStack_2a4;
  int iStack_2a0;
  char cStack_29b;
  float fStack_280;
  float fStack_27c;
  float fStack_278;
  float fStack_274;
  undefined4 *puStack_26c;
  undefined4 *puStack_268;
  undefined4 *puStack_264;
  char *pcStack_260;
  undefined4 *puStack_25c;
  undefined4 auStack_258 [42];
  undefined4 auStack_1b0 [4];
  float fStack_1a0;
  undefined4 uStack_190;
  undefined4 uStack_180;
  undefined4 uStack_170;
  float fStack_160;
  float fStack_150;
  float fStack_140;
  undefined4 uStack_13c;
  float fStack_138;
  float fStack_134;
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float fStack_120;
  float fStack_110;
  float fStack_100;
  float fStack_f0;
  float fStack_e0;
  float fStack_d0;
  int aiStack_c0 [10];
  int *piStack_98;
  int *piStack_94;
  undefined4 auStack_40 [8];
  undefined1 auStack_20 [28];
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar13 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar13 != (int *)0x0
     )) {
    local_404 = piVar13;
    (**(code **)(*piVar13 + 0x10))();
    piVar14 = (int *)piVar13[0x38];
    piVar1 = piVar13 + 0x38;
    if (piVar14 != piVar1) {
      do {
        if (param_2 == 0) break;
        piVar14 = (int *)*piVar14;
        param_2 = param_2 + -1;
      } while (piVar14 != piVar1);
      if ((piVar14 != piVar1) && (piVar1 = (int *)piVar14[2], piVar1 != (int *)0x0)) {
        LOCK();
        piVar1[1] = piVar1[1] + 1;
        UNLOCK();
        pvVar15 = ObjectRegistry_GetGlobal();
        if (pvVar15 != (void *)0x0) {
          pvVar15 = ObjectRegistry_FindBorrowed(pvVar15,CONCAT44(param_4,param_3));
          if (pvVar15 == (void *)0x0) {
            pvStack_45c = (void *)0x0;
          }
          else {
            pvStack_45c = Object_GetComponentByMask(pvVar15,DAT_011dd484);
          }
          pvVar17 = DAT_011da140;
          fStack_450 = DAT_01150628;
          FUN_007515c0(&iStack_300);
          cVar12 = ResolveLocomotionStyleForAttributes
                             (pvVar17,param_5,param_6,param_7,param_8,&iStack_300);
          if ((cVar12 != '\0') && (pvStack_45c != (void *)0x0)) {
            puStack_26c = auStack_258;
            puStack_264 = auStack_1b0;
            pcStack_260 = "EASTL fixed_vector";
            puStack_268 = puStack_26c;
            puStack_25c = puStack_26c;
            uVar16 = FindOrBuildLocomotionVariantSequence
                               (pvVar17,param_5,param_6 | param_8,(uint *)&puStack_26c);
            if (cStack_29b != '\0') {
              fStack_450 = 0.001;
            }
            fStack_41c = 0.0;
            fStack_424 = 0.0;
            fStack_464 = 0.0;
            fStack_444 = 0.0;
            fStack_448 = 0.0;
            fStack_40c = 0.0;
            fStack_400 = 0.0;
            fStack_3f8 = 0.0;
            fStack_46c = 0.0;
            fStack_470 = 0.0;
            fStack_408 = 0.0;
            fStack_410 = 0.0;
            fStack_418 = 0.0;
            pvStack_3e0 = (void *)0x0;
            pvStack_3dc = (void *)0x0;
            uStack_3d8 = 0;
            pcStack_3d4 = "Routing/GetEstimatedTravelTime";
            pvStack_3d0 = (void *)0x0;
            pvStack_3cc = (void *)0x0;
            uStack_3c8 = 0;
            pcStack_3c4 = "Routing/GetEstimatedTravelTime";
            pvStack_3ac = (void *)0x0;
            uStack_3a8 = 0;
            uStack_3a4 = 0;
            pcStack_3a0 = "Routing/GetEstimatedTravelTime";
            pvStack_370 = (void *)0x0;
            uStack_36c = 0;
            uStack_368 = 0;
            pcStack_364 = "Routing/GetEstimatedTravelTime";
            piStack_3f0 = (int *)0x0;
            piStack_3ec = (int *)0x0;
            uStack_3e8 = 0;
            pcStack_3e4 = "Routing/GetEstimatedTravelTime";
            if (((0 < (int)uVar16) &&
                (uVar48 = ((int)puStack_268 - (int)puStack_26c) / 0x1c, uVar48 != 0)) &&
               ((int)uVar16 < (int)uVar48)) {
              uStack_39c = 0;
              FUN_0057cb90(&pvStack_3e0,uVar48,&uStack_39c);
              uStack_378 = 0;
              FUN_0057cb90(&pvStack_3d0,((int)puStack_268 - (int)puStack_26c) / 0x1c,&uStack_378);
              uStack_398 = 0;
              FUN_0057cb90(&pvStack_3ac,((int)puStack_268 - (int)puStack_26c) / 0x1c,&uStack_398);
              uStack_374 = 0;
              FUN_0057cb90(&pvStack_370,((int)puStack_268 - (int)puStack_26c) / 0x1c,&uStack_374);
              FUN_007656d0(&piStack_3f0,((int)puStack_268 - (int)puStack_26c) / 0x1c);
              FUN_007577c0(aiStack_c0,&iStack_300);
              iVar24 = 0;
              if (0 < ((int)puStack_268 - (int)puStack_26c) / 0x1c) {
                do {
                  cVar12 = ResolveLocomotionStyleRecordWithFallback
                                     (pvVar17,puStack_26c[iVar24 * 7 + 6],uStack_2ac,uStack_2a8,
                                      (int)fStack_2a4,iStack_2a0,aiStack_c0,'\x01');
                  if (cVar12 != '\0') {
                    if (iVar24 == 0) {
                      FUN_007579e0(&iStack_300,aiStack_c0);
                    }
                    if ((piStack_98 != (int *)0x0) &&
                       (cVar12 = (**(code **)(*piStack_98 + 0x10))(), cVar12 == '\0')) {
                      fVar25 = QueryLocomotionDurationAndMotion
                                         ((int)pvStack_45c + 8,fStack_2a4,piStack_98,2000.0,0,
                                          &fStack_3f4);
                      fStack_44c = (float)fVar25;
                      *(float *)((int)pvStack_3e0 + iVar24 * 4) = fStack_3f4;
                      if ((0 < iVar24) && (iVar24 <= (int)uVar16)) {
                        fStack_46c = fStack_44c + fStack_46c;
                        fStack_464 = fStack_3f4 + fStack_464;
                      }
                    }
                    if ((piStack_94 != (int *)0x0) &&
                       (cVar12 = (**(code **)(*piStack_94 + 0x10))(), cVar12 == '\0')) {
                      fVar25 = QueryLocomotionDurationAndMotion
                                         ((int)pvStack_45c + 8,fStack_2a4,piStack_94,2000.0,0,
                                          &fStack_3fc);
                      fStack_44c = (float)fVar25;
                      *(float *)((int)pvStack_3d0 + iVar24 * 4) = fStack_3fc;
                      if ((0 < iVar24) && (iVar24 <= (int)uVar16)) {
                        fStack_470 = fStack_44c + fStack_470;
                        fStack_444 = fStack_3fc + fStack_444;
                      }
                    }
                  }
                  FUN_007579e0(piStack_3f0 + iVar24 * 0x1f,aiStack_c0);
                  *(float *)((int)pvStack_3ac + iVar24 * 4) = fStack_444 + fStack_464;
                  *(float *)((int)pvStack_370 + iVar24 * 4) = fStack_470 + fStack_46c;
                  iVar24 = iVar24 + 1;
                } while (iVar24 < ((int)puStack_268 - (int)puStack_26c) / 0x1c);
              }
              FUN_00754230(aiStack_c0);
            }
            if (piStack_2e4 != (int *)0x0) {
              pvVar17 = (void *)Object_GetTransformComponentOrNull(pvVar15);
              if (pvVar17 != (void *)0x0) {
                TransformComponent_GetWorldPosition(pvVar17,auStack_40);
                pauVar18 = (undefined1 (*) [16])FUN_004b3790((int)pvVar17);
                _auStack_360 = *pauVar18;
              }
              _auStack_3c0 = ZEXT816(0);
              fStack_390 = 0.0;
              fStack_38c = 0.0;
              fStack_388 = 0.0;
              fStack_384 = 0.0;
              fVar25 = (float10)(**(code **)(*piVar1 + 300))();
              fStack_44c = (float)fVar25;
              (**(code **)(*piVar1 + 0xa4))(*(undefined4 *)((int)pvVar15 + 8));
              iVar24 = (**(code **)(*piVar1 + 0x48))();
              if (0 < iVar24) {
                (**(code **)(*piVar1 + 0x11c))(auStack_20,pvVar15,0);
                fStack_46c = 0.0;
                if (0 < iVar24) {
                  do {
                    if (-1 < (int)fStack_46c) {
                      iVar19 = (**(code **)(*piVar1 + 0xd0))();
                      fStack_394 = *(float *)(iVar19 + 0x10);
                      fStack_390 = *(float *)(iVar19 + 0x14);
                      fStack_38c = *(float *)(iVar19 + 0x18);
                      fStack_388 = *(float *)(iVar19 + 0x1c);
                      iVar19 = (**(code **)(*piVar1 + 0xd0))(fStack_46c);
                      if ((0.005 <= *(float *)(iVar19 + 0x20)) ||
                         (iVar19 = (**(code **)(*piVar1 + 0xd0))(),
                         0.15 <= fStack_44c - *(float *)(iVar19 + 0x24))) {
                        fStack_110 = fStack_388 * fStack_388 + fStack_38c * fStack_38c +
                                     fStack_390 * fStack_390;
                        uStack_180 = 0;
                        if (0.0 < fStack_110) break;
                      }
                    }
                    fStack_46c = (float)((int)fStack_46c + 1);
                  } while ((int)fStack_46c < iVar24);
                }
              }
              auVar43 = ZEXT816(0);
              fStack_464 = 0.0;
              fStack_438 = 1.0;
              fVar27 = ((float)auStack_360._4_4_ * 1.0 - fStack_358 * 0.0) + fStack_354 * 0.0;
              fVar28 = (fStack_358 * 0.0 - (float)auStack_360._0_4_ * 1.0) + fStack_354 * 0.0;
              fStack_280 = ((((float)auStack_360._0_4_ * 0.0 - (float)auStack_360._4_4_ * 0.0) +
                            fStack_354 * 1.0) * (float)auStack_360._4_4_ - fVar28 * fStack_358) *
                           2.0 + 0.0;
              fStack_278 = (fVar28 * (float)auStack_360._0_4_ - fVar27 * (float)auStack_360._4_4_) *
                           2.0 + 1.0;
              fStack_274 = (fVar27 * (float)auStack_360._0_4_ - fVar27 * (float)auStack_360._0_4_) *
                           2.0 + 0.0;
              fStack_150 = fStack_278 * fStack_278 + 0.0 + fStack_280 * fStack_280;
              fStack_440 = fStack_464;
              fStack_43c = fStack_464;
              fStack_434 = fStack_464;
              fStack_38c = fStack_464;
              fStack_27c = fStack_464;
              fStack_e0 = fStack_464;
              if (0.0 < fStack_150) {
                fVar27 = fStack_390 * fStack_390;
                fStack_100 = fStack_388 * fStack_388 + 0.0 + fVar27;
                fStack_f0 = fStack_464;
                if (0.0 < fStack_100) {
                  fVar28 = fStack_278 * fStack_278 + 0.0 + fStack_280 * fStack_280;
                  auVar32._4_4_ = fVar28;
                  auVar32._0_4_ = fVar28;
                  auVar32._8_4_ = fVar28;
                  auVar32._12_4_ = fVar28;
                  auVar43 = rsqrtps(auVar43,auVar32);
                  fVar29 = auVar43._0_4_;
                  fVar35 = auVar43._4_4_;
                  fVar36 = auVar43._8_4_;
                  fVar37 = auVar43._12_4_;
                  fVar29 = (1.0 - fVar29 * fVar29 * fVar28) * fVar29 * 0.5 + fVar29;
                  fVar35 = (1.0 - fVar35 * fVar35 * fVar28) * fVar35 * 0.5 + fVar35;
                  fVar36 = (1.0 - fVar36 * fVar36 * fVar28) * fVar36 * 0.5 + fVar36;
                  fVar37 = (1.0 - fVar37 * fVar37 * fVar28) * fVar37 * 0.5 + fVar37;
                  auVar8._4_4_ = fVar27;
                  auVar8._0_4_ = fVar27;
                  auVar8._8_4_ = fVar27;
                  auVar8._12_4_ = 0;
                  auVar30._0_4_ = fStack_388 * fStack_388 + 0.0 + fVar27;
                  fStack_320 = ((1.0 - fVar29 * fVar29 * fVar28) * fVar29 * 0.5 + fVar29) *
                               fStack_280;
                  fStack_31c = ((1.0 - fVar35 * fVar35 * fVar28) * fVar35 * 0.5 + fVar35) * 0.0;
                  fStack_318 = ((1.0 - fVar36 * fVar36 * fVar28) * fVar36 * 0.5 + fVar36) *
                               fStack_278;
                  auVar30._4_4_ = auVar30._0_4_;
                  auVar30._8_4_ = auVar30._0_4_;
                  auVar30._12_4_ = auVar30._0_4_;
                  auVar43 = rsqrtps(auVar8 << 0x20,auVar30);
                  fVar27 = auVar43._0_4_;
                  fVar29 = auVar43._4_4_;
                  fVar35 = auVar43._8_4_;
                  fVar36 = auVar43._12_4_;
                  fVar27 = (1.0 - fVar27 * fVar27 * auVar30._0_4_) * fVar27 * 0.5 + fVar27;
                  fVar29 = (1.0 - fVar29 * fVar29 * auVar30._0_4_) * fVar29 * 0.5 + fVar29;
                  fVar35 = (1.0 - fVar35 * fVar35 * auVar30._0_4_) * fVar35 * 0.5 + fVar35;
                  fVar36 = (1.0 - fVar36 * fVar36 * auVar30._0_4_) * fVar36 * 0.5 + fVar36;
                  fStack_440 = ((1.0 - fVar27 * fVar27 * auVar30._0_4_) * fVar27 * 0.5 + fVar27) *
                               fStack_390;
                  fStack_43c = ((1.0 - fVar29 * fVar29 * auVar30._0_4_) * fVar29 * 0.5 + fVar29) *
                               0.0;
                  fStack_438 = ((1.0 - fVar35 * fVar35 * auVar30._0_4_) * fVar35 * 0.5 + fVar35) *
                               fStack_388;
                  fStack_434 = ((1.0 - fVar36 * fVar36 * auVar30._0_4_) * fVar36 * 0.5 + fVar36) *
                               fStack_384;
                  fVar27 = fStack_320 * fStack_320;
                  auVar45._4_4_ = fVar27;
                  auVar45._0_4_ = fStack_31c * fStack_31c;
                  auVar45._8_4_ = fVar27;
                  auVar45._12_4_ = fVar27;
                  auVar38._0_4_ = fStack_318 * fStack_318 + fStack_31c * fStack_31c + fVar27;
                  auVar38._4_4_ = auVar38._0_4_;
                  auVar38._8_4_ = auVar38._0_4_;
                  auVar38._12_4_ = auVar38._0_4_;
                  auVar43 = rsqrtps(auVar45,auVar38);
                  fVar27 = auVar43._0_4_;
                  fVar29 = auVar43._4_4_;
                  fVar35 = auVar43._8_4_;
                  fVar36 = auVar43._12_4_;
                  fStack_320 = ((1.0 - fVar27 * fVar27 * auVar38._0_4_) * fVar27 * 0.5 + fVar27) *
                               fStack_320;
                  fStack_31c = ((1.0 - fVar29 * fVar29 * auVar38._0_4_) * fVar29 * 0.5 + fVar29) *
                               fStack_31c;
                  fStack_318 = ((1.0 - fVar35 * fVar35 * auVar38._0_4_) * fVar35 * 0.5 + fVar35) *
                               fStack_318;
                  fStack_314 = ((1.0 - fVar36 * fVar36 * auVar38._0_4_) * fVar36 * 0.5 + fVar36) *
                               ((1.0 - fVar37 * fVar37 * fVar28) * fVar37 * 0.5 + fVar37) *
                               fStack_274;
                  auVar39._0_4_ = fStack_440 * fStack_440;
                  auVar39._4_4_ = fStack_43c * fStack_43c;
                  auVar39._8_4_ = fStack_438 * fStack_438;
                  auVar39._12_4_ = fStack_434 * fStack_434;
                  fVar27 = auVar39._8_4_ + auVar39._4_4_ + auVar39._0_4_;
                  auVar3._4_4_ = fVar27;
                  auVar3._0_4_ = fVar27;
                  auVar3._8_4_ = fVar27;
                  auVar3._12_4_ = fVar27;
                  auVar43 = rsqrtps(auVar39,auVar3);
                  fVar28 = auVar43._0_4_;
                  fVar29 = auVar43._4_4_;
                  fVar35 = auVar43._8_4_;
                  fVar36 = auVar43._12_4_;
                  fStack_440 = ((1.0 - fVar28 * fVar28 * fVar27) * fVar28 * 0.5 + fVar28) *
                               fStack_440;
                  fStack_43c = ((1.0 - fVar29 * fVar29 * fVar27) * fVar29 * 0.5 + fVar29) *
                               fStack_43c;
                  fStack_438 = ((1.0 - fVar35 * fVar35 * fVar27) * fVar35 * 0.5 + fVar35) *
                               fStack_438;
                  fStack_434 = ((1.0 - fVar36 * fVar36 * fVar27) * fVar36 * 0.5 + fVar36) *
                               fStack_434;
                  fVar27 = fStack_438 * fStack_318 + fStack_43c * fStack_31c +
                           fStack_440 * fStack_320;
                  auVar31._4_4_ = fVar27;
                  auVar31._0_4_ = fVar27;
                  auVar31._8_4_ = fVar27;
                  auVar31._12_4_ = fVar27;
                  auVar4._8_4_ = 0xbf800000;
                  auVar4._0_8_ = 0xbf800000bf800000;
                  auVar4._12_4_ = 0xbf800000;
                  auVar32 = maxps(auVar31,auVar4);
                  auVar43._8_4_ = 0x3f800000;
                  auVar43._0_8_ = 0x3f8000003f800000;
                  auVar43._12_4_ = 0x3f800000;
                  _auStack_360 = minps(auVar32,auVar43);
                  fVar25 = (float10)_CIacos();
                  fStack_130 = (float)fVar25;
                  fVar27 = fStack_438 * fStack_31c;
                  fVar28 = fStack_440 * fStack_318;
                  fVar29 = fStack_43c * fStack_320;
                  fVar35 = fStack_43c * fStack_318;
                  fVar36 = fStack_438 * fStack_320;
                  fVar37 = fStack_440 * fStack_31c;
                  fStack_43c = 1.0;
                  fStack_434 = 0.0;
                  fStack_438 = 0.0;
                  fStack_440 = 0.0;
                  fStack_160 = (fVar29 - fVar37) * 0.0 + (fVar28 - fVar36) * 1.0 +
                               (fVar27 - fVar35) * 0.0;
                  fStack_d0 = (float)auStack_3c0._0_4_;
                  if (fStack_160 < (float)auStack_3c0._0_4_) {
                    fStack_130 = 6.2831855 - fStack_130;
                  }
                  auStack_3c0._4_4_ = fStack_130;
                  auStack_3c0._0_4_ = fStack_130;
                  fStack_3b8 = fStack_130;
                  fStack_3b4 = fStack_130;
                  fStack_464 = fStack_130 * 0.15915494;
                  fStack_12c = fStack_130;
                  fStack_128 = fStack_130;
                  fStack_124 = fStack_130;
                  dVar47 = floor((double)fStack_464);
                  fStack_464 = fStack_464 - (float)dVar47;
                  if (0.5 < fStack_464) {
                    fStack_464 = fStack_464 - 1.0;
                  }
                  fStack_464 = fStack_464 * 6.2831855;
                  auVar43 = ZEXT416((uint)fStack_464);
                  if (3.1415927 < fStack_464) {
                    fStack_464 = fStack_464 - 6.2831855;
                    auVar43 = ZEXT416((uint)fStack_464);
                  }
                }
              }
              if ((_DAT_011d5bb0 & 1) == 0) {
                _DAT_011d5bb0 = _DAT_011d5bb0 | 1;
                _DAT_011d5bac = 0.2617994;
              }
              if (_DAT_011d5bac < ABS(auVar43._0_4_)) {
                fVar25 = QueryLocomotionDurationAndMotion
                                   ((int)pvStack_45c + 8,fStack_2a4,piStack_2e4,fStack_464,1,
                                    &fStack_308);
                fStack_40c = (float)fVar25;
              }
            }
            fVar25 = (float10)(**(code **)(*piVar1 + 300))();
            uVar49 = 0x2000;
            uVar48 = 0;
            fStack_470 = 0.0;
            pvVar15 = (void *)(**(code **)(*piVar1 + 0xc))();
            uVar20 = RoutingOptions_TestMask
                               (pvVar15,uVar48,(uint)uVar49,(char)((ulonglong)uVar49 >> 0x20));
            if ((char)uVar20 != '\0') {
              fVar26 = FUN_00847a50((byte)uStack_2ac,(uint)fStack_2a4);
              fStack_470 = (float)fVar26;
            }
            fStack_44c = (float)fVar25 - fStack_470;
            fStack_394 = 0.0;
            pfVar21 = &fStack_44c;
            if ((float)fVar25 - fStack_470 <= 0.0) {
              pfVar21 = &fStack_394;
            }
            fVar27 = *pfVar21;
            if (piStack_2fc != (int *)0x0) {
              fVar25 = QueryLocomotionDurationAndMotion
                                 ((int)pvStack_45c + 8,fStack_2a4,piStack_2fc,2000.0,0,&fStack_41c);
              fStack_400 = (float)fVar25;
            }
            if (piStack_2f4 != (int *)0x0) {
              fVar25 = QueryLocomotionDurationAndMotion
                                 ((int)pvStack_45c + 8,fStack_2a4,piStack_2f4,2000.0,0,&fStack_424);
              fStack_3f8 = (float)fVar25;
            }
            if (piStack_2e8 != (int *)0x0) {
              fVar25 = FUN_0084a990((int)pvStack_45c + 8,piStack_2e8,&fStack_344,'\0');
              fStack_448 = (float)fVar25;
              if (fVar25 == (float10)3.4028235e+38) {
                fStack_448 = 0.0;
              }
            }
            iVar24 = ((int)puStack_268 - (int)puStack_26c) / 0x1c;
            uVar22 = (puStack_26c != puStack_268) - 1;
            uVar48 = 1;
            if (1 < iVar24) {
              do {
                uVar23 = uVar48;
                if ((int)uVar16 < (int)uVar23) break;
                fStack_420 = (*(float *)((int)pvStack_3ac + uVar23 * 4) + fStack_424 + fStack_41c) *
                             fStack_450;
                pfVar21 = &fStack_448;
                if (fStack_448 <= fStack_420) {
                  pfVar21 = &fStack_420;
                }
                if (fVar27 < *pfVar21 || fVar27 == *pfVar21) break;
                uVar48 = uVar23 + 1;
                uVar22 = uVar23;
              } while ((int)(uVar23 + 1) < iVar24);
            }
            if (((int)uVar22 < 0) ||
               (iVar24 = (int)piStack_3ec - (int)piStack_3f0 >> 0x1f,
               fStack_410 = *(float *)((int)pvStack_370 + uVar22 * 4),
               ((int)piStack_3ec - (int)piStack_3f0) / 0x7c + iVar24 == iVar24)) {
              piVar13 = &iStack_300;
            }
            else {
              piVar13 = piStack_3f0 + uVar22 * 0x1f;
            }
            if (iStack_2f8 != 0) {
              fVar25 = FUN_0084a990((int)pvStack_45c + 8,(int *)piVar13[2],&fStack_304,'\x01');
              fStack_444 = 1.0;
              if (cStack_29b == '\0') {
                fStack_470 = DAT_01150628;
                fVar28 = DAT_0115062c;
              }
              else {
                fStack_470 = 0.001;
                fVar28 = 2.0;
              }
              iVar24 = FUN_00848280(2,piVar1,fVar27,(float)fVar25,fStack_41c,fStack_424,
                                    -(uint)(pvStack_3e0 != pvStack_3dc) & (uint)pvStack_3e0,
                                    (float *)(-(uint)(pvStack_3d0 != pvStack_3cc) &
                                             (uint)pvStack_3d0),uVar22,0,&fStack_444,fStack_470,
                                    fVar28,'\x01');
              fStack_448 = fStack_444 * (float)fVar25;
              if (0 < iVar24) {
                fVar25 = QueryLocomotionDurationAndMotion
                                   ((int)pvStack_45c + 8,(float)piVar13[0x17],(int *)piVar13[2],
                                    fStack_444 * (float)fVar25,0,&fStack_348);
                fStack_408 = (float)(fVar25 * (float10)iVar24);
              }
            }
            cVar12 = (**(code **)(*piVar1 + 0x13c))();
            if (cVar12 != '\0') {
              fStack_440 = 0.0;
              fStack_43c = 0.0;
              fStack_438 = 1.0;
              fStack_434 = 0.0;
              pfVar21 = (float *)(**(code **)(*piVar1 + 0x140))();
              auVar43 = _auStack_3c0;
              fVar27 = *pfVar21;
              fVar28 = pfVar21[1];
              fVar29 = pfVar21[2];
              fVar35 = pfVar21[3];
              fVar36 = (fStack_43c * fVar28 - fStack_440 * fVar29) + fVar35 * fStack_444;
              fVar37 = (fStack_444 * fVar29 - fStack_43c * fVar27) + fVar35 * fStack_440;
              fVar35 = (fStack_440 * fVar27 - fStack_444 * fVar28) + fVar35 * fStack_43c;
              pcStack_3c4 = (char *)((fVar35 * fVar28 - fVar37 * fVar29) * 2.0);
              auStack_3c0._4_4_ = (fVar37 * fVar27 - fVar36 * fVar28) * 2.0;
              auStack_3c0._0_4_ = (fVar36 * fVar29 - fVar35 * fVar27) * 2.0;
              fStack_3b4 = auVar43._12_4_;
              fStack_3b8 = (fVar36 * fVar27 - fVar36 * fVar27) * 2.0;
              iVar24 = (**(code **)(*piVar1 + 0x4c))();
              if ((iVar24 != 0) &&
                 (cVar12 = (**(code **)(*piVar1 + 0x68))(iVar24 + -1), cVar12 != '\0')) {
                auStack_360._4_4_ = uStack_13c;
                auStack_360._0_4_ = fStack_140;
                fStack_358 = fStack_138;
                fStack_354 = fStack_134;
                fStack_340 = (float)auStack_3c0._0_4_ + fStack_440;
                fStack_338 = fStack_3b8 + fStack_438;
                fStack_334 = fStack_3b4 + fStack_434;
                auStack_360._4_4_ = 0;
                auVar43 = ZEXT816(0);
                uStack_33c = 0;
                fStack_120 = fStack_138 * fStack_138 + 0.0 + fStack_140 * fStack_140;
                auStack_1b0[0] = 0;
                fStack_470 = 0.0;
                if (0.0 < fStack_120) {
                  fVar27 = fStack_340 * fStack_340;
                  fStack_1a0 = fStack_338 * fStack_338 + 0.0 + fVar27;
                  uStack_190 = 0;
                  if (0.0 < fStack_1a0) {
                    fVar28 = fStack_138 * fStack_138 + 0.0 + fStack_140 * fStack_140;
                    auVar44._4_4_ = fVar28;
                    auVar44._0_4_ = fVar28;
                    auVar44._8_4_ = fVar28;
                    auVar44._12_4_ = fVar28;
                    auVar43 = rsqrtps(auVar43,auVar44);
                    fVar29 = auVar43._0_4_;
                    fVar35 = auVar43._4_4_;
                    fVar36 = auVar43._8_4_;
                    fVar37 = auVar43._12_4_;
                    fVar29 = (1.0 - fVar29 * fVar29 * fVar28) * fVar29 * 0.5 + fVar29;
                    fVar35 = (1.0 - fVar35 * fVar35 * fVar28) * fVar35 * 0.5 + fVar35;
                    fVar36 = (1.0 - fVar36 * fVar36 * fVar28) * fVar36 * 0.5 + fVar36;
                    fVar37 = (1.0 - fVar37 * fVar37 * fVar28) * fVar37 * 0.5 + fVar37;
                    auVar7._4_4_ = fVar27;
                    auVar7._0_4_ = fVar27;
                    auVar7._8_4_ = fVar27;
                    auVar7._12_4_ = 0;
                    fVar27 = fStack_338 * fStack_338 + 0.0 + fVar27;
                    fStack_140 = ((1.0 - fVar29 * fVar29 * fVar28) * fVar29 * 0.5 + fVar29) *
                                 fStack_140;
                    fStack_43c = ((1.0 - fVar35 * fVar35 * fVar28) * fVar35 * 0.5 + fVar35) * 0.0;
                    fStack_138 = ((1.0 - fVar36 * fVar36 * fVar28) * fVar36 * 0.5 + fVar36) *
                                 fStack_138;
                    auVar6._4_4_ = fVar27;
                    auVar6._0_4_ = fVar27;
                    auVar6._8_4_ = fVar27;
                    auVar6._12_4_ = fVar27;
                    auVar43 = rsqrtps(auVar7 << 0x20,auVar6);
                    fVar29 = auVar43._0_4_;
                    fVar35 = auVar43._4_4_;
                    fVar36 = auVar43._8_4_;
                    fVar42 = auVar43._12_4_;
                    fVar29 = (1.0 - fVar29 * fVar29 * fVar27) * fVar29 * 0.5 + fVar29;
                    fVar35 = (1.0 - fVar35 * fVar35 * fVar27) * fVar35 * 0.5 + fVar35;
                    fVar36 = (1.0 - fVar36 * fVar36 * fVar27) * fVar36 * 0.5 + fVar36;
                    fVar42 = (1.0 - fVar42 * fVar42 * fVar27) * fVar42 * 0.5 + fVar42;
                    fStack_320 = ((1.0 - fVar29 * fVar29 * fVar27) * fVar29 * 0.5 + fVar29) *
                                 fStack_340;
                    fStack_31c = ((1.0 - fVar35 * fVar35 * fVar27) * fVar35 * 0.5 + fVar35) * 0.0;
                    fStack_318 = ((1.0 - fVar36 * fVar36 * fVar27) * fVar36 * 0.5 + fVar36) *
                                 fStack_338;
                    fStack_314 = ((1.0 - fVar42 * fVar42 * fVar27) * fVar42 * 0.5 + fVar42) *
                                 fStack_334;
                    fVar27 = fStack_140 * fStack_140;
                    auVar46._4_4_ = fVar27;
                    auVar46._0_4_ = fStack_43c * fStack_43c;
                    auVar46._8_4_ = fVar27;
                    auVar46._12_4_ = fVar27;
                    auVar40._0_4_ = fStack_138 * fStack_138 + fStack_43c * fStack_43c + fVar27;
                    auVar40._4_4_ = auVar40._0_4_;
                    auVar40._8_4_ = auVar40._0_4_;
                    auVar40._12_4_ = auVar40._0_4_;
                    auVar43 = rsqrtps(auVar46,auVar40);
                    fVar27 = auVar43._0_4_;
                    fVar29 = auVar43._4_4_;
                    fVar35 = auVar43._8_4_;
                    fVar36 = auVar43._12_4_;
                    fStack_440 = ((1.0 - fVar27 * fVar27 * auVar40._0_4_) * fVar27 * 0.5 + fVar27) *
                                 fStack_140;
                    fStack_43c = ((1.0 - fVar29 * fVar29 * auVar40._0_4_) * fVar29 * 0.5 + fVar29) *
                                 fStack_43c;
                    fStack_438 = ((1.0 - fVar35 * fVar35 * auVar40._0_4_) * fVar35 * 0.5 + fVar35) *
                                 fStack_138;
                    fStack_434 = ((1.0 - fVar36 * fVar36 * auVar40._0_4_) * fVar36 * 0.5 + fVar36) *
                                 ((1.0 - fVar37 * fVar37 * fVar28) * fVar37 * 0.5 + fVar37) *
                                 fStack_134;
                    auVar41._0_4_ = fStack_320 * fStack_320;
                    auVar41._4_4_ = fStack_31c * fStack_31c;
                    auVar41._8_4_ = fStack_318 * fStack_318;
                    auVar41._12_4_ = fStack_314 * fStack_314;
                    auVar33._0_4_ = auVar41._8_4_ + auVar41._4_4_ + auVar41._0_4_;
                    auVar33._4_4_ = auVar33._0_4_;
                    auVar33._8_4_ = auVar33._0_4_;
                    auVar33._12_4_ = auVar33._0_4_;
                    auVar43 = rsqrtps(auVar41,auVar33);
                    fVar27 = auVar43._0_4_;
                    fVar28 = auVar43._4_4_;
                    fVar29 = auVar43._8_4_;
                    fVar35 = auVar43._12_4_;
                    fStack_320 = ((1.0 - fVar27 * fVar27 * auVar33._0_4_) * fVar27 * 0.5 + fVar27) *
                                 fStack_320;
                    fStack_31c = ((1.0 - fVar28 * fVar28 * auVar33._0_4_) * fVar28 * 0.5 + fVar28) *
                                 fStack_31c;
                    fStack_318 = ((1.0 - fVar29 * fVar29 * auVar33._0_4_) * fVar29 * 0.5 + fVar29) *
                                 fStack_318;
                    fStack_314 = ((1.0 - fVar35 * fVar35 * auVar33._0_4_) * fVar35 * 0.5 + fVar35) *
                                 fStack_314;
                    fVar27 = fStack_318 * fStack_438 + fStack_31c * fStack_43c +
                             fStack_320 * fStack_440;
                    auVar34._4_4_ = fVar27;
                    auVar34._0_4_ = fVar27;
                    auVar34._8_4_ = fVar27;
                    auVar34._12_4_ = fVar27;
                    auVar5._8_4_ = 0xbf800000;
                    auVar5._0_8_ = 0xbf800000bf800000;
                    auVar5._12_4_ = 0xbf800000;
                    auVar43 = maxps(auVar34,auVar5);
                    auVar2._8_4_ = 0x3f800000;
                    auVar2._0_8_ = 0x3f8000003f800000;
                    auVar2._12_4_ = 0x3f800000;
                    _auStack_3c0 = minps(auVar43,auVar2);
                    fVar25 = (float10)_CIacos();
                    fStack_330 = (float)fVar25;
                    fVar27 = fStack_318 * fStack_43c;
                    fVar28 = fStack_320 * fStack_438;
                    fVar29 = fStack_31c * fStack_440;
                    fVar35 = fStack_31c * fStack_438;
                    fVar36 = fStack_318 * fStack_440;
                    fVar37 = fStack_320 * fStack_43c;
                    fStack_43c = 1.0;
                    fStack_434 = 0.0;
                    fStack_438 = 0.0;
                    fStack_440 = 0.0;
                    uStack_170 = 0;
                    if ((fVar29 - fVar37) * 0.0 + (fVar28 - fVar36) * 1.0 + (fVar27 - fVar35) * 0.0
                        < 0.0) {
                      fStack_330 = 6.2831855 - fStack_330;
                    }
                    fStack_470 = fStack_330 * 0.15915494;
                    fStack_32c = fStack_330;
                    fStack_328 = fStack_330;
                    fStack_324 = fStack_330;
                    dVar47 = floor((double)fStack_470);
                    fStack_470 = fStack_470 - (float)dVar47;
                    if (0.5 < fStack_470) {
                      fStack_470 = fStack_470 - 1.0;
                    }
                    fStack_470 = fStack_470 * 6.2831855;
                    auVar43 = ZEXT416((uint)fStack_470);
                    if (3.1415927 < fStack_470) {
                      fStack_470 = fStack_470 - 6.2831855;
                      auVar43 = ZEXT416((uint)fStack_470);
                    }
                  }
                }
                if ((_DAT_011d5bb0 & 2) == 0) {
                  _DAT_011d5bb0 = _DAT_011d5bb0 | 2;
                  _DAT_011d5ba8 = 0.2617994;
                }
                if (_DAT_011d5ba8 < ABS(auVar43._0_4_)) {
                  fVar25 = QueryLocomotionDurationAndMotion
                                     ((int)pvStack_45c + 8,fStack_2a4,piStack_2e4,fStack_470,3,
                                      &fStack_414);
                  fStack_418 = (float)fVar25;
                }
              }
            }
            piVar13 = piStack_3ec;
            fStack_420 = (fStack_418 + fStack_410 + fStack_408 + fStack_3f8 + fStack_400 +
                         fStack_40c) * 29.999998;
            piVar14 = piStack_3f0;
            if (piStack_3f0 < piStack_3ec) {
              do {
                FUN_00754230(piVar14);
                piVar14 = piVar14 + 0x1f;
              } while (piVar14 < piVar13);
            }
            if (piStack_3f0 != (int *)0x0) {
              Memory_FreeIfNonNull(piStack_3f0);
            }
            if (pvStack_370 != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_370);
            }
            if (pvStack_3ac != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_3ac);
            }
            if (pvStack_3d0 != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_3d0);
            }
            puVar9 = puStack_26c;
            puVar10 = puStack_268;
            if (pvStack_3e0 != (void *)0x0) {
              Memory_FreeIfNonNull(pvStack_3e0);
              puVar9 = puStack_26c;
              puVar10 = puStack_268;
            }
            for (; puVar11 = puStack_268, puVar9 < puStack_268; puVar9 = puVar9 + 7) {
              pvVar15 = (void *)*puVar9;
              puStack_268 = puVar10;
              if ((pvVar15 != (void *)0x0) && (pvVar15 != (void *)puVar9[4])) {
                Memory_FreeIfNonNull(pvVar15);
              }
              puVar10 = puStack_268;
              puStack_268 = puVar11;
            }
            puStack_268 = puVar10;
            if ((puStack_26c != (undefined4 *)0x0) && (puStack_26c != puStack_25c)) {
              Memory_FreeIfNonNull(puStack_26c);
            }
            FUN_00754230(&iStack_300);
            piVar13 = piVar1 + 1;
            LOCK();
            iVar24 = *piVar13;
            *piVar13 = *piVar13 + -1;
            UNLOCK();
            if (iVar24 == 1) {
              LOCK();
              *piVar13 = 1;
              UNLOCK();
              (**(code **)*piVar1)();
            }
            (**(code **)(*local_404 + 0x14))();
            return (float10)fStack_420;
          }
          FUN_00754230(&iStack_300);
          piVar13 = local_404;
        }
        piVar14 = piVar1 + 1;
        LOCK();
        iVar24 = *piVar14;
        *piVar14 = *piVar14 + -1;
        UNLOCK();
        if (iVar24 == 1) {
          LOCK();
          *piVar14 = 1;
          UNLOCK();
          (**(code **)*piVar1)();
        }
      }
    }
    (**(code **)(*piVar13 + 0x14))();
  }
  return (float10)0;
}

