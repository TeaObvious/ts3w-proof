/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst static routing contract: Numeric EAX graph status, not pointer. Calls0065e520; status8
   returns immediately; status6 retries once with flags|0x800000. Failed start in unroutable region
   can search nearby grid positions (bounded outer loops1..9) and retry with0x11000000. Flag0x400
   plus path output enables segmented recovery with up to3 iterations; status5 can try alternate
   goal/lot entries. Ownership of temporary paths uses native retain/release; individual region
   eligibility leaf details remain open. */

uint __thiscall
RouteGraph_PlanWithRecovery
          (void *this,uint *param_1,int *param_2,float *param_3,float param_4,int *param_5,
          int *param_6,undefined4 *param_7,uint *param_8,uint param_9,void *param_10,
          undefined *param_11,int *param_12)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  float *pfVar3;
  uint uVar4;
  void *pvVar5;
  undefined4 *puVar6;
  int *piVar7;
  undefined4 uVar8;
  char cVar9;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 uVar10;
  int iVar11;
  void **ppvVar12;
  float fVar13;
  float10 fVar14;
  undefined4 *puVar15;
  float fVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  float fVar22;
  undefined4 *puVar23;
  float fVar24;
  undefined4 *local_100;
  int *local_fc;
  char local_f5;
  float *local_f4;
  int *local_f0;
  void *local_ec;
  void *local_e8 [2];
  void *pvStack_e0;
  float fStack_dc;
  float fStack_d8;
  undefined4 *local_d4;
  float *local_d0;
  float *local_cc;
  undefined4 local_c8;
  char *local_c4;
  undefined4 *local_c0 [2];
  void *pvStack_b8;
  float fStack_b4;
  float fStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  float fStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  undefined2 uStack_88;
  undefined2 uStack_86;
  undefined2 uStack_84;
  undefined4 uStack_80;
  void *pvStack_78;
  float fStack_74;
  float fStack_70;
  undefined1 local_6c [4];
  undefined4 ***local_68;
  undefined4 ***local_64;
  undefined4 *local_60;
  undefined4 local_5c;
  undefined4 local_58;
  char *local_54;
  int aiStack_50 [3];
  char *pcStack_44;
  undefined1 auStack_40 [16];
  float fStack_30;
  undefined1 auStack_20 [16];
  
  pfVar3 = (float *)RouteGraph_PlanAcrossLotsAndRegions
                              (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,
                               param_9,param_10,param_11,param_12);
  if (pfVar3 == (float *)0x8) {
    return 8;
  }
  if (pfVar3 == (float *)0x6) {
    param_9 = param_9 | 0x800000;
    local_f4 = pfVar3;
    pfVar3 = (float *)RouteGraph_PlanAcrossLotsAndRegions
                                (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,
                                 param_8,param_9,param_10,param_11,param_12);
  }
  local_f4 = pfVar3;
  if (pfVar3 != (float *)0x0) {
    pfVar1 = (float *)*param_2;
    if (pfVar1 != (float *)param_2[1]) {
      local_f0 = (int *)*pfVar1;
      local_c0[0] = (undefined4 *)pfVar1[1];
      uVar4 = FUN_0066dc30(*(void **)((int)this + 0x14),*(int *)((int)this + 0xc),(float)local_f0,0,
                           (float)local_c0[0]);
      if ((*(uint *)(*(int *)((int)this + 0x14) + 0xc) <= uVar4) ||
         (*(char *)(*(int *)(*(int *)((int)this + 0x14) + 0x1c) + uVar4 * 2) == '\0')) {
        fVar14 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_f0,(float)local_c0[0],0,'\0',
                              '\0',(char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,
                              (undefined1 *)0x0,'\x01');
        local_e8[0] = (void *)(float)fVar14;
        fVar14 = FUN_00c61090(*(int *)((int)this + 0xc));
        if (((float10)(float)local_e8[0] <= fVar14) ||
           (pvVar5 = FUN_00c60880(*(void **)((int)this + 0xc),(float)local_f0,(float)local_c0[0],
                                  '\0'), pvVar5 != (void *)0x0)) {
          puVar23 = local_c0[0];
          piVar7 = local_f0;
          local_c0[0] = DAT_00fee558;
          puVar6 = (undefined4 *)0x0;
          cVar9 = '\0';
          local_d4 = (undefined4 *)0x0;
          local_f5 = '\0';
          local_f0 = (int *)0x1;
          do {
            if (cVar9 != '\0') break;
            local_e8[0] = (void *)0x0;
            do {
              if (cVar9 != '\0') break;
              local_ec = (void *)0x0;
              if (0 < (int)local_f0) {
                do {
                  if (cVar9 != '\0') break;
                  iVar11 = *(int *)((int)this + 0xc);
                  local_fc = (int *)((float)local_c0[0] + (float)piVar7);
                  local_100 = (undefined4 *)((float)puVar6 + (float)puVar23);
                  if ((((*(float *)(iVar11 + 0xb4) <= (float)local_fc) &&
                       (*(float *)(iVar11 + 0xb8) <= (float)local_100)) &&
                      ((float)local_fc < *(float *)(iVar11 + 0xbc))) &&
                     ((float)local_100 < *(float *)(iVar11 + 0xc4) + *(float *)(iVar11 + 0xc0))) {
                    uVar4 = FUN_0066dc30(*(void **)((int)this + 0x14),iVar11,(float)local_fc,0,
                                         (float)local_100);
                    puVar6 = local_d4;
                    if ((uVar4 < *(uint *)(*(int *)((int)this + 0x14) + 0xc)) &&
                       (*(char *)(*(int *)(*(int *)((int)this + 0x14) + 0x1c) + uVar4 * 2) != '\0'))
                    {
                      local_d0 = (float *)0x0;
                      local_cc = (float *)0x0;
                      local_c8 = 0;
                      local_c4 = "Routing/RoutingJob/startPts";
                      FUN_00656a10(&local_d0,(undefined4 *)*param_2);
                      *local_d0 = (float)local_fc;
                      local_d0[1] = (float)local_100;
                      param_9 = param_9 | 0x11000000;
                      local_f4 = (float *)RouteGraph_PlanAcrossLotsAndRegions
                                                    (this,param_1,(int *)&local_d0,param_3,param_4,
                                                     param_5,param_6,param_7,param_8,param_9,
                                                     param_10,param_11,param_12);
                      local_f5 = '\x01';
                      puVar6 = local_d4;
                      if (local_d0 != (float *)0x0) {
                        FUN_004e44e0((int)local_d0);
                        puVar6 = local_d4;
                      }
                    }
                  }
                  local_ec = (void *)((int)local_ec + 1);
                  piVar7 = local_fc;
                  puVar23 = local_100;
                  cVar9 = local_f5;
                } while ((int)local_ec < (int)local_f0);
              }
              if (local_e8[0] == (void *)0x0) {
                puVar15 = (undefined4 *)(DAT_00f998f0 - (float)local_c0[0]);
                local_c0[0] = (undefined4 *)0x0;
              }
              else {
                puVar15 = (undefined4 *)0x0;
                local_c0[0] = puVar6;
              }
              puVar6 = puVar15;
              local_e8[0] = (void *)((int)local_e8[0] + 1);
              local_d4 = puVar6;
            } while ((int)local_e8[0] < 2);
            local_f0 = (int *)((int)local_f0 + 1);
            pfVar3 = local_f4;
          } while ((int)local_f0 < 10);
        }
      }
    }
    if (((pfVar3 != (float *)0x0) && ((param_9 & 0x400) != 0)) && (param_6 != (int *)0x0)) {
      local_100 = (undefined4 *)0x0;
      if (param_12 == (int *)0x0) {
        piVar7 = FUN_009348e0((int *)&local_100);
        RouteGraph_PlanAcrossLotsAndRegions
                  (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,
                   param_10,param_11,piVar7);
      }
      else {
        FUN_00566590(&local_100,(undefined4 *)*param_12);
      }
      puVar6 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
      if (puVar6 == (undefined4 *)0x0) {
        piVar7 = (int *)0x0;
        local_f0 = (int *)0x0;
      }
      else {
        piVar7 = (int *)FUN_0064ee20(puVar6);
        local_f0 = piVar7;
        if (piVar7 != (int *)0x0) {
          (**(code **)*piVar7)();
        }
      }
      *param_6 = (int)piVar7;
      (**(code **)*piVar7)();
      pfVar3 = (float *)*param_2;
      pvStack_e0 = (void *)*pfVar3;
      fStack_d8 = pfVar3[2];
      fStack_dc = pfVar3[1];
      local_e8[0] = (void *)0x3;
      do {
        local_fc = (int *)0x0;
        local_d0 = (float *)0x0;
        local_cc = (float *)0x0;
        local_c8 = 0;
        local_c4 = "Routing/runStartList";
        local_f4 = (void *)0xffffffff;
        uVar10 = 0;
        pfVar3 = local_f4;
        if (local_100 != (undefined4 *)0x0) {
          local_ec = (void *)FUN_0064edf0((int)local_100);
          pvVar5 = (void *)0x0;
          uVar10 = extraout_ECX;
          pfVar3 = local_f4;
          if (local_ec != (void *)0x0) {
            do {
              piVar7 = (int *)FUN_0064ee10(local_100,(int)pvVar5);
              uVar10 = extraout_ECX_00;
              if ((*piVar7 != 0x14) &&
                 (uVar8 = FUN_00652030(*(void **)((int)this + 0xc),piVar7), uVar10 = extraout_ECX_01
                 , pfVar3 = pvVar5, (char)uVar8 != '\0')) break;
              pvVar5 = (void *)((int)pvVar5 + 1);
              pfVar3 = local_f4;
            } while (pvVar5 < local_ec);
          }
        }
        local_f4 = pfVar3;
        fVar13 = fStack_d8;
        local_d4 = (undefined4 *)(param_3[1] - fStack_dc);
        local_c0[0] = (undefined4 *)(*param_3 - (float)pvStack_e0);
        auVar18._0_4_ = (float)local_d4 * (float)local_d4 + (float)local_c0[0] * (float)local_c0[0];
        auVar18._4_4_ = auVar18._0_4_;
        auVar18._8_4_ = auVar18._0_4_;
        auVar18._12_4_ = auVar18._0_4_;
        auStack_40 = sqrtps(auVar18,auVar18);
        if (local_f4 == (void *)0xffffffff) {
LAB_006629a4:
          puVar6 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
          if (puVar6 == (undefined4 *)0x0) {
            local_f4 = (float *)0x0;
            piVar7 = (int *)0x0;
          }
          else {
            piVar7 = (int *)FUN_0064ee20(puVar6);
            local_f4 = (float *)piVar7;
            if (piVar7 != (int *)0x0) {
              (**(code **)*piVar7)();
            }
          }
          uStack_a8 = 0;
          uStack_a4 = DAT_00fee0dc;
          fStack_a0 = DAT_00f998f8;
          uStack_ac = uStack_ac & 0xffff;
          uStack_98 = 0;
          uStack_94 = 0;
          uStack_90 = 0;
          uStack_8c = 0xb828;
          uStack_88 = 0;
          uStack_86 = 0;
          uStack_84 = 0;
          uStack_80 = 0;
          pvStack_b8 = pvStack_e0;
          fVar14 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)pvStack_e0,fStack_dc,
                                (int)fStack_d8,'\x01','\0',(char *)0x0,(undefined1 *)0x0,(char *)0x0
                                ,(char *)0x0,(undefined1 *)0x0,'\x01');
          fStack_b4 = (float)fVar14;
          puVar6 = (undefined4 *)piVar7[3];
          uStack_ac._0_2_ = fStack_d8._0_2_;
          fStack_b0 = fStack_dc;
          uStack_9c = 6;
          if (puVar6 < (undefined4 *)piVar7[4]) {
            piVar7[3] = (int)(puVar6 + 0x10);
            if (puVar6 != (undefined4 *)0x0) {
              ppvVar12 = &pvStack_b8;
              for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
                *puVar6 = *ppvVar12;
                ppvVar12 = ppvVar12 + 1;
                puVar6 = puVar6 + 1;
              }
            }
          }
          else {
            FUN_00a8f4d0(piVar7 + 2,puVar6,&pvStack_b8);
          }
          local_e8[0] = (void *)*param_3;
          pvStack_b8 = local_e8[0];
          fVar14 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_e8[0],param_3[1],
                                (int)param_3[2],'\x01','\0',(char *)0x0,(undefined1 *)0x0,
                                (char *)0x0,(char *)0x0,(undefined1 *)0x0,'\x01');
          fStack_b4 = (float)fVar14;
          uStack_ac = CONCAT22(uStack_ac._2_2_,*(undefined2 *)(param_3 + 2));
          puVar6 = (undefined4 *)local_f4[3];
          fStack_b0 = param_3[1];
          uStack_9c = 7;
          if (puVar6 < (undefined4 *)local_f4[4]) {
            local_f4[3] = (float)(puVar6 + 0x10);
            if (puVar6 != (undefined4 *)0x0) {
              ppvVar12 = &pvStack_b8;
              for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
                *puVar6 = *ppvVar12;
                ppvVar12 = ppvVar12 + 1;
                puVar6 = puVar6 + 1;
              }
            }
          }
          else {
            FUN_00a8f4d0(local_f4 + 2,puVar6,&pvStack_b8);
          }
          pfVar3 = local_f4;
          FUN_00652f00((void *)(*param_6 + 8),*(undefined4 **)(*param_6 + 0xc),
                       (undefined4 *)local_f4[2],(undefined4 *)local_f4[3]);
          (**(code **)((int)*pfVar3 + 4))();
          if (local_d0 != (float *)0x0) {
            FUN_004e44e0((int)local_d0);
          }
          if (local_fc != (int *)0x0) {
            (**(code **)(*local_fc + 4))();
          }
          (**(code **)(*local_f0 + 4))();
          if (local_100 != (undefined4 *)0x0) {
            iVar11 = local_100[1];
            local_100[1] = iVar11 + -1;
            if (iVar11 + -1 == 0) {
              local_100[1] = 1;
              (**(code **)*local_100)(1);
            }
          }
          return 0;
        }
        auVar17._0_4_ = DAT_00fab218 * (float)auStack_40._0_4_;
        auVar17._4_4_ = DAT_00fab218 * (float)auStack_40._0_4_;
        auVar17._8_4_ = DAT_00fab218 * (float)auStack_40._0_4_;
        auVar17._12_4_ = DAT_00fab218 * (float)auStack_40._0_4_;
        auVar2._4_4_ = auStack_40._0_4_;
        auVar2._0_4_ = auStack_40._0_4_;
        auVar2._8_4_ = auStack_40._0_4_;
        auVar2._12_4_ = auStack_40._0_4_;
        auVar18 = maxps(auVar17,auVar2);
        auVar19._4_4_ = -(uint)(auVar18._4_4_ <= _DAT_00fee19c);
        auVar19._0_4_ = -(uint)(auVar18._0_4_ <= _DAT_00fee19c);
        auVar19._8_4_ = -(uint)(auVar18._8_4_ <= _DAT_00fee19c);
        auVar19._12_4_ = -(uint)(auVar18._12_4_ <= _DAT_00fee19c);
        iVar11 = movmskps(uVar10,auVar19);
        if (iVar11 == 0xf) goto LAB_006629a4;
        local_cc = local_d0;
        pvStack_b8 = pvStack_e0;
        fStack_b4 = fStack_dc;
        fStack_b0 = fStack_d8;
        uStack_a4 = 0;
        fStack_a0 = 0.0;
        uStack_9c = 0;
        uStack_ac = 0;
        uStack_a8 = 0;
        FUN_00656a10(&local_d0,&pvStack_b8);
        iVar11 = FUN_0064ee10(local_100,(int)local_f4);
        pvStack_78 = *(void **)(iVar11 + 0x18);
        fStack_74 = *(float *)(iVar11 + 0x1c);
        fVar22 = (float)pvStack_e0 - (float)pvStack_78;
        fVar24 = fStack_dc - fStack_74;
        auVar20._0_4_ = fVar24 * fVar24 + fVar22 * fVar22;
        fStack_70 = *(float *)(iVar11 + 0x20);
        auVar20._4_4_ = auVar20._0_4_;
        auVar20._8_4_ = auVar20._0_4_;
        auVar20._12_4_ = auVar20._0_4_;
        auStack_20 = sqrtps(auVar20,auVar20);
        if (_DAT_00f9b5b4 < (float)auStack_20._0_4_) {
          fVar16 = DAT_00f998f8 / ((float)auStack_20._0_4_ * DAT_0103fd88);
          fStack_b4 = fVar16 * fVar24 + fStack_74;
          pvStack_b8 = (void *)(fVar16 * fVar22 + (float)pvStack_78);
          aiStack_50[0] = 0;
          aiStack_50[1] = 0;
          aiStack_50[2] = 0;
          uStack_a4 = 0;
          pcStack_44 = "Routing/runStartList";
          fStack_a0 = DAT_00f998f8;
          uStack_ac = 0;
          uStack_a8 = 0;
          fStack_b0 = fStack_70;
          pvStack_78 = pvStack_b8;
          fStack_74 = fStack_b4;
          FUN_0062b010(aiStack_50,&pvStack_b8);
          piVar7 = local_fc;
          if (local_fc != (int *)0x0) {
            local_fc = (int *)0x0;
            (**(code **)(*piVar7 + 4))();
          }
          uVar4 = RouteGraph_PlanAcrossLotsAndRegions
                            (this,param_1,(int *)&local_d0,(float *)&pvStack_78,1.0,aiStack_50,
                             (int *)&local_fc,(undefined4 *)0x0,(uint *)0x0,param_9,param_10,
                             param_11,(int *)0x0);
          if (uVar4 == 0) {
            FUN_00652f00((void *)(*param_6 + 8),*(undefined4 **)(*param_6 + 0xc),
                         (undefined4 *)local_fc[2],(undefined4 *)local_fc[3]);
            pvStack_e0 = pvStack_78;
            fStack_dc = fStack_74;
            fStack_d8 = fStack_70;
            fVar13 = fStack_70;
          }
          if (aiStack_50[0] != 0) {
            FUN_004e44e0(aiStack_50[0]);
          }
        }
        puVar6 = local_100;
        local_ec = (void *)param_3[2];
        fStack_dc = (DAT_00f998f8 / (float)auStack_40._0_4_) * (float)local_d4 + fStack_dc;
        pvStack_e0 = (void *)((DAT_00f998f8 / (float)auStack_40._0_4_) * (float)local_c0[0] +
                             (float)pvStack_e0);
        uVar4 = (int)fVar13 - (int)local_ec >> 0x1f;
        fStack_30 = (float)(int)(((int)fVar13 - (int)local_ec ^ uVar4) - uVar4) * DAT_00fa2b9c;
        auVar21._0_4_ =
             ((float)pvStack_e0 - *param_3) * ((float)pvStack_e0 - *param_3) +
             (fStack_dc - param_3[1]) * (fStack_dc - param_3[1]);
        auVar21._4_4_ = auVar21._0_4_;
        auVar21._8_4_ = auVar21._0_4_;
        auVar21._12_4_ = auVar21._0_4_;
        auVar18 = sqrtps(auVar21,auVar21);
        pvStack_b8 = auVar18._0_4_;
        if ((float)pvStack_b8 < fStack_30) {
          if ((int)local_ec < (int)fVar13) {
            fVar13 = (float)((int)fVar13 + -1);
            fStack_d8 = fVar13;
          }
          else {
            fVar13 = (float)((int)fVar13 + 1);
            fStack_d8 = fVar13;
          }
        }
        local_e8[0] = (void *)((int)local_e8[0] + -1);
        if (local_e8[0] == (void *)0x0) {
          if (local_100 != (undefined4 *)0x0) {
            local_100 = (undefined4 *)0x0;
            iVar11 = puVar6[1];
            puVar6[1] = iVar11 + -1;
            if (iVar11 + -1 == 0) {
              puVar6[1] = 1;
              (**(code **)*puVar6)(1);
            }
          }
          if (local_d0 != (float *)0x0) {
            FUN_004e44e0((int)local_d0);
          }
          if (local_fc != (int *)0x0) {
            (**(code **)(*local_fc + 4))();
          }
        }
        else {
          local_cc = local_d0;
          uStack_a4 = 0;
          fStack_a0 = 0.0;
          uStack_9c = 0;
          uStack_ac = 0;
          uStack_a8 = 0;
          pvStack_b8 = pvStack_e0;
          fStack_b4 = fStack_dc;
          fStack_b0 = fVar13;
          FUN_00656a10(&local_d0,&pvStack_b8);
          puVar6 = local_100;
          if (local_100 != (undefined4 *)0x0) {
            local_100 = (undefined4 *)0x0;
            iVar11 = puVar6[1];
            puVar6[1] = iVar11 + -1;
            if (iVar11 + -1 == 0) {
              puVar6[1] = 1;
              (**(code **)*puVar6)(1);
            }
          }
          piVar7 = local_fc;
          if (local_fc != (int *)0x0) {
            local_fc = (int *)0x0;
            (**(code **)(*piVar7 + 4))();
          }
          uVar4 = RouteGraph_PlanAcrossLotsAndRegions
                            (this,param_1,(int *)&local_d0,param_3,param_4,param_5,(int *)&local_fc,
                             param_7,param_8,param_9,param_10,param_11,(int *)&local_100);
          if (uVar4 == 0) {
            FUN_00652f00((void *)(*param_6 + 8),*(undefined4 **)(*param_6 + 0xc),
                         (undefined4 *)local_fc[2],(undefined4 *)local_fc[3]);
            if (local_d0 != (float *)0x0) {
              FUN_004e44e0((int)local_d0);
            }
            if (local_fc != (int *)0x0) {
              (**(code **)(*local_fc + 4))();
            }
            (**(code **)(*local_f0 + 4))();
            if (local_100 != (undefined4 *)0x0) {
              iVar11 = local_100[1];
              local_100[1] = iVar11 + -1;
              if (iVar11 + -1 == 0) {
                local_100[1] = 1;
                (**(code **)*local_100)(1);
              }
            }
            return 0;
          }
          if (local_d0 != (float *)0x0) {
            FUN_004e44e0((int)local_d0);
          }
          if (local_fc != (int *)0x0) {
            (**(code **)(*local_fc + 4))();
          }
        }
      } while( true );
    }
  }
  if (pfVar3 == (float *)0x5) {
    pfVar1 = (float *)*param_5;
    local_e8[0] = (void *)(param_5[1] - (int)pfVar1);
    if (1 < (uint)((int)local_e8[0] / 0x1c)) {
      if ((int)local_e8[0] / 0x1c != 2) {
        local_60 = (undefined4 *)0x0;
        local_5c = 0;
        local_58 = 0;
        local_68 = &local_68;
        local_54 = "Routing/PlanPath/temp";
        local_64 = local_68;
        local_ec = LotSpatialIndex_FindContainingLotAtWorldXZ
                             (*(void **)((int)this + 0xc),*param_3,param_3[1]);
        local_e8[0] = (void *)((uint)local_e8[0] & 0xffffff00);
        FUN_004a4550(local_6c,local_e8,(uint *)&local_ec);
        pfVar3 = (float *)*param_5;
        local_f4 = (float *)param_5[1];
        if (pfVar3 != local_f4) {
          do {
            local_e8[0] = LotSpatialIndex_FindContainingLotAtWorldXZ
                                    (*(void **)((int)this + 0xc),*pfVar3,pfVar3[1]);
            piVar7 = (int *)FUN_005ca6f0(local_6c,(int *)&local_f0,(uint *)local_e8);
            if ((undefined4 ****)*piVar7 == &local_68) {
              uVar4 = RouteGraph_PlanAcrossLotsAndRegions
                                (this,param_1,param_2,pfVar3,pfVar3[6],param_5,param_6,param_7,
                                 param_8,param_9,param_10,param_11,param_12);
              if (uVar4 == 0) {
                FUN_008b19b0(local_60);
                return 0;
              }
              local_ec = (void *)((uint)local_ec & 0xffffff00);
              FUN_004a4550(local_6c,local_c0,(uint *)local_e8);
            }
            pfVar3 = pfVar3 + 7;
          } while (pfVar3 != local_f4);
        }
        FUN_008b19b0(local_60);
        return 5;
      }
      if (((*param_3 == *pfVar1) && (param_3[1] == pfVar1[1])) && (param_3[2] == pfVar1[2])) {
        uVar4 = RouteGraph_PlanAcrossLotsAndRegions
                          (this,param_1,param_2,pfVar1 + 7,pfVar1[0xd],param_5,param_6,param_7,
                           param_8,param_9,param_10,param_11,param_12);
        return uVar4;
      }
      uVar4 = RouteGraph_PlanAcrossLotsAndRegions
                        (this,param_1,param_2,pfVar1,pfVar1[6],param_5,param_6,param_7,param_8,
                         param_9,param_10,param_11,param_12);
      return uVar4;
    }
  }
  return (uint)pfVar3;
}

