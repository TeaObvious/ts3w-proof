/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 7; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* WARNING: Removing unreachable block (ram,0x00660324) */
/* Analyst static routing contract: Numeric EAX graph status. Resolves start and goal lots, signed
   levels and heights. Can reject crossing a lot with+0x4bc flag(status8). Handles same-lot path
   through006418d0, direct short connection when eligible, and world/region waypoint graph006764c0
   with lot lead-in/out and water-path00671da0. Goal-order score is original(weight*DAT_00f99970 -
   planar distanceSquared); descending comparator must be checked separately before calling it 'best
   first'. Returns0 only after path assembly/validation; failure statuses1/4/5/6/7/8 remain numeric
   native graph codes, NOT managed RoutePlanResultType numbers. Full leaf path-search/portal
   algorithms and all actor capability flags remain open. */

uint __thiscall
RouteGraph_PlanAcrossLotsAndRegions
          (void *this,uint *param_1,int *param_2,float *param_3,float param_4,int *param_5,
          int *param_6,undefined4 *param_7,uint *param_8,uint param_9,void *param_10,
          undefined *param_11,int *param_12)

{
  short sVar1;
  short sVar2;
  uint *puVar3;
  ulonglong uVar4;
  float *pfVar5;
  char cVar6;
  char cVar7;
  undefined1 uVar8;
  int *piVar9;
  undefined4 *puVar10;
  int iVar11;
  uint uVar12;
  void *pvVar13;
  undefined4 uVar14;
  int *piVar15;
  undefined3 extraout_var;
  int *piVar16;
  undefined3 extraout_var_00;
  uint uVar17;
  byte bVar19;
  byte bVar18;
  int iVar20;
  float *pfVar21;
  float **ppfVar22;
  undefined4 *puVar23;
  int *piVar24;
  bool bVar25;
  float10 fVar26;
  float fVar27;
  float fVar28;
  float *pfVar29;
  float **ppfVar30;
  undefined *puVar31;
  float **ppfVar32;
  undefined1 *puVar33;
  char local_36d;
  int local_36c;
  int *local_368;
  float *local_364;
  float *local_360;
  int *local_35c;
  char local_355;
  float *local_354;
  int *piStack_350;
  int *local_34c;
  float *local_348;
  float *local_344;
  float *local_340;
  float *local_33c;
  float *local_338;
  float *local_334;
  int *local_330;
  int local_32c;
  int *local_328;
  float *local_324;
  undefined4 *local_320;
  undefined4 local_31c;
  char *local_318;
  int *local_314;
  float *local_310;
  undefined4 *local_30c;
  undefined4 *local_308;
  undefined4 *local_304;
  char *local_300;
  float *local_2fc;
  uint uStack_2f8;
  float *pfStack_2f4;
  float *local_2f0;
  float local_2ec;
  float *local_2dc;
  float *local_2d8;
  float *local_2d4;
  float *apfStack_2d0 [3];
  undefined4 uStack_2c4;
  undefined4 uStack_2c0;
  undefined4 uStack_2bc;
  float fStack_2b8;
  undefined4 auStack_2b4 [4];
  undefined4 auStack_2a4 [3];
  int aiStack_298 [3];
  float *local_28c;
  float local_288;
  float *local_284;
  float *local_280;
  float *pfStack_27c;
  float *pfStack_278;
  undefined4 uStack_274;
  char *pcStack_270;
  float *local_26c;
  float *local_268;
  float *local_264;
  float *local_260;
  undefined4 local_25c;
  char *local_258;
  undefined4 local_254;
  undefined4 local_250;
  float local_24c;
  float *local_248;
  float *local_244;
  undefined4 local_240;
  float *local_234;
  float *local_230;
  undefined4 local_22c;
  float *pfStack_228;
  int *piStack_224;
  float *pfStack_220;
  float *local_21c;
  float *local_218;
  float local_214;
  float *pfStack_210;
  undefined4 uStack_20c;
  undefined4 uStack_208;
  char *pcStack_204;
  void *pvStack_200;
  undefined4 uStack_1fc;
  undefined4 uStack_1f8;
  char *pcStack_1f4;
  uint local_1f0;
  short local_1ec;
  short sStack_1ea;
  float local_1e8;
  float local_1e4;
  float local_1e0;
  undefined1 local_1d8 [12];
  undefined4 *local_1cc;
  short local_1bc;
  short local_1ba;
  float local_1b8;
  float local_1b4;
  float local_1b0;
  undefined1 local_1a8 [12];
  undefined4 *local_19c;
  void *local_168;
  uint *local_164;
  undefined4 local_150;
  undefined4 local_148;
  undefined4 local_144;
  undefined4 local_140;
  float local_138;
  float local_134;
  float local_130;
  float *pfStack_114;
  undefined4 uStack_110;
  undefined4 uStack_10c;
  char *pcStack_108;
  float *pfStack_104;
  float *pfStack_100;
  float fStack_fc;
  float *pfStack_f8;
  float *pfStack_f4;
  float *pfStack_f0;
  float *pfStack_ec;
  undefined1 local_e8 [120];
  undefined4 auStack_70 [7];
  undefined4 uStack_54;
  undefined4 uStack_38;
  uint *puStack_30;
  void *pvStack_2c;
  int *piStack_1c;
  
  local_338 = *(float **)*param_2;
  local_334 = (float *)((undefined4 *)*param_2)[1];
  local_360 = (float *)*param_3;
  local_354 = (float *)param_3[1];
  piVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ
                     (*(void **)((int)this + 0xc),(float)local_338,(float)local_334);
  local_330 = piVar9;
  local_328 = LotSpatialIndex_FindContainingLotAtWorldXZ
                        (*(void **)((int)this + 0xc),(float)local_360,(float)local_354);
  if ((((piVar9 == (int *)0x0) || (piVar9[0x102] != 1)) || (piVar9[0x103] != 0x50)) ||
     (*(int *)(*param_2 + 8) != 0)) {
    fVar26 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_338,(float)local_334,
                          *(int *)(*param_2 + 8),'\x01','\0',(char *)0x0,(undefined1 *)0x0,
                          (char *)0x0,(char *)0x0,(undefined1 *)0x0,'\x01');
  }
  else {
    fVar26 = WorldSurface_QueryHeight
                       (*(void **)((int)this + 0xc),(float)local_338,(float)local_334,0,'\x01','\0',
                        (undefined1 *)0x0,(undefined1 *)0x0,'\0','\x01');
  }
  local_2dc = (float *)(float)fVar26;
  if (((local_328 == (int *)0x0) || (local_328[0x102] != 1)) ||
     ((local_328[0x103] != 0x50 || (param_3[2] != 0.0)))) {
    fVar26 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_360,(float)local_354,
                          (int)param_3[2],'\x01','\0',(char *)0x0,(undefined1 *)0x0,(char *)0x0,
                          (char *)0x0,(undefined1 *)0x0,'\x01');
  }
  else {
    fVar26 = WorldSurface_QueryHeight
                       (*(void **)((int)this + 0xc),(float)local_360,(float)local_354,0,'\x01','\0',
                        (undefined1 *)0x0,(undefined1 *)0x0,'\0','\x01');
  }
  local_2fc = (float *)(float)fVar26;
  local_32c = 0;
  if (param_8 == (uint *)0x0) {
    local_348 = (float *)0xffffffff;
  }
  else {
    local_348 = (float *)*param_8;
  }
  local_310 = (float *)((param_5[1] - *param_5) / 0x1c);
  if (param_10 == (void *)0x0) {
LAB_0065e75c:
    if ((piVar9 != local_328) &&
       (((piVar9 != (int *)0x0 && ((char)piVar9[0x12f] != '\0')) ||
        ((local_328 != (int *)0x0 && ((char)local_328[0x12f] != '\0')))))) {
      return 8;
    }
  }
  else {
    if (piVar9 != (int *)0x0) {
      local_2ec = (float)piVar9[0x13];
      local_2f0 = (float *)piVar9[0x12];
      puVar10 = *(undefined4 **)((int)param_10 + 4);
      if (puVar10 < *(undefined4 **)((int)param_10 + 8)) {
        *(undefined4 **)((int)param_10 + 4) = puVar10 + 2;
        if (puVar10 != (undefined4 *)0x0) {
          *puVar10 = local_2f0;
          puVar10[1] = local_2ec;
        }
      }
      else {
        FUN_00572360(param_10,puVar10,&local_2f0);
      }
    }
    if (local_328 == (int *)0x0) goto LAB_0065e75c;
    if (local_328 != piVar9) {
      local_2f0 = (float *)local_328[0x12];
      local_2ec = (float)local_328[0x13];
      FUN_00572500(param_10,&local_2f0);
      goto LAB_0065e75c;
    }
  }
  local_36c = *(int *)((int)this + 8);
  if (local_36c != 0) {
    FUN_00625c20(local_36c);
  }
  if ((*(int *)(*(int *)((int)this + 0x10) + 0xc) == 0) || (*(char *)((int)this + 0x88) == '\0')) {
    local_364 = (float *)LotRouteGraph_PlanWithAlternateRooms
                                   (*(void **)((int)this + 8),param_1,param_2,param_3,param_4,
                                    param_5,param_6,&local_32c,(float *)&local_348,param_9,
                                    (int *)0x0,param_11,param_12,(undefined1 *)0x0);
    FUN_006511b0(local_32c,param_7,(uint)local_348,param_8,param_5,(float)local_360,(float)local_354
                );
    if ((param_6 != (int *)0x0) && (*param_6 != 0)) {
      FUN_006442e0(local_e8,*(undefined4 *)((int)this + 0xc),*(undefined4 *)((int)this + 8),this,
                   param_1);
      NeighborhoodPath_DispatchConditionalFilterPasses
                (local_e8,(void *)*param_6,local_32c * 0x20 + *param_2,
                 *param_5 + (int)local_348 * 0x1c,param_9,'\x01');
      FUN_00643e00((int)local_e8);
    }
LAB_00661f83:
    if (local_36c != 0) {
      FUN_00625c40(local_36c);
    }
    return (uint)local_364;
  }
  local_288 = (float)((uint)local_288 & 0xffffff00);
  if ((piVar9 != (int *)0x0) && (piVar9 == local_328)) {
    if (*(void **)((int)this + 8) == (void *)0x0) {
      if (local_36c == 0) {
        return 1;
      }
      FUN_00625c40(local_36c);
      return 1;
    }
    local_340 = local_348;
    local_36d = '\0';
    local_364 = (float *)LotRouteGraph_PlanWithAlternateRooms
                                   (*(void **)((int)this + 8),param_1,param_2,param_3,param_4,
                                    param_5,param_6,&local_32c,(float *)&local_340,param_9,piVar9,
                                    param_11,param_12,&local_36d);
    if ((local_36d == '\0') || (local_364 != (float *)0x5)) {
      if (local_364 == (float *)0x0) {
        if (((local_340 != local_348) && (-1 < (int)local_340)) && ((int)local_340 < (int)local_310)
           ) {
          local_348 = local_340;
          local_360 = *(float **)(*param_5 + (int)local_340 * 0x1c);
          iVar11 = *param_5 + (int)local_340 * 0x1c;
          local_354 = *(float **)(iVar11 + 4);
          FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_360,(float)local_354,
                       *(int *)(iVar11 + 8),'\0','\0',(char *)0x0,(undefined1 *)0x0,(char *)0x0,
                       (char *)0x0,(undefined1 *)0x0,'\x01');
        }
        FUN_006511b0(local_32c,param_7,(uint)local_348,param_8,param_5,(float)local_360,
                     (float)local_354);
        if ((param_6 != (int *)0x0) && (*param_6 != 0)) {
          FUN_006442e0(local_e8,*(undefined4 *)((int)this + 0xc),*(undefined4 *)((int)this + 8),this
                       ,param_1);
          uVar14 = FUN_00624bc0((int)piVar9);
          if (((char)uVar14 == '\0') || (*(int *)(*param_5 + 8) != 0)) {
            bVar25 = false;
          }
          else {
            bVar25 = true;
          }
          NeighborhoodPath_DispatchConditionalFilterPasses
                    (local_e8,(void *)*param_6,local_32c * 0x20 + *param_2,
                     *param_5 + (int)local_348 * 0x1c,param_9,!bVar25);
          FUN_00643e00((int)local_e8);
        }
        if (local_36c == 0) {
          return 0;
        }
        FUN_00625c40(local_36c);
        return 0;
      }
      goto LAB_00661f83;
    }
    local_288 = (float)CONCAT31(local_288._1_3_,1);
    local_364 = (float *)&DAT_00000005;
  }
  if (((((float)local_360 - (float)local_338) * ((float)local_360 - (float)local_338) +
        ((float)local_354 - (float)local_334) * ((float)local_354 - (float)local_334) < 178.7569) &&
      ((param_9 & 0xc1000280) == 0)) && ((((uint)param_11 & 5) != 0 && (local_288._0_1_ == '\0'))))
  {
    FUN_006442e0(local_e8,*(undefined4 *)((int)this + 0xc),*(undefined4 *)((int)this + 8),this,
                 param_1);
    cVar6 = FUN_00644c20(local_e8,(int *)local_338,(int *)local_334,*(int *)(*param_2 + 8),
                         (float)local_360,(float)local_354,(int)param_3[2]);
    if (cVar6 != '\0') {
      FUN_006511b0(local_32c,param_7,(uint)local_348,param_8,param_5,(float)local_360,
                   (float)local_354);
      if (param_6 != (int *)0x0) {
        puVar10 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
        if (puVar10 == (undefined4 *)0x0) {
          puVar10 = (undefined4 *)0x0;
        }
        else {
          puVar10 = (undefined4 *)FUN_0064ee20(puVar10);
        }
        FUN_007fd370(&local_34c,puVar10);
        piVar9 = local_34c;
        *param_6 = (int)local_34c;
        (**(code **)*local_34c)();
        FUN_00641b10(apfStack_2d0);
        apfStack_2d0[0] = local_338;
        apfStack_2d0[1] = local_2dc;
        apfStack_2d0[2] = local_334;
        auStack_2b4[0] = 6;
        FUN_0062aa60(piVar9,apfStack_2d0);
        apfStack_2d0[0] = local_360;
        apfStack_2d0[1] = local_2fc;
        apfStack_2d0[2] = local_354;
        auStack_2b4[0] = 7;
        FUN_0062aa60(piVar9,apfStack_2d0);
        NeighborhoodPath_DispatchConditionalFilterPasses
                  (local_e8,(void *)*param_6,*param_2,*param_5 + (int)local_348 * 0x1c,param_9,
                   '\x01');
        FUN_0064ee20(&local_264);
        FUN_0062a020((int)auStack_70);
        pvStack_2c = *(void **)((int)this + 8);
        puStack_30 = param_1;
        piStack_1c = local_330;
        FUN_00630400(pvStack_2c,(int)auStack_70,(int)piVar9,(int)&local_264,'\x01');
        piStack_1c = local_328;
        FUN_00630400(*(void **)((int)this + 8),(int)auStack_70,(int)piVar9,(int)&local_264,'\x01');
        FUN_00629330((int)auStack_70);
        FUN_00626b40(&local_264);
        (**(code **)(*piVar9 + 4))();
      }
      FUN_00643e00((int)local_e8);
      goto LAB_0065ec47;
    }
    FUN_00643e00((int)local_e8);
  }
  FUN_00650700((int)this);
  local_344 = (float *)0x0;
  local_33c = (float *)0x0;
  FUN_00653530((int)&local_1f0);
  puVar10 = (undefined4 *)*param_2;
  local_164 = param_1;
  local_1f0 = 0;
  local_148 = *puVar10;
  local_144 = puVar10[1];
  local_140 = puVar10[2];
  local_138 = *param_3;
  local_130 = param_3[2];
  local_134 = param_3[1];
  if ((param_9 & 0x800000) != 0) {
    local_1f0 = 0x40;
  }
  local_2d4 = (float *)(param_9 & 0x9008000);
  if (local_2d4 != (float *)0x0) {
    local_1f0 = local_1f0 | 0x80;
  }
  if ((param_9 & 0x8000) != 0) {
    local_1f0 = local_1f0 | 0x100;
  }
  if ((param_9 & 0x40) != 0) {
    local_1f0 = local_1f0 | 0x200;
  }
  local_150 = 0;
  local_280 = local_338;
  local_284 = local_334;
  pfVar21 = (float *)0x0;
  local_268 = local_360;
  local_355 = '\0';
  local_26c = local_354;
  local_314 = (int *)0x0;
  local_36d = '\0';
  local_2d8 = local_344;
  local_30c = (undefined4 *)0x0;
  local_308 = (undefined4 *)0x0;
  local_304 = (undefined4 *)0x0;
  local_300 = "Routing/goalLookupOrder";
  local_168 = this;
  FUN_00d75320(&local_30c,(uint)local_310);
  if (local_310 != (float *)0x0) {
    local_340 = (float *)0x0;
    do {
      iVar11 = *param_5;
      fVar28 = *(float *)((int)local_340 + iVar11) - (float)local_338;
      fVar27 = *(float *)((int)local_340 + iVar11 + 4) - (float)local_334;
      local_2ec = *(float *)((int)local_340 + iVar11 + 0x18) * 1e+06 -
                  (fVar28 * fVar28 + fVar27 * fVar27);
      local_2f0 = pfVar21;
      if (local_308 < local_304) {
        puVar10 = local_308 + 2;
        if (local_308 != (undefined4 *)0x0) {
          *local_308 = pfVar21;
          local_308[1] = local_2ec;
        }
      }
      else {
        FUN_0040c540(&local_30c,local_308,&local_2f0);
        puVar10 = local_308;
      }
      local_308 = puVar10;
      pfVar21 = (float *)((int)pfVar21 + 1);
      local_340 = local_340 + 7;
    } while (pfVar21 < local_310);
  }
  if ((float *)0x1 < local_310) {
    FUN_00654910(local_30c,local_308,&LAB_006506e0);
  }
  piVar9 = local_330;
  if (local_288._0_1_ != '\0') {
    *(uint *)((int)this + 0x11c) = *(uint *)((int)this + 0x11c) | 0x20;
    *(uint *)((int)this + 0x120) = *(uint *)((int)this + 0x120) | 0x20;
  }
  local_22c = *(undefined4 *)(*param_2 + 8);
  local_234 = local_338;
  local_230 = local_334;
  if ((int)local_348 < 0) {
    local_214 = param_3[2];
  }
  else {
    local_214 = *(float *)(*param_5 + 8 + (int)local_348 * 0x1c);
  }
  local_21c = local_360;
  local_218 = local_354;
  *(undefined4 *)((int)this + 300) = *(undefined4 *)((int)this + 0x128);
  *(undefined4 *)((int)this + 0x138) = 0;
  *(undefined4 *)((int)this + 0x13c) = 0;
  *(undefined4 *)((int)this + 0x140) = 0x7f7fffff;
  *(undefined4 *)((int)this + 0x144) = 0x800000;
  *(undefined4 *)((int)this + 0x148) = 0x7f7fffff;
  *(undefined4 *)((int)this + 0x14c) = 0x800000;
  *(undefined4 *)((int)this + 0x150) = 0;
  *(undefined4 *)((int)this + 0x154) = 0;
  if (local_330 == (int *)0x0) {
LAB_0065f0a8:
    piVar9 = local_328;
    *(undefined4 *)((int)this + 0x164) = *(undefined4 *)((int)this + 0x160);
    *(undefined4 *)((int)this + 0x170) = 0;
    *(undefined4 *)((int)this + 0x174) = 0;
    *(undefined4 *)((int)this + 0x178) = 0x7f7fffff;
    *(undefined4 *)((int)this + 0x17c) = 0x800000;
    *(undefined4 *)((int)this + 0x180) = 0x7f7fffff;
    *(undefined4 *)((int)this + 0x184) = 0x800000;
    *(undefined4 *)((int)this + 0x188) = 0;
    *(undefined4 *)((int)this + 0x18c) = 0;
    if (local_328 != (int *)0x0) {
      local_1b8 = *param_3;
      local_1b0 = param_3[2];
      local_1b4 = param_3[1];
      iVar11 = FUN_00641620(*(void **)((int)this + 8),param_1,local_328[0x12],local_328[0x13],
                            &local_1b8,local_1a8,1);
      if (iVar11 == 0) {
        local_364 = (float *)0x0;
        pfVar21 = (float *)0x0;
        if (local_310 != (float *)0x0) {
          do {
            local_1b8 = *(float *)(*param_5 + local_30c[(int)local_364 * 2] * 0x1c);
            iVar11 = *param_5 + local_30c[(int)local_364 * 2] * 0x1c;
            local_1b4 = *(float *)(iVar11 + 4);
            local_1b0 = *(float *)(iVar11 + 8);
            if (((local_1b8 != *param_3) || (local_1b4 != param_3[1])) || (local_1b0 != param_3[2]))
            {
              LotRouteGraph_ApplyLotPositionMatrix
                        (*(void **)((int)this + 8),*(ulonglong *)(piVar9 + 0x12),local_1b8,local_1b4
                         ,(float *)&local_28c,(float *)&local_34c);
              bVar25 = FUN_00635730(*(void **)((int)this + 8),(int)piVar9,(float)local_28c,local_34c
                                    ,local_1b0,0.01,param_1);
              if ((bVar25) &&
                 (iVar11 = FUN_00641620(*(void **)((int)this + 8),param_1,piVar9[0x12],piVar9[0x13],
                                        &local_1b8,local_1a8,1), iVar11 != 0)) goto LAB_0065f2ad;
            }
            local_364 = (float *)((int)local_364 + 1);
            pfVar21 = local_364;
          } while (local_364 < local_310);
        }
        local_364 = pfVar21;
        if (local_30c != (undefined4 *)0x0) {
          Memory_FreeIfNonNull(local_30c);
        }
        FUN_008b19b0(local_19c);
        FUN_008b19b0(local_1cc);
        if (local_36c != 0) {
          FUN_00625c40(local_36c);
        }
        return 4;
      }
LAB_0065f2ad:
      local_1f0 = local_1f0 | 0x20;
      if ((char)piVar9[300] != '\0') {
        *(uint *)((int)this + 0x120) = *(uint *)((int)this + 0x120) & 0xfffffefc;
      }
      if ((*(void **)((int)this + 8) != (void *)0x0) &&
         (iVar11 = FUN_006323d0(*(void **)((int)this + 8),piVar9[0x12],piVar9[0x13]), iVar11 != -1))
      {
        local_1bc = (short)((uint)iVar11 >> 0x10);
        local_1ba = (short)iVar11;
      }
      FUN_006552f0(this,piVar9,(float *)&local_21c,(float *)&local_234,local_1a8,param_1,
                   *(uint *)((int)this + 0x120),0,(undefined4 *)((int)this + 0x160));
    }
    piVar24 = (int *)((int)this + 0x160);
    local_368 = (int *)0x0;
    if (local_330 == (int *)0x0) {
LAB_0065f6a1:
      local_35c = (int *)0x0;
      if (piVar9 != (int *)0x0) {
        local_248 = local_234;
        local_244 = local_230;
        local_240 = local_22c;
        if (local_330 != (int *)0x0) {
          local_248 = local_280;
          local_244 = local_284;
          local_240 = 0;
          FUN_00651310(piVar24,(float *)&local_248);
        }
        if (*piVar24 != *(int *)((int)this + 0x164)) {
          do {
            piVar24 = (int *)((int)this + 0x160);
            *(uint *)((int)this + 0x174) = *(uint *)((int)this + 0x174) | 0x40;
            uVar12 = *(uint *)((int)this + 0x174);
            if ((((char)piVar9[300] != '\0') &&
                (*(uint *)((int)this + 0x174) = uVar12 & 0xffffffbf, (uVar12 & 0x200) == 0)) &&
               ((local_330 == (int *)0x0 || ((char)local_330[300] == '\0')))) {
              if (((byte)(param_9 >> 0x1c) & 1) == 0) {
                bVar25 = FUN_0065e3e0(this,(float)local_234,(float)local_230,(float)local_21c,
                                      (float)local_218);
                if (bVar25) goto LAB_0065f833;
              }
              else {
                bVar25 = FUN_006515e0(this,(float)local_234,(float)local_230,(float)local_21c,
                                      (float)local_218);
                if (bVar25) {
LAB_0065f833:
                  *(uint *)((int)this + 0x174) = *(uint *)((int)this + 0x174) | 0x200;
                }
              }
            }
            uVar12 = FUN_0065c070(this,piVar24,(int *)((int)this + 0x128),(float *)&local_21c,
                                  (float *)&local_248,param_1,(ushort *)&local_33c,
                                  *(uint *)((int)this + 0x120),param_9);
            local_36d = (char)uVar12;
            if (local_36d == '\0') {
LAB_0065fae7:
              if (local_355 == '\0') {
                local_264 = (float *)0x0;
                local_260 = (float *)0x0;
                local_25c = 0;
                local_258 = "Routing/closestWps";
                local_355 = FUN_0065bfe0(this,(float)local_338,(float)local_334,(float)local_268,
                                         (float)local_26c,(float)local_330,local_288,
                                         (float)((param_9 & 0x10000000 | 0x800000) >> 0xf |
                                                 -(uint)(local_2d4 != (float *)0x0) & 0x1000 |
                                                (uint)param_11),(int *)&local_264,param_1,0,1);
                if (local_264 == local_260) {
                  if (local_355 != '\0') goto LAB_0065fba8;
                }
                else {
                  local_355 = '\x01';
LAB_0065fba8:
                  local_344 = (float *)*local_264;
                }
                local_2d8 = local_344;
                if (local_264 != (float *)0x0) {
                  Memory_FreeIfNonNull(local_264);
                }
                if (local_355 != '\0') goto LAB_0065fbd1;
              }
              else {
LAB_0065fbd1:
                if (local_36d != '\0') {
                  if ((param_9 & 0xc9008000) == 0) {
                    iVar11 = *(int *)((int)this + 0x10);
                    if (*(char *)(iVar11 + 0x14) == '\0') {
                      cVar6 = -2;
                    }
                    else {
                      cVar6 = *(char *)(*(int *)(*(int *)(iVar11 + 0x18) +
                                                ((uint)local_344 & 0xffff) * 4) +
                                        *(int *)(iVar11 + 0x28) + ((uint)local_344 >> 0x10));
                    }
                    if (*(char *)(iVar11 + 0x14) == '\0') {
                      cVar7 = -2;
                    }
                    else {
                      cVar7 = *(char *)(*(int *)(*(int *)(iVar11 + 0x18) +
                                                ((uint)local_33c & 0xffff) * 4) +
                                        *(int *)(iVar11 + 0x28) + ((uint)local_33c >> 0x10));
                    }
                    if (cVar6 != cVar7) break;
                  }
                  local_314 = FUN_006764c0((void *)((int)this + 0x18),*(uint **)((int)this + 0x10),
                                           *(int *)((int)this + 0x14),(float *)&local_344,
                                           (uint *)&local_33c,param_11,&local_1f0,
                                           (float *)&local_2d8);
                  if (local_314 == (int *)0x0) {
                    puVar10 = *(undefined4 **)((int)this + 0x160) + 7;
                    if (puVar10 < *(undefined4 **)((int)this + 0x164)) {
                      FUN_00650d30(puVar10,*(undefined4 **)((int)this + 0x164),
                                   *(undefined4 **)((int)this + 0x160));
                    }
                    piVar9 = local_328;
                    goto LAB_0065fc92;
                  }
                  goto LAB_006605d5;
                }
              }
              if (local_35c != (int *)0x0) {
                (**(code **)(*local_35c + 4))();
              }
              if (local_368 != (int *)0x0) {
                (**(code **)(*local_368 + 4))();
              }
              if (local_30c != (undefined4 *)0x0) {
                Memory_FreeIfNonNull(local_30c);
              }
              FUN_008b19b0(local_19c);
              FUN_008b19b0(local_1cc);
              bVar25 = local_36c == 0;
              goto LAB_0065f026;
            }
            local_2ec = (float)piVar9[0x13];
            local_2f0 = (float *)piVar9[0x12];
            cVar6 = '\x01';
            ppfVar32 = &local_26c;
            ppfVar30 = &local_268;
            ppfVar22 = &local_33c;
            pvVar13 = LotRouteGraph_FindLotByGuid
                                (*(void **)((int)this + 8),*(ulonglong *)(piVar9 + 0x12));
            uVar14 = FUN_00653960(this,local_2f0,local_2ec,(uint)pvVar13,(ushort *)ppfVar22,
                                  (float *)ppfVar30,(float *)ppfVar32,cVar6);
            if ((char)uVar14 != '\0') {
              apfStack_2d0[2] = *(float **)((int)this + 400);
              apfStack_2d0[0] = local_268;
              apfStack_2d0[1] = local_26c;
              local_324 = (float *)0x0;
              local_320 = (undefined4 *)0x0;
              local_31c = 0;
              local_318 = "Routing/lotStart";
              uStack_2bc = 0;
              fStack_2b8 = 0.0;
              auStack_2b4[0] = 0;
              uStack_2c4 = 0;
              uStack_2c0 = 0;
              FUN_00656a10(&local_324,apfStack_2d0);
              piVar9 = local_35c;
              local_340 = local_348;
              if (local_35c != (int *)0x0) {
                local_35c = (int *)0x0;
                (**(code **)(*piVar9 + 4))();
              }
              uVar12 = LotRouteGraph_PlanWithAlternateRooms
                                 (*(void **)((int)this + 8),param_1,(int *)&local_324,param_3,
                                  param_4,param_5,&local_35c,(undefined4 *)0x0,(float *)&local_340,
                                  param_9,local_328,param_11,param_12,(undefined1 *)0x0);
              if (uVar12 == 0) {
                if (local_35c == (int *)0x0) {
                  if ((local_324 != (float *)0x0) &&
                     (Memory_FreeIfNonNull(local_324), local_35c != (int *)0x0)) {
                    (**(code **)(*local_35c + 4))();
                  }
                  goto LAB_0065f596;
                }
                if (((local_340 != local_348) && (-1 < (int)local_340)) &&
                   ((int)local_340 < (int)local_310)) {
                  local_348 = local_340;
                  local_360 = *(float **)(*param_5 + (int)local_340 * 0x1c);
                  iVar11 = *param_5 + (int)local_340 * 0x1c;
                  local_354 = *(float **)(iVar11 + 4);
                  fVar26 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_360,
                                        (float)local_354,*(int *)(iVar11 + 8),'\0','\0',(char *)0x0,
                                        (undefined1 *)0x0,(char *)0x0,(char *)0x0,(undefined1 *)0x0,
                                        '\x01');
                  local_2fc = (float *)(float)fVar26;
                }
                if (DAT_0115924c != '\0') {
                  local_364 = local_33c;
                  uVar14 = FUN_00655900(this,(int)piVar24,(int)local_35c,(int)param_1,
                                        (ushort *)&local_364,'\0');
                  if ((char)uVar14 != '\0') {
                    local_33c = local_364;
                    uVar4 = *(ulonglong *)(local_328 + 0x12);
                    iVar11 = local_328[0x13];
                    cVar6 = '\x01';
                    ppfVar32 = &local_26c;
                    ppfVar30 = &local_268;
                    ppfVar22 = &local_33c;
                    pvVar13 = LotRouteGraph_FindLotByGuid
                                        (*(void **)((int)this + 8),*(ulonglong *)(local_328 + 0x12))
                    ;
                    uVar14 = FUN_00653960(this,(int)uVar4,iVar11,(uint)pvVar13,(ushort *)ppfVar22,
                                          (float *)ppfVar30,(float *)ppfVar32,cVar6);
                    if ((char)uVar14 == '\0') {
                      if (local_324 != (float *)0x0) {
                        Memory_FreeIfNonNull(local_324);
                      }
                      if (local_35c != (int *)0x0) {
                        (**(code **)(*local_35c + 4))();
                      }
                      goto LAB_0065f65d;
                    }
                  }
                }
                if (local_324 != (float *)0x0) {
                  Memory_FreeIfNonNull(local_324);
                }
                goto LAB_0065fae7;
              }
              if (local_324 != (float *)0x0) {
                Memory_FreeIfNonNull(local_324);
              }
              if (local_35c != (int *)0x0) {
                (**(code **)(*local_35c + 4))();
              }
              if (local_368 != (int *)0x0) {
                (**(code **)(*local_368 + 4))();
              }
              if (local_30c != (undefined4 *)0x0) {
                Memory_FreeIfNonNull(local_30c);
              }
              FUN_00652dc0((int)&local_1f0);
              goto LAB_0065fd48;
            }
            puVar10 = (undefined4 *)*piVar24 + 7;
            if (puVar10 < *(undefined4 **)((int)this + 0x164)) {
              FUN_00650d30(puVar10,*(undefined4 **)((int)this + 0x164),(undefined4 *)*piVar24);
            }
LAB_0065fc92:
            *(int *)((int)this + 0x164) = *(int *)((int)this + 0x164) + -0x1c;
          } while (*(int *)((int)this + 0x160) != *(int *)((int)this + 0x164));
        }
LAB_006602a8:
        if (((param_9 & 0xf) != 0) && ((short)local_2d8 != -1)) {
          puVar3 = *(uint **)((int)this + 0x10);
          uVar12 = (uint)local_2d8 & 0xffff;
          iVar11 = *(int *)(puVar3[2] + uVar12 * 4) + puVar3[3];
          iVar11 = (uint)*(ushort *)(iVar11 + 2 + ((uint)local_2d8 >> 0x10) * 2) + iVar11;
          local_2f0 = (float *)(uVar12 % *puVar3);
          local_34c = (int *)(uint)*(byte *)(iVar11 + 3);
          fVar27 = (float)(int)local_2f0;
          if ((int)local_2f0 < 0) {
            fVar27 = fVar27 + 4.2949673e+09;
          }
          FUN_00659840(this,(float)(int)local_34c * 0.125 + fVar27 * 32.0,
                       (float)*(byte *)(iVar11 + 4) * 0.125 + (float)(uVar12 / *puVar3) * 32.0,
                       (float)local_360,(float)local_354,param_12);
        }
        uVar12 = (local_36d != '\0') + 4;
        if (local_35c != (int *)0x0) {
          (**(code **)(*local_35c + 4))();
        }
        if (local_368 != (int *)0x0) {
          (**(code **)(*local_368 + 4))();
        }
        if (local_30c != (undefined4 *)0x0) {
          Memory_FreeIfNonNull(local_30c);
        }
        FUN_008b19b0(local_19c);
        FUN_008b19b0(local_1cc);
LAB_0065fd48:
        if (local_36c != 0) {
          FUN_00625c40(local_36c);
        }
        return uVar12;
      }
      if (local_355 == '\0') {
        pfStack_27c = (float *)0x0;
        pfStack_278 = (float *)0x0;
        uStack_274 = 0;
        pcStack_270 = "Routing/closestWps";
        cVar6 = FUN_0065bfe0(this,(float)local_338,(float)local_334,(float)local_268,
                             (float)local_26c,(float)local_330,local_288,
                             (float)(-(uint)((param_9 & 0x49008000) != 0) & 0x1000 |
                                     (param_9 & 0x10000000 | 0x800000) >> 0xf | (uint)param_11),
                             (int *)&pfStack_27c,param_1,0,1);
        pfVar21 = pfStack_27c;
        if (cVar6 == '\0') {
LAB_0065fe6e:
          if (pfVar21 != (float *)0x0) {
            Memory_FreeIfNonNull(pfVar21);
          }
          if (local_35c != (int *)0x0) {
            (**(code **)(*local_35c + 4))();
          }
          if (local_368 != (int *)0x0) {
            (**(code **)(*local_368 + 4))();
          }
          if (local_30c != (undefined4 *)0x0) {
            Memory_FreeIfNonNull(local_30c);
          }
          FUN_008b19b0(local_19c);
          FUN_008b19b0(local_1cc);
          bVar25 = local_36c == 0;
          goto LAB_0065f026;
        }
        if (pfStack_27c != pfStack_278) {
          local_344 = (float *)*pfStack_27c;
        }
        local_2d8 = local_344;
        if (pfStack_27c != (float *)0x0) {
          Memory_FreeIfNonNull(pfStack_27c);
        }
      }
      if ((param_5[1] - *param_5) / 0x1c == 1) {
        local_348 = (float *)0x0;
        local_264 = (float *)0x0;
        local_260 = (float *)0x0;
        local_25c = 0;
        local_258 = "Routing/closestWps";
        cVar6 = FUN_0065bfe0(this,(float)local_360,(float)local_354,(float)local_280,
                             (float)local_284,0.0,0.0,
                             (float)(-(uint)((param_9 & 0x89000000) != 0) & 0x1000 |
                                     param_9 >> 0x10 & 0x2000 | (uint)param_11),(int *)&local_264,
                             param_1,0,1);
        pfVar21 = local_264;
        if (cVar6 != '\0') {
          local_33c = (float *)*local_264;
          local_36d = '\x01';
          local_314 = FUN_006764c0((void *)((int)this + 0x18),*(uint **)((int)this + 0x10),
                                   *(int *)((int)this + 0x14),(float *)&local_344,(uint *)&local_33c
                                   ,param_11,&local_1f0,(float *)&local_2d8);
        }
        if (pfVar21 != (float *)0x0) {
          Memory_FreeIfNonNull(pfVar21);
        }
      }
      else {
        local_340 = (float *)0xffffffff;
        FUN_00ae0410(*(int *)((int)this + 0x100),*(uint *)((int)this + 0x104));
        *(undefined4 *)((int)this + 0x108) = 0;
        local_364 = (float *)0x0;
        if (local_310 == (float *)0x0) goto LAB_006602a8;
        do {
          if (local_314 != (int *)0x0) break;
          pfVar21 = (float *)local_30c[(int)local_364 * 2];
          local_360 = *(float **)(*param_5 + (int)pfVar21 * 0x1c);
          local_354 = *(float **)(*param_5 + (int)pfVar21 * 0x1c + 4);
          local_324 = (float *)0x0;
          local_320 = (undefined4 *)0x0;
          local_31c = 0;
          local_318 = "Routing/closestWps";
          cVar6 = FUN_0065bfe0(this,(float)local_360,(float)local_354,(float)local_280,
                               (float)local_284,0.0,0.0,
                               (float)(-(uint)((param_9 & 0x89000000) != 0) & 0x1000 |
                                       param_9 >> 0x10 & 0x2000 | (uint)param_11),(int *)&local_324,
                               param_1,0,1);
          if (cVar6 == '\0') {
LAB_00660206:
            if (local_324 != (float *)0x0) goto LAB_00660212;
          }
          else {
            local_33c = (float *)*local_324;
            local_28c = (float *)(((uint)local_33c & 0xffff) * 0x400);
            local_34c = (int *)(((uint)local_33c >> 0x10) + (int)local_28c);
            FUN_008b26c0((void *)((int)this + 0xfc),&local_248,(uint *)&local_34c);
            if (local_248 ==
                *(float **)(*(int *)((int)this + 0x100) + *(int *)((int)this + 0x104) * 4)) {
              local_34c = (int *)(((uint)local_33c >> 0x10) + (int)local_28c);
              local_2d4 = (float *)((uint)local_2d4 & 0xffffff00);
              FUN_006b5bc0((void *)((int)this + 0xfc),&local_2f0,(uint *)&local_34c);
              uVar14 = FUN_00650540(&local_33c,(short *)&local_344);
              if (((char)uVar14 == '\0') ||
                 (1.0 <= ((float)local_360 - (float)local_338) *
                         ((float)local_360 - (float)local_338) +
                         ((float)local_354 - (float)local_334) *
                         ((float)local_354 - (float)local_334))) {
                local_36d = '\x01';
                local_314 = FUN_006764c0((void *)((int)this + 0x18),*(uint **)((int)this + 0x10),
                                         *(int *)((int)this + 0x14),(float *)&local_344,
                                         (uint *)&local_33c,param_11,&local_1f0,(float *)&local_2d8)
                ;
                if (local_314 != (int *)0x0) {
                  local_340 = pfVar21;
                }
                goto LAB_00660206;
              }
              if (param_6 != (int *)0x0) {
                puVar10 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
                if (puVar10 == (undefined4 *)0x0) {
                  puVar10 = (undefined4 *)0x0;
                }
                else {
                  puVar10 = (undefined4 *)FUN_0064ee20(puVar10);
                }
                FUN_007fd370(&local_34c,puVar10);
                piVar9 = local_34c;
                *param_6 = (int)local_34c;
                (**(code **)*local_34c)();
                FUN_00641b10(apfStack_2d0);
                apfStack_2d0[0] = local_338;
                apfStack_2d0[1] = local_2dc;
                apfStack_2d0[2] = local_334;
                auStack_2b4[0] = 6;
                FUN_0062aa60(piVar9,apfStack_2d0);
                apfStack_2d0[0] = local_360;
                fVar26 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_360,(float)local_354,
                                      *(int *)(*param_5 + (int)pfVar21 * 0x1c + 8),'\x01','\0',
                                      (char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,
                                      (undefined1 *)0x0,'\x01');
                apfStack_2d0[1] = (float *)(float)fVar26;
                apfStack_2d0[2] = local_354;
                auStack_2b4[0] = 7;
                FUN_0062aa60(piVar9,apfStack_2d0);
                FUN_006442e0(local_e8,*(undefined4 *)((int)this + 0xc),
                             *(undefined4 *)((int)this + 8),this,param_1);
                NeighborhoodPath_DispatchConditionalFilterPasses
                          (local_e8,piVar9,local_32c * 0x20 + *param_2,
                           *param_5 + (int)local_348 * 0x1c,param_9,'\x01');
                FUN_00643e00((int)local_e8);
                (**(code **)(*piVar9 + 4))();
              }
              FUN_006511b0(local_32c,param_7,(uint)pfVar21,param_8,param_5,(float)local_360,
                           (float)local_354);
              if (local_324 != (float *)0x0) {
                Memory_FreeIfNonNull(local_324);
              }
              if (local_35c != (int *)0x0) {
                (**(code **)(*local_35c + 4))();
              }
              if (local_368 != (int *)0x0) {
                (**(code **)(*local_368 + 4))();
              }
              if (local_30c != (undefined4 *)0x0) {
                Memory_FreeIfNonNull(local_30c);
              }
              FUN_00652dc0((int)&local_1f0);
              goto LAB_0065ec47;
            }
LAB_00660212:
            Memory_FreeIfNonNull(local_324);
          }
          local_364 = (float *)((int)local_364 + 1);
        } while (local_364 < local_310);
        pfVar21 = local_340;
        if ((-1 < (int)local_340) && ((int)local_340 < (param_5[1] - *param_5) / 0x1c)) {
          fVar26 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_360,(float)local_354,
                                *(int *)(*param_5 + (int)local_340 * 0x1c + 8),'\x01','\0',
                                (char *)0x0,(undefined1 *)0x0,(char *)0x0,(char *)0x0,
                                (undefined1 *)0x0,'\x01');
          local_2fc = (float *)(float)fVar26;
          local_348 = pfVar21;
        }
      }
      if (local_314 == (int *)0x0) goto LAB_006602a8;
LAB_006605d5:
      piVar9 = local_314;
      piVar24 = (int *)0x0;
      local_324 = (float *)0x0;
      local_320 = (undefined4 *)0x0;
      local_31c = 0;
      local_318 = "Routing/WorldPath";
      NeighborhoodRoute_ConvertPackedKeysToWorldNodes(this,local_314,(int *)&local_324);
      FUN_00674640(piVar9);
      pfVar21 = (float *)(((int)local_320 - (int)local_324) / 0x14);
      pfStack_2f4 = pfVar21;
      puVar10 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
      if (puVar10 == (undefined4 *)0x0) {
        piStack_350 = (int *)0x0;
      }
      else {
        piVar24 = (int *)FUN_0064ee20(puVar10);
        piStack_350 = piVar24;
        if (piVar24 != (int *)0x0) {
          (**(code **)*piVar24)();
        }
      }
      if (param_6 != (int *)0x0) {
        *param_6 = (int)piVar24;
        (**(code **)*piVar24)();
      }
      if (pfVar21 == (float *)0x0) {
        FUN_00641b10(apfStack_2d0);
        puVar10 = (undefined4 *)piVar24[3];
        apfStack_2d0[0] = local_338;
        apfStack_2d0[1] = local_2dc;
        apfStack_2d0[2] = local_334;
        auStack_2b4[0] = 6;
        if (puVar10 < (undefined4 *)piVar24[4]) {
          piVar24[3] = (int)(puVar10 + 0x10);
          if (puVar10 != (undefined4 *)0x0) {
            ppfVar22 = apfStack_2d0;
            for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
              *puVar10 = *ppfVar22;
              ppfVar22 = ppfVar22 + 1;
              puVar10 = puVar10 + 1;
            }
          }
        }
        else {
          FUN_00a8f4d0(piVar24 + 2,puVar10,apfStack_2d0);
        }
        puVar10 = (undefined4 *)piStack_350[3];
        apfStack_2d0[0] = local_360;
        apfStack_2d0[1] = local_2fc;
        apfStack_2d0[2] = local_354;
        auStack_2b4[0] = 7;
        if (puVar10 < (undefined4 *)piStack_350[4]) {
          piStack_350[3] = (int)(puVar10 + 0x10);
          if (puVar10 != (undefined4 *)0x0) {
            ppfVar22 = apfStack_2d0;
            for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
              *puVar10 = *ppfVar22;
              ppfVar22 = ppfVar22 + 1;
              puVar10 = puVar10 + 1;
            }
          }
        }
        else {
          FUN_00a8f4d0(piStack_350 + 2,puVar10,apfStack_2d0);
        }
        FUN_006511b0(local_32c,param_7,(uint)local_348,param_8,param_5,(float)local_360,
                     (float)local_354);
        FUN_006442e0(local_e8,*(undefined4 *)((int)this + 0xc),*(undefined4 *)((int)this + 8),this,
                     param_1);
        piVar9 = piStack_350;
        NeighborhoodPath_DispatchConditionalFilterPasses
                  (local_e8,piStack_350,local_32c * 0x20 + *param_2,*param_5 + (int)local_348 * 0x1c
                   ,param_9,'\x01');
        FUN_00643e00((int)local_e8);
        if (piVar9 != (int *)0x0) goto LAB_006607fd;
      }
      else {
        if ((local_368 == (int *)0x0) ||
           (pfVar21 = (float *)(local_368[3] - local_368[2] >> 6), pfVar21 == (float *)0x0)) {
          FUN_00641b10(apfStack_2d0);
          apfStack_2d0[0] = local_338;
          apfStack_2d0[1] = local_2dc;
          apfStack_2d0[2] = local_334;
          auStack_2b4[0] = 6;
          aiStack_298[0] = 0x10;
          FUN_0062aa60(piVar24,apfStack_2d0);
          if ((param_9 & 0x80) != 0) {
            FUN_00641b10(apfStack_2d0);
            apfStack_2d0[0] = local_338;
            apfStack_2d0[1] = local_2dc;
            apfStack_2d0[2] = local_334;
            auStack_2b4[0] = 1;
            auStack_2a4[0] = 0x3b83;
            aiStack_298[0] = 0xd;
            FUN_0062aa60(piVar24,apfStack_2d0);
          }
        }
        else {
          if (pfVar21 != (float *)0x0) {
            local_364 = (float *)0x0;
            local_340 = pfVar21;
            do {
              iVar11 = local_368[2];
              puVar10 = (undefined4 *)piStack_350[3];
              if (puVar10 < (undefined4 *)piStack_350[4]) {
                piStack_350[3] = (int)(puVar10 + 0x10);
                if (puVar10 != (undefined4 *)0x0) {
                  puVar23 = (undefined4 *)(iVar11 + (int)local_364);
                  for (iVar20 = 0x10; iVar20 != 0; iVar20 = iVar20 + -1) {
                    *puVar10 = *puVar23;
                    puVar23 = puVar23 + 1;
                    puVar10 = puVar10 + 1;
                  }
                }
              }
              else {
                FUN_00a8f4d0(piStack_350 + 2,puVar10,(undefined4 *)(iVar11 + (int)local_364));
              }
              local_364 = local_364 + 0x10;
              local_340 = (float *)((int)local_340 + -1);
            } while (local_340 != (float *)0x0);
          }
          *(undefined4 *)((piStack_350[3] - piStack_350[2] >> 6) * 0x40 + -0x24 + piStack_350[2]) =
               9;
          if (((local_330 != (int *)0x0) && (local_330[0x102] == 1)) && (local_330[0x103] == 0x50))
          {
            *(undefined4 *)((piStack_350[3] - piStack_350[2] >> 6) * 0x40 + -8 + piStack_350[2]) =
                 0x14;
          }
        }
        local_364 = (float *)0x0;
        if (pfStack_2f4 != (float *)0x0) {
          do {
            pfVar21 = local_324 + (int)local_364 * 5;
            if (((local_364 == (float *)0x0) || ((float *)((int)pfStack_2f4 + -1) <= local_364)) ||
               (pfVar21[4] != 1.4013e-45)) {
              if (pfVar21[4] != 2.8026e-44) goto LAB_00660cc7;
              if ((pfStack_2f4 != (float *)0x1) || (local_324[4] != 2.8026e-44)) {
                bVar18 = (byte)(param_9 >> 0xf);
                bVar19 = bVar18 & 1;
                uStack_2f8 = CONCAT31(uStack_2f8._1_3_,bVar18) & 0xffffff01;
                local_340 = (float *)0x0;
                local_2d4 = (float *)0x0;
                pfStack_220 = (float *)0x0;
                pfStack_228 = (float *)0x0;
                if (local_364 == (float *)0x0) {
                  if (((param_9 >> 0xf & 1) == 0) || (param_1 == (uint *)0x0)) {
LAB_00661398:
                    uStack_2f8 = uStack_2f8 & 0xffffff00;
                  }
                  else {
                    bVar25 = Routing_IsBoatSpeciesForPortalPermission(*param_1 & 0xcf00);
                    uStack_2f8 = CONCAT31(uStack_2f8._1_3_,1);
                    if (!bVar25) goto LAB_00661398;
                  }
                  uVar12 = FUN_0066dc30(*(void **)((int)this + 0x14),*(int *)((int)this + 0xc),
                                        (float)local_338,local_2dc,(float)local_334);
                  local_340 = local_338;
                  local_2d4 = local_334;
                  if ((float *)0x1 < pfStack_2f4) {
                    fVar27 = local_324[9];
                    cVar6 = *(char *)((int)local_324 + 2);
                    sVar1 = *(short *)(local_324 + 5);
                    sVar2 = *(short *)((int)local_324 + 0x16);
                    goto LAB_00661517;
                  }
                }
                else {
                  if (local_364 == (float *)((int)pfStack_2f4 + -1)) {
                    uVar12 = FUN_0066fcd0(*(void **)((int)this + 0x14),
                                          CONCAT22(*(short *)(pfVar21 + -5),
                                                   *(short *)((int)pfVar21 + -0x12)),
                                          *(char *)((int)pfVar21 + 2),bVar19,0,
                                          pfVar21[-1] == 2.94273e-44);
                    uVar17 = FUN_0066dc30(*(void **)((int)this + 0x14),*(int *)((int)this + 0xc),
                                          (float)local_360,local_2fc,(float)local_354);
                    pfStack_220 = local_360;
                    pfStack_228 = local_354;
                  }
                  else {
                    uVar12 = FUN_0066fcd0(*(void **)((int)this + 0x14),
                                          CONCAT22(*(short *)(pfVar21 + -5),
                                                   *(short *)((int)pfVar21 + -0x12)),
                                          *(char *)((int)pfVar21 + 2),bVar19,0,
                                          pfVar21[-1] == 2.94273e-44);
                    if (((char)uStack_2f8 == '\0') || (param_1 == (uint *)0x0)) {
LAB_006614f1:
                      uStack_2f8 = uStack_2f8 & 0xffffff00;
                    }
                    else {
                      bVar25 = Routing_IsBoatSpeciesForPortalPermission(*param_1 & 0xcf00);
                      uStack_2f8 = CONCAT31(uStack_2f8._1_3_,1);
                      if (!bVar25) goto LAB_006614f1;
                    }
                    fVar27 = pfVar21[9];
                    cVar6 = *(char *)((int)pfVar21 + 2);
                    sVar1 = *(short *)(pfVar21 + 5);
                    sVar2 = *(short *)((int)pfVar21 + 0x16);
LAB_00661517:
                    uVar17 = FUN_0066fcd0(*(void **)((int)this + 0x14),CONCAT22(sVar1,sVar2),cVar6,
                                          (char)uStack_2f8,0,fVar27 == 2.94273e-44);
                  }
                  if (uVar12 != uVar17) {
                    pfStack_27c = (float *)0x0;
                    pfStack_278 = (float *)0x0;
                    uStack_274 = 0;
                    pcStack_270 = "Routing/waterPath";
                    uVar14 = FUN_00671da0(*(void **)((int)this + 0x14),
                                          *(undefined4 *)((int)this + 0xc),(int)&local_1f0,uVar12,
                                          local_340,local_2d4,uVar17,pfStack_220,pfStack_228,
                                          &pfStack_27c);
                    piVar9 = piStack_350;
                    if ((char)uVar14 == '\0') {
                      if (pfStack_27c != (float *)0x0) {
                        Memory_FreeIfNonNull(pfStack_27c);
                      }
                      if (piStack_350 != (int *)0x0) {
                        (**(code **)(*piStack_350 + 4))();
                      }
                      pfVar21 = local_324;
                      goto LAB_0065fe6e;
                    }
                    uVar14 = FUN_00657010(this,param_1,(int *)&pfStack_27c,piStack_350,param_9,
                                          param_10,param_11,param_12,(float)local_340,
                                          (float)local_2d4,(float)pfStack_220,(float)pfStack_228);
                    if ((char)uVar14 == '\0') {
                      if (pfStack_27c != (float *)0x0) {
                        Memory_FreeIfNonNull(pfStack_27c);
                      }
                      if (piVar9 != (int *)0x0) {
                        (**(code **)(*piVar9 + 4))();
                      }
                      if (local_324 != (float *)0x0) {
                        Memory_FreeIfNonNull(local_324);
                      }
                      if (local_35c != (int *)0x0) {
                        (**(code **)(*local_35c + 4))();
                      }
                      if (local_368 != (int *)0x0) {
                        (**(code **)(*local_368 + 4))();
                      }
                      if (local_30c != (undefined4 *)0x0) {
                        Memory_FreeIfNonNull(local_30c);
                      }
                      FUN_008b19b0(local_19c);
                      FUN_008b19b0(local_1cc);
                      goto LAB_0066183d;
                    }
                    if (pfStack_27c != (float *)0x0) {
                      Memory_FreeIfNonNull(pfStack_27c);
                    }
                  }
                }
              }
            }
            else {
              if ((DAT_0115924c == '\0') || (local_288._0_1_ != '\0')) {
LAB_00660fc6:
                pfStack_104 = (float *)pfVar21[-4];
                fStack_fc = pfVar21[-2];
                pfStack_100 = (float *)pfVar21[6];
                local_2f0 = (float *)pfVar21[8];
                piVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ
                                   (*(void **)((int)this + 0xc),pfVar21[1],pfVar21[3]);
                piStack_224 = piVar9;
                if (param_10 == (void *)0x0) {
LAB_0066104a:
                  if (piVar9 == (int *)0x0) goto LAB_00661059;
                  uVar8 = Lot_IsCommercialDivingLot((int)piVar9);
                  pfVar21 = (float *)CONCAT31(extraout_var_00,uVar8);
                }
                else {
                  if (piVar9 != (int *)0x0) {
                    local_244 = (float *)piVar9[0x13];
                    local_248 = (float *)piVar9[0x12];
                    FUN_00572500(param_10,&local_248);
                    goto LAB_0066104a;
                  }
LAB_00661059:
                  pfVar21 = (float *)0x0;
                }
                apfStack_2d0[0] = pfStack_104;
                local_314 = (int *)0x0;
                local_264 = (float *)0x0;
                local_260 = (float *)0x0;
                local_25c = 0;
                auStack_2b4[0] = 0;
                apfStack_2d0[1] = (float *)fStack_fc;
                local_258 = "Routing/lotStart";
                uStack_2bc = 0;
                fStack_2b8 = 0.0;
                uStack_2c4 = 0;
                uStack_2c0 = 0;
                apfStack_2d0[2] = pfVar21;
                FUN_00656a10(&local_264,apfStack_2d0);
                apfStack_2d0[0] = pfStack_100;
                apfStack_2d0[1] = local_2f0;
                fStack_2b8 = 1.0;
                pfStack_114 = (float *)0x0;
                uStack_110 = 0;
                uStack_10c = 0;
                pcStack_108 = "Routing/lotGoal";
                uStack_2bc = 0;
                uStack_2c4 = 0;
                uStack_2c0 = 0;
                apfStack_2d0[2] = pfVar21;
                FUN_0062b010(&pfStack_114,apfStack_2d0);
                piVar24 = local_314;
                if (local_314 != (int *)0x0) {
                  local_314 = (int *)0x0;
                  (**(code **)(*piVar24 + 4))();
                }
                uVar12 = LotRouteGraph_PlanWithAlternateRooms
                                   (*(void **)((int)this + 8),param_1,(int *)&local_264,pfStack_114,
                                    1.0,(int *)&pfStack_114,&local_314,(undefined4 *)0x0,
                                    (float *)0x0,param_9,piVar9,param_11,param_12,(undefined1 *)0x0)
                ;
                if (((uVar12 != 0) || (local_314 == (int *)0x0)) ||
                   ((uint)(local_314[3] - local_314[2] >> 6) < 2)) {
                  if (pfStack_114 != (float *)0x0) {
                    Memory_FreeIfNonNull(pfStack_114);
                  }
                  if (local_264 != (float *)0x0) {
                    Memory_FreeIfNonNull(local_264);
                  }
                  if (local_314 != (int *)0x0) {
                    (**(code **)(*local_314 + 4))();
                  }
                  if (piStack_350 != (int *)0x0) {
                    (**(code **)(*piStack_350 + 4))();
                  }
                  if (local_324 != (float *)0x0) goto LAB_00661a28;
                  goto LAB_00661a30;
                }
                local_34c = (int *)(local_314[3] - local_314[2] >> 6);
                puVar10 = (undefined4 *)local_314[2];
                puVar23 = auStack_70;
                for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
                  *puVar23 = *puVar10;
                  puVar10 = puVar10 + 1;
                  puVar23 = puVar23 + 1;
                }
                uStack_54 = 8;
                if ((piStack_224 != (int *)0x0) &&
                   (uVar14 = FUN_00624bc0((int)piStack_224), (char)uVar14 != '\0')) {
                  uStack_38 = 0x14;
                }
                piVar9 = piStack_350;
                FUN_0062aa60(piStack_350,auStack_70);
                if ((int *)0x1 < local_34c) {
                  local_34c = (int *)((int)local_34c + -1);
                  iVar11 = 0x40;
                  do {
                    FUN_0062aa60(piVar9,(undefined4 *)(local_314[2] + iVar11));
                    iVar11 = iVar11 + 0x40;
                    local_34c = (int *)((int)local_34c + -1);
                  } while (local_34c != (int *)0x0);
                }
                *(undefined4 *)((piVar9[3] - piVar9[2] >> 6) * 0x40 + -0x24 + piVar9[2]) = 9;
                if ((piStack_224 != (int *)0x0) &&
                   (uVar14 = FUN_00624bc0((int)piStack_224), (char)uVar14 != '\0')) {
                  *(undefined4 *)((piVar9[3] - piVar9[2] >> 6) * 0x40 + -8 + piVar9[2]) = 0x14;
                }
                if (pfStack_114 != (float *)0x0) {
                  Memory_FreeIfNonNull(pfStack_114);
                }
                if (local_264 != (float *)0x0) {
                  Memory_FreeIfNonNull(local_264);
                }
                if (local_314 != (int *)0x0) {
                  (**(code **)(*local_314 + 4))();
                }
              }
              else if ((local_330 == (int *)0x0) ||
                      (((pfStack_2f4 < (float *)0x2 || (local_1ec != *(short *)pfVar21)) ||
                       (sStack_1ea != *(short *)((int)pfVar21 + 2))))) {
                if (((local_328 == (int *)0x0) || (local_1bc != *(short *)pfVar21)) ||
                   (local_1ba != *(short *)((int)pfVar21 + 2))) goto LAB_00660fc6;
                local_35c[3] = local_35c[2];
                local_33c = (float *)pfVar21[-5];
                cVar6 = FUN_006547d0(this,local_328[0x12],local_328[0x13],(ushort *)&local_33c,
                                     (float *)&pfStack_ec,(float *)&pfStack_f4,'\x01');
                if (cVar6 == '\0') goto LAB_00661790;
                apfStack_2d0[2] = *(float **)((int)this + 400);
                apfStack_2d0[0] = pfStack_ec;
                apfStack_2d0[1] = pfStack_f4;
                pvStack_200 = (void *)0x0;
                uStack_1fc = 0;
                uStack_1f8 = 0;
                pcStack_1f4 = "Routing/lotStart";
                uStack_2bc = 0;
                fStack_2b8 = 0.0;
                auStack_2b4[0] = 0;
                uStack_2c4 = 0;
                uStack_2c0 = 0;
                FUN_00656a10(&pvStack_200,apfStack_2d0);
                pvVar13 = *(void **)((int)this + 8);
                puVar33 = (undefined1 *)0x0;
                local_28c = local_348;
                ppfVar22 = &local_28c;
                puVar10 = (undefined4 *)0x0;
                uVar12 = param_9;
                piVar9 = local_328;
                puVar31 = param_11;
                piVar24 = param_12;
                piVar16 = FUN_0074efa0((int *)&local_35c);
                uVar12 = LotRouteGraph_PlanWithAlternateRooms
                                   (pvVar13,param_1,(int *)&pvStack_200,param_3,param_4,param_5,
                                    piVar16,puVar10,(float *)ppfVar22,uVar12,piVar9,puVar31,piVar24,
                                    puVar33);
                if (uVar12 != 0) {
                  if (pvStack_200 != (void *)0x0) {
                    Memory_FreeIfNonNull(pvStack_200);
                  }
                  if (piStack_350 != (int *)0x0) {
                    (**(code **)(*piStack_350 + 4))();
                  }
                  if (local_324 != (float *)0x0) {
                    Memory_FreeIfNonNull(local_324);
                  }
                  FUN_008a0130((int *)&local_35c);
                  FUN_008a0130((int *)&local_368);
                  FUN_00651830((int *)&local_30c);
                  goto LAB_0066182b;
                }
                if (local_35c == (int *)0x0) {
                  if (pvStack_200 != (void *)0x0) {
                    Memory_FreeIfNonNull(pvStack_200);
                  }
                  if (piStack_350 != (int *)0x0) {
                    (**(code **)(*piStack_350 + 4))();
                  }
                  if (local_324 != (float *)0x0) {
                    Memory_FreeIfNonNull(local_324);
                  }
                  if (local_35c != (int *)0x0) {
                    (**(code **)(*local_35c + 4))();
                  }
                  if (local_368 != (int *)0x0) {
                    (**(code **)(*local_368 + 4))();
                  }
                  if (local_30c != (undefined4 *)0x0) {
                    Memory_FreeIfNonNull(local_30c);
                  }
                  FUN_00652dc0((int)&local_1f0);
                  if (local_36c == 0) {
                    return 6;
                  }
                  FUN_00625c40(local_36c);
                  return 6;
                }
                if (((local_28c != local_348) && (-1 < (int)local_28c)) &&
                   ((int)local_28c < (int)local_310)) {
                  local_348 = local_28c;
                  local_360 = *(float **)(*param_5 + (int)local_28c * 0x1c);
                  iVar11 = *param_5 + (int)local_28c * 0x1c;
                  local_354 = *(float **)(iVar11 + 4);
                  fVar26 = FUN_00c6a380(*(void **)((int)this + 0xc),(float)local_360,
                                        (float)local_354,*(int *)(iVar11 + 8),'\0','\0',(char *)0x0,
                                        (undefined1 *)0x0,(char *)0x0,(char *)0x0,(undefined1 *)0x0,
                                        '\x01');
                  local_2fc = (float *)(float)fVar26;
                }
                FUN_00653c30(&local_324,pfVar21,local_320);
                pfStack_2f4 = (float *)FUN_006509e0((int *)&local_324);
                if (pfStack_2f4 <= local_364) {
                  FUN_00651830((int *)&pvStack_200);
                  break;
                }
                FUN_00651830((int *)&pvStack_200);
              }
              else {
                local_368[3] = local_368[2];
                local_344 = (float *)pfVar21[5];
                cVar6 = FUN_006547d0(this,local_330[0x12],local_330[0x13],(ushort *)&local_344,
                                     (float *)&pfStack_f8,(float *)&pfStack_f0,'\x01');
                if (cVar6 == '\0') {
LAB_00661790:
                  if (piStack_350 != (int *)0x0) {
                    (**(code **)(*piStack_350 + 4))();
                  }
                  if (local_324 != (float *)0x0) {
                    Memory_FreeIfNonNull(local_324);
                  }
                  if (local_35c != (int *)0x0) {
                    (**(code **)(*local_35c + 4))();
                  }
                  goto LAB_0065f65d;
                }
                apfStack_2d0[2] = *(float **)((int)this + 0x158);
                apfStack_2d0[0] = pfStack_f8;
                apfStack_2d0[1] = pfStack_f0;
                fStack_2b8 = 1.0;
                pfStack_210 = (float *)0x0;
                uStack_20c = 0;
                uStack_208 = 0;
                pcStack_204 = "Routing/lotGoal";
                uStack_2bc = 0;
                uStack_2c4 = 0;
                uStack_2c0 = 0;
                FUN_0062b010(&pfStack_210,apfStack_2d0);
                pfVar5 = pfStack_210;
                local_34c = *(int **)((int)this + 8);
                puVar33 = (undefined1 *)0x0;
                pfVar29 = (float *)0x0;
                piVar9 = &local_32c;
                uVar12 = param_9;
                piVar24 = local_330;
                puVar31 = param_11;
                piVar16 = param_12;
                piVar15 = FUN_0074efa0((int *)&local_368);
                uVar12 = LotRouteGraph_PlanWithAlternateRooms
                                   (local_34c,param_1,param_2,pfVar5,1.0,(int *)&pfStack_210,piVar15
                                    ,piVar9,pfVar29,uVar12,piVar24,puVar31,piVar16,puVar33);
                if (uVar12 != 0) {
                  if (pfStack_210 != (float *)0x0) {
                    Memory_FreeIfNonNull(pfStack_210);
                  }
                  if (piStack_350 != (int *)0x0) {
                    (**(code **)(*piStack_350 + 4))();
                  }
                  if (local_324 != (float *)0x0) {
                    Memory_FreeIfNonNull(local_324);
                  }
                  if (local_35c != (int *)0x0) {
                    (**(code **)(*local_35c + 4))();
                  }
                  if (local_368 != (int *)0x0) {
                    (**(code **)(*local_368 + 4))();
                  }
                  if (local_30c != (undefined4 *)0x0) {
                    Memory_FreeIfNonNull(local_30c);
                  }
LAB_0066182b:
                  FUN_00652dc0((int)&local_1f0);
                  goto LAB_0066183d;
                }
                if (local_368 == (int *)0x0) {
                  if (pfStack_210 != (float *)0x0) {
                    Memory_FreeIfNonNull(pfStack_210);
                  }
                  if (piStack_350 != (int *)0x0) {
                    (**(code **)(*piStack_350 + 4))();
                  }
                  if (local_324 != (float *)0x0) {
                    Memory_FreeIfNonNull(local_324);
                  }
                  if (local_35c != (int *)0x0) {
                    (**(code **)(*local_35c + 4))();
                  }
                  if (local_368 != (int *)0x0) {
                    (**(code **)(*local_368 + 4))();
                  }
                  if (local_30c != (undefined4 *)0x0) {
                    Memory_FreeIfNonNull(local_30c);
                  }
                  FUN_00652dc0((int)&local_1f0);
                  if (local_36c == 0) {
                    return 6;
                  }
                  FUN_00625c40(local_36c);
                  return 6;
                }
                FUN_00653c30(&local_324,local_324,pfVar21);
                pfStack_2f4 = (float *)(((int)local_320 - (int)local_324) / 0x14);
                piStack_350[3] = piStack_350[2];
                if ((local_368 != (int *)0x0) &&
                   (iVar11 = local_368[3] - local_368[2] >> 6, iVar11 != 0)) {
                  if (iVar11 != 0) {
                    iVar20 = 0;
                    do {
                      FUN_0062aa60(piStack_350,(undefined4 *)(local_368[2] + iVar20));
                      iVar20 = iVar20 + 0x40;
                      iVar11 = iVar11 + -1;
                    } while (iVar11 != 0);
                  }
                  piVar9 = piStack_350;
                  *(undefined4 *)
                   ((piStack_350[3] - piStack_350[2] >> 6) * 0x40 + -0x24 + piStack_350[2]) = 9;
                  uVar14 = FUN_00624bc0((int)local_330);
                  if ((char)uVar14 != '\0') {
                    *(undefined4 *)((piVar9[3] - piVar9[2] >> 6) * 0x40 + -8 + piVar9[2]) = 0x14;
                  }
                }
                local_364 = (float *)0x0;
                if (pfStack_210 != (float *)0x0) {
                  Memory_FreeIfNonNull(pfStack_210);
                }
              }
LAB_00660cc7:
              FUN_00641b10(apfStack_2d0);
              apfStack_2d0[0] = (float *)local_324[(int)local_364 * 5 + 1];
              pfVar21 = local_324 + (int)local_364 * 5;
              apfStack_2d0[1] = (float *)pfVar21[2];
              apfStack_2d0[2] = (float *)pfVar21[3];
              FUN_00650570(pfVar21,auStack_2b4,auStack_2a4,aiStack_298);
              if (((aiStack_298[0] == 0x15) &&
                  (pvVar13 = LotSpatialIndex_FindContainingLotAtWorldXZ
                                       (*(void **)((int)this + 0xc),(float)apfStack_2d0[0],
                                        (float)apfStack_2d0[2]), pvVar13 != (void *)0x0)) &&
                 ((*(int *)((int)pvVar13 + 0x408) == 1 && (*(int *)((int)pvVar13 + 0x40c) == 0x50)))
                 ) {
                uVar8 = Lot_IsCommercialDivingLot((int)pvVar13);
                uStack_2c4 = CONCAT22(uStack_2c4._2_2_,(short)CONCAT31(extraout_var,uVar8));
              }
              puVar10 = (undefined4 *)piStack_350[3];
              if (puVar10 < (undefined4 *)piStack_350[4]) {
                piStack_350[3] = (int)(puVar10 + 0x10);
                if (puVar10 != (undefined4 *)0x0) {
                  ppfVar22 = apfStack_2d0;
                  for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
                    *puVar10 = *ppfVar22;
                    ppfVar22 = ppfVar22 + 1;
                    puVar10 = puVar10 + 1;
                  }
                }
              }
              else {
                FUN_00a8f4d0(piStack_350 + 2,puVar10,apfStack_2d0);
              }
            }
            local_364 = (float *)((int)local_364 + 1);
          } while (local_364 < pfStack_2f4);
        }
        piVar9 = piStack_350;
        if ((pfStack_2f4 == (float *)0x1) && (local_324[4] == 2.8026e-44)) {
          uVar12 = FUN_0066dc30(*(void **)((int)this + 0x14),*(int *)((int)this + 0xc),
                                (float)local_338,local_2dc,(float)local_334);
          uVar17 = FUN_0066dc30(*(void **)((int)this + 0x14),*(int *)((int)this + 0xc),
                                (float)local_360,local_2fc,(float)local_354);
          pfStack_27c = (float *)0x0;
          pfStack_278 = (float *)0x0;
          uStack_274 = 0;
          pcStack_270 = "Routing/waterPath";
          uVar14 = FUN_00671da0(*(void **)((int)this + 0x14),*(undefined4 *)((int)this + 0xc),
                                (int)&local_1f0,uVar12,local_338,local_334,uVar17,local_360,
                                local_354,&pfStack_27c);
          if ((char)uVar14 == '\0') {
            if (pfStack_27c != (float *)0x0) {
              Memory_FreeIfNonNull(pfStack_27c);
            }
            if (piVar9 != (int *)0x0) {
              (**(code **)(*piVar9 + 4))();
            }
            Memory_FreeIfNonNull(local_324);
            if (local_35c != (int *)0x0) {
              (**(code **)(*local_35c + 4))();
            }
            if (local_368 != (int *)0x0) {
              (**(code **)(*local_368 + 4))();
            }
            if (local_30c != (undefined4 *)0x0) {
              Memory_FreeIfNonNull(local_30c);
            }
            FUN_008b19b0(local_19c);
            goto LAB_0065f014;
          }
          uVar14 = FUN_00657010(this,param_1,(int *)&pfStack_27c,piVar9,param_9,param_10,param_11,
                                param_12,(float)local_338,(float)local_334,(float)local_360,
                                (float)local_354);
          if ((char)uVar14 == '\0') {
            if (pfStack_27c != (float *)0x0) {
              Memory_FreeIfNonNull(pfStack_27c);
            }
            if (piVar9 != (int *)0x0) {
              (**(code **)(*piVar9 + 4))();
            }
LAB_00661a28:
            Memory_FreeIfNonNull(local_324);
LAB_00661a30:
            if (local_35c != (int *)0x0) {
              (**(code **)(*local_35c + 4))();
            }
            if (local_368 != (int *)0x0) {
              (**(code **)(*local_368 + 4))();
            }
            if (local_30c != (undefined4 *)0x0) {
              Memory_FreeIfNonNull(local_30c);
            }
            FUN_008b19b0(local_19c);
            FUN_008b19b0(local_1cc);
LAB_0066183d:
            if (local_36c != 0) {
              FUN_00625c40(local_36c);
            }
            return 6;
          }
          if (pfStack_27c != (float *)0x0) {
            Memory_FreeIfNonNull(pfStack_27c);
          }
        }
        if ((local_35c == (int *)0x0) ||
           (local_34c = (int *)(local_35c[3] - local_35c[2] >> 6), local_34c == (int *)0x0)) {
          FUN_00641b10(apfStack_2d0);
          puVar10 = (undefined4 *)piVar9[3];
          apfStack_2d0[0] = local_360;
          apfStack_2d0[1] = local_2fc;
          apfStack_2d0[2] = local_354;
          auStack_2b4[0] = 7;
          aiStack_298[0] = 0x10;
          if (puVar10 < (undefined4 *)piVar9[4]) {
            piVar9[3] = (int)(puVar10 + 0x10);
            if (puVar10 != (undefined4 *)0x0) {
              ppfVar22 = apfStack_2d0;
              for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
                *puVar10 = *ppfVar22;
                ppfVar22 = ppfVar22 + 1;
                puVar10 = puVar10 + 1;
              }
            }
          }
          else {
            FUN_00a8f4d0(piVar9 + 2,puVar10,apfStack_2d0);
          }
        }
        else {
          puVar10 = (undefined4 *)local_35c[2];
          ppfVar22 = apfStack_2d0;
          for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
            *ppfVar22 = (float *)*puVar10;
            puVar10 = puVar10 + 1;
            ppfVar22 = ppfVar22 + 1;
          }
          auStack_2b4[0] = 8;
          if (((local_328 != (int *)0x0) && (local_328[0x102] == 1)) && (local_328[0x103] == 0x50))
          {
            aiStack_298[0] = 0x14;
          }
          puVar10 = (undefined4 *)piStack_350[3];
          if (puVar10 < (undefined4 *)piStack_350[4]) {
            piStack_350[3] = (int)(puVar10 + 0x10);
            if (puVar10 != (undefined4 *)0x0) {
              ppfVar22 = apfStack_2d0;
              for (iVar11 = 0x10; iVar11 != 0; iVar11 = iVar11 + -1) {
                *puVar10 = *ppfVar22;
                ppfVar22 = ppfVar22 + 1;
                puVar10 = puVar10 + 1;
              }
            }
          }
          else {
            FUN_00a8f4d0(piStack_350 + 2,puVar10,apfStack_2d0);
          }
          if ((int *)0x1 < local_34c) {
            local_34c = (int *)((int)local_34c + -1);
            local_340 = (float *)0x40;
            do {
              iVar11 = local_35c[2];
              puVar10 = (undefined4 *)piStack_350[3];
              if (puVar10 < (undefined4 *)piStack_350[4]) {
                piStack_350[3] = (int)(puVar10 + 0x10);
                if (puVar10 != (undefined4 *)0x0) {
                  puVar23 = (undefined4 *)(iVar11 + (int)local_340);
                  for (iVar20 = 0x10; iVar20 != 0; iVar20 = iVar20 + -1) {
                    *puVar10 = *puVar23;
                    puVar23 = puVar23 + 1;
                    puVar10 = puVar10 + 1;
                  }
                }
              }
              else {
                FUN_00a8f4d0(piStack_350 + 2,puVar10,(undefined4 *)(iVar11 + (int)local_340));
              }
              local_340 = local_340 + 0x10;
              local_34c = (int *)((int)local_34c + -1);
            } while (local_34c != (int *)0x0);
            local_34c = (int *)0x0;
          }
        }
        FUN_006511b0(local_32c,param_7,(uint)local_348,param_8,param_5,(float)local_360,
                     (float)local_354);
        piVar9 = piStack_350;
        if (piStack_350 != (int *)0x0) {
          FUN_0065a010(this,(int)piStack_350,param_9,(byte)param_11,param_1);
          FUN_006442e0(local_e8,*(undefined4 *)((int)this + 0xc),*(undefined4 *)((int)this + 8),this
                       ,param_1);
          bVar25 = NeighborhoodPath_DispatchConditionalFilterPasses
                             (local_e8,piVar9,local_32c * 0x20 + *param_2,
                              *param_5 + (int)local_348 * 0x1c,param_9,'\x01');
          if (!bVar25) {
            FUN_00643e00((int)local_e8);
            (**(code **)(*piVar9 + 4))();
            if (local_324 != (float *)0x0) {
              Memory_FreeIfNonNull(local_324);
            }
            if (local_35c != (int *)0x0) {
              (**(code **)(*local_35c + 4))();
            }
            if (local_368 != (int *)0x0) {
              (**(code **)(*local_368 + 4))();
            }
            if (local_30c != (undefined4 *)0x0) {
              Memory_FreeIfNonNull(local_30c);
            }
            FUN_008b19b0(local_19c);
            FUN_008b19b0(local_1cc);
            if (local_36c != 0) {
              FUN_00625c40(local_36c);
            }
            return 7;
          }
          FUN_00643e00((int)local_e8);
LAB_006607fd:
          (**(code **)(*piVar9 + 4))();
        }
      }
      if (local_324 != (float *)0x0) {
        Memory_FreeIfNonNull(local_324);
      }
      if (local_35c != (int *)0x0) {
        (**(code **)(*local_35c + 4))();
      }
      if (local_368 != (int *)0x0) {
        (**(code **)(*local_368 + 4))();
      }
      if (local_30c != (undefined4 *)0x0) {
        Memory_FreeIfNonNull(local_30c);
      }
      FUN_008b19b0(local_19c);
      FUN_008b19b0(local_1cc);
LAB_0065ec47:
      if (local_36c == 0) {
        return 0;
      }
      FUN_00625c40(local_36c);
      return 0;
    }
    *(uint *)((int)this + 0x13c) = *(uint *)((int)this + 0x13c) | 0x40;
    if ((char)local_330[300] != '\0') {
      local_34c = (int *)(*(uint *)((int)this + 0x13c) & 0xffffffbf | 0x100);
      *(int **)((int)this + 0x13c) = local_34c;
      if ((param_1 != (uint *)0x0) &&
         (bVar25 = Routing_IsBoatSpeciesForPortalPermission(*param_1 & 0xcf00), bVar25)) {
        *(uint *)((int)this + 0x13c) = (uint)local_34c | 0x400;
      }
    }
    uVar12 = FUN_0065c070(this,(int *)((int)this + 0x128),piVar24,(float *)&local_234,
                          (float *)&local_21c,param_1,(ushort *)&local_344,
                          *(uint *)((int)this + 0x11c),param_9);
    local_355 = (char)uVar12;
    if (local_355 == '\0') {
      if (local_368 != (int *)0x0) {
        (**(code **)(*local_368 + 4))();
      }
      goto LAB_0065efe7;
    }
    local_2f0 = (float *)local_330[0x12];
    local_2ec = (float)local_330[0x13];
    cVar6 = '\x01';
    ppfVar32 = &local_284;
    ppfVar30 = &local_280;
    ppfVar22 = &local_344;
    pvVar13 = LotRouteGraph_FindLotByGuid
                        (*(void **)((int)this + 8),*(ulonglong *)(local_330 + 0x12));
    uVar14 = FUN_00653960(this,local_2f0,local_2ec,(uint)pvVar13,(ushort *)ppfVar22,
                          (float *)ppfVar30,(float *)ppfVar32,cVar6);
    if ((char)uVar14 == '\0') {
      if (local_368 != (int *)0x0) {
        (**(code **)(*local_368 + 4))();
      }
      if (local_30c != (undefined4 *)0x0) {
        Memory_FreeIfNonNull(local_30c);
      }
      FUN_008b19b0(local_19c);
      FUN_008b19b0(local_1cc);
LAB_0065f477:
      if (local_36c == 0) {
        return 1;
      }
      FUN_00625c40(local_36c);
      return 1;
    }
    local_25c = *(undefined4 *)((int)this + 0x158);
    local_264 = local_280;
    local_260 = local_284;
    local_24c = 1.0;
    local_324 = (float *)0x0;
    local_320 = (undefined4 *)0x0;
    local_31c = 0;
    local_318 = "Routing/lotGoal";
    local_250 = 0;
    local_258 = (char *)0x0;
    local_254 = 0;
    FUN_0062b010(&local_324,&local_264);
    piVar16 = local_368;
    if (local_368 != (int *)0x0) {
      local_368 = (int *)0x0;
      (**(code **)(*piVar16 + 4))();
    }
    local_34c = (int *)LotRouteGraph_PlanWithAlternateRooms
                                 (*(void **)((int)this + 8),param_1,param_2,local_324,1.0,
                                  (int *)&local_324,&local_368,&local_32c,(float *)0x0,param_9,
                                  local_330,param_11,param_12,(undefined1 *)0x0);
    if (local_34c != (int *)0x0) {
      if (local_324 != (float *)0x0) {
        Memory_FreeIfNonNull(local_324);
      }
      if (local_368 != (int *)0x0) {
        (**(code **)(*local_368 + 4))();
      }
      if (local_30c != (undefined4 *)0x0) {
        Memory_FreeIfNonNull(local_30c);
      }
      FUN_00652dc0((int)&local_1f0);
      if (local_36c != 0) {
        FUN_00625c40(local_36c);
      }
      return (uint)local_34c;
    }
    if (local_368 != (int *)0x0) {
      if (DAT_0115924c != '\0') {
        local_364 = local_344;
        uVar14 = FUN_00655900(this,(int)this + 0x128,(int)local_368,(int)param_1,
                              (ushort *)&local_364,'\x01');
        if ((char)uVar14 != '\0') {
          local_344 = local_364;
          cVar6 = FUN_006547d0(this,local_330[0x12],local_330[0x13],(ushort *)&local_344,
                               (float *)&local_280,(float *)&local_284,'\x01');
          if (cVar6 == '\0') {
            if (local_324 != (float *)0x0) {
              Memory_FreeIfNonNull(local_324);
            }
LAB_0065f65d:
            if (local_368 != (int *)0x0) {
              (**(code **)(*local_368 + 4))();
            }
            if (local_30c != (undefined4 *)0x0) {
              Memory_FreeIfNonNull(local_30c);
            }
            FUN_00652dc0((int)&local_1f0);
            goto LAB_0065f477;
          }
        }
      }
      if (local_324 != (float *)0x0) {
        Memory_FreeIfNonNull(local_324);
      }
      goto LAB_0065f6a1;
    }
    if (local_324 != (float *)0x0) {
      Memory_FreeIfNonNull(local_324);
LAB_0065f596:
      if (local_368 != (int *)0x0) {
        (**(code **)(*local_368 + 4))();
      }
    }
    if (local_30c != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(local_30c);
    }
    FUN_00652dc0((int)&local_1f0);
  }
  else {
    pfVar21 = (float *)*param_2;
    local_1e8 = *pfVar21;
    local_1e4 = pfVar21[1];
    local_1e0 = pfVar21[2];
    iVar11 = FUN_00641620(*(void **)((int)this + 8),param_1,local_330[0x12],local_330[0x13],
                          &local_1e8,local_1d8,0);
    if (iVar11 != 0) {
      local_1f0 = local_1f0 | 0x10;
      if ((char)piVar9[300] != '\0') {
        *(uint *)((int)this + 0x11c) = *(uint *)((int)this + 0x11c) & 0xfffffefc;
      }
      FUN_006515a0(this,(int)piVar9,&local_1ec);
      FUN_006552f0(this,piVar9,(float *)&local_234,(float *)&local_21c,local_1d8,param_1,
                   *(uint *)((int)this + 0x11c),0,(undefined4 *)((int)this + 0x128));
      goto LAB_0065f0a8;
    }
LAB_0065efe7:
    if (local_30c != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(local_30c);
    }
    FUN_008b19b0(local_19c);
LAB_0065f014:
    FUN_008b19b0(local_1cc);
  }
  bVar25 = local_36c == 0;
LAB_0065f026:
  if (!bVar25) {
    FUN_00625c40(local_36c);
  }
  return 5;
}

