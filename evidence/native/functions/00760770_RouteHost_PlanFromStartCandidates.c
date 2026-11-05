/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  undefined1 (*pauVar2) [16];
  int iVar3;
  undefined4 *puVar4;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar7;
  float fVar8;
  undefined1 auVar9 [16];
  bool bVar10;
  float *pfVar11;
  byte bVar12;
  undefined4 uVar13;
  void *pvVar14;
  int *piVar15;
  undefined4 *puVar16;
  int iVar17;
  undefined4 *extraout_ECX;
  code *pcVar18;
  int *piVar19;
  undefined1 (*pauVar20) [12];
  undefined1 *puVar21;
  float fVar22;
  float fVar23;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
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
  undefined1 auVar40 [16];
  float fVar41;
  undefined1 auVar42 [16];
  ulonglong uVar43;
  int *local_11c [2];
  char cStack_111;
  undefined1 auStack_110 [12];
  float fStack_104;
  int iStack_100;
  int iStack_fc;
  undefined4 uStack_f8;
  char *pcStack_f4;
  float *pfStack_f0;
  float *pfStack_ec;
  undefined4 uStack_e8;
  char *pcStack_e4;
  int iStack_e0;
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
      piVar15 = (int *)local_11c[0][2];
      if (piVar15 != (int *)0x0) {
        piVar19 = piVar15 + 1;
        LOCK();
        *piVar19 = *piVar19 + 1;
        UNLOCK();
        (**(code **)(*piVar15 + 0x78))();
        (**(code **)(*piVar15 + 0x80))(0);
        (**(code **)(*piVar15 + 0x88))(0);
        (**(code **)(*piVar15 + 0x90))(0);
        LOCK();
        iVar17 = *piVar19;
        *piVar19 = *piVar19 + -1;
        UNLOCK();
        if (iVar17 == 1) {
          LOCK();
          *piVar19 = 1;
          UNLOCK();
          (**(code **)*piVar15)();
        }
      }
      local_11c[0] = (int *)*local_11c[0];
    } while (local_11c[0] != (int *)((int)this + 0xe0));
  }
  puVar16 = (undefined4 *)((int)this + 0xe0);
  *(undefined4 *)((int)this + 0xf0) = 0xffffffff;
  FUN_00757380(this);
  FUN_0084b160(puVar16);
  *puVar16 = puVar16;
  *(undefined4 **)((int)this + 0xe4) = puVar16;
  puVar16 = *(undefined4 **)((int)this + 0xec);
  if (puVar16 != (undefined4 *)0x0) {
    piVar15 = puVar16 + 1;
    *(undefined4 *)((int)this + 0xec) = 0;
    LOCK();
    iVar17 = *piVar15;
    *piVar15 = *piVar15 + -1;
    UNLOCK();
    if (iVar17 == 1) {
      LOCK();
      *piVar15 = 1;
      UNLOCK();
      (**(code **)*puVar16)();
    }
  }
  iVar17 = *(int *)((int)this + 0x144);
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
  if (iVar17 == 0) {
LAB_0076091a:
    piVar15 = aiStack_b8;
    piVar19 = param_1;
    for (iVar17 = 0x12; iVar17 != 0; iVar17 = iVar17 + -1) {
      *piVar19 = *piVar15;
      piVar15 = piVar15 + 1;
      piVar19 = piVar19 + 1;
    }
    return param_1;
  }
  if (*(int *)(iVar17 + 0x1c) == iVar17 + 0x18) {
    aiStack_b8[0] = 10;
    goto LAB_0076091a;
  }
  pvVar14 = (void *)((int)this + 0x158);
  uVar13 = RoutingOptions_TestMask(pvVar14,4,0,'\0');
  if ((char)uVar13 == '\0') {
    *(undefined1 *)(*(int *)((int)this + 0x144) + 0x48) = 0;
  }
  else {
    *(undefined1 *)(*(int *)((int)this + 0x144) + 0x48) = 1;
  }
  uVar13 = RoutingOptions_TestMask(pvVar14,0,0x20000,'\0');
  if ((char)uVar13 == '\0') {
    uVar13 = RoutingOptions_TestMask(pvVar14,0,0x40000,'\0');
    if ((char)uVar13 == '\0') {
      uVar13 = RoutingOptions_TestMask(pvVar14,0,0x80000,'\0');
      if ((char)uVar13 == '\0') {
        uVar13 = RoutingOptions_TestMask(pvVar14,0,0x100000,'\0');
        if ((char)uVar13 == '\0') {
          uVar13 = RoutingOptions_TestMask(pvVar14,0x20,0,'\x01');
          if ((char)uVar13 != '\0') {
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
  bVar10 = false;
  iStack_100 = 0;
  iStack_fc = 0;
  uStack_f8 = 0;
  pcStack_f4 = "Routing/RoutingHost/candidatePoints";
  iStack_e0 = 0;
  iStack_dc = 0;
  uStack_d8 = 0;
  pcStack_d4 = "Routing/RoutingHost/nonCandidatePoints";
  bVar12 = RouteGoal_ExpandDestinations
                     (*(void **)((int)this + 0x144),*(undefined4 *)((int)this + 0x3c),pvVar14,
                      *param_2,&iStack_100,&iStack_e0,aiStack_b8,0);
  iVar3 = iStack_e0;
  uVar13 = uStack_f8;
  iVar17 = iStack_fc;
  if (bVar12 == 0) {
    if (aiStack_b8[0] != 2) {
      piVar15 = aiStack_b8;
      piVar19 = param_1;
      for (iVar17 = 0x12; iVar17 != 0; iVar17 = iVar17 + -1) {
        *piVar19 = *piVar15;
        piVar15 = piVar15 + 1;
        piVar19 = piVar19 + 1;
      }
      if (iStack_e0 != 0) {
        FUN_004e44e0(iStack_e0);
      }
      if (iStack_100 == 0) {
        return param_1;
      }
      FUN_004e44e0(iStack_100);
      return param_1;
    }
    if (iStack_dc - iStack_e0 >> 6 == 0) {
      aiStack_b8[0] = 10;
      piVar15 = aiStack_b8;
      piVar19 = param_1;
      for (iVar17 = 0x12; iVar17 != 0; iVar17 = iVar17 + -1) {
        *piVar19 = *piVar15;
        piVar15 = piVar15 + 1;
        piVar19 = piVar19 + 1;
      }
      if (iStack_e0 != 0) {
        FUN_004e44e0(iStack_e0);
      }
      if (iStack_100 == 0) {
        return param_1;
      }
      FUN_004e44e0(iStack_100);
      return param_1;
    }
    iStack_e0 = iStack_100;
    iStack_fc = iStack_dc;
    iStack_dc = iVar17;
    bVar10 = true;
    iStack_100 = iVar3;
    uStack_f8 = uStack_d8;
    uStack_d8 = uVar13;
  }
  uVar13 = RoutingOptions_TestMask(pvVar14,0x200,0,'\0');
  if (((char)uVar13 != '\0') &&
     (uVar43 = RouteGoal_GetFirstTargetObjectId(*(void **)((int)this + 0x144)), uVar43 != 0)) {
    pvVar14 = ObjectRegistry_GetGlobal();
    uVar43 = RouteGoal_GetFirstTargetObjectId(*(void **)((int)this + 0x144));
    pvVar14 = ObjectRegistry_FindBorrowed(pvVar14,uVar43);
    if ((pvVar14 != (void *)0x0) &&
       (pvVar14 = Object_GetComponentByMask(pvVar14,DAT_011edf08), pvVar14 != (void *)0x0)) {
      iVar17 = *(int *)((int)this + 0x144);
      piVar15 = *(int **)(iVar17 + 0x20);
      if (piVar15 != *(int **)(iVar17 + 0x24)) {
        do {
          if (*piVar15 == *(int *)((int)pvVar14 + 0x20)) goto LAB_00760bcc;
          piVar15 = piVar15 + 1;
        } while (piVar15 != *(int **)(*(int *)((int)this + 0x144) + 0x24));
      }
      local_11c[0] = *(int **)((int)pvVar14 + 0x20);
      puVar16 = *(undefined4 **)(iVar17 + 0x24);
      if (puVar16 < *(undefined4 **)(iVar17 + 0x28)) {
        *(undefined4 **)(iVar17 + 0x24) = puVar16 + 1;
        if (puVar16 != (undefined4 *)0x0) {
          *puVar16 = local_11c[0];
        }
      }
      else {
        FUN_00982420((void *)(iVar17 + 0x20),puVar16,local_11c);
      }
LAB_00760bcc:
      iVar17 = *(int *)((int)this + 0x144);
      iVar3 = *(int *)((int)pvVar14 + 0xc);
      if ((*(int *)((int)pvVar14 + 8) != *(int *)(iVar17 + 0x38)) ||
         (iVar3 != *(int *)(iVar17 + 0x3c))) {
        *(int *)(iVar17 + 0x38) = *(int *)((int)pvVar14 + 8);
        *(int *)(iVar17 + 0x3c) = iVar3;
      }
    }
  }
  auStack_40[0] = *(uint *)((int)this + 0x3c);
  uStack_38 = *(undefined4 *)((int)this + 0x40);
  uStack_34 = *(undefined4 *)((int)this + 0x44);
  puVar21 = (undefined1 *)((int)this + 0x158);
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
  puStack_18 = puVar21;
  RouteGoal_RefreshStartContainmentFlags(*(void **)((int)this + 0x144),(float *)*param_2);
  RouteHost_FilterCandidatePoints
            ((float *)*param_2,&iStack_100,&pfStack_f0,&pfStack_d0,puVar21,auStack_40);
  if (pfStack_f0 == pfStack_ec) {
    iVar17 = 0x12;
    if ((pfStack_d0 == pfStack_cc) || (aiStack_b8[0] = 0x12, pfStack_d0[0xc] != 1.4013e-45)) {
      aiStack_b8[0] = 10;
    }
    piVar15 = aiStack_b8;
    piVar19 = param_1;
    for (; iVar17 != 0; iVar17 = iVar17 + -1) {
      *piVar19 = *piVar15;
      piVar15 = piVar15 + 1;
      piVar19 = piVar19 + 1;
    }
    if (puStack_20 != (undefined4 *)0x0) {
      piVar15 = puStack_20 + 1;
      LOCK();
      iVar17 = *piVar15;
      *piVar15 = *piVar15 + -1;
      UNLOCK();
      if (iVar17 == 1) {
        LOCK();
        *piVar15 = 1;
        UNLOCK();
        if (puStack_20 != (undefined4 *)0x0) {
          (**(code **)*puStack_20)();
        }
      }
    }
    if (pfStack_d0 != (float *)0x0) {
      FUN_004e44e0((int)pfStack_d0);
    }
    if (pfStack_f0 != (float *)0x0) {
      FUN_004e44e0((int)pfStack_f0);
    }
    if (iStack_e0 != 0) {
      FUN_004e44e0(iStack_e0);
    }
    if (iStack_100 == 0) {
      return param_1;
    }
    FUN_004e44e0(iStack_100);
    return param_1;
  }
  pfVar11 = pfStack_f0;
  if (puStack_20 != (undefined4 *)0x0) {
    piVar15 = puStack_20 + 1;
    LOCK();
    iVar17 = *piVar15;
    *piVar15 = *piVar15 + -1;
    UNLOCK();
    puVar21 = (undefined1 *)(iVar17 + -1);
    if (puVar21 == (undefined1 *)0x0) {
      LOCK();
      *piVar15 = 1;
      UNLOCK();
      if (puStack_20 != (undefined4 *)0x0) {
        (**(code **)*puStack_20)();
        pfVar11 = pfStack_f0;
      }
    }
  }
  for (; pfVar11 != pfStack_ec; pfVar11 = pfVar11 + 0x10) {
    fVar7 = *pfVar11;
    fVar22 = pfVar11[2];
    auVar33._0_4_ = fVar7 - DAT_010f4ccc;
    auVar33._4_4_ = fVar7 - DAT_010f4ccc;
    auVar33._8_4_ = fVar7 - DAT_010f4ccc;
    auVar33._12_4_ = fVar7 - DAT_010f4ccc;
    auVar42._0_4_ = DAT_00fab218 * auVar33._0_4_;
    auVar42._4_4_ = DAT_00fab218 * auVar33._4_4_;
    auVar42._8_4_ = DAT_00fab218 * auVar33._8_4_;
    auVar42._12_4_ = DAT_00fab218 * auVar33._12_4_;
    auVar33 = maxps(auVar42,auVar33);
    auVar34._4_4_ = -(uint)(auVar33._4_4_ <= DAT_0100519c);
    auVar34._0_4_ = -(uint)(auVar33._0_4_ <= DAT_0100519c);
    auVar34._8_4_ = -(uint)(auVar33._8_4_ <= DAT_0100519c);
    auVar34._12_4_ = -(uint)(auVar33._12_4_ <= DAT_0100519c);
    puVar21 = (undefined1 *)movmskps(puVar21,auVar34);
    if (puVar21 == &DAT_0000000f) {
      auVar24._0_4_ = (fVar22 - DAT_010f4ccc) * DAT_00fab218;
      auVar24._4_4_ = (fVar22 - DAT_010f4ccc) * DAT_00fab218;
      auVar24._8_4_ = (fVar22 - DAT_010f4ccc) * DAT_00fab218;
      auVar24._12_4_ = (fVar22 - DAT_010f4ccc) * DAT_00fab218;
      auVar5._4_4_ = fVar22 - DAT_010f4ccc;
      auVar5._0_4_ = fVar22 - DAT_010f4ccc;
      auVar5._8_4_ = fVar22 - DAT_010f4ccc;
      auVar5._12_4_ = fVar22 - DAT_010f4ccc;
      auVar33 = maxps(auVar24,auVar5);
      auVar25._4_4_ = -(uint)(auVar33._4_4_ <= DAT_0100519c);
      auVar25._0_4_ = -(uint)(auVar33._0_4_ <= DAT_0100519c);
      auVar25._8_4_ = -(uint)(auVar33._8_4_ <= DAT_0100519c);
      auVar25._12_4_ = -(uint)(auVar33._12_4_ <= DAT_0100519c);
      puVar21 = (undefined1 *)movmskps(0xf,auVar25);
      if (puVar21 == &DAT_0000000f) {
        aiStack_b8[0] = 10;
        piVar15 = aiStack_b8;
        piVar19 = param_1;
        for (iVar17 = 0x12; iVar17 != 0; iVar17 = iVar17 + -1) {
          *piVar19 = *piVar15;
          piVar15 = piVar15 + 1;
          piVar19 = piVar19 + 1;
        }
        if (pfStack_d0 != (float *)0x0) {
          FUN_004e44e0((int)pfStack_d0);
        }
        if (pfStack_f0 != (float *)0x0) {
          FUN_004e44e0((int)pfStack_f0);
        }
        if (iStack_e0 != 0) {
          FUN_004e44e0(iStack_e0);
        }
        if (iStack_100 == 0) {
          return param_1;
        }
        FUN_004e44e0(iStack_100);
        return param_1;
      }
    }
  }
  iStack_80 = iStack_fc - iStack_100 >> 6;
  iStack_7c = (int)pfStack_ec - (int)pfStack_f0 >> 6;
  iStack_78 = (int)pfStack_cc - (int)pfStack_d0 >> 6;
  pvVar14 = (void *)thunk_FUN_00835d40();
  piVar15 = (int *)((int)this + 0xe0);
  iStack_bc = 0;
  iStack_c0 = 0;
  cStack_111 = RoutingSystem_RunSynchronousJob
                         (pvVar14,piVar15,param_2,(int *)&pfStack_f0,
                          *(undefined4 *)((int)this + 0x3c),'\x01',(int)this + 0x158,&iStack_bc,
                          &iStack_c0,*(undefined4 *)((int)this + 0x40),
                          *(undefined4 *)((int)this + 0x44));
  puVar16 = *(undefined4 **)((int)this + 0xec);
  if ((int *)*piVar15 == piVar15) {
    if (puVar16 != (undefined4 *)0x0) {
      *(undefined4 *)((int)this + 0xec) = 0;
LAB_00760f26:
      piVar19 = puVar16 + 1;
      LOCK();
      iVar17 = *piVar19;
      *piVar19 = *piVar19 + -1;
      UNLOCK();
      if (iVar17 == 1) {
        LOCK();
        puVar16[1] = 1;
        UNLOCK();
        (**(code **)*puVar16)();
        puVar16 = extraout_ECX;
      }
    }
  }
  else {
    puVar4 = *(undefined4 **)(*piVar15 + 8);
    if (puVar4 != puVar16) {
      if (puVar4 != (undefined4 *)0x0) {
        LOCK();
        puVar4[1] = puVar4[1] + 1;
        UNLOCK();
      }
      *(undefined4 **)((int)this + 0xec) = puVar4;
      if (puVar16 != (undefined4 *)0x0) goto LAB_00760f26;
    }
  }
  fVar7 = DAT_00f998f8;
  if (cStack_111 == '\0') {
LAB_00760fbd:
    if ((int *)*piVar15 == piVar15) goto LAB_007615fd;
    RouteHost_DecodePathPlanFailure(this,aiStack_b8);
  }
  else {
    if (bVar10) {
      if (*(char *)((int)this + 0xf4) == '\0') {
        if ((int *)*piVar15 == piVar15) goto LAB_00761182;
        piVar19 = *(int **)(*piVar15 + 8);
      }
      else {
        piVar19 = *(int **)((int)this + 0xec);
      }
      if (piVar19 != (int *)0x0) {
        LOCK();
        piVar19[1] = piVar19[1] + 1;
        UNLOCK();
        (**(code **)(*piVar19 + 0x24))();
        piVar1 = piVar19 + 1;
        LOCK();
        iVar17 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar17 == 1) {
          LOCK();
          piVar19[1] = 1;
          UNLOCK();
          (**(code **)*piVar19)();
        }
        goto LAB_00760fbd;
      }
    }
LAB_00761182:
    aiStack_b8[0] = 1;
    if ((-1 < iStack_bc) &&
       (puVar16 = (undefined4 *)*param_2, iStack_bc < param_2[1] - (int)puVar16 >> 6)) {
      aiStack_b8[1] = puVar16[iStack_bc * 0x10 + 10];
    }
    pauVar20 = (undefined1 (*) [12])(pfStack_f0 + iStack_c0 * 0x10);
    pauVar2 = (undefined1 (*) [16])((int)pauVar20[1] + 4);
    auVar6._4_4_ = -(uint)(*(float *)((int)pauVar20[1] + 8) == 0.0);
    auVar6._0_4_ = -(uint)(*(float *)*pauVar2 == 0.0);
    auVar6._8_4_ = -(uint)(*(float *)pauVar20[2] == 0.0);
    auVar6._12_4_ = -(uint)(*(float *)((int)pauVar20[2] + 4) == 0.0);
    uVar13 = movmskps(puVar16,auVar6);
    if (((byte)uVar13 & 7) == 7) {
      *(undefined1 *)((int)this + 0x141) = 1;
      fVar22 = *(float *)*pauVar20;
      fVar23 = *(float *)((int)*pauVar20 + 4);
      fVar26 = *(float *)((int)*pauVar20 + 8);
      *(float *)((int)this + 0x100) = fVar7;
      *(undefined4 *)((int)this + 0x104) = 0;
      *(undefined4 *)((int)this + 0x108) = 0;
      *(undefined4 *)((int)this + 0x10c) = 0;
      *(undefined4 *)((int)this + 0x110) = 0;
      *(float *)((int)this + 0x114) = fVar7;
      *(undefined4 *)((int)this + 0x118) = 0;
      *(undefined4 *)((int)this + 0x11c) = 0;
      *(undefined4 *)((int)this + 0x120) = 0;
      *(undefined4 *)((int)this + 0x124) = 0;
      *(float *)((int)this + 0x128) = fVar7;
      *(undefined4 *)((int)this + 300) = 0;
      *(float *)((int)this + 0x130) = fVar22;
      *(float *)((int)this + 0x134) = fVar23;
      *(float *)((int)this + 0x138) = fVar26;
      *(float *)((int)this + 0x13c) = fVar7;
    }
    else {
      auStack_110._0_4_ = SUB124(*(undefined1 (*) [12])*pauVar2,0);
      auStack_110._8_4_ = SUB164(*pauVar2,8);
      fVar22 = (float)auStack_110._0_4_ * (float)auStack_110._0_4_;
      auVar9._4_4_ = fVar22;
      auVar9._0_4_ = fVar22;
      auVar9._8_4_ = fVar22;
      auVar9._12_4_ = 0;
      fVar22 = (float)auStack_110._8_4_ * (float)auStack_110._8_4_ + 0.0 + fVar22;
      auVar35._4_4_ = fVar22;
      auVar35._0_4_ = fVar22;
      auVar35._8_4_ = fVar22;
      auVar35._12_4_ = fVar22;
      auVar33 = rsqrtps(auVar9 << 0x20,auVar35);
      fVar23 = auVar33._0_4_;
      fVar26 = auVar33._4_4_;
      fVar28 = auVar33._8_4_;
      fVar23 = (DAT_00f998f8 - fVar23 * fVar23 * fVar22) * _DAT_00f9b5b4 * fVar23 + fVar23;
      fVar26 = (DAT_00f998f8 - fVar26 * fVar26 * fVar22) * _DAT_00f9b5b4 * fVar26 + fVar26;
      fVar28 = (DAT_00f998f8 - fVar28 * fVar28 * fVar22) * _DAT_00f9b5b4 * fVar28 + fVar28;
      fVar23 = ((DAT_00f998f8 - fVar23 * fVar23 * fVar22) * fVar23 * _DAT_00f9b5b4 + fVar23) *
               (float)auStack_110._0_4_;
      fVar26 = ((DAT_00f998f8 - fVar26 * fVar26 * fVar22) * fVar26 * _DAT_00f9b5b4 + fVar26) * 0.0;
      fVar22 = ((DAT_00f998f8 - fVar28 * fVar28 * fVar22) * fVar28 * _DAT_00f9b5b4 + fVar28) *
               (float)auStack_110._8_4_;
      fVar28 = DAT_00f998f8 * fVar22 - fVar26 * 0.0;
      fVar27 = fVar23 * 0.0 - fVar22 * 0.0;
      fVar29 = fVar26 * 0.0 - DAT_00f998f8 * fVar23;
      *(float *)((int)this + 0x100) = fVar28;
      *(float *)((int)this + 0x104) = fVar27;
      *(float *)((int)this + 0x108) = fVar29;
      *(undefined4 *)((int)this + 0x10c) = 0;
      auStack_110._4_4_ = fVar28 * fVar22 - fVar29 * fVar23;
      auStack_110._0_4_ = fVar29 * fVar26 - fVar27 * fVar22;
      auStack_110._8_4_ = fVar27 * fVar23 - fVar28 * fVar26;
      fStack_104 = 0.0;
      *(undefined1 (*) [16])((int)this + 0x110) = _auStack_110;
      *(float *)((int)this + 0x120) = fVar23;
      *(float *)((int)this + 0x124) = fVar26;
      *(float *)((int)this + 0x128) = fVar22;
      *(undefined4 *)((int)this + 300) = 0;
      auStack_110 = *pauVar20;
      fStack_104 = fVar7;
      auVar33 = _auStack_110;
      *(undefined4 *)((int)this + 0x130) = auStack_110._0_4_;
      *(undefined4 *)((int)this + 0x134) = auStack_110._4_4_;
      *(undefined4 *)((int)this + 0x138) = auStack_110._8_4_;
      *(float *)((int)this + 0x13c) = fVar7;
      *(undefined1 *)((int)this + 0x141) = 1;
      *(undefined1 *)((int)this + 0x140) = 1;
      _auStack_110 = auVar33;
    }
    FUN_0076c100(&uStack_a8,(undefined4 *)pauVar20);
    fStack_ac = *(float *)((int)pauVar20[3] + 4);
    fStack_b0 = *(float *)((int)pauVar20[3] + 8);
    FUN_00750450((int)this);
    uStack_9c = *(undefined4 *)((int)this + 0xa4);
  }
  if ((int *)*piVar15 != piVar15) {
    local_11c[0] = (int *)*piVar15;
    if (local_11c[0] != piVar15) {
      do {
        piVar15 = (int *)local_11c[0][2];
        if (piVar15 != (int *)0x0) {
          piVar19 = piVar15 + 1;
          LOCK();
          *piVar19 = *piVar19 + 1;
          UNLOCK();
          (**(code **)(*piVar15 + 0x10))();
          iVar17 = (**(code **)(*piVar15 + 0xc))();
          uVar13 = *(undefined4 *)((int)this + 0x3c);
          puVar16 = (undefined4 *)FUN_0081c510(iVar17);
          FUN_0085f5e0(piVar15,puVar16,uVar13);
          LOCK();
          iVar17 = *piVar19;
          *piVar19 = *piVar19 + -1;
          UNLOCK();
          if (iVar17 == 1) {
            LOCK();
            *piVar19 = 1;
            UNLOCK();
            (**(code **)*piVar15)();
          }
        }
        local_11c[0] = (int *)*local_11c[0];
      } while (local_11c[0] != (int *)((int)this + 0xe0));
    }
    if ((*(int **)((int)this + 0xe0) != (int *)((int)this + 0xe0)) &&
       (piVar15 = *(int **)(*(int *)((int)this + 0xe4) + 8), piVar15 != (int *)0x0)) {
      piVar19 = piVar15 + 1;
      LOCK();
      *piVar19 = *piVar19 + 1;
      UNLOCK();
      if (*(char *)((int)this + 0x140) == '\0') {
        pcVar18 = *(code **)(*piVar15 + 0x144);
        fStack_50 = 0.0;
        fStack_4c = 0.0;
        fStack_48 = 0.0;
        fStack_44 = 0.0;
      }
      else {
        fVar7 = *(float *)((int)this + 0x110);
        fStack_60 = *(float *)((int)this + 0x114);
        fVar22 = *(float *)((int)this + 0x118);
        fVar23 = *(float *)((int)this + 0x100);
        fVar26 = *(float *)((int)this + 0x104);
        fVar28 = *(float *)((int)this + 0x108);
        fVar27 = *(float *)((int)this + 0x120);
        fVar29 = *(float *)((int)this + 0x124);
        fVar8 = *(float *)((int)this + 0x128);
        fVar41 = fVar8 + fStack_60 + fVar23;
        fStack_5c = fVar8 + fStack_60 + fVar23;
        fStack_58 = fVar8 + fStack_60 + fVar23;
        fStack_54 = fVar8 + fStack_60 + fVar23;
        auStack_110._0_4_ = fVar41;
        fStack_70 = DAT_010f4ccc;
        if (fVar41 <= DAT_010f4ccc) {
          fStack_70 = fVar8;
          if ((fVar23 <= fStack_60) || (fVar23 <= fVar8)) {
            if (fStack_60 <= fVar8) {
              auVar36._0_4_ = DAT_00f998f8 + (fVar8 - (fStack_60 + fVar23));
              auVar36._4_4_ = DAT_00f998f8 + (fVar8 - (fStack_60 + fVar23));
              auVar36._8_4_ = DAT_00f998f8 + (fVar8 - (fStack_60 + fVar23));
              auVar36._12_4_ = DAT_00f998f8 + (fVar8 - (fStack_60 + fVar23));
              auVar33 = sqrtps(auVar36,auVar36);
              auVar40._4_4_ = _DAT_00f9b5b4;
              auVar40._0_4_ = _DAT_00f9b5b4;
              auVar40._8_4_ = _DAT_00f9b5b4;
              auVar40._12_4_ = _DAT_00f9b5b4;
              auVar42 = divps(auVar40,auVar33);
              fStack_50 = (fVar27 + fVar28) * auVar42._0_4_;
              fStack_4c = (fVar22 + fVar29) * auVar42._4_4_;
              fStack_48 = auVar33._8_4_ * _DAT_00f9b5b4;
              fStack_44 = (fVar26 - fVar7) * auVar42._12_4_;
            }
            else {
              auVar32._0_4_ = DAT_00f998f8 + (fStack_60 - (fVar8 + fVar23));
              auVar32._4_4_ = DAT_00f998f8 + (fStack_60 - (fVar8 + fVar23));
              auVar32._8_4_ = DAT_00f998f8 + (fStack_60 - (fVar8 + fVar23));
              auVar32._12_4_ = DAT_00f998f8 + (fStack_60 - (fVar8 + fVar23));
              auVar42 = sqrtps(ZEXT416((uint)fStack_60),auVar32);
              auVar39._4_4_ = _DAT_00f9b5b4;
              auVar39._0_4_ = _DAT_00f9b5b4;
              auVar39._8_4_ = _DAT_00f9b5b4;
              auVar39._12_4_ = _DAT_00f9b5b4;
              auVar33 = divps(auVar39,auVar42);
              fStack_50 = (fVar7 + fVar26) * auVar33._0_4_;
              fStack_4c = auVar42._4_4_ * _DAT_00f9b5b4;
              fStack_48 = (fVar22 + fVar29) * auVar33._8_4_;
              fStack_44 = (fVar27 - fVar28) * auVar33._12_4_;
            }
          }
          else {
            auVar31._0_4_ = DAT_00f998f8 + (fVar23 - (fVar8 + fStack_60));
            auVar31._4_4_ = DAT_00f998f8 + (fVar23 - (fVar8 + fStack_60));
            auVar31._8_4_ = DAT_00f998f8 + (fVar23 - (fVar8 + fStack_60));
            auVar31._12_4_ = DAT_00f998f8 + (fVar23 - (fVar8 + fStack_60));
            auVar33 = sqrtps(auVar31,auVar31);
            auVar38._4_4_ = _DAT_00f9b5b4;
            auVar38._0_4_ = _DAT_00f9b5b4;
            auVar38._8_4_ = _DAT_00f9b5b4;
            auVar38._12_4_ = _DAT_00f9b5b4;
            auVar42 = divps(auVar38,auVar33);
            fStack_50 = auVar33._0_4_ * _DAT_00f9b5b4;
            fStack_48 = (fVar27 + fVar28) * auVar42._8_4_;
            fStack_4c = (fVar7 + fVar26) * auVar42._4_4_;
            fStack_44 = (fVar22 - fVar29) * auVar42._12_4_;
            fStack_60 = fVar23;
          }
        }
        else {
          auVar30._0_4_ = DAT_00f998f8 + fVar41;
          auVar30._4_4_ = DAT_00f998f8 + fStack_5c;
          auVar30._8_4_ = DAT_00f998f8 + fStack_58;
          auVar30._12_4_ = DAT_00f998f8 + fStack_54;
          auVar42 = sqrtps(ZEXT416((uint)fVar41),auVar30);
          auVar37._4_4_ = _DAT_00f9b5b4;
          auVar37._0_4_ = _DAT_00f9b5b4;
          auVar37._8_4_ = _DAT_00f9b5b4;
          auVar37._12_4_ = _DAT_00f9b5b4;
          auVar33 = divps(auVar37,auVar42);
          fStack_50 = (fVar22 - fVar29) * auVar33._0_4_;
          fStack_4c = (fVar27 - fVar28) * auVar33._4_4_;
          fStack_48 = (fVar26 - fVar7) * auVar33._8_4_;
          fStack_44 = auVar42._12_4_ * _DAT_00f9b5b4;
          fStack_60 = fVar41;
        }
        pcVar18 = *(code **)(*piVar15 + 0x144);
      }
      (*pcVar18)();
      if (*(char *)((int)this + 0x141) != '\0') {
        fStack_50 = *(float *)((int)this + 0x130);
        fStack_4c = *(float *)((int)this + 0x134);
        fStack_48 = *(float *)((int)this + 0x138);
        fStack_44 = *(float *)((int)this + 0x13c);
        (**(code **)(*piVar15 + 0x148))();
      }
      if ((*(void **)((int)this + 0x144) != (void *)0x0) &&
         (uVar43 = RouteGoal_GetFirstTargetObjectId(*(void **)((int)this + 0x144)), uVar43 != 0)) {
        (**(code **)(*piVar15 + 0x14c))(uVar43);
      }
      LOCK();
      iVar17 = *piVar19;
      *piVar19 = *piVar19 + -1;
      UNLOCK();
      if (iVar17 == 1) {
        LOCK();
        *piVar19 = 1;
        UNLOCK();
        (**(code **)*piVar15)();
      }
    }
  }
LAB_007615fd:
  piVar15 = aiStack_b8;
  piVar19 = param_1;
  for (iVar17 = 0x12; iVar17 != 0; iVar17 = iVar17 + -1) {
    *piVar19 = *piVar15;
    piVar15 = piVar15 + 1;
    piVar19 = piVar19 + 1;
  }
  if (pfStack_d0 != (float *)0x0) {
    FUN_004e44e0((int)pfStack_d0);
  }
  if (pfStack_f0 != (float *)0x0) {
    FUN_004e44e0((int)pfStack_f0);
  }
  if (iStack_e0 != 0) {
    FUN_004e44e0(iStack_e0);
  }
  if (iStack_100 != 0) {
    FUN_004e44e0(iStack_100);
  }
  return param_1;
}

