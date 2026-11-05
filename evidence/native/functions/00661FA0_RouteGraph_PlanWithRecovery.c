/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
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
  uint uVar3;
  void *pvVar4;
  undefined4 *puVar5;
  int *piVar6;
  undefined4 uVar7;
  char cVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 uVar9;
  int iVar10;
  void **ppvVar11;
  float *pfVar12;
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
  undefined4 ****local_68;
  undefined4 ****local_64;
  undefined4 *local_60;
  undefined4 local_5c;
  undefined4 local_58;
  char *local_54;
  void *pvStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  char *pcStack_44;
  undefined1 auStack_40 [16];
  float fStack_30;
  undefined1 auStack_20 [16];
  
  local_f4 = (float *)RouteGraph_PlanAcrossLotsAndRegions
                                (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,
                                 param_8,param_9,param_10,param_11,param_12);
  if (local_f4 == (float *)0x8) {
    return 8;
  }
  if (local_f4 == (float *)0x6) {
    param_9 = param_9 | 0x800000;
    local_f4 = (float *)RouteGraph_PlanAcrossLotsAndRegions
                                  (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,
                                   param_8,param_9,param_10,param_11,param_12);
  }
  pfVar12 = local_f4;
  if (local_f4 != (float *)0x0) {
    pfVar1 = (float *)*param_2;
    if (pfVar1 != (float *)param_2[1]) {
      local_f0 = (int *)*pfVar1;
      local_c0[0] = (undefined4 *)pfVar1[1];
      uVar3 = FUN_0066dc30(*(void **)((int)this + 0x14),*(int *)((int)this + 0xc),(float)local_f0,0,
                           (float)local_c0[0]);
      if ((*(uint *)(*(int *)((int)this + 0x14) + 0xc) <= uVar3) ||
         (*(char *)(*(int *)(*(int *)((int)this + 0x14) + 0x1c) + uVar3 * 2) == '\0')) {
        fVar14 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_f0,(float)local_c0[0],0,'\0',
                              '\0',(char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,
                              (undefined1 *)0x0,'\x01');
        local_e8[0] = (void *)(float)fVar14;
        fVar14 = WorldWater_GetSeaLevel(*(int *)((int)this + 0xc));
        if (((float10)(float)local_e8[0] <= fVar14) ||
           (pvVar4 = FUN_00c60880(*(void **)((int)this + 0xc),(float)local_f0,(float)local_c0[0],
                                  '\0'), pvVar4 != (void *)0x0)) {
          piVar6 = local_f0;
          puVar5 = (undefined4 *)0x0;
          cVar8 = '\0';
          local_d4 = (undefined4 *)0x0;
          local_f5 = '\0';
          local_f0 = (int *)0x1;
          puVar23 = local_c0[0];
          local_c0[0] = (undefined4 *)0xc0800000;
          do {
            if (cVar8 != '\0') break;
            local_e8[0] = (void *)0x0;
            do {
              if (cVar8 != '\0') break;
              local_ec = (void *)0x0;
              if (0 < (int)local_f0) {
                do {
                  if (cVar8 != '\0') break;
                  iVar10 = *(int *)((int)this + 0xc);
                  local_fc = (int *)((float)local_c0[0] + (float)piVar6);
                  local_100 = (undefined4 *)((float)puVar5 + (float)puVar23);
                  if ((((*(float *)(iVar10 + 0xb4) <= (float)local_fc) &&
                       (*(float *)(iVar10 + 0xb8) <= (float)local_100)) &&
                      ((float)local_fc < *(float *)(iVar10 + 0xbc))) &&
                     ((float)local_100 < *(float *)(iVar10 + 0xc4) + *(float *)(iVar10 + 0xc0))) {
                    uVar3 = FUN_0066dc30(*(void **)((int)this + 0x14),iVar10,(float)local_fc,0,
                                         (float)local_100);
                    if ((uVar3 < *(uint *)(*(int *)((int)this + 0x14) + 0xc)) &&
                       (*(char *)(*(int *)(*(int *)((int)this + 0x14) + 0x1c) + uVar3 * 2) != '\0'))
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
                      if (local_d0 != (float *)0x0) {
                        Memory_FreeIfNonNull(local_d0);
                      }
                    }
                    puVar5 = local_d4;
                  }
                  local_ec = (void *)((int)local_ec + 1);
                  piVar6 = local_fc;
                  puVar23 = local_100;
                  cVar8 = local_f5;
                } while ((int)local_ec < (int)local_f0);
              }
              if (local_e8[0] == (void *)0x0) {
                puVar15 = (undefined4 *)(-0.0 - (float)local_c0[0]);
                local_c0[0] = (undefined4 *)0x0;
              }
              else {
                puVar15 = (undefined4 *)0x0;
                local_c0[0] = puVar5;
              }
              puVar5 = puVar15;
              local_e8[0] = (void *)((int)local_e8[0] + 1);
              local_d4 = puVar5;
            } while ((int)local_e8[0] < 2);
            local_f0 = (int *)((int)local_f0 + 1);
            pfVar12 = local_f4;
          } while ((int)local_f0 < 10);
        }
      }
    }
    if (((pfVar12 != (float *)0x0) && ((param_9 & 0x400) != 0)) && (param_6 != (int *)0x0)) {
      local_100 = (undefined4 *)0x0;
      if (param_12 == (int *)0x0) {
        piVar6 = FUN_009348e0((int *)&local_100);
        RouteGraph_PlanAcrossLotsAndRegions
                  (this,param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,
                   param_10,param_11,piVar6);
      }
      else {
        FUN_00566590(&local_100,(undefined4 *)*param_12);
      }
      puVar5 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
      if (puVar5 == (undefined4 *)0x0) {
        piVar6 = (int *)0x0;
        local_f0 = (int *)0x0;
      }
      else {
        piVar6 = (int *)FUN_0064ee20(puVar5);
        local_f0 = piVar6;
        if (piVar6 != (int *)0x0) {
          (**(code **)*piVar6)();
        }
      }
      *param_6 = (int)piVar6;
      (**(code **)*piVar6)();
      pfVar12 = (float *)*param_2;
      pvStack_e0 = (void *)*pfVar12;
      fStack_d8 = pfVar12[2];
      fStack_dc = pfVar12[1];
      local_e8[0] = (void *)0x3;
      do {
        local_fc = (int *)0x0;
        local_d0 = (float *)0x0;
        local_cc = (float *)0x0;
        local_c8 = 0;
        local_c4 = "Routing/runStartList";
        local_f4 = (void *)0xffffffff;
        uVar9 = 0;
        if (local_100 != (undefined4 *)0x0) {
          local_ec = (void *)FUN_0064edf0((int)local_100);
          pvVar4 = (void *)0x0;
          uVar9 = extraout_ECX;
          if (local_ec != (void *)0x0) {
            do {
              piVar6 = (int *)FUN_0064ee10(local_100,(int)pvVar4);
              uVar9 = extraout_ECX_00;
              if ((*piVar6 != 0x14) &&
                 (uVar7 = FUN_00652030(*(void **)((int)this + 0xc),piVar6), uVar9 = extraout_ECX_01,
                 (char)uVar7 != '\0')) {
                local_f4 = pvVar4;
                break;
              }
              pvVar4 = (void *)((int)pvVar4 + 1);
            } while (pvVar4 < local_ec);
          }
        }
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
          puVar5 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
          if (puVar5 == (undefined4 *)0x0) {
            local_f4 = (float *)0x0;
            piVar6 = (int *)0x0;
          }
          else {
            piVar6 = (int *)FUN_0064ee20(puVar5);
            local_f4 = (float *)piVar6;
            if (piVar6 != (int *)0x0) {
              (**(code **)*piVar6)();
            }
          }
          uStack_a8 = 0;
          uStack_a4 = 0xc479c000;
          fStack_a0 = 1.0;
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
          puVar5 = (undefined4 *)piVar6[3];
          uStack_ac._0_2_ = fStack_d8._0_2_;
          fStack_b0 = fStack_dc;
          uStack_9c = 6;
          if (puVar5 < (undefined4 *)piVar6[4]) {
            piVar6[3] = (int)(puVar5 + 0x10);
            if (puVar5 != (undefined4 *)0x0) {
              ppvVar11 = &pvStack_b8;
              for (iVar10 = 0x10; iVar10 != 0; iVar10 = iVar10 + -1) {
                *puVar5 = *ppvVar11;
                ppvVar11 = ppvVar11 + 1;
                puVar5 = puVar5 + 1;
              }
            }
          }
          else {
            FUN_00a8f4d0(piVar6 + 2,puVar5,&pvStack_b8);
          }
          local_e8[0] = (void *)*param_3;
          pvStack_b8 = local_e8[0];
          fVar14 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_e8[0],param_3[1],
                                (int)param_3[2],'\x01','\0',(char *)0x0,(undefined1 *)0x0,
                                (char *)0x0,(char *)0x0,(undefined1 *)0x0,'\x01');
          fStack_b4 = (float)fVar14;
          uStack_ac = CONCAT22(uStack_ac._2_2_,*(undefined2 *)(param_3 + 2));
          puVar5 = (undefined4 *)local_f4[3];
          fStack_b0 = param_3[1];
          uStack_9c = 7;
          if (puVar5 < (undefined4 *)local_f4[4]) {
            local_f4[3] = (float)(puVar5 + 0x10);
            if (puVar5 != (undefined4 *)0x0) {
              ppvVar11 = &pvStack_b8;
              for (iVar10 = 0x10; iVar10 != 0; iVar10 = iVar10 + -1) {
                *puVar5 = *ppvVar11;
                ppvVar11 = ppvVar11 + 1;
                puVar5 = puVar5 + 1;
              }
            }
          }
          else {
            FUN_00a8f4d0(local_f4 + 2,puVar5,&pvStack_b8);
          }
          pfVar12 = local_f4;
          FUN_00652f00((void *)(*param_6 + 8),*(undefined4 **)(*param_6 + 0xc),
                       (undefined4 *)local_f4[2],(undefined4 *)local_f4[3]);
          (**(code **)((int)*pfVar12 + 4))();
          if (local_d0 != (float *)0x0) {
            Memory_FreeIfNonNull(local_d0);
          }
          if (local_fc != (int *)0x0) {
            (**(code **)(*local_fc + 4))();
          }
          (**(code **)(*local_f0 + 4))();
          if (local_100 != (undefined4 *)0x0) {
            iVar10 = local_100[1];
            local_100[1] = iVar10 + -1;
            if (iVar10 + -1 == 0) {
              local_100[1] = 1;
              (**(code **)*local_100)(1);
            }
          }
          return 0;
        }
        auVar17._0_4_ = (float)auStack_40._0_4_ * -1.0;
        auVar17._4_4_ = (float)auStack_40._0_4_ * -1.0;
        auVar17._8_4_ = (float)auStack_40._0_4_ * -1.0;
        auVar17._12_4_ = (float)auStack_40._0_4_ * -1.0;
        auVar2._4_4_ = auStack_40._0_4_;
        auVar2._0_4_ = auStack_40._0_4_;
        auVar2._8_4_ = auStack_40._0_4_;
        auVar2._12_4_ = auStack_40._0_4_;
        auVar18 = maxps(auVar17,auVar2);
        auVar19._4_4_ = -(uint)(auVar18._4_4_ <= 1.1920929e-07);
        auVar19._0_4_ = -(uint)(auVar18._0_4_ <= 1.1920929e-07);
        auVar19._8_4_ = -(uint)(auVar18._8_4_ <= 1.1920929e-07);
        auVar19._12_4_ = -(uint)(auVar18._12_4_ <= 1.1920929e-07);
        iVar10 = movmskps(uVar9,auVar19);
        if (iVar10 == 0xf) goto LAB_006629a4;
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
        iVar10 = FUN_0064ee10(local_100,(int)local_f4);
        pvStack_78 = *(void **)(iVar10 + 0x18);
        fStack_74 = *(float *)(iVar10 + 0x1c);
        fVar22 = (float)pvStack_e0 - (float)pvStack_78;
        fVar24 = fStack_dc - fStack_74;
        auVar20._0_4_ = fVar24 * fVar24 + fVar22 * fVar22;
        fStack_70 = *(float *)(iVar10 + 0x20);
        auVar20._4_4_ = auVar20._0_4_;
        auVar20._8_4_ = auVar20._0_4_;
        auVar20._12_4_ = auVar20._0_4_;
        auStack_20 = sqrtps(auVar20,auVar20);
        if (0.5 < (float)auStack_20._0_4_) {
          fVar16 = 1.0 / ((float)auStack_20._0_4_ * 2.0);
          fStack_b4 = fVar16 * fVar24 + fStack_74;
          pvStack_b8 = (void *)(fVar16 * fVar22 + (float)pvStack_78);
          pvStack_50 = (void *)0x0;
          uStack_4c = 0;
          uStack_48 = 0;
          uStack_a4 = 0;
          pcStack_44 = "Routing/runStartList";
          fStack_a0 = 1.0;
          uStack_ac = 0;
          uStack_a8 = 0;
          fStack_b0 = fStack_70;
          pvStack_78 = pvStack_b8;
          fStack_74 = fStack_b4;
          FUN_0062b010(&pvStack_50,&pvStack_b8);
          piVar6 = local_fc;
          if (local_fc != (int *)0x0) {
            local_fc = (int *)0x0;
            (**(code **)(*piVar6 + 4))();
          }
          uVar3 = RouteGraph_PlanAcrossLotsAndRegions
                            (this,param_1,(int *)&local_d0,(float *)&pvStack_78,1.0,
                             (int *)&pvStack_50,(int *)&local_fc,(undefined4 *)0x0,(uint *)0x0,
                             param_9,param_10,param_11,(int *)0x0);
          if (uVar3 == 0) {
            FUN_00652f00((void *)(*param_6 + 8),*(undefined4 **)(*param_6 + 0xc),
                         (undefined4 *)local_fc[2],(undefined4 *)local_fc[3]);
            pvStack_e0 = pvStack_78;
            fStack_dc = fStack_74;
            fStack_d8 = fStack_70;
            fVar13 = fStack_70;
          }
          if (pvStack_50 != (void *)0x0) {
            Memory_FreeIfNonNull(pvStack_50);
          }
        }
        puVar5 = local_100;
        local_ec = (void *)param_3[2];
        fStack_dc = (1.0 / (float)auStack_40._0_4_) * (float)local_d4 + fStack_dc;
        pvStack_e0 = (void *)((1.0 / (float)auStack_40._0_4_) * (float)local_c0[0] +
                             (float)pvStack_e0);
        uVar3 = (int)fVar13 - (int)local_ec >> 0x1f;
        fStack_30 = (float)(int)(((int)fVar13 - (int)local_ec ^ uVar3) - uVar3) * 3.0;
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
          }
          else {
            fVar13 = (float)((int)fVar13 + 1);
          }
          fStack_d8 = fVar13;
        }
        local_e8[0] = (void *)((int)local_e8[0] + -1);
        if (local_e8[0] == (void *)0x0) {
          if (local_100 != (undefined4 *)0x0) {
            local_100 = (undefined4 *)0x0;
            iVar10 = puVar5[1];
            puVar5[1] = iVar10 + -1;
            if (iVar10 + -1 == 0) {
              puVar5[1] = 1;
              (**(code **)*puVar5)(1);
            }
          }
          if (local_d0 != (float *)0x0) {
            Memory_FreeIfNonNull(local_d0);
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
          puVar5 = local_100;
          if (local_100 != (undefined4 *)0x0) {
            local_100 = (undefined4 *)0x0;
            iVar10 = puVar5[1];
            puVar5[1] = iVar10 + -1;
            if (iVar10 + -1 == 0) {
              puVar5[1] = 1;
              (**(code **)*puVar5)(1);
            }
          }
          piVar6 = local_fc;
          if (local_fc != (int *)0x0) {
            local_fc = (int *)0x0;
            (**(code **)(*piVar6 + 4))();
          }
          uVar3 = RouteGraph_PlanAcrossLotsAndRegions
                            (this,param_1,(int *)&local_d0,param_3,param_4,param_5,(int *)&local_fc,
                             param_7,param_8,param_9,param_10,param_11,(int *)&local_100);
          if (uVar3 == 0) {
            FUN_00652f00((void *)(*param_6 + 8),*(undefined4 **)(*param_6 + 0xc),
                         (undefined4 *)local_fc[2],(undefined4 *)local_fc[3]);
            if (local_d0 != (float *)0x0) {
              Memory_FreeIfNonNull(local_d0);
            }
            if (local_fc != (int *)0x0) {
              (**(code **)(*local_fc + 4))();
            }
            (**(code **)(*local_f0 + 4))();
            if (local_100 != (undefined4 *)0x0) {
              iVar10 = local_100[1];
              local_100[1] = iVar10 + -1;
              if (iVar10 + -1 == 0) {
                local_100[1] = 1;
                (**(code **)*local_100)(1);
              }
            }
            return 0;
          }
          if (local_d0 != (float *)0x0) {
            Memory_FreeIfNonNull(local_d0);
          }
          if (local_fc != (int *)0x0) {
            (**(code **)(*local_fc + 4))();
          }
        }
      } while( true );
    }
  }
  if (pfVar12 == (float *)0x5) {
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
        pfVar12 = (float *)*param_5;
        local_f4 = (float *)param_5[1];
        if (pfVar12 != local_f4) {
          do {
            local_e8[0] = LotSpatialIndex_FindContainingLotAtWorldXZ
                                    (*(void **)((int)this + 0xc),*pfVar12,pfVar12[1]);
            piVar6 = (int *)FUN_005ca6f0(local_6c,(int *)&local_f0,(uint *)local_e8);
            if ((undefined4 *****)*piVar6 == &local_68) {
              uVar3 = RouteGraph_PlanAcrossLotsAndRegions
                                (this,param_1,param_2,pfVar12,pfVar12[6],param_5,param_6,param_7,
                                 param_8,param_9,param_10,param_11,param_12);
              if (uVar3 == 0) {
                FUN_008b19b0(local_60);
                return 0;
              }
              local_ec = (void *)((uint)local_ec & 0xffffff00);
              FUN_004a4550(local_6c,local_c0,(uint *)local_e8);
            }
            pfVar12 = pfVar12 + 7;
          } while (pfVar12 != local_f4);
        }
        FUN_008b19b0(local_60);
        return 5;
      }
      if (((*param_3 == *pfVar1) && (param_3[1] == pfVar1[1])) && (param_3[2] == pfVar1[2])) {
        uVar3 = RouteGraph_PlanAcrossLotsAndRegions
                          (this,param_1,param_2,pfVar1 + 7,pfVar1[0xd],param_5,param_6,param_7,
                           param_8,param_9,param_10,param_11,param_12);
        return uVar3;
      }
      uVar3 = RouteGraph_PlanAcrossLotsAndRegions
                        (this,param_1,param_2,pfVar1,pfVar1[6],param_5,param_6,param_7,param_8,
                         param_9,param_10,param_11,param_12);
      return uVar3;
    }
  }
  return (uint)pfVar12;
}

