/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst static routing contract: Main synchronous host planner. Releases/reset prior path links
   and active path; resets current indices/result flags. Missing goal→type2; empty destination
   list→type10. Expands all destinations, optionally uses noncandidate fallback; filter0075c360
   yields accepted/rejected64-byte records. Empty accepted→type10, or18 when rejected+0x30 has
   integer1(portal-locked marker). Calls0082c170 and selects current path. Success→type1,
   startSlot from chosen start+0x28, destinationTag/destSlot/position from chosen goal. Candidate
   counts are vector bytes>>6. Failure decodes path state007527f0. Candidate buffers are freed; path
   refs remain owned by host. */

int * __thiscall RouteHost_PlanFromStartCandidates(void *this,int *param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  float fVar6;
  undefined1 auVar7 [16];
  bool bVar8;
  float *pfVar9;
  void *pvVar10;
  byte bVar11;
  undefined4 uVar12;
  void *pvVar13;
  int *piVar14;
  undefined4 *puVar15;
  int iVar16;
  undefined4 *extraout_ECX;
  code *pcVar17;
  int *piVar18;
  undefined1 (*pauVar19) [16];
  undefined1 *puVar20;
  float fVar21;
  float fVar22;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  float fVar40;
  undefined1 auVar41 [16];
  ulonglong uVar42;
  int *local_11c [2];
  char cStack_111;
  undefined1 auStack_110 [12];
  undefined4 uStack_104;
  void *pvStack_100;
  int iStack_fc;
  undefined4 uStack_f8;
  char *pcStack_f4;
  float *pfStack_f0;
  float *pfStack_ec;
  undefined4 uStack_e8;
  char *pcStack_e4;
  void *pvStack_e0;
  int iStack_dc;
  undefined4 uStack_d8;
  char *pcStack_d4;
  float *pfStack_d0;
  float *pfStack_cc;
  undefined4 uStack_c8;
  char *pcStack_c4;
  int iStack_c0;
  int iStack_bc;
  int aiStack_b8 [2];
  float fStack_b0;
  float fStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  int iStack_80;
  int iStack_7c;
  int iStack_78;
  float fStack_70;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  uint auStack_40 [2];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 *puStack_20;
  undefined1 uStack_1c;
  undefined1 uStack_1b;
  undefined1 *puStack_18;
  
  local_11c[0] = *(int **)((int)this + 0xe0);
  if (local_11c[0] != (int *)((int)this + 0xe0)) {
    do {
      piVar14 = (int *)local_11c[0][2];
      if (piVar14 != (int *)0x0) {
        piVar18 = piVar14 + 1;
        LOCK();
        *piVar18 = *piVar18 + 1;
        UNLOCK();
        (**(code **)(*piVar14 + 0x78))();
        (**(code **)(*piVar14 + 0x80))(0);
        (**(code **)(*piVar14 + 0x88))(0);
        (**(code **)(*piVar14 + 0x90))(0);
        LOCK();
        iVar16 = *piVar18;
        *piVar18 = *piVar18 + -1;
        UNLOCK();
        if (iVar16 == 1) {
          LOCK();
          *piVar18 = 1;
          UNLOCK();
          (**(code **)*piVar14)();
        }
      }
      local_11c[0] = (int *)*local_11c[0];
    } while (local_11c[0] != (int *)((int)this + 0xe0));
  }
  puVar15 = (undefined4 *)((int)this + 0xe0);
  *(undefined4 *)((int)this + 0xf0) = 0xffffffff;
  FUN_00757380(this);
  FUN_0084b160(puVar15);
  *puVar15 = puVar15;
  *(undefined4 **)((int)this + 0xe4) = puVar15;
  puVar15 = *(undefined4 **)((int)this + 0xec);
  if (puVar15 != (undefined4 *)0x0) {
    piVar14 = puVar15 + 1;
    *(undefined4 *)((int)this + 0xec) = 0;
    LOCK();
    iVar16 = *piVar14;
    *piVar14 = *piVar14 + -1;
    UNLOCK();
    if (iVar16 == 1) {
      LOCK();
      *piVar14 = 1;
      UNLOCK();
      (**(code **)*puVar15)();
    }
  }
  iVar16 = *(int *)((int)this + 0x144);
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(undefined4 *)((int)this + 0xa8) = 0;
  *(undefined1 *)((int)this + 0x140) = 0;
  *(undefined1 *)((int)this + 0x141) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  aiStack_b8[0] = 2;
  aiStack_b8[1] = 0;
  fStack_ac = 0.0;
  uStack_a8 = 0;
  uStack_a4 = 0;
  uStack_a0 = 0;
  uStack_9c = 0;
  uStack_98 = 0;
  uStack_94 = 0;
  uStack_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  uStack_84 = 0;
  iStack_80 = 0;
  iStack_7c = 0;
  iStack_78 = 0;
  if (iVar16 == 0) {
LAB_0076091a:
    piVar14 = aiStack_b8;
    piVar18 = param_1;
    for (iVar16 = 0x12; iVar16 != 0; iVar16 = iVar16 + -1) {
      *piVar18 = *piVar14;
      piVar14 = piVar14 + 1;
      piVar18 = piVar18 + 1;
    }
    return param_1;
  }
  if (*(int *)(iVar16 + 0x1c) == iVar16 + 0x18) {
    aiStack_b8[0] = 10;
    goto LAB_0076091a;
  }
  pvVar13 = (void *)((int)this + 0x158);
  uVar12 = RoutingOptions_TestMask(pvVar13,4,0,'\0');
  if ((char)uVar12 == '\0') {
    *(undefined1 *)(*(int *)((int)this + 0x144) + 0x48) = 0;
  }
  else {
    *(undefined1 *)(*(int *)((int)this + 0x144) + 0x48) = 1;
  }
  uVar12 = RoutingOptions_TestMask(pvVar13,0,0x20000,'\0');
  if ((char)uVar12 == '\0') {
    uVar12 = RoutingOptions_TestMask(pvVar13,0,0x40000,'\0');
    if ((char)uVar12 == '\0') {
      uVar12 = RoutingOptions_TestMask(pvVar13,0,0x80000,'\0');
      if ((char)uVar12 == '\0') {
        uVar12 = RoutingOptions_TestMask(pvVar13,0,0x100000,'\0');
        if ((char)uVar12 == '\0') {
          uVar12 = RoutingOptions_TestMask(pvVar13,0x20,0,'\x01');
          if ((char)uVar12 != '\0') {
            *(undefined4 *)((int)this + 0x3c) = 0x4400;
          }
        }
        else {
          *(undefined4 *)((int)this + 0x3c) = 0xb00;
        }
      }
      else {
        *(undefined4 *)((int)this + 0x3c) = 0xa00;
      }
    }
    else {
      *(undefined4 *)((int)this + 0x3c) = 0x900;
    }
  }
  else {
    *(undefined4 *)((int)this + 0x3c) = 0x800;
  }
  bVar8 = false;
  pvStack_100 = (void *)0x0;
  iStack_fc = 0;
  uStack_f8 = 0;
  pcStack_f4 = "Routing/RoutingHost/candidatePoints";
  pvStack_e0 = (void *)0x0;
  iStack_dc = 0;
  uStack_d8 = 0;
  pcStack_d4 = "Routing/RoutingHost/nonCandidatePoints";
  bVar11 = RouteGoal_ExpandDestinations
                     (*(void **)((int)this + 0x144),*(undefined4 *)((int)this + 0x3c),pvVar13,
                      *param_2,&pvStack_100,&pvStack_e0,aiStack_b8,0);
  pvVar10 = pvStack_e0;
  uVar12 = uStack_f8;
  iVar16 = iStack_fc;
  if (bVar11 == 0) {
    if (aiStack_b8[0] != 2) {
      piVar14 = aiStack_b8;
      piVar18 = param_1;
      for (iVar16 = 0x12; iVar16 != 0; iVar16 = iVar16 + -1) {
        *piVar18 = *piVar14;
        piVar14 = piVar14 + 1;
        piVar18 = piVar18 + 1;
      }
      if (pvStack_e0 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_e0);
      }
      if (pvStack_100 == (void *)0x0) {
        return param_1;
      }
      Memory_FreeIfNonNull(pvStack_100);
      return param_1;
    }
    if (iStack_dc - (int)pvStack_e0 >> 6 == 0) {
      aiStack_b8[0] = 10;
      piVar14 = aiStack_b8;
      piVar18 = param_1;
      for (iVar16 = 0x12; iVar16 != 0; iVar16 = iVar16 + -1) {
        *piVar18 = *piVar14;
        piVar14 = piVar14 + 1;
        piVar18 = piVar18 + 1;
      }
      if (pvStack_e0 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_e0);
      }
      if (pvStack_100 == (void *)0x0) {
        return param_1;
      }
      Memory_FreeIfNonNull(pvStack_100);
      return param_1;
    }
    pvStack_e0 = pvStack_100;
    iStack_fc = iStack_dc;
    iStack_dc = iVar16;
    bVar8 = true;
    pvStack_100 = pvVar10;
    uStack_f8 = uStack_d8;
    uStack_d8 = uVar12;
  }
  uVar12 = RoutingOptions_TestMask(pvVar13,0x200,0,'\0');
  if (((char)uVar12 != '\0') &&
     (uVar42 = RouteGoal_GetFirstTargetObjectId(*(void **)((int)this + 0x144)), uVar42 != 0)) {
    pvVar13 = ObjectRegistry_GetGlobal();
    uVar42 = RouteGoal_GetFirstTargetObjectId(*(void **)((int)this + 0x144));
    pvVar13 = ObjectRegistry_FindBorrowed(pvVar13,uVar42);
    if ((pvVar13 != (void *)0x0) &&
       (pvVar13 = Object_GetComponentByMask(pvVar13,DAT_011edf08), pvVar13 != (void *)0x0)) {
      iVar16 = *(int *)((int)this + 0x144);
      piVar14 = *(int **)(iVar16 + 0x20);
      if (piVar14 != *(int **)(iVar16 + 0x24)) {
        do {
          if (*piVar14 == *(int *)((int)pvVar13 + 0x20)) goto LAB_00760bcc;
          piVar14 = piVar14 + 1;
        } while (piVar14 != *(int **)(*(int *)((int)this + 0x144) + 0x24));
      }
      local_11c[0] = *(int **)((int)pvVar13 + 0x20);
      puVar15 = *(undefined4 **)(iVar16 + 0x24);
      if (puVar15 < *(undefined4 **)(iVar16 + 0x28)) {
        *(undefined4 **)(iVar16 + 0x24) = puVar15 + 1;
        if (puVar15 != (undefined4 *)0x0) {
          *puVar15 = local_11c[0];
        }
      }
      else {
        FUN_00982420((void *)(iVar16 + 0x20),puVar15,local_11c);
      }
LAB_00760bcc:
      iVar16 = *(int *)((int)this + 0x144);
      iVar2 = *(int *)((int)pvVar13 + 0xc);
      if ((*(int *)((int)pvVar13 + 8) != *(int *)(iVar16 + 0x38)) ||
         (iVar2 != *(int *)(iVar16 + 0x3c))) {
        *(int *)(iVar16 + 0x38) = *(int *)((int)pvVar13 + 8);
        *(int *)(iVar16 + 0x3c) = iVar2;
      }
    }
  }
  auStack_40[0] = *(uint *)((int)this + 0x3c);
  uStack_38 = *(undefined4 *)((int)this + 0x40);
  uStack_34 = *(undefined4 *)((int)this + 0x44);
  puVar20 = (undefined1 *)((int)this + 0x158);
  pfStack_f0 = (float *)0x0;
  pfStack_ec = (float *)0x0;
  uStack_e8 = 0;
  pcStack_e4 = "Routing/RoutingHost/acceptedPoints";
  pfStack_d0 = (float *)0x0;
  pfStack_cc = (float *)0x0;
  uStack_c8 = 0;
  pcStack_c4 = "Routing/RoutingHost/rejectedPoints";
  puStack_20 = (undefined4 *)0x0;
  uStack_1c = 1;
  uStack_1b = 0;
  puStack_18 = puVar20;
  RouteGoal_RefreshStartContainmentFlags(*(void **)((int)this + 0x144),(float *)*param_2);
  RouteHost_FilterCandidatePoints
            ((float *)*param_2,(int *)&pvStack_100,&pfStack_f0,&pfStack_d0,puVar20,auStack_40);
  if (pfStack_f0 == pfStack_ec) {
    iVar16 = 0x12;
    if ((pfStack_d0 == pfStack_cc) || (aiStack_b8[0] = 0x12, pfStack_d0[0xc] != 1.4013e-45)) {
      aiStack_b8[0] = 10;
    }
    piVar14 = aiStack_b8;
    piVar18 = param_1;
    for (; iVar16 != 0; iVar16 = iVar16 + -1) {
      *piVar18 = *piVar14;
      piVar14 = piVar14 + 1;
      piVar18 = piVar18 + 1;
    }
    if (puStack_20 != (undefined4 *)0x0) {
      piVar14 = puStack_20 + 1;
      LOCK();
      iVar16 = *piVar14;
      *piVar14 = *piVar14 + -1;
      UNLOCK();
      if (iVar16 == 1) {
        LOCK();
        *piVar14 = 1;
        UNLOCK();
        if (puStack_20 != (undefined4 *)0x0) {
          (**(code **)*puStack_20)();
        }
      }
    }
    if (pfStack_d0 != (float *)0x0) {
      Memory_FreeIfNonNull(pfStack_d0);
    }
    if (pfStack_f0 != (float *)0x0) {
      Memory_FreeIfNonNull(pfStack_f0);
    }
    if (pvStack_e0 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_e0);
    }
    if (pvStack_100 == (void *)0x0) {
      return param_1;
    }
    Memory_FreeIfNonNull(pvStack_100);
    return param_1;
  }
  pfVar9 = pfStack_f0;
  if (puStack_20 != (undefined4 *)0x0) {
    piVar14 = puStack_20 + 1;
    LOCK();
    iVar16 = *piVar14;
    *piVar14 = *piVar14 + -1;
    UNLOCK();
    puVar20 = (undefined1 *)(iVar16 + -1);
    if (puVar20 == (undefined1 *)0x0) {
      LOCK();
      *piVar14 = 1;
      UNLOCK();
      if (puStack_20 != (undefined4 *)0x0) {
        (**(code **)*puStack_20)();
        pfVar9 = pfStack_f0;
      }
    }
  }
  for (; pfVar9 != pfStack_ec; pfVar9 = pfVar9 + 0x10) {
    fVar21 = *pfVar9;
    fVar22 = pfVar9[2];
    auVar32._0_4_ = fVar21 - 0.0;
    auVar32._4_4_ = fVar21 - 0.0;
    auVar32._8_4_ = fVar21 - 0.0;
    auVar32._12_4_ = fVar21 - 0.0;
    auVar41._0_4_ = auVar32._0_4_ * -1.0;
    auVar41._4_4_ = auVar32._4_4_ * -1.0;
    auVar41._8_4_ = auVar32._8_4_ * -1.0;
    auVar41._12_4_ = auVar32._12_4_ * -1.0;
    auVar32 = maxps(auVar41,auVar32);
    auVar33._4_4_ = -(uint)(auVar32._4_4_ <= 1.5258789e-05);
    auVar33._0_4_ = -(uint)(auVar32._0_4_ <= 1.5258789e-05);
    auVar33._8_4_ = -(uint)(auVar32._8_4_ <= 1.5258789e-05);
    auVar33._12_4_ = -(uint)(auVar32._12_4_ <= 1.5258789e-05);
    puVar20 = (undefined1 *)movmskps(puVar20,auVar33);
    if (puVar20 == &DAT_0000000f) {
      auVar23._0_4_ = (fVar22 - 0.0) * -1.0;
      auVar23._4_4_ = (fVar22 - 0.0) * -1.0;
      auVar23._8_4_ = (fVar22 - 0.0) * -1.0;
      auVar23._12_4_ = (fVar22 - 0.0) * -1.0;
      auVar4._4_4_ = fVar22 - 0.0;
      auVar4._0_4_ = fVar22 - 0.0;
      auVar4._8_4_ = fVar22 - 0.0;
      auVar4._12_4_ = fVar22 - 0.0;
      auVar32 = maxps(auVar23,auVar4);
      auVar24._4_4_ = -(uint)(auVar32._4_4_ <= 1.5258789e-05);
      auVar24._0_4_ = -(uint)(auVar32._0_4_ <= 1.5258789e-05);
      auVar24._8_4_ = -(uint)(auVar32._8_4_ <= 1.5258789e-05);
      auVar24._12_4_ = -(uint)(auVar32._12_4_ <= 1.5258789e-05);
      puVar20 = (undefined1 *)movmskps(0xf,auVar24);
      if (puVar20 == &DAT_0000000f) {
        aiStack_b8[0] = 10;
        piVar14 = aiStack_b8;
        piVar18 = param_1;
        for (iVar16 = 0x12; iVar16 != 0; iVar16 = iVar16 + -1) {
          *piVar18 = *piVar14;
          piVar14 = piVar14 + 1;
          piVar18 = piVar18 + 1;
        }
        if (pfStack_d0 != (float *)0x0) {
          Memory_FreeIfNonNull(pfStack_d0);
        }
        if (pfStack_f0 != (float *)0x0) {
          Memory_FreeIfNonNull(pfStack_f0);
        }
        if (pvStack_e0 != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_e0);
        }
        if (pvStack_100 == (void *)0x0) {
          return param_1;
        }
        Memory_FreeIfNonNull(pvStack_100);
        return param_1;
      }
    }
  }
  iStack_80 = iStack_fc - (int)pvStack_100 >> 6;
  iStack_7c = (int)pfStack_ec - (int)pfStack_f0 >> 6;
  iStack_78 = (int)pfStack_cc - (int)pfStack_d0 >> 6;
  pvVar13 = (void *)thunk_FUN_00835d40();
  piVar14 = (int *)((int)this + 0xe0);
  iStack_bc = 0;
  iStack_c0 = 0;
  cStack_111 = RoutingSystem_RunSynchronousJob
                         (pvVar13,piVar14,param_2,(int *)&pfStack_f0,
                          *(undefined4 *)((int)this + 0x3c),'\x01',(int)this + 0x158,&iStack_bc,
                          &iStack_c0,*(undefined4 *)((int)this + 0x40),
                          *(undefined4 *)((int)this + 0x44));
  puVar15 = *(undefined4 **)((int)this + 0xec);
  if ((int *)*piVar14 == piVar14) {
    if (puVar15 != (undefined4 *)0x0) {
      *(undefined4 *)((int)this + 0xec) = 0;
LAB_00760f26:
      piVar18 = puVar15 + 1;
      LOCK();
      iVar16 = *piVar18;
      *piVar18 = *piVar18 + -1;
      UNLOCK();
      if (iVar16 == 1) {
        LOCK();
        puVar15[1] = 1;
        UNLOCK();
        (**(code **)*puVar15)();
        puVar15 = extraout_ECX;
      }
    }
  }
  else {
    puVar3 = *(undefined4 **)(*piVar14 + 8);
    if (puVar3 != puVar15) {
      if (puVar3 != (undefined4 *)0x0) {
        LOCK();
        puVar3[1] = puVar3[1] + 1;
        UNLOCK();
      }
      *(undefined4 **)((int)this + 0xec) = puVar3;
      if (puVar15 != (undefined4 *)0x0) goto LAB_00760f26;
    }
  }
  if (cStack_111 == '\0') {
LAB_00760fbd:
    if ((int *)*piVar14 == piVar14) goto LAB_007615fd;
    RouteHost_DecodePathPlanFailure(this,aiStack_b8);
  }
  else {
    if (bVar8) {
      if (*(char *)((int)this + 0xf4) == '\0') {
        if ((int *)*piVar14 == piVar14) goto LAB_00761182;
        piVar18 = *(int **)(*piVar14 + 8);
      }
      else {
        piVar18 = *(int **)((int)this + 0xec);
      }
      if (piVar18 != (int *)0x0) {
        LOCK();
        piVar18[1] = piVar18[1] + 1;
        UNLOCK();
        (**(code **)(*piVar18 + 0x24))();
        piVar1 = piVar18 + 1;
        LOCK();
        iVar16 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar16 == 1) {
          LOCK();
          piVar18[1] = 1;
          UNLOCK();
          (**(code **)*piVar18)();
        }
        goto LAB_00760fbd;
      }
    }
LAB_00761182:
    aiStack_b8[0] = 1;
    if ((-1 < iStack_bc) &&
       (puVar15 = (undefined4 *)*param_2, iStack_bc < param_2[1] - (int)puVar15 >> 6)) {
      aiStack_b8[1] = puVar15[iStack_bc * 0x10 + 10];
    }
    pauVar19 = (undefined1 (*) [16])(pfStack_f0 + iStack_c0 * 0x10);
    auVar32 = pauVar19[1];
    auVar5._4_4_ = -(uint)(*(float *)((int)pauVar19[1] + 4) == 0.0);
    auVar5._0_4_ = -(uint)(*(float *)pauVar19[1] == 0.0);
    auVar5._8_4_ = -(uint)(*(float *)((int)pauVar19[1] + 8) == 0.0);
    auVar5._12_4_ = -(uint)(*(float *)((int)pauVar19[1] + 0xc) == 0.0);
    uVar12 = movmskps(puVar15,auVar5);
    if (((byte)uVar12 & 7) == 7) {
      *(undefined1 *)((int)this + 0x141) = 1;
      fVar21 = *(float *)*pauVar19;
      fVar22 = *(float *)((int)*pauVar19 + 4);
      fVar25 = *(float *)((int)*pauVar19 + 8);
      *(undefined4 *)((int)this + 0x100) = 0x3f800000;
      *(undefined4 *)((int)this + 0x104) = 0;
      *(undefined4 *)((int)this + 0x108) = 0;
      *(undefined4 *)((int)this + 0x10c) = 0;
      *(undefined4 *)((int)this + 0x110) = 0;
      *(undefined4 *)((int)this + 0x114) = 0x3f800000;
      *(undefined4 *)((int)this + 0x118) = 0;
      *(undefined4 *)((int)this + 0x11c) = 0;
      *(undefined4 *)((int)this + 0x120) = 0;
      *(undefined4 *)((int)this + 0x124) = 0;
      *(undefined4 *)((int)this + 0x128) = 0x3f800000;
      *(undefined4 *)((int)this + 300) = 0;
      *(float *)((int)this + 0x130) = fVar21;
      *(float *)((int)this + 0x134) = fVar22;
      *(float *)((int)this + 0x138) = fVar25;
      *(undefined4 *)((int)this + 0x13c) = 0x3f800000;
    }
    else {
      auStack_110._0_4_ = auVar32._0_4_;
      auStack_110._8_4_ = auVar32._8_4_;
      fVar21 = (float)auStack_110._0_4_ * (float)auStack_110._0_4_;
      auVar7._4_4_ = fVar21;
      auVar7._0_4_ = fVar21;
      auVar7._8_4_ = fVar21;
      auVar7._12_4_ = 0;
      fVar21 = (float)auStack_110._8_4_ * (float)auStack_110._8_4_ + 0.0 + fVar21;
      auVar34._4_4_ = fVar21;
      auVar34._0_4_ = fVar21;
      auVar34._8_4_ = fVar21;
      auVar34._12_4_ = fVar21;
      auVar32 = rsqrtps(auVar7 << 0x20,auVar34);
      fVar22 = auVar32._0_4_;
      fVar25 = auVar32._4_4_;
      fVar27 = auVar32._8_4_;
      fVar22 = (1.0 - fVar22 * fVar22 * fVar21) * fVar22 * 0.5 + fVar22;
      fVar25 = (1.0 - fVar25 * fVar25 * fVar21) * fVar25 * 0.5 + fVar25;
      fVar27 = (1.0 - fVar27 * fVar27 * fVar21) * fVar27 * 0.5 + fVar27;
      fVar22 = ((1.0 - fVar22 * fVar22 * fVar21) * fVar22 * 0.5 + fVar22) * (float)auStack_110._0_4_
      ;
      fVar25 = ((1.0 - fVar25 * fVar25 * fVar21) * fVar25 * 0.5 + fVar25) * 0.0;
      fVar21 = ((1.0 - fVar27 * fVar27 * fVar21) * fVar27 * 0.5 + fVar27) * (float)auStack_110._8_4_
      ;
      fVar27 = fVar21 * 1.0 - fVar25 * 0.0;
      fVar26 = fVar22 * 0.0 - fVar21 * 0.0;
      fVar28 = fVar25 * 0.0 - fVar22 * 1.0;
      *(float *)((int)this + 0x100) = fVar27;
      *(float *)((int)this + 0x104) = fVar26;
      *(float *)((int)this + 0x108) = fVar28;
      *(undefined4 *)((int)this + 0x10c) = 0;
      auStack_110._4_4_ = fVar27 * fVar21 - fVar28 * fVar22;
      auStack_110._0_4_ = fVar28 * fVar25 - fVar26 * fVar21;
      auStack_110._8_4_ = fVar26 * fVar22 - fVar27 * fVar25;
      uStack_104 = 0;
      *(undefined1 (*) [16])((int)this + 0x110) = _auStack_110;
      *(float *)((int)this + 0x120) = fVar22;
      *(float *)((int)this + 0x124) = fVar25;
      *(float *)((int)this + 0x128) = fVar21;
      *(undefined4 *)((int)this + 300) = 0;
      auVar32 = *pauVar19;
      auStack_110 = auVar32._0_12_;
      uStack_104 = 0x3f800000;
      auVar41 = _auStack_110;
      auStack_110._0_4_ = auVar32._0_4_;
      auStack_110._4_4_ = auVar32._4_4_;
      auStack_110._8_4_ = auVar32._8_4_;
      *(undefined4 *)((int)this + 0x130) = auStack_110._0_4_;
      *(undefined4 *)((int)this + 0x134) = auStack_110._4_4_;
      *(undefined4 *)((int)this + 0x138) = auStack_110._8_4_;
      *(undefined4 *)((int)this + 0x13c) = 0x3f800000;
      *(undefined1 *)((int)this + 0x141) = 1;
      *(undefined1 *)((int)this + 0x140) = 1;
      _auStack_110 = auVar41;
    }
    FUN_0076c100(&uStack_a8,(undefined4 *)pauVar19);
    fStack_ac = *(float *)((int)pauVar19[2] + 8);
    fStack_b0 = *(float *)((int)pauVar19[2] + 0xc);
    FUN_00750450((int)this);
    uStack_9c = *(undefined4 *)((int)this + 0xa4);
  }
  if ((int *)*piVar14 != piVar14) {
    local_11c[0] = (int *)*piVar14;
    if (local_11c[0] != piVar14) {
      do {
        piVar14 = (int *)local_11c[0][2];
        if (piVar14 != (int *)0x0) {
          piVar18 = piVar14 + 1;
          LOCK();
          *piVar18 = *piVar18 + 1;
          UNLOCK();
          (**(code **)(*piVar14 + 0x10))();
          iVar16 = (**(code **)(*piVar14 + 0xc))();
          uVar12 = *(undefined4 *)((int)this + 0x3c);
          puVar15 = (undefined4 *)FUN_0081c510(iVar16);
          FUN_0085f5e0(piVar14,puVar15,uVar12);
          LOCK();
          iVar16 = *piVar18;
          *piVar18 = *piVar18 + -1;
          UNLOCK();
          if (iVar16 == 1) {
            LOCK();
            *piVar18 = 1;
            UNLOCK();
            (**(code **)*piVar14)();
          }
        }
        local_11c[0] = (int *)*local_11c[0];
      } while (local_11c[0] != (int *)((int)this + 0xe0));
    }
    if ((*(int **)((int)this + 0xe0) != (int *)((int)this + 0xe0)) &&
       (piVar14 = *(int **)(*(int *)((int)this + 0xe4) + 8), piVar14 != (int *)0x0)) {
      piVar18 = piVar14 + 1;
      LOCK();
      *piVar18 = *piVar18 + 1;
      UNLOCK();
      if (*(char *)((int)this + 0x140) == '\0') {
        pcVar17 = *(code **)(*piVar14 + 0x144);
        fStack_50 = 0.0;
        fStack_4c = 0.0;
        fStack_48 = 0.0;
        fStack_44 = 0.0;
      }
      else {
        fVar21 = *(float *)((int)this + 0x110);
        fStack_60 = *(float *)((int)this + 0x114);
        fVar22 = *(float *)((int)this + 0x118);
        fVar25 = *(float *)((int)this + 0x100);
        fVar27 = *(float *)((int)this + 0x104);
        fVar26 = *(float *)((int)this + 0x108);
        fVar28 = *(float *)((int)this + 0x120);
        fVar6 = *(float *)((int)this + 0x124);
        fStack_70 = *(float *)((int)this + 0x128);
        fVar40 = fStack_70 + fStack_60 + fVar25;
        fStack_5c = fStack_70 + fStack_60 + fVar25;
        fStack_58 = fStack_70 + fStack_60 + fVar25;
        fStack_54 = fStack_70 + fStack_60 + fVar25;
        auStack_110._0_4_ = fVar40;
        if (fVar40 <= 0.0) {
          if ((fVar25 <= fStack_60) || (fVar25 <= fStack_70)) {
            if (fStack_60 <= fStack_70) {
              auVar35._0_4_ = (fStack_70 - (fStack_60 + fVar25)) + 1.0;
              auVar35._4_4_ = (fStack_70 - (fStack_60 + fVar25)) + 1.0;
              auVar35._8_4_ = (fStack_70 - (fStack_60 + fVar25)) + 1.0;
              auVar35._12_4_ = (fStack_70 - (fStack_60 + fVar25)) + 1.0;
              auVar32 = sqrtps(auVar35,auVar35);
              auVar39._8_4_ = 0x3f000000;
              auVar39._0_8_ = 0x3f0000003f000000;
              auVar39._12_4_ = 0x3f000000;
              auVar41 = divps(auVar39,auVar32);
              fStack_50 = (fVar28 + fVar26) * auVar41._0_4_;
              fStack_4c = (fVar22 + fVar6) * auVar41._4_4_;
              fStack_48 = auVar32._8_4_ * 0.5;
              fStack_44 = (fVar27 - fVar21) * auVar41._12_4_;
            }
            else {
              auVar31._0_4_ = (fStack_60 - (fStack_70 + fVar25)) + 1.0;
              auVar31._4_4_ = (fStack_60 - (fStack_70 + fVar25)) + 1.0;
              auVar31._8_4_ = (fStack_60 - (fStack_70 + fVar25)) + 1.0;
              auVar31._12_4_ = (fStack_60 - (fStack_70 + fVar25)) + 1.0;
              auVar41 = sqrtps(ZEXT416((uint)fStack_60),auVar31);
              auVar38._8_4_ = 0x3f000000;
              auVar38._0_8_ = 0x3f0000003f000000;
              auVar38._12_4_ = 0x3f000000;
              auVar32 = divps(auVar38,auVar41);
              fStack_50 = (fVar21 + fVar27) * auVar32._0_4_;
              fStack_4c = auVar41._4_4_ * 0.5;
              fStack_48 = (fVar22 + fVar6) * auVar32._8_4_;
              fStack_44 = (fVar28 - fVar26) * auVar32._12_4_;
            }
          }
          else {
            auVar30._0_4_ = (fVar25 - (fStack_70 + fStack_60)) + 1.0;
            auVar30._4_4_ = (fVar25 - (fStack_70 + fStack_60)) + 1.0;
            auVar30._8_4_ = (fVar25 - (fStack_70 + fStack_60)) + 1.0;
            auVar30._12_4_ = (fVar25 - (fStack_70 + fStack_60)) + 1.0;
            auVar32 = sqrtps(auVar30,auVar30);
            auVar37._8_4_ = 0x3f000000;
            auVar37._0_8_ = 0x3f0000003f000000;
            auVar37._12_4_ = 0x3f000000;
            auVar41 = divps(auVar37,auVar32);
            fStack_50 = auVar32._0_4_ * 0.5;
            fStack_48 = (fVar28 + fVar26) * auVar41._8_4_;
            fStack_4c = (fVar21 + fVar27) * auVar41._4_4_;
            fStack_44 = (fVar22 - fVar6) * auVar41._12_4_;
            fStack_60 = fVar25;
          }
        }
        else {
          auVar29._0_4_ = fVar40 + 1.0;
          auVar29._4_4_ = fStack_5c + 1.0;
          auVar29._8_4_ = fStack_58 + 1.0;
          auVar29._12_4_ = fStack_54 + 1.0;
          auVar41 = sqrtps(ZEXT416((uint)fVar40),auVar29);
          auVar36._8_4_ = 0x3f000000;
          auVar36._0_8_ = 0x3f0000003f000000;
          auVar36._12_4_ = 0x3f000000;
          auVar32 = divps(auVar36,auVar41);
          fStack_50 = (fVar22 - fVar6) * auVar32._0_4_;
          fStack_4c = (fVar28 - fVar26) * auVar32._4_4_;
          fStack_48 = (fVar27 - fVar21) * auVar32._8_4_;
          fStack_44 = auVar41._12_4_ * 0.5;
          fStack_70 = 0.0;
          fStack_60 = fVar40;
        }
        pcVar17 = *(code **)(*piVar14 + 0x144);
      }
      (*pcVar17)();
      if (*(char *)((int)this + 0x141) != '\0') {
        fStack_50 = *(float *)((int)this + 0x130);
        fStack_4c = *(float *)((int)this + 0x134);
        fStack_48 = *(float *)((int)this + 0x138);
        fStack_44 = *(float *)((int)this + 0x13c);
        (**(code **)(*piVar14 + 0x148))();
      }
      if ((*(void **)((int)this + 0x144) != (void *)0x0) &&
         (uVar42 = RouteGoal_GetFirstTargetObjectId(*(void **)((int)this + 0x144)), uVar42 != 0)) {
        (**(code **)(*piVar14 + 0x14c))(uVar42);
      }
      LOCK();
      iVar16 = *piVar18;
      *piVar18 = *piVar18 + -1;
      UNLOCK();
      if (iVar16 == 1) {
        LOCK();
        *piVar18 = 1;
        UNLOCK();
        (**(code **)*piVar14)();
      }
    }
  }
LAB_007615fd:
  piVar14 = aiStack_b8;
  piVar18 = param_1;
  for (iVar16 = 0x12; iVar16 != 0; iVar16 = iVar16 + -1) {
    *piVar18 = *piVar14;
    piVar14 = piVar14 + 1;
    piVar18 = piVar18 + 1;
  }
  if (pfStack_d0 != (float *)0x0) {
    Memory_FreeIfNonNull(pfStack_d0);
  }
  if (pfStack_f0 != (float *)0x0) {
    Memory_FreeIfNonNull(pfStack_f0);
  }
  if (pvStack_e0 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_e0);
  }
  if (pvStack_100 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_100);
  }
  return param_1;
}

