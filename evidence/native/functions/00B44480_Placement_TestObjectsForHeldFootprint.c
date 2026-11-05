/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 held footprint gate. cdecl candidateContext/optionalFailures, Boolean AL only,
   upperEAX unspecified. context+9C is held footprint row, row+18 allow mask. bit4 returns true
   BEFORE candidate collection. Otherwise build/copy candidate object pointer vector viaAC85D0
   or982420 depending context98. Empty vector OR context byte80==0 cleans up then true without
   object tests. Per retained candidate: null object/context object, ignored GUID map orB071C0 can
   skip; AFC7C0-selected path callsB41EE0; other path resolves catalogAFFDB0. Missing catalog skips
   later pair geometry. Full query/ignore/special-category/geometry child semantics remain
   unexpanded. Core selected HELD gates: bit80 and equal catalog type masks64 (C97760 BOTH98/9C)
   decide pair before geometry. Missing held catalog seeds held mask0, still compares against other
   mask0; not a new nonnull guard. If OTHER catalogD0&20000, require near yaw/X/Z, else ALfalse
   optional failure kind11hex. If OTHER D0&40000 clear, skip candidate successfully after20000 gate.
   If40000 set, require near yaw/X/Z AND different local level; otherwise failure11hex. Native yaw
   uses C89940 retained scalar; not source matrix Atan2. Near: yaw x87 FSUB then FSTP FLOAT32; X/Z
   SSE SUBSS. Broadcast d; MULPS with originalFAB218=-1, MAXPS(-d,d), CMPLEPS against106D764=Float32
   2^-16, MOVMSKPS must equalF. Equality passes, NaN fails; no modulo-angle comparison. Decompiled
   movmskps(extraout_ECX/EDX,vector) first arguments are intrinsic artifacts: the original
   instruction reads only the SIMD vector and writes the integer mask, with no extra integer
   argument. Other masks thenbit100+C97790 skip, bit200+otherD0bit4 skip. Remaining branches include
   tag/special checks andB42180 pair geometry; only call/AL propagation, not full child semantics,
   established here. Error appends only if outputnonnull; false either way. Temporary candidate
   vector freed on normal true/false returns. Context/catalog authority and all referenced object
   lifetimes not established. */

bool __cdecl Placement_TestObjectsForHeldFootprint(void *candidateContext,void *optionalFailures)

{
  uint uVar1;
  void *object;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  bool bVar7;
  char cVar8;
  int *piVar9;
  uint uVar10;
  void *pvVar12;
  void *pvVar13;
  undefined4 extraout_EAX;
  undefined4 extraout_EAX_00;
  undefined4 extraout_ECX;
  int iVar14;
  undefined4 extraout_ECX_00;
  float *pfVar15;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  float10 fVar16;
  float fVar17;
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  ulonglong uVar31;
  wchar_t *wideName;
  uint local_198;
  void *local_190;
  int local_18c;
  undefined4 local_188;
  char *local_184;
  float local_180;
  float fStack_17c;
  undefined4 uStack_178;
  float fStack_174;
  uint local_16c;
  float local_168;
  float local_164;
  int local_160;
  int local_15c;
  undefined8 local_158;
  float local_14c;
  uint local_148;
  undefined4 local_144;
  _GUID local_140;
  int local_130;
  undefined4 local_128 [2];
  float local_120;
  float fStack_11c;
  undefined4 uStack_118;
  float fStack_114;
  float local_110 [8];
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 local_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  float local_d0 [16];
  float local_90 [16];
  float local_50 [19];
  undefined4 uVar11;
  
  uVar1 = *(uint *)(*(int *)((int)candidateContext + 0x9c) + 0x18);
  if ((uVar1 & 4) == 0) {
    local_190 = (void *)0x0;
    local_18c = 0;
    local_188 = 0;
    local_184 = "World/Lot/TestIntersectionWithObjectsForFootprintPoly/objectIDs";
    if (*(int *)((int)candidateContext + 0x98) == 0) {
      FUN_00ac85d0(*(void **)((int)candidateContext + 4),
                   (undefined4 *)((int)candidateContext + 0xc0),
                   *(int *)((int)candidateContext + 0x24),&local_190,'\x01','\x01','\x01',4,'\x01');
    }
    else {
      FUN_00982420(&local_190,(undefined4 *)0x0,(undefined4 *)((int)candidateContext + 0x98));
    }
    local_16c = local_18c - (int)local_190 >> 2;
    if ((local_16c != 0) && (*(char *)((int)candidateContext + 0x80) != '\0')) {
      fVar16 = LotLevelHeight_SampleLocalPosition
                         (*(void **)(*(int *)((int)candidateContext + 4) + 0x290),
                          (LotXZLevel *)((int)candidateContext + 8));
      uStack_178 = *(undefined4 *)((int)candidateContext + 0xc);
      local_180 = ((LotXZLevel *)((int)candidateContext + 8))->x;
      fStack_17c = *(float *)((int)candidateContext + 0x18) + (float)fVar16;
      fStack_174 = local_180;
      local_120 = local_180;
      fStack_11c = fStack_17c;
      uStack_118 = uStack_178;
      fStack_114 = local_180;
      FUN_00b05f70(*(void **)candidateContext,*(int *)((int)candidateContext + 0x1c),
                   *(void **)((int)candidateContext + 4),*(float *)((int)candidateContext + 0x14),
                   &local_120,local_50);
      local_f0 = *(undefined4 *)((int)candidateContext + 0x60);
      uStack_ec = *(undefined4 *)((int)candidateContext + 100);
      uStack_e8 = *(undefined4 *)((int)candidateContext + 0x68);
      uStack_e4 = *(undefined4 *)((int)candidateContext + 0x6c);
      local_e0 = *(undefined4 *)((int)candidateContext + 0x70);
      uStack_dc = *(undefined4 *)((int)candidateContext + 0x74);
      uStack_d8 = *(undefined4 *)((int)candidateContext + 0x78);
      uStack_d4 = *(undefined4 *)((int)candidateContext + 0x7c);
      FUN_0068dbb0(&local_f0,local_50);
      if (*(void **)((int)candidateContext + 0x1c) == (void *)0x0) {
        local_158 = 0;
      }
      else {
        local_158 = Catalog_ReadTypeMask64(*(void **)((int)candidateContext + 0x1c));
      }
      local_198 = 0;
      if (local_16c != 0) {
        do {
          object = *(void **)((int)local_190 + local_198 * 4);
          if ((object != (void *)0x0) && (iVar14 = *(int *)candidateContext, iVar14 != 0)) {
            local_144 = *(undefined4 *)((int)object + 0xc);
            local_148 = *(uint *)((int)object + 8);
            local_130 = *(int *)(*(int *)((int)candidateContext + 0x38) +
                                *(int *)((int)candidateContext + 0x3c) * 4);
            piVar9 = (int *)FUN_006286c0((void *)((int)candidateContext + 0x34),local_128,&local_148
                                        );
            if ((*piVar9 == local_130) &&
               (uVar10 = FUN_00b071c0(*(uint *)(iVar14 + 8),*(uint *)(iVar14 + 0xc),object),
               (char)uVar10 == '\0')) {
              bVar7 = FUN_00afc7c0((int)object);
              if (bVar7) {
                uVar11 = FUN_00b41ee0(candidateContext,local_110,object,optionalFailures);
                cVar8 = (char)uVar11;
              }
              else {
                pvVar12 = Object_FindCatalogInfo(object);
                if (pvVar12 != (void *)0x0) {
                  if ((uVar1 >> 7 & 1) != 0) {
                    uVar31 = Catalog_ReadTypeMask64(pvVar12);
                    /* Compare type mask LOW32 then HIGH32. Missing held catalog was seeded mask0,
                       not excluded by a null guard. */
                    if (((int)local_158 == (int)uVar31) &&
                       (local_158._4_4_ == (int)(uVar31 >> 0x20))) {
                      if ((*(uint *)((int)pvVar12 + 0xd0) & 0x20000) == 0) {
LAB_00b447d8:
                    /* Equal type: if otherD0 bit40000 clear, candidate is allowed/skipped here; no
                       remaining footprint polygon test. */
                        if ((*(uint *)((int)pvVar12 + 0xd0) & 0x40000) == 0) goto LAB_00b449cb;
                        pvVar12 = (void *)FUN_0074bb80(object);
                        local_168 = FLOAT_00fab218;
                        local_164 = FLOAT_00fab218;
                        local_160 = 0;
                        FUN_00c894e0(pvVar12,&local_168,&local_164,&local_160);
                        fVar17 = PlacementLocation_ReadYawWithRefresh(pvVar12);
                        fVar17 = fVar17 - *(float *)((int)candidateContext + 0x14);
                        auVar25._0_4_ = fVar17 * FLOAT_00fab218;
                        auVar25._4_4_ = fVar17 * FLOAT_00fab218;
                        auVar25._8_4_ = fVar17 * FLOAT_00fab218;
                        auVar25._12_4_ = fVar17 * FLOAT_00fab218;
                        auVar4._4_4_ = fVar17;
                        auVar4._0_4_ = fVar17;
                        auVar4._8_4_ = fVar17;
                        auVar4._12_4_ = fVar17;
                        auVar19 = maxps(auVar25,auVar4);
                        auVar26._4_4_ = -(uint)(auVar19._4_4_ <= DAT_0106d764);
                        auVar26._0_4_ = -(uint)(auVar19._0_4_ <= DAT_0106d764);
                        auVar26._8_4_ = -(uint)(auVar19._8_4_ <= DAT_0106d764);
                        auVar26._12_4_ = -(uint)(auVar19._12_4_ <= DAT_0106d764);
                        iVar14 = movmskps(extraout_ECX_00,auVar26);
                        if (iVar14 == 0xf) {
                          fVar17 = local_168 - *(float *)((int)candidateContext + 8);
                          auVar27._0_4_ = fVar17 * FLOAT_00fab218;
                          auVar27._4_4_ = fVar17 * FLOAT_00fab218;
                          auVar27._8_4_ = fVar17 * FLOAT_00fab218;
                          auVar27._12_4_ = fVar17 * FLOAT_00fab218;
                          auVar5._4_4_ = fVar17;
                          auVar5._0_4_ = fVar17;
                          auVar5._8_4_ = fVar17;
                          auVar5._12_4_ = fVar17;
                          auVar19 = maxps(auVar27,auVar5);
                          auVar28._4_4_ = -(uint)(auVar19._4_4_ <= DAT_0106d764);
                          auVar28._0_4_ = -(uint)(auVar19._0_4_ <= DAT_0106d764);
                          auVar28._8_4_ = -(uint)(auVar19._8_4_ <= DAT_0106d764);
                          auVar28._12_4_ = -(uint)(auVar19._12_4_ <= DAT_0106d764);
                          iVar14 = movmskps(extraout_EDX_00,auVar28);
                          if (iVar14 == 0xf) {
                            fVar17 = local_164 - *(float *)((int)candidateContext + 0xc);
                            auVar29._0_4_ = fVar17 * FLOAT_00fab218;
                            auVar29._4_4_ = fVar17 * FLOAT_00fab218;
                            auVar29._8_4_ = fVar17 * FLOAT_00fab218;
                            auVar29._12_4_ = fVar17 * FLOAT_00fab218;
                            auVar6._4_4_ = fVar17;
                            auVar6._0_4_ = fVar17;
                            auVar6._8_4_ = fVar17;
                            auVar6._12_4_ = fVar17;
                            auVar19 = maxps(auVar29,auVar6);
                            auVar30._4_4_ = -(uint)(auVar19._4_4_ <= DAT_0106d764);
                            auVar30._0_4_ = -(uint)(auVar19._0_4_ <= DAT_0106d764);
                            auVar30._8_4_ = -(uint)(auVar19._8_4_ <= DAT_0106d764);
                            auVar30._12_4_ = -(uint)(auVar19._12_4_ <= DAT_0106d764);
                            iVar14 = movmskps(extraout_EAX_00,auVar30);
                    /* Near yaw/X/Z must also have OTHER integer level != candidate level to
                       skip40000 same-type case. */
                            if ((iVar14 == 0xf) &&
                               (local_160 != *(int *)((int)candidateContext + 0x10)))
                            goto LAB_00b449cb;
                          }
                        }
                        if (optionalFailures == (void *)0x0) goto LAB_00b44a2b;
                        FUN_00ad6fb0(local_90,0x11,object);
                        FUN_00ad8570(optionalFailures,local_90);
                        pfVar15 = local_90;
                      }
                      else {
                        pvVar13 = (void *)FUN_0074bb80(object);
                        local_180 = FLOAT_00fab218;
                        fStack_17c = FLOAT_00fab218;
                        uStack_178 = 0;
                        FUN_00c894e0(pvVar13,&local_180,&fStack_17c,&uStack_178);
                        local_14c = PlacementLocation_ReadYawWithRefresh(pvVar13);
                    /* Native stored yaw value minus candidate yaw uses x87 FSUB and FLOAT32 store
                       before SSE absolute/tolerance comparison. Not Atan2 here. */
                        local_14c = local_14c - *(float *)((int)candidateContext + 0x14);
                        auVar18._0_4_ = local_14c * FLOAT_00fab218;
                        auVar18._4_4_ = local_14c * FLOAT_00fab218;
                        auVar18._8_4_ = local_14c * FLOAT_00fab218;
                        auVar18._12_4_ = local_14c * FLOAT_00fab218;
                        auVar19._4_4_ = local_14c;
                        auVar19._0_4_ = local_14c;
                        auVar19._8_4_ = local_14c;
                        auVar19._12_4_ = local_14c;
                    /* MAXPS(-d,d), ordered CMPLEPS against exact FLOAT32 2^-16; require all4 mask
                       bits. NaN does not pass. */
                        auVar19 = maxps(auVar18,auVar19);
                        auVar20._4_4_ = -(uint)(auVar19._4_4_ <= DAT_0106d764);
                        auVar20._0_4_ = -(uint)(auVar19._0_4_ <= DAT_0106d764);
                        auVar20._8_4_ = -(uint)(auVar19._8_4_ <= DAT_0106d764);
                        auVar20._12_4_ = -(uint)(auVar19._12_4_ <= DAT_0106d764);
                        iVar14 = movmskps(extraout_ECX,auVar20);
                        if (iVar14 == 0xf) {
                          fVar17 = local_180 - *(float *)((int)candidateContext + 8);
                          auVar21._0_4_ = fVar17 * FLOAT_00fab218;
                          auVar21._4_4_ = fVar17 * FLOAT_00fab218;
                          auVar21._8_4_ = fVar17 * FLOAT_00fab218;
                          auVar21._12_4_ = fVar17 * FLOAT_00fab218;
                          auVar2._4_4_ = fVar17;
                          auVar2._0_4_ = fVar17;
                          auVar2._8_4_ = fVar17;
                          auVar2._12_4_ = fVar17;
                          auVar19 = maxps(auVar21,auVar2);
                          auVar22._4_4_ = -(uint)(auVar19._4_4_ <= DAT_0106d764);
                          auVar22._0_4_ = -(uint)(auVar19._0_4_ <= DAT_0106d764);
                          auVar22._8_4_ = -(uint)(auVar19._8_4_ <= DAT_0106d764);
                          auVar22._12_4_ = -(uint)(auVar19._12_4_ <= DAT_0106d764);
                          iVar14 = movmskps(extraout_EDX,auVar22);
                          if (iVar14 == 0xf) {
                            fVar17 = fStack_17c - *(float *)((int)candidateContext + 0xc);
                            auVar23._0_4_ = fVar17 * FLOAT_00fab218;
                            auVar23._4_4_ = fVar17 * FLOAT_00fab218;
                            auVar23._8_4_ = fVar17 * FLOAT_00fab218;
                            auVar23._12_4_ = fVar17 * FLOAT_00fab218;
                            auVar3._4_4_ = fVar17;
                            auVar3._0_4_ = fVar17;
                            auVar3._8_4_ = fVar17;
                            auVar3._12_4_ = fVar17;
                            auVar19 = maxps(auVar23,auVar3);
                            auVar24._4_4_ = -(uint)(auVar19._4_4_ <= DAT_0106d764);
                            auVar24._0_4_ = -(uint)(auVar19._0_4_ <= DAT_0106d764);
                            auVar24._8_4_ = -(uint)(auVar19._8_4_ <= DAT_0106d764);
                            auVar24._12_4_ = -(uint)(auVar19._12_4_ <= DAT_0106d764);
                            iVar14 = movmskps(extraout_EAX,auVar24);
                            if (iVar14 == 0xf) goto LAB_00b447d8;
                          }
                        }
                        if (optionalFailures == (void *)0x0) goto LAB_00b44a2b;
                        FUN_00ad6fb0(local_d0,0x11,object);
                        FUN_00ad8570(optionalFailures,local_d0);
                        pfVar15 = local_d0;
                      }
                      FUN_00ad70d0((int)pfVar15);
                      goto LAB_00b44a2b;
                    }
                  }
                  if ((((uVar1 & 0x100) != 0) &&
                      (uVar10 = Catalog_TestIntersectionCategoryMask(pvVar12), (char)uVar10 != '\0')
                      ) || (((uVar1 >> 9 & 1) != 0 &&
                            ((*(uint *)((int)pvVar12 + 0xd0) >> 2 & 1) != 0)))) goto LAB_00b449cb;
                }
                wideName = L"PlatformHelper";
                pvVar13 = NameGuidMaps_GetGlobal();
                local_140._0_8_ = NameGuidMaps_FindByWideName(pvVar13,(ushort *)wideName);
                local_140.Data4[0] = '\x1d';
                local_140.Data4[1] = 'O';
                local_140.Data4[2] = 0x9e;
                local_140.Data4[3] = '1';
                local_140.Data4[4] = '\0';
                local_140.Data4[5] = '\0';
                local_140.Data4[6] = '\0';
                local_140.Data4[7] = '\0';
                if (((*(char *)((int)candidateContext + 0x89) != '\0') &&
                    (iVar14 = _AfxIsEqualGUID((_GUID *)((int)object + 0x18),&local_140),
                    (char)iVar14 != '\0')) || (pvVar12 == (void *)0x0)) goto LAB_00b449cb;
                if ((*(int *)((int)candidateContext + 0x98) == 0) &&
                   ((*(uint *)((int)pvVar12 + 0xa0) & 0x8000000) == 0)) {
                  local_15c = 0;
                  iVar14 = FUN_00b01f30(object,&local_15c);
                  if ((iVar14 != 0) &&
                     ((local_15c == 0 || (uVar11 = FUN_00afc910(local_15c), (char)uVar11 == '\0'))))
                  goto LAB_00b449cb;
                }
                    /* Only after selected skips/gates:
                       cdeclB42180(context,transformedBounds,otherObject,otherCatalog,optionalFailures).
                       Full child body remains separately unreviewed. */
                uVar11 = FUN_00b42180(candidateContext,local_110,object,pvVar12,optionalFailures);
                cVar8 = (char)uVar11;
              }
              if (cVar8 == '\0') {
LAB_00b44a2b:
                if (local_190 != (void *)0x0) {
                  Memory_FreeIfNonNull(local_190);
                }
                return false;
              }
            }
          }
LAB_00b449cb:
          local_198 = local_198 + 1;
        } while (local_198 < local_16c);
      }
    }
    if (local_190 != (void *)0x0) {
      Memory_FreeIfNonNull(local_190);
    }
  }
  return true;
}

