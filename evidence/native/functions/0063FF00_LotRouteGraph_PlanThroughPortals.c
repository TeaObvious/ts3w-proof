/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst static routing contract: Numeric EAX lot/portal planner. Requires enabled backend+0x10c
   and path or obstacle output; goals empty→3;starts empty→2;missing graph/lot→1.
   Copies/converts world-planar inputs and goal facing into local lot records; resolves room IDs.
   Same-room path invokes00633660; portal search0063eb60 yields portal plan; geometric
   pieces00632e50/00633660 are assembled with portal entry/exit metadata. Converts output path back
   to world and writes selected indices. Detailed graph-search leaf costs and geometric solver
   remain open. */

uint __thiscall
LotRouteGraph_PlanThroughPortals
          (void *this,uint *param_1,int *param_2,float *param_3,float param_4,int *param_5,
          undefined4 *param_6,undefined4 *param_7,float *param_8,uint param_9,int *param_10,
          undefined4 param_11,int *param_12,undefined1 *param_13)

{
  bool bVar1;
  undefined1 uVar2;
  char cVar3;
  bool bVar4;
  ushort uVar5;
  ushort uVar6;
  undefined4 uVar7;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  float *pfVar8;
  void *pvVar9;
  uint uVar10;
  undefined3 extraout_var_01;
  undefined4 *puVar11;
  int *piVar12;
  uint uVar13;
  TS3WPortalXZLevel *pTVar14;
  TS3WPortalXZLevel *pTVar15;
  int iVar16;
  int *this_00;
  int iVar17;
  float *pfVar18;
  undefined4 *puVar19;
  LotXZLevel *pLVar20;
  uint *puVar21;
  uint **ppuVar22;
  int iVar23;
  float *pfVar24;
  float10 fVar25;
  float **ppfVar26;
  undefined ***pppuVar27;
  float **ppfVar28;
  float *pfVar29;
  char cVar30;
  float fVar31;
  float *local_1bc;
  float *local_1b8;
  undefined4 local_1b4;
  void *local_1b0;
  uint local_1ac;
  uint local_1a8;
  float *local_1a4;
  char local_19d;
  float *local_19c;
  void *local_198 [2];
  ushort *puStack_190;
  uint uStack_18c;
  TS3WPortalXZLevel local_188;
  float *local_17c;
  float *local_178;
  undefined **appuStack_16c [2];
  float *pfStack_164;
  float *pfStack_160;
  int iStack_150;
  LotXZLevel local_14c;
  float fStack_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float fStack_130;
  undefined4 uStack_12c;
  undefined4 uStack_128;
  undefined4 uStack_124;
  uint uStack_120;
  TS3WPortalXZLevel local_10c;
  uint local_100 [8];
  void *pvStack_e0;
  uint uStack_dc;
  undefined4 uStack_d8;
  uint *local_c0;
  void *local_bc;
  undefined ***local_b8;
  undefined4 local_b4;
  uint local_b0;
  int *local_ac;
  uint *apuStack_a0 [2];
  float fStack_98;
  char *pcStack_94;
  undefined **local_60;
  LotXZLevel local_5c [2];
  float afStack_44 [16];
  undefined4 uStack_4;
  
  if (*(char *)((int)this + 0x10c) == '\0') {
    return 1;
  }
  if (param_13 != (undefined1 *)0x0) {
    *param_13 = 0;
  }
  if ((param_6 == (undefined4 *)0x0) && (param_12 == (int *)0x0)) {
    return 1;
  }
  if (*param_5 == param_5[1]) {
    return 3;
  }
  if (*param_2 == param_2[1]) {
    return 2;
  }
  if ((*(int *)((int)this + 0xbc) == 0) || (param_10 == (int *)0x0)) {
    return 1;
  }
  uVar13 = param_10[0x12];
  uVar10 = param_10[0x13];
  local_1ac = uVar13;
  local_1a8 = uVar10;
  uVar7 = LotRouting_HasAdmittedLotRecord(this,uVar13,uVar10);
  if ((char)uVar7 == '\0') {
    return 1;
  }
  local_1b0 = (void *)FUN_0062f2d0((void *)((int)this + 0x48),&local_1ac);
  local_60 = &PTR_LAB_00fecfd0;
  FUN_0062a020((int)local_100);
  local_b8 = &local_60;
  local_c0 = param_1;
  local_b4 = 0;
  local_ac = param_10;
  if (param_12 != (int *)0x0) {
    param_9 = param_9 | 0xf;
  }
  local_b0 = param_9 | 0x10000;
  local_bc = this;
  FUN_0062f560(this,uVar13,uVar10,(float *)*param_2,&local_188.x);
  FUN_0062f560(this,uVar13,uVar10,param_3,&local_10c.x);
  FUN_006287a0(&local_17c,param_5);
  local_1b8 = local_178;
  pfVar8 = local_17c;
  if (local_17c != local_178) {
    do {
      FUN_0062f560(this,uVar13,uVar10,pfVar8,pfVar8);
      FUN_0062f620(this,uVar13,uVar10,pfVar8 + 3,pfVar8 + 3);
      pfVar8 = pfVar8 + 7;
    } while (pfVar8 != local_1b8);
  }
  fVar25 = Lot_GetLocalSeaLevel(param_10);
  local_1bc = (float *)(float)fVar25;
  if ((char)param_10[300] != '\0') {
    uVar2 = Lot_IsCommercialDivingLot((int)param_10);
    if (local_188.level == CONCAT31(extraout_var,uVar2)) {
      local_5c[0].x = local_188.x;
      local_5c[0].z = local_188.z;
      local_5c[0].level = local_188.level;
      fVar25 = LotLevelHeight_SampleLocalPosition((void *)param_10[0xa4],local_5c);
      local_19c = (float *)0x1;
      if ((float10)(float)local_1bc < fVar25) goto LAB_00640134;
    }
    else {
LAB_00640134:
      local_19c = (float *)0x0;
    }
    uVar2 = Lot_IsCommercialDivingLot((int)param_10);
    if ((void *)local_10c.level == (void *)CONCAT31(extraout_var_00,uVar2)) {
      local_14c.x = local_10c.x;
      local_14c.level = local_10c.level;
      local_14c.z = local_10c.z;
      fVar25 = LotLevelHeight_SampleLocalPosition((void *)param_10[0xa4],&local_14c);
      if ((float10)(float)local_1bc < fVar25) goto LAB_0064019d;
      pfVar8 = (float *)0x1;
    }
    else {
LAB_0064019d:
      pfVar8 = (float *)0x0;
    }
    if (local_19c != pfVar8) {
      local_b0 = local_b0 | 0x2000000;
    }
  }
  bVar1 = false;
  if (((int)local_178 - (int)local_17c) / 0x1c == 1) {
    pfVar8 = (float *)*local_17c;
    pfVar18 = (float *)local_17c[1];
    if (local_17c[3] == 0.0) {
      local_1bc = pfVar18;
      local_1b8 = pfVar8;
      if (local_17c[4] == 0.0) goto LAB_0064029d;
    }
    puVar21 = local_100;
    pfVar24 = (float *)((float)pfVar8 - local_17c[3] * 0.125);
    pfVar29 = (float *)((float)pfVar18 - local_17c[4] * 0.125);
    fVar31 = 0.001;
    local_1bc = pfVar29;
    local_1b8 = pfVar24;
    pvVar9 = (void *)FUN_00630330(this,uVar13,uVar10,(int)local_17c[2]);
    uVar10 = FUN_00667580(pvVar9,puVar21,(float)pfVar8,(float)pfVar18,(float)pfVar24,(float)pfVar29,
                          fVar31);
    if ((char)uVar10 == '\0') {
      *local_17c = (float)local_1b8;
      local_17c[1] = (float)local_1bc;
      bVar1 = true;
    }
  }
LAB_0064029d:
  pfVar8 = (float *)*param_2;
  local_19d = FUN_00635730(this,(int)param_10,*pfVar8,pfVar8[1],pfVar8[2],0.01,param_1);
  if (!(bool)local_19d) {
    uVar2 = Lot_IsCommercialDivingLot((int)param_10);
    if (CONCAT31(extraout_var_01,uVar2) < local_188.level) {
      pvVar9 = (void *)param_10[0xa4];
      uVar7 = local_1b4;
      if (pvVar9 != (void *)0x0) {
        for (; local_1b4 = (int *)uVar7, 0 < local_188.level; local_188.level = local_188.level + -1
            ) {
          local_1b4._3_1_ = (undefined1)((uint)uVar7 >> 0x18);
          local_1b4._0_3_ =
               CONCAT12((undefined1)local_188.level,
                        CONCAT11((char)(int)local_188.z,(char)(int)local_188.x));
          cVar3 = FUN_00a8e0b0(pvVar9,(char *)&local_1b4,0xf,'\x01');
          if (cVar3 != '\0') break;
          uVar7 = local_1b4;
        }
      }
    }
  }
  uVar5 = FUN_00624f80((int)param_10,&local_188.x);
  uVar6 = FUN_00624f80((int)param_10,&local_10c.x);
  local_1a4 = (float *)(uint)uVar6;
  FUN_0063fc70(this,uVar13,local_1a8,(uint)uVar5);
  if (uVar6 != uVar5) {
    FUN_0063fc70(this,uVar13,local_1a8,(float *)(uint)uVar6);
  }
  FUN_00632410(local_198,this,uVar13,local_1a8);
  puVar11 = (undefined4 *)FUN_004e4500(0x18,"Routing/Path",0);
  if (puVar11 == (undefined4 *)0x0) {
    piVar12 = (int *)0x0;
    local_1b4 = (int *)0x0;
  }
  else {
    piVar12 = (int *)FUN_0064ee20(puVar11);
    local_1b4 = piVar12;
    if (piVar12 != (int *)0x0) {
      (**(code **)*piVar12)();
    }
  }
  uVar13 = local_1ac;
  if (uVar5 == (ushort)local_1a4) {
    local_1bc = (float *)FUN_00633660(this,local_100,local_1ac,local_1a8,&local_188.x,&local_10c.x,
                                      param_4,(uint *)&local_17c,(int)piVar12,&local_1b8,'\0','\0');
    pvVar9 = local_1b0;
    if (local_1bc == (float *)0x0) {
      if ((bVar1) && ((piVar12[3] - piVar12[2] & 0xffffffc0U) != 0)) {
        puVar11 = (undefined4 *)((piVar12[3] - piVar12[2] >> 6) * 0x40 + -0x40 + piVar12[2]);
        puVar19 = puVar11;
        ppuVar22 = apuStack_a0;
        for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
          *ppuVar22 = (uint *)*puVar19;
          puVar19 = puVar19 + 1;
          ppuVar22 = ppuVar22 + 1;
        }
        puVar11[7] = 0;
        apuStack_a0[0] = (uint *)(local_17c[3] * 0.125 + (float)apuStack_a0[0]);
        fStack_98 = local_17c[4] * 0.125 + fStack_98;
        FUN_0062aa60(piVar12,apuStack_a0);
        uVar13 = local_1ac;
      }
      if (DAT_0115924c != '\0') {
        FUN_00625c60(apuStack_a0,(undefined4 *)*param_2);
        FUN_0062f560(this,uVar13,local_1a8,(float *)apuStack_a0,(float *)apuStack_a0);
        FUN_00632970(this,(int)local_100,(int)piVar12);
      }
      FUN_0062f960(this,uVar13,local_1a8,(int)piVar12);
      if (param_6 != (undefined4 *)0x0) {
        *param_6 = piVar12;
        (**(code **)*piVar12)();
      }
      if (param_7 != (undefined4 *)0x0) {
        *param_7 = 0;
      }
      if (param_8 != (float *)0x0) {
        *param_8 = (float)local_1b8;
      }
      if (param_12 != (int *)0x0) {
        if (*param_12 == 0) {
          puVar11 = (undefined4 *)FUN_004e4500(0x18,"Routing/ObstacleInfo",0);
          if (puVar11 == (undefined4 *)0x0) {
            iVar16 = 0;
          }
          else {
            iVar16 = FUN_0064ee40(puVar11);
          }
          *param_12 = iVar16;
          *(int *)(iVar16 + 4) = *(int *)(iVar16 + 4) + 1;
        }
        FUN_00627a60(this,local_100,(void *)*param_12);
        FUN_0062fb60(this,uVar13,local_1a8,(void *)*param_12);
      }
      if (piVar12 != (int *)0x0) {
        (**(code **)(*piVar12 + 4))();
      }
      FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
      if (local_17c != (float *)0x0) {
        Memory_FreeIfNonNull(local_17c);
      }
      FUN_00629330((int)local_100);
      return 0;
    }
    uVar13 = FUN_00625dd0((int)local_1b0,uVar5);
    if (uVar13 < 2) {
      if (piVar12 != (int *)0x0) {
        (**(code **)(*piVar12 + 4))();
      }
      FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
      if (local_17c != (float *)0x0) {
        Memory_FreeIfNonNull(local_17c);
      }
      FUN_00629330((int)local_100);
      return (uint)local_1bc;
    }
  }
  else {
    pvVar9 = local_1b0;
  }
  pfVar8 = (float *)FUN_00625dd0((int)pvVar9,uVar5);
  local_1bc = pfVar8;
  if (uVar5 != (ushort)local_1a4) {
    pfVar8 = (float *)FUN_00625dd0((int)pvVar9,(ushort)local_1a4);
  }
  local_19c = pfVar8;
  if ((local_19d != '\0') &&
     (((local_1bc == (float *)0x0 || (pfVar8 == (float *)0x0)) && (param_12 == (int *)0x0)))) {
LAB_006408ec:
    if (piVar12 != (int *)0x0) {
      (**(code **)(*piVar12 + 4))();
    }
    FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
    if (local_17c != (float *)0x0) {
      Memory_FreeIfNonNull(local_17c);
    }
    FUN_00629330((int)local_100);
    return 5;
  }
  if (param_13 != (undefined1 *)0x0) {
    *param_13 = 1;
  }
  uVar13 = (uint)local_1a4 & 0xffff;
  apuStack_a0[0] = (uint *)0x0;
  apuStack_a0[1] = (uint *)0x0;
  fStack_98 = 0.0;
  local_1b8 = (float *)((int)local_1a4 * 0x10000 + 0xffff);
  uVar10 = (uint)uVar5 * 0x10000 + 0xfffe;
  pcStack_94 = "Routing/portalPlan";
  bVar4 = PortalGraphSearch_FindRoomCrossings
                    (this,local_100,local_1b0,&local_188,&local_10c,uVar10,(uint)local_1b8,
                     apuStack_a0,(uint *)&local_1bc,true,0xfffe,0xfffe);
  if ((!bVar4) || (apuStack_a0[0] == apuStack_a0[1])) {
    if ((float *)0x1 < local_19c) {
      iStack_150 = *(int *)((int)local_1b0 + 0x90) + uVar13 * 0x44;
      pfVar8 = (float *)0x0;
      if (local_19c != (float *)0x0) {
        do {
          iVar16 = *(int *)(*(int *)(iStack_150 + 4) +
                           (uint)*(ushort *)(*(int *)(iStack_150 + 0x24) + (int)pfVar8 * 2) * 4);
          if (*(short *)(iVar16 + 0x48) == (ushort)local_1a4) {
            puVar11 = (undefined4 *)(iVar16 + 0x14);
          }
          else {
            puVar11 = (undefined4 *)(iVar16 + 0x20);
          }
          FUN_0061c0d0(&local_14c,&local_5c[0].x,puVar11);
          apuStack_a0[1] = apuStack_a0[0];
          bVar4 = PortalGraphSearch_FindRoomCrossings
                            (this,local_100,local_1b0,&local_188,(TS3WPortalXZLevel *)&local_14c,
                             uVar10,(uint)local_1b8,apuStack_a0,(uint *)&local_1bc,true,0xfffe,
                             0xfffe);
          if ((bVar4) && (apuStack_a0[0] != apuStack_a0[1])) {
            FUN_0064ee20(&local_5c[0].x);
            iVar16 = FUN_00633660(this,local_100,local_1ac,local_1a8,&local_14c.x,&local_10c.x,
                                  param_4,(uint *)&local_17c,(int)local_5c,&uStack_4,'\0','\0');
            if (iVar16 == 0) {
              FUN_00626b40(&local_5c[0].x);
              goto LAB_00640988;
            }
            FUN_00626b40(&local_5c[0].x);
          }
          pfVar8 = (float *)((int)pfVar8 + 1);
        } while (pfVar8 < local_19c);
      }
    }
    if ((param_12 == (int *)0x0) && (local_19d != '\0')) {
      if (apuStack_a0[0] != (uint *)0x0) {
        Memory_FreeIfNonNull(apuStack_a0[0]);
      }
      goto LAB_006408ec;
    }
    if (local_1bc != local_1b8) {
      PortalGraphSearch_FindRoomCrossings
                (this,local_100,local_1b0,&local_188,&local_10c,uVar10,(uint)local_1bc,apuStack_a0,
                 (uint *)&local_1bc,true,0xfffe,0xfffe);
    }
  }
LAB_00640988:
  if ((param_12 != (int *)0x0) && (*param_12 == 0)) {
    puVar11 = (undefined4 *)FUN_004e4500(0x18,"Routing/ObstacleInfo",0);
    if (puVar11 == (undefined4 *)0x0) {
      iVar16 = 0;
    }
    else {
      iVar16 = FUN_0064ee40(puVar11);
    }
    *param_12 = iVar16;
    *(int *)(iVar16 + 4) = *(int *)(iVar16 + 4) + 1;
  }
  FUN_0064ee20(appuStack_16c);
  puVar21 = apuStack_a0[0];
  cVar3 = '\0';
  if (apuStack_a0[0] == apuStack_a0[1]) {
    pfStack_160 = pfStack_164;
    uVar13 = FUN_00633660(this,local_100,local_1ac,local_1a8,&local_188.x,&local_10c.x,param_4,
                          (uint *)&local_17c,(int)appuStack_16c,&local_19c,'\x01','\0');
    if (uVar13 != 0) {
      FUN_00626b40(appuStack_16c);
      if (puVar21 != (uint *)0x0) {
        Memory_FreeIfNonNull(puVar21);
      }
      if (piVar12 != (int *)0x0) {
        (**(code **)(*piVar12 + 4))();
      }
      goto LAB_0064130d;
    }
    if ((bVar1) && ((piVar12[3] - piVar12[2] & 0xffffffc0U) != 0)) {
      pfVar8 = (float *)((piVar12[3] - piVar12[2] >> 6) * 0x40 + -0x40 + piVar12[2]);
      pfVar18 = pfVar8;
      pfVar24 = afStack_44;
      for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
        *pfVar24 = *pfVar18;
        pfVar18 = pfVar18 + 1;
        pfVar24 = pfVar24 + 1;
      }
      pfVar8[7] = 0.0;
      afStack_44[0] = local_17c[3] * 0.125 + afStack_44[0];
      afStack_44[2] = local_17c[4] * 0.125 + afStack_44[2];
      FUN_0062aa60(piVar12,afStack_44);
    }
    if (param_12 != (int *)0x0) {
      FUN_00627a60(this,local_100,(void *)*param_12);
    }
    piVar12 = local_1b4;
    iVar16 = (int)pfStack_160 - (int)pfStack_164 >> 6;
    if (iVar16 != 0) {
      iVar17 = 0;
      do {
        FUN_0062aa60(piVar12,(undefined4 *)((int)pfStack_164 + iVar17));
        iVar17 = iVar17 + 0x40;
        iVar16 = iVar16 + -1;
      } while (iVar16 != 0);
    }
  }
  else {
    pppuVar27 = appuStack_16c;
    pTVar14 = PortalGraphSearch_GetNodePosition(this,local_c0,local_1b0,*apuStack_a0[0],false);
    uVar13 = FUN_00632e50(this,local_100,local_1ac,local_1a8,&local_188.x,&pTVar14->x,(int)pppuVar27
                          ,cVar3);
    if (uVar13 != 0) {
      FUN_00626b40(appuStack_16c);
      Memory_FreeIfNonNull(puVar21);
      if (piVar12 != (int *)0x0) {
        (**(code **)(*piVar12 + 4))();
      }
LAB_0064130d:
      FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
      if (local_17c != (float *)0x0) {
        Memory_FreeIfNonNull(local_17c);
      }
      FUN_00629330((int)local_100);
      return uVar13;
    }
    if ((bVar1) && ((piVar12[3] - piVar12[2] & 0xffffffc0U) != 0)) {
      pfVar8 = (float *)((piVar12[3] - piVar12[2] >> 6) * 0x40 + -0x40 + piVar12[2]);
      pfVar18 = pfVar8;
      pLVar20 = &local_14c;
      for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
        pLVar20->x = *pfVar18;
        pfVar18 = pfVar18 + 1;
        pLVar20 = (LotXZLevel *)&pLVar20->z;
      }
      pfVar8[7] = 0.0;
      local_14c.x = local_17c[3] * 0.125 + local_14c.x;
      local_14c.level = (int)(local_17c[4] * 0.125 + (float)local_14c.level);
      FUN_0062aa60(piVar12,&local_14c.x);
    }
    if (param_12 != (int *)0x0) {
      FUN_00627a60(this,local_100,(void *)*param_12);
    }
    iVar17 = (int)pfStack_160 - (int)pfStack_164 >> 6;
    iVar16 = iVar17 + -1;
    if (iVar16 != 0) {
      iVar23 = 0;
      do {
        FUN_0062aa60(local_1b4,(undefined4 *)((int)pfStack_164 + iVar23));
        iVar23 = iVar23 + 0x40;
        iVar16 = iVar16 + -1;
      } while (iVar16 != 0);
    }
    pfVar8 = pfStack_164 + iVar17 * 0x10 + -0x10;
    pLVar20 = &local_14c;
    for (iVar16 = 0x10; puVar21 = apuStack_a0[0], iVar16 != 0; iVar16 = iVar16 + -1) {
      pLVar20->x = *pfVar8;
      pfVar8 = pfVar8 + 1;
      pLVar20 = (LotXZLevel *)&pLVar20->z;
    }
    fStack_130 = 2.8026e-45;
    iVar16 = FUN_00625e20((int)local_1b0,*apuStack_a0[0]);
    piVar12 = local_1b4;
    uStack_120 = (uint)*(ushort *)(iVar16 + 0x34);
    uStack_12c = *(undefined4 *)(iVar16 + 8);
    uStack_128 = *(undefined4 *)(iVar16 + 0xc);
    uStack_124 = *(undefined4 *)(iVar16 + 0x30);
    FUN_0062aa60(local_1b4,&local_14c.x);
    local_19c = (float *)(((int)apuStack_a0[1] - (int)puVar21 >> 2) + -1);
    local_1a4 = (float *)0x1;
    if ((float *)0x1 < local_19c) {
      do {
        puVar21 = apuStack_a0[0];
        pfVar8 = local_1a4;
        pvVar9 = local_1b0;
        cVar3 = '\0';
        pppuVar27 = appuStack_16c;
        pfStack_160 = pfStack_164;
        pTVar14 = PortalGraphSearch_GetNodePosition
                            (this,local_c0,local_1b0,apuStack_a0[0][(int)local_1a4 + 1],false);
        pTVar15 = PortalGraphSearch_GetNodePosition(this,local_c0,pvVar9,puVar21[(int)pfVar8],true);
        uVar13 = FUN_00632e50(this,local_100,local_1ac,local_1a8,&pTVar15->x,&pTVar14->x,
                              (int)pppuVar27,cVar3);
        if (uVar13 != 0) {
          appuStack_16c[0] = &PTR_FUN_00fed0e0;
          if (pfStack_164 != (float *)0x0) {
            Memory_FreeIfNonNull(pfStack_164);
          }
          appuStack_16c[0] = &PTR_LAB_00fa2b80;
          Memory_FreeIfNonNull(puVar21);
          if (local_1b4 != (int *)0x0) {
            (**(code **)(*local_1b4 + 4))();
          }
          FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
          if (local_17c != (float *)0x0) {
            Memory_FreeIfNonNull(local_17c);
          }
          FUN_009d67f0((int)pvStack_e0,uStack_dc);
          uStack_d8 = 0;
          if (1 < uStack_dc) {
            Memory_FreeIfNonNull(pvStack_e0);
          }
          return uVar13;
        }
        if ((bVar1) && ((local_1b4[3] - local_1b4[2] & 0xffffffc0U) != 0)) {
          pfVar8 = (float *)((local_1b4[3] - local_1b4[2] >> 6) * 0x40 + -0x40 + local_1b4[2]);
          pfVar18 = pfVar8;
          pfVar24 = afStack_44;
          for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
            *pfVar24 = *pfVar18;
            pfVar18 = pfVar18 + 1;
            pfVar24 = pfVar24 + 1;
          }
          pfVar8[7] = 0.0;
          afStack_44[0] = local_17c[3] * 0.125 + afStack_44[0];
          afStack_44[2] = local_17c[4] * 0.125 + afStack_44[2];
          FUN_0062aa60(local_1b4,afStack_44);
        }
        if (param_12 != (int *)0x0) {
          FUN_00627a60(this,local_100,(void *)*param_12);
        }
        puVar21 = apuStack_a0[0];
        pfVar8 = pfStack_164;
        pLVar20 = &local_14c;
        for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
          pLVar20->x = *pfVar8;
          pfVar8 = pfVar8 + 1;
          pLVar20 = (LotXZLevel *)&pLVar20->z;
        }
        fStack_130 = 4.2039e-45;
        iVar16 = FUN_00625e20((int)local_1b0,puVar21[(int)local_1a4]);
        piVar12 = local_1b4;
        pfVar8 = (float *)local_1b4[3];
        this_00 = local_1b4 + 2;
        uStack_120 = (uint)*(ushort *)(iVar16 + 0x34);
        uStack_12c = *(undefined4 *)(iVar16 + 8);
        uStack_128 = *(undefined4 *)(iVar16 + 0xc);
        uStack_124 = *(undefined4 *)(iVar16 + 0x30);
        fStack_13c = *(float *)(iVar16 + 0x2c);
        if (pfVar8 < (float *)local_1b4[4]) {
          local_1b4[3] = (int)(pfVar8 + 0x10);
          if (pfVar8 != (float *)0x0) {
            pLVar20 = &local_14c;
            for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
              *pfVar8 = pLVar20->x;
              pLVar20 = (LotXZLevel *)&pLVar20->z;
              pfVar8 = pfVar8 + 1;
            }
          }
        }
        else {
          FUN_00a8f4d0(this_00,pfVar8,&local_14c.x);
        }
        iStack_150 = (int)pfStack_160 - (int)pfStack_164 >> 6;
        if (1 < iStack_150 - 1U) {
          local_1b8 = (float *)(iStack_150 + -2);
          local_1bc = (float *)0x40;
          do {
            puVar11 = (undefined4 *)piVar12[3];
            if (puVar11 < (undefined4 *)piVar12[4]) {
              piVar12[3] = (int)(puVar11 + 0x10);
              if (puVar11 != (undefined4 *)0x0) {
                puVar19 = (undefined4 *)((int)pfStack_164 + (int)local_1bc);
                for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
                  *puVar11 = *puVar19;
                  puVar19 = puVar19 + 1;
                  puVar11 = puVar11 + 1;
                }
              }
            }
            else {
              FUN_00a8f4d0(this_00,puVar11,(undefined4 *)((int)pfStack_164 + (int)local_1bc));
            }
            local_1bc = local_1bc + 0x10;
            local_1b8 = (float *)((int)local_1b8 + -1);
          } while (local_1b8 != (float *)0x0);
        }
        puVar21 = apuStack_a0[0];
        pfVar8 = pfStack_164 + iStack_150 * 0x10 + -0x10;
        pLVar20 = &local_14c;
        for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
          pLVar20->x = *pfVar8;
          pfVar8 = pfVar8 + 1;
          pLVar20 = (LotXZLevel *)&pLVar20->z;
        }
        uVar13 = puVar21[(int)local_1a4 + 1];
        fStack_130 = 2.8026e-45;
        if ((uVar13 & 0xfff0) == 0xfff0) {
LAB_00640e89:
          iVar16 = 0;
        }
        else {
          iVar16 = *(int *)((int)local_1b0 + 0x90) + (uVar13 >> 0x10) * 0x44;
          if ((uint)(*(int *)(iVar16 + 8) - *(int *)(iVar16 + 4) >> 2) <= (uVar13 & 0xffff))
          goto LAB_00640e89;
          iVar16 = *(int *)(*(int *)(iVar16 + 4) + (uVar13 & 0xffff) * 4);
        }
        pfVar8 = (float *)piVar12[3];
        uStack_120 = (uint)*(ushort *)(iVar16 + 0x34);
        uStack_12c = *(undefined4 *)(iVar16 + 8);
        uStack_128 = *(undefined4 *)(iVar16 + 0xc);
        uStack_124 = *(undefined4 *)(iVar16 + 0x30);
        if (pfVar8 < (float *)piVar12[4]) {
          piVar12[3] = (int)(pfVar8 + 0x10);
          if (pfVar8 != (float *)0x0) {
            pLVar20 = &local_14c;
            for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
              *pfVar8 = pLVar20->x;
              pLVar20 = (LotXZLevel *)&pLVar20->z;
              pfVar8 = pfVar8 + 1;
            }
          }
        }
        else {
          FUN_00a8f4d0(this_00,pfVar8,&local_14c.x);
        }
        local_1a4 = (float *)((int)local_1a4 + 2);
      } while (local_1a4 < local_19c);
      piVar12 = local_1b4;
      puVar21 = apuStack_a0[0];
    }
    cVar3 = param_12 != (int *)0x0;
    cVar30 = '\0';
    pfStack_160 = pfStack_164;
    ppfVar28 = &local_19c;
    pppuVar27 = appuStack_16c;
    ppfVar26 = &local_17c;
    pTVar14 = &local_10c;
    pTVar15 = PortalGraphSearch_GetNodePosition(this,local_c0,local_1b0,apuStack_a0[1][-1],true);
    uVar13 = FUN_00633660(this,local_100,local_1ac,local_1a8,&pTVar15->x,&pTVar14->x,param_4,
                          (uint *)ppfVar26,(int)pppuVar27,ppfVar28,cVar3,cVar30);
    if (uVar13 != 0) {
      appuStack_16c[0] = &PTR_FUN_00fed0e0;
      if (pfStack_164 != (float *)0x0) {
        Memory_FreeIfNonNull(pfStack_164);
      }
      appuStack_16c[0] = &PTR_LAB_00fa2b80;
      Memory_FreeIfNonNull(puVar21);
      if (piVar12 != (int *)0x0) {
        (**(code **)(*piVar12 + 4))();
      }
      FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
      if (local_17c != (float *)0x0) {
        Memory_FreeIfNonNull(local_17c);
      }
      FUN_009d67f0((int)pvStack_e0,uStack_dc);
      uStack_d8 = 0;
      if (1 < uStack_dc) {
        Memory_FreeIfNonNull(pvStack_e0);
      }
      return uVar13;
    }
    if ((bVar1) && ((piVar12[3] - piVar12[2] & 0xffffffc0U) != 0)) {
      pfVar8 = (float *)((piVar12[3] - piVar12[2] >> 6) * 0x40 + -0x40 + piVar12[2]);
      pfVar18 = pfVar8;
      pfVar24 = afStack_44;
      for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
        *pfVar24 = *pfVar18;
        pfVar18 = pfVar18 + 1;
        pfVar24 = pfVar24 + 1;
      }
      pfVar8[7] = 0.0;
      afStack_44[0] = local_17c[3] * 0.125 + afStack_44[0];
      afStack_44[2] = local_17c[4] * 0.125 + afStack_44[2];
      FUN_0062aa60(piVar12,afStack_44);
    }
    if (param_12 != (int *)0x0) {
      FUN_00627a60(this,local_100,(void *)*param_12);
    }
    uVar13 = apuStack_a0[1][-1];
    pfVar8 = pfStack_164;
    pLVar20 = &local_14c;
    for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
      pLVar20->x = *pfVar8;
      pfVar8 = pfVar8 + 1;
      pLVar20 = (LotXZLevel *)&pLVar20->z;
    }
    fStack_130 = 4.2039e-45;
    iVar16 = FUN_00625e20((int)local_1b0,uVar13);
    pfVar8 = (float *)piVar12[3];
    uStack_120 = (uint)*(ushort *)(iVar16 + 0x34);
    uStack_12c = *(undefined4 *)(iVar16 + 8);
    uStack_128 = *(undefined4 *)(iVar16 + 0xc);
    uStack_124 = *(undefined4 *)(iVar16 + 0x30);
    fStack_13c = *(float *)(iVar16 + 0x2c);
    if (pfVar8 < (float *)piVar12[4]) {
      piVar12[3] = (int)(pfVar8 + 0x10);
      if (pfVar8 != (float *)0x0) {
        pLVar20 = &local_14c;
        for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
          *pfVar8 = pLVar20->x;
          pLVar20 = (LotXZLevel *)&pLVar20->z;
          pfVar8 = pfVar8 + 1;
        }
      }
    }
    else {
      FUN_00a8f4d0(piVar12 + 2,pfVar8,&local_14c.x);
    }
    uVar13 = (int)pfStack_160 - (int)pfStack_164 >> 6;
    if (1 < uVar13) {
      local_1b8 = (float *)(uVar13 - 1);
      local_1bc = (float *)0x40;
      do {
        puVar11 = (undefined4 *)piVar12[3];
        if (puVar11 < (undefined4 *)piVar12[4]) {
          piVar12[3] = (int)(puVar11 + 0x10);
          if (puVar11 != (undefined4 *)0x0) {
            puVar19 = (undefined4 *)((int)pfStack_164 + (int)local_1bc);
            for (iVar16 = 0x10; iVar16 != 0; iVar16 = iVar16 + -1) {
              *puVar11 = *puVar19;
              puVar19 = puVar19 + 1;
              puVar11 = puVar11 + 1;
            }
          }
        }
        else {
          FUN_00a8f4d0(piVar12 + 2,puVar11,(undefined4 *)((int)pfStack_164 + (int)local_1bc));
        }
        local_1bc = local_1bc + 0x10;
        local_1b8 = (float *)((int)local_1b8 + -1);
      } while (local_1b8 != (float *)0x0);
      local_1b8 = (float *)0x0;
    }
  }
  uVar10 = local_1a8;
  uVar13 = local_1ac;
  if (DAT_0115924c == '\0') {
    piVar12 = local_1b4;
  }
  else {
    pfVar8 = (float *)*param_2;
    local_14c.level = (int)pfVar8[2];
    fStack_140 = pfVar8[3];
    local_14c.x = *pfVar8;
    fStack_13c = pfVar8[4];
    local_14c.z = pfVar8[1];
    fStack_138 = pfVar8[5];
    fStack_134 = pfVar8[6];
    fStack_130 = pfVar8[7];
    FUN_0062f560(this,local_1ac,local_1a8,&local_14c.x,&local_14c.x);
    FUN_0064ee20(&local_14c.x);
    piVar12 = local_1b4;
    FUN_00630400(this,(int)local_100,(int)local_1b4,(int)&local_14c,'\0');
    local_14c.x = (float)&PTR_FUN_00fed0e0;
    if ((void *)local_14c.level != (void *)0x0) {
      Memory_FreeIfNonNull((void *)local_14c.level);
    }
  }
  FUN_0062f960(this,uVar13,uVar10,(int)piVar12);
  if (param_12 != (int *)0x0) {
    FUN_0062fb60(this,uVar13,uVar10,(void *)*param_12);
  }
  if (param_6 != (undefined4 *)0x0) {
    *param_6 = piVar12;
    (**(code **)*piVar12)();
  }
  if (param_7 != (undefined4 *)0x0) {
    *param_7 = 0;
  }
  if (param_8 != (float *)0x0) {
    *param_8 = (float)local_19c;
  }
  appuStack_16c[0] = &PTR_FUN_00fed0e0;
  if (pfStack_164 != (float *)0x0) {
    Memory_FreeIfNonNull(pfStack_164);
  }
  appuStack_16c[0] = &PTR_LAB_00fa2b80;
  if (apuStack_a0[0] != (uint *)0x0) {
    Memory_FreeIfNonNull(apuStack_a0[0]);
  }
  if (piVar12 != (int *)0x0) {
    (**(code **)(*piVar12 + 4))();
  }
  FUN_0063cdd0(local_198[0],puStack_190,uStack_18c);
  if (local_17c != (float *)0x0) {
    Memory_FreeIfNonNull(local_17c);
  }
  FUN_009d67f0((int)pvStack_e0,uStack_dc);
  uStack_d8 = 0;
  if (uStack_dc < 2) {
    return 0;
  }
  Memory_FreeIfNonNull(pvStack_e0);
  return 0;
}

