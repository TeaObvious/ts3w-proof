/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst static routing contract: Original embedded string RoutingHost/ShouldPointBeRejectedEarly
   supports analyst name. Returns AL0 to ACCEPT and AL1 to REJECT radial candidate, with separate
   FLOAT multiplier output initialized1.0f. Checks options, rooms/levels, placement and footprint
   intersections; may record blocker metadata. Options use two32-bit halves. Complete geometric
   leaf-check meaning remains open; initial decompiler's pointer/float casts are artifacts. */

undefined4 __thiscall
RadialRangeDestination_ShouldRejectCandidateEarly
          (void *this,float param_1,float *param_2,float *param_3,void *param_4,void *param_5,
          undefined4 *param_6,int param_7,undefined4 *param_8)

{
  int *piVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  char cVar6;
  ushort uVar7;
  ushort uVar8;
  void *pvVar9;
  float *pfVar10;
  undefined4 uVar11;
  uint uVar12;
  void *pvVar13;
  uint uVar14;
  undefined4 uVar15;
  undefined3 extraout_var;
  int iVar16;
  undefined4 *puVar17;
  uint extraout_EAX;
  uint extraout_EAX_00;
  undefined4 extraout_EAX_01;
  int iVar18;
  float *pfVar19;
  float fVar20;
  float10 fVar21;
  ulonglong guid;
  undefined8 uVar22;
  LotXZLevel *pLVar23;
  float fVar24;
  float *local_f8;
  char local_f2;
  char local_f1;
  float *local_f0;
  float *pfStack_ec;
  float *pfStack_e8;
  char *pcStack_e4;
  char local_d1;
  float *local_d0;
  float *pfStack_cc;
  float fStack_c8;
  char *pcStack_c4;
  float *local_c0;
  float *local_bc;
  void *local_b8;
  void *local_b4;
  LotXZLevel local_b0;
  float fStack_a4;
  LotXZLevel local_a0;
  float fStack_94;
  void *local_90;
  float *local_8c;
  float *local_88;
  undefined4 local_84;
  char *local_80;
  void *local_78;
  void *local_74;
  float *pfStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float *pfStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50 [2];
  undefined4 local_48;
  undefined4 local_44;
  undefined4 *local_30;
  float local_2c;
  void *local_28;
  
  *param_8 = 1.0;
  local_b8 = DAT_011edbc4;
  local_90 = this;
  if ((int)param_2[9] < (int)param_3[9]) {
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ
                       (DAT_011edbc4,(float)local_f0,(float)pfStack_e8);
    pfVar10 = (float *)RoutingOptions_TestMask(param_4,0x10000000,0,'\0');
    if ((char)pfVar10 == '\0') goto LAB_00759c48;
    if (param_3[9] != 0.0) {
      pfVar10 = (float *)FUN_00aff9d0(pvVar9,param_2,(int *)0x0,1);
      cVar6 = (char)pfVar10;
      goto joined_r0x00759cb4;
    }
  }
  else if (param_3[9] == param_2[9]) {
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ
                       (DAT_011edbc4,(float)local_f0,(float)pfStack_e8);
    uVar11 = RoutingOptions_TestMask(param_4,0x10000000,0,'\0');
    if (((char)uVar11 == '\0') &&
       (uVar12 = FUN_00aff9d0(pvVar9,param_2,(int *)0x0,1), (char)uVar12 != '\0')) {
      pfVar10 = (float *)FUN_00aff9d0(pvVar9,param_3,(int *)0x0,1);
      cVar6 = (char)pfVar10;
joined_r0x00759cb4:
      if (cVar6 == '\0') goto LAB_00759c48;
    }
  }
  uVar11 = RoutingOptions_TestMask(param_4,0,0x10,'\0');
  if ((char)uVar11 != '\0') {
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_b8,(float)local_f0,(float)pfStack_e8);
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    uVar12 = Lot_TestPlatformAtWorldXZLevel(pvVar9,(float)local_f0,(float)pfStack_e8,param_2[9]);
    if ((char)uVar12 != '\0') {
      local_f0 = (float *)*param_3;
      pfStack_ec = (float *)param_3[1];
      pfStack_e8 = (float *)param_3[2];
      pcStack_e4 = (char *)param_3[3];
      local_d0 = local_f0;
      pfStack_cc = pfStack_ec;
      fStack_c8 = (float)pfStack_e8;
      pcStack_c4 = pcStack_e4;
      uVar12 = Lot_TestPlatformAtWorldXZLevel(pvVar9,(float)local_f0,(float)pfStack_e8,param_3[9]);
      if ((char)uVar12 != '\0') {
        pvVar13 = *(void **)((int)pvVar9 + 0x298);
        local_a0.x = -1.0;
        local_a0.z = -1.0;
        local_a0.level = 0;
        Lot_WorldPositionToLocalXZLevel(pvVar9,param_2,&local_a0);
        uVar7 = LotRoom_ResolveForLocalLocation(pvVar13,&local_a0.x,3,1);
        local_b0.x = -1.0;
        local_b0.z = -1.0;
        local_b0.level = 0;
        Lot_WorldPositionToLocalXZLevel(pvVar9,param_3,&local_b0);
        uVar8 = LotRoom_ResolveForLocalLocation(pvVar13,&local_b0.x,3,1);
        pfVar10 = (float *)(uint)uVar8;
        if (uVar7 == uVar8) goto LAB_00759c48;
      }
    }
  }
  uVar11 = RoutingOptions_TestMask(param_4,0,2,'\0');
  if (((char)uVar11 == '\0') &&
     (uVar11 = RoutingOptions_TestMask(param_4,0,0x10,'\0'), (char)uVar11 == '\0')) {
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_b8,(float)local_f0,(float)pfStack_e8);
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    uVar12 = Lot_TestPlatformAtWorldXZLevel(pvVar9,(float)local_f0,(float)pfStack_e8,param_2[9]);
    if ((char)uVar12 != '\0') {
      local_f0 = (float *)*param_3;
      pfStack_ec = (float *)param_3[1];
      pfStack_e8 = (float *)param_3[2];
      pcStack_e4 = (char *)param_3[3];
      local_d0 = local_f0;
      pfStack_cc = pfStack_ec;
      fStack_c8 = (float)pfStack_e8;
      pcStack_c4 = pcStack_e4;
      pfVar10 = (float *)Lot_TestPlatformAtWorldXZLevel
                                   (pvVar9,(float)local_f0,(float)pfStack_e8,param_3[9]);
      if ((char)pfVar10 == '\0') goto LAB_00759c48;
    }
  }
  uVar11 = RoutingOptions_TestMask(param_4,0x4000000,0,'\0');
  pvVar9 = local_b8;
  if ((char)uVar11 != '\0') {
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    pvVar13 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_b8,(float)local_f0,(float)pfStack_e8)
    ;
    local_f0 = (float *)*param_3;
    pfStack_ec = (float *)param_3[1];
    pfStack_e8 = (float *)param_3[2];
    pcStack_e4 = (char *)param_3[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    local_f8 = LotSpatialIndex_FindContainingLotAtWorldXZ(pvVar9,(float)local_f0,(float)pfStack_e8);
    fVar24 = param_2[9];
    pfVar10 = local_f8;
    if ((((fVar24 != 1.4013e-45) || (pfVar10 = param_3, param_3[9] != 0.0)) ||
        (pvVar13 == (void *)0x0)) ||
       ((pfVar10 = (float *)FUN_00624bc0((int)pvVar13), (char)pfVar10 == '\0' ||
        (fVar20 = 0.0, local_f8 != (float *)0x0)))) {
      fVar20 = param_3[9];
      if (fVar20 == 1.4013e-45) {
        if (fVar24 == 0.0) {
          if (((local_f8 != (float *)0x0) &&
              (pfVar10 = (float *)FUN_00624bc0((int)local_f8), (char)pfVar10 != '\0')) &&
             (pvVar13 == (void *)0x0)) goto LAB_00759fa2;
          goto LAB_00759f79;
        }
      }
      else {
LAB_00759f79:
        if ((((fVar24 == 0.0) && (fVar20 == 0.0)) && (pvVar13 != (void *)0x0)) &&
           ((pfVar10 = (float *)FUN_00624bc0((int)pvVar13), (char)pfVar10 != '\0' &&
            (local_f8 == (float *)0x0)))) goto LAB_00759c48;
      }
      if (fVar20 != fVar24) goto LAB_00759c48;
    }
LAB_00759fa2:
    local_b0.x = *param_2;
    local_b0.z = param_2[1];
    local_b0.level = (int)param_2[2];
    fStack_a4 = param_2[3];
    local_f0 = (float *)*param_3;
    pfStack_ec = (float *)param_3[1];
    pfStack_e8 = (float *)param_3[2];
    pcStack_e4 = (char *)param_3[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    local_a0.x = local_b0.x;
    local_a0.z = local_b0.z;
    local_a0.level = local_b0.level;
    fStack_94 = fStack_a4;
    uVar12 = Lot_TestPlatformAtWorldXZLevel(pvVar13,(float)local_f0,(float)pfStack_e8,fVar20);
    uVar14 = Lot_TestPlatformAtWorldXZLevel(pvVar13,local_b0.x,(float)local_a0.level,param_2[9]);
    if (((char)uVar14 != (char)uVar12) &&
       (uVar11 = RoutingOptions_TestMask(param_4,0,0x10,'\0'), (char)uVar11 == '\0')) {
      pfVar10 = (float *)RoutingOptions_TestMask(param_4,0,2,'\0');
      if ((char)pfVar10 == '\0') goto LAB_00759c48;
    }
  }
  uVar11 = RoutingOptions_TestMask(param_4,0x20000000,0,'\0');
  if ((char)uVar11 != '\0') {
    if (param_3[9] != param_2[9]) {
      *param_8 = 0x3dcccccd;
    }
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_b8,(float)local_f0,(float)pfStack_e8);
    local_b0.x = *param_2;
    local_b0.z = param_2[1];
    local_b0.level = (int)param_2[2];
    fStack_a4 = param_2[3];
    local_f0 = (float *)*param_3;
    pfStack_ec = (float *)param_3[1];
    pfStack_e8 = (float *)param_3[2];
    pcStack_e4 = (char *)param_3[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    local_a0.x = local_b0.x;
    local_a0.z = local_b0.z;
    local_a0.level = local_b0.level;
    fStack_94 = fStack_a4;
    uVar12 = Lot_TestPlatformAtWorldXZLevel(pvVar9,(float)local_f0,(float)pfStack_e8,param_3[9]);
    uVar14 = Lot_TestPlatformAtWorldXZLevel(pvVar9,local_b0.x,(float)local_a0.level,param_2[9]);
    if ((((char)uVar14 != (char)uVar12) &&
        (uVar11 = RoutingOptions_TestMask(param_4,0,0x10,'\0'), (char)uVar11 == '\0')) &&
       (uVar11 = RoutingOptions_TestMask(param_4,0,2,'\0'), (char)uVar11 == '\0')) {
      *param_8 = 0x3dcccccd;
    }
  }
  pvVar9 = *(void **)((int)local_b8 + 0x5c);
  if (pvVar9 != (void *)0x0) {
    local_b0.x = *param_3;
    local_b0.z = param_3[1];
    local_b0.level = (int)param_3[2];
    fStack_a4 = param_3[3];
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    local_a0.x = local_b0.x;
    local_a0.z = local_b0.z;
    local_a0.level = local_b0.level;
    fStack_94 = fStack_a4;
    uVar11 = FUN_00b77f60(pvVar9,(float)local_f0,(float)pfStack_e8,'\x01','\0',(undefined4 *)0x0,
                          (float *)0x0,'\0');
    pfVar10 = (float *)FUN_00b77f60(pvVar9,local_b0.x,(float)local_a0.level,'\x01','\0',
                                    (undefined4 *)0x0,(float *)0x0,'\0');
    if ((char)pfVar10 != (char)uVar11) goto LAB_00759c48;
  }
  local_78 = (void *)thunk_FUN_00835d40();
  local_74 = ObjectRegistry_GetGlobal();
  uVar11 = RoutingOptions_TestMask(param_4,0x10,0,'\x01');
  cVar6 = (char)uVar11;
  uVar11 = RoutingOptions_TestMask(param_4,1,0,'\x01');
  local_f1 = (char)uVar11;
  uVar15 = RoutingOptions_TestMask(param_4,0x100,0,'\x01');
  local_f2 = (char)uVar15;
  uVar15 = RoutingOptions_TestMask(param_4,4,0,'\x01');
  uVar12 = (uint)param_1 & 0xcf00;
  local_d1 = (char)uVar15;
  bVar5 = Routing_IsBoatSpeciesForPortalPermission(uVar12);
  pvVar9 = DAT_011edbc4;
  bVar4 = false;
  if ((((char)uVar11 == '\0') && (cVar6 == '\0')) && ((local_f2 == '\0' && (local_d1 == '\0')))) {
    bVar2 = false;
    if (bVar5) goto LAB_0075a260;
  }
  else {
    bVar2 = true;
LAB_0075a260:
    local_b4 = DAT_011edbc4;
    pfVar10 = (float *)CONCAT31(extraout_var,bVar5);
    if (DAT_011edbc4 == (void *)0x0) goto LAB_00759c48;
    local_f0 = (float *)*param_2;
    pfStack_ec = (float *)param_2[1];
    pfStack_e8 = (float *)param_2[2];
    pcStack_e4 = (char *)param_2[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    local_f8 = LotSpatialIndex_FindContainingLotAtWorldXZ
                         (DAT_011edbc4,(float)local_f0,(float)pfStack_e8);
    if (((local_f8 == (float *)0x0) || (local_f8[0x102] != 1.4013e-45)) ||
       ((local_f8[0x103] != 1.12104e-43 || (bVar3 = true, param_3[9] != 1.4013e-45)))) {
      bVar3 = false;
    }
    local_f0 = (float *)*param_3;
    pfStack_ec = (float *)param_3[1];
    pfStack_e8 = (float *)param_3[2];
    pcStack_e4 = (char *)param_3[3];
    local_d0 = local_f0;
    pfStack_cc = pfStack_ec;
    fStack_c8 = (float)pfStack_e8;
    pcStack_c4 = pcStack_e4;
    fVar21 = WorldSurface_QueryHeight
                       (pvVar9,(float)local_f0,(float)pfStack_e8,param_3[9],'\x01','\0',
                        (undefined1 *)0x0,(undefined1 *)0x0,'\0','\x01');
    local_c0 = (float *)(float)fVar21;
    fVar21 = WorldWater_GetSeaLevel((int)pvVar9);
    local_bc = (float *)(float)fVar21;
    if (((float10)(float)local_c0 <= fVar21) || (bVar4 = false, bVar3)) {
      bVar4 = true;
    }
    if (bVar2) {
      iVar16 = FUN_00829600((int)local_78);
      local_f0 = (float *)*param_3;
      pfStack_ec = (float *)param_3[1];
      pfStack_e8 = (float *)param_3[2];
      pcStack_e4 = (char *)param_3[3];
      pvVar9 = *(void **)(iVar16 + 0x14);
      bVar2 = (float)pfStack_ec - 1.0 <= (float)local_bc;
      if (local_f8 == (float *)0x0) {
        local_d0 = local_f0;
        pfStack_cc = pfStack_ec;
        fStack_c8 = (float)pfStack_e8;
        pcStack_c4 = pcStack_e4;
        pfVar10 = (float *)FUN_0066de10(pvVar9,(int)local_b4,(float)local_f0,(float)pfStack_e8);
        if ((char)pfVar10 == '\0') {
          if (((cVar6 != '\0') || (local_f1 != '\0')) || (local_d1 != '\0')) goto LAB_00759c48;
        }
        else if ((local_f2 != '\0') && (bVar2)) {
          return CONCAT31((int3)((uint)pfVar10 >> 8),1);
        }
      }
      local_f0 = (float *)*param_3;
      pfStack_ec = (float *)param_3[1];
      pfStack_e8 = (float *)param_3[2];
      pcStack_e4 = (char *)param_3[3];
      local_d0 = local_f0;
      pfStack_cc = pfStack_ec;
      fStack_c8 = (float)pfStack_e8;
      pcStack_c4 = pcStack_e4;
      local_a0.x = (float)local_f0;
      local_a0.z = (float)pfStack_ec;
      local_a0.level = (int)pfStack_e8;
      fStack_94 = (float)pcStack_e4;
      pfVar10 = (float *)FUN_0066dc30(pvVar9,(int)local_b4,(float)local_f0,pfStack_ec,
                                      (float)pfStack_e8);
      if (local_f2 == '\0') {
        pfVar10 = (float *)FUN_0066e120(pvVar9,0,(uint)pfVar10,uVar12,'\0');
        if ((char)pfVar10 == '\0') goto LAB_00759c48;
      }
      local_f8 = (float *)0x0;
      if (cVar6 == '\0') {
        if (local_f1 != '\0') {
          if (((uint)param_1 & 0x70) == 0) {
            local_f8 = (float *)0x3f7a1cac;
          }
          else {
            local_f8 = (float *)0x3fb1eb85;
          }
        }
      }
      else {
        pfVar10 = (float *)FUN_00624940(uVar12);
        if ((char)pfVar10 == '\0') {
          local_f8 = DAT_01184538;
        }
        else {
          local_f8 = DAT_0118453c;
        }
      }
      if (bVar4) {
        if ((local_f2 != '\0') && (bVar2)) goto LAB_00759c48;
      }
      else if (local_d1 != '\0') goto LAB_00759c48;
      if (((float)local_c0 <= (float)local_bc - (float)local_f8) || (bVar2 = false, bVar3)) {
        bVar2 = true;
      }
      bVar3 = false;
      if (!bVar4) {
        local_f0 = (float *)*param_3;
        pfStack_ec = (float *)param_3[1];
        pfStack_e8 = (float *)param_3[2];
        pcStack_e4 = (char *)param_3[3];
        local_d0 = local_f0;
        pfStack_cc = pfStack_ec;
        fStack_c8 = (float)pfStack_e8;
        pcStack_c4 = pcStack_e4;
        pfVar10 = FUN_00c60880(local_b4,(float)local_f0,(float)pfStack_e8,'\0');
        if (pfVar10 != (float *)0x0) {
          if (pfVar10[0x86] - (float)local_f8 <= (float)local_c0) {
            bVar3 = false;
          }
          else {
            bVar3 = true;
          }
        }
      }
      if ((!bVar2) && (!bVar3)) {
        if (cVar6 != '\0') goto LAB_00759c48;
        if (local_f1 != '\0') {
          return CONCAT31((int3)((uint)pfVar10 >> 8),1);
        }
        goto LAB_0075a62c;
      }
    }
    if ((local_f1 != '\0') || (cVar6 != '\0')) {
      local_f0 = (float *)*param_3;
      pfStack_ec = (float *)param_3[1];
      pfStack_e8 = (float *)param_3[2];
      pcStack_e4 = (char *)param_3[3];
      local_d0 = local_f0;
      pfStack_cc = pfStack_ec;
      fStack_c8 = (float)pfStack_e8;
      pcStack_c4 = pcStack_e4;
      pvVar13 = LotSpatialIndex_FindContainingLotAtWorldXZ
                          (local_b8,(float)local_f0,(float)pfStack_e8);
      pvVar9 = local_78;
      if ((pvVar13 == (void *)0x0) && (iVar16 = FUN_008295c0((int)local_78), iVar16 != 0)) {
        local_a0.level = (int)param_3[9];
        local_f0 = (float *)*param_3;
        pfStack_ec = (float *)param_3[1];
        pfStack_e8 = (float *)param_3[2];
        pcStack_e4 = (char *)param_3[3];
        uVar12 = *(uint *)((int)param_5 + 0x24);
        uVar14 = *(uint *)((int)param_5 + 0x20);
        pLVar23 = &local_a0;
        pvVar13 = param_4;
        fVar24 = param_1;
        local_d0 = local_f0;
        pfStack_cc = pfStack_ec;
        fStack_c8 = (float)pfStack_e8;
        pcStack_c4 = pcStack_e4;
        local_a0.x = (float)local_f0;
        local_a0.z = (float)pfStack_e8;
        pvVar9 = (void *)FUN_008295c0((int)pvVar9);
        pfVar10 = (float *)FUN_00627e00(pvVar9,&pLVar23->x,pvVar13,uVar14,uVar12,(uint)fVar24);
        if ((char)pfVar10 != '\0') goto LAB_00759c48;
      }
    }
  }
LAB_0075a62c:
  uVar11 = RoutingOptions_TestMask(param_4,0x800000,0,'\0');
  if ((char)uVar11 != '\0') {
    local_30 = (undefined4 *)0x0;
    local_28 = param_4;
    local_2c = (float)CONCAT22(local_2c._2_2_,1);
    if ((cVar6 != '\0') && (!bVar5)) {
      param_1 = 5.02225e-42;
    }
    local_48 = *(undefined4 *)((int)param_5 + 0x20);
    local_44 = *(undefined4 *)((int)param_5 + 0x24);
    local_50[0] = param_1;
    local_8c = (float *)0x0;
    local_88 = (float *)0x0;
    local_84 = 0;
    local_80 = "Routing/RoutingHost/TemporaryFootprintSet";
    uVar11 = FUN_0082e7e0(local_78,param_3,0.1,(int *)&local_8c,'\0',param_1);
    if ((char)uVar11 != '\0') {
      local_c0 = local_8c;
      local_b0.x = (float)local_88;
      if (local_8c != local_88) {
        do {
          pfVar10 = (float *)*local_c0;
          local_f8 = pfVar10;
          if (pfVar10 != (float *)0x0) {
            pfVar10[1] = (float)((int)pfVar10[1] + 1);
            pfVar19 = pfVar10 + -1;
            guid = (**(code **)((int)pfVar10[-1] + 0x84))();
            iVar18 = (int)(guid >> 0x20);
            iVar16 = (int)guid;
            if ((((iVar16 != *(int *)((int)param_5 + 0x20)) ||
                 (iVar18 != *(int *)((int)param_5 + 0x24))) &&
                ((iVar16 != *(int *)((int)local_90 + 0x50) ||
                 (iVar18 != *(int *)((int)local_90 + 0x54))))) &&
               (uVar11 = FUN_0081c5c0(param_4,iVar16,iVar18), (char)uVar11 == '\0')) {
              uVar11 = (**(code **)((int)*local_f8 + 8))();
              switch(uVar11) {
              case 1:
                if (guid != 0) {
                  pvVar9 = ObjectRegistry_FindBorrowed(local_74,guid);
                  FUN_0055e250(&local_b4,(int)pvVar9);
                  if (local_b4 != (void *)0x0) {
                    cVar6 = (**(code **)((int)*pfVar19 + 0xc0))();
                    if (cVar6 == '\0') {
                      cVar6 = (**(code **)((int)*pfVar19 + 0x5c))();
                      if (cVar6 != '\0') {
                        uVar12 = (**(code **)((int)*pfVar19 + 8))(local_50,0);
                        uVar11 = FUN_00621220(uVar12);
                        if ((char)uVar11 == '\0') {
LAB_0075ab42:
                          FUN_007462e0((int *)&local_b4);
                          goto LAB_0075ab4b;
                        }
                        *param_8 = 0.001;
                        FUN_007462e0((int *)&local_b4);
                        break;
                      }
                      *param_8 = 0.001;
                    }
                    else {
                      uVar12 = (**(code **)((int)*pfVar19 + 8))(local_50,0);
                      uVar11 = FUN_00621220(uVar12);
                      if ((char)uVar11 == '\0') {
                        local_f0 = (float *)*param_3;
                        pfStack_ec = (float *)param_3[1];
                        pfStack_e8 = (float *)param_3[2];
                        pcStack_e4 = (char *)param_3[3];
                        local_d0 = local_f0;
                        pfStack_cc = pfStack_ec;
                        fStack_c8 = (float)pfStack_e8;
                        pcStack_c4 = pcStack_e4;
                        pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ
                                           (local_b8,(float)local_f0,(float)pfStack_e8);
                        if (pvVar9 != (void *)0x0) {
                          Lot_WorldPositionToLocalVector(pvVar9,param_3,&local_a0.x);
                          pfStack_60 = (float *)local_a0.x;
                          fStack_5c = local_a0.z;
                          fStack_58 = (float)local_a0.level;
                          fStack_54 = fStack_94;
                          pfStack_70 = (float *)local_a0.x;
                          fStack_6c = local_a0.z;
                          fStack_68 = (float)local_a0.level;
                          fStack_64 = fStack_94;
                          cVar6 = (**(code **)((int)*pfVar19 + 0xd4))
                                            (0,local_a0.x,local_a0.level,0x3dfbe76d);
                          if (cVar6 != '\0') {
                            if (*(int *)(param_7 + 0x20) == 0 && *(int *)(param_7 + 0x24) == 0) {
                              *(ulonglong *)(param_7 + 0x20) = guid;
                            }
                            goto LAB_0075ab42;
                          }
                          *param_8 = 0.001;
                          FUN_007462e0((int *)&local_b4);
                          break;
                        }
                      }
                    }
                  }
                  FUN_007462e0((int *)&local_b4);
                }
                break;
              case 9:
              case 0x14:
                if ((guid != 0) && (*(int *)(param_7 + 0x20) == 0 && *(int *)(param_7 + 0x24) == 0))
                {
                  pvVar9 = ObjectRegistry_FindBorrowed(local_74,guid);
                  FUN_0055e250(&local_bc,(int)pvVar9);
                  if (local_bc != (float *)0x0) {
                    *(ulonglong *)(param_7 + 0x20) = guid;
                  }
                  FUN_007462e0((int *)&local_bc);
                }
              case 2:
              case 0xc:
              case 0xd:
              case 0x11:
              case 0x17:
                if ((((!bVar5) || (bVar4)) ||
                    (cVar6 = (**(code **)((int)*pfVar19 + 0x5c))(), cVar6 == '\0')) ||
                   (((uint)pfVar10[5] & (uint)pfVar10[6]) == 0xffffffff)) {
LAB_0075ab4b:
                  FUN_00565d20((int *)&local_f8);
                  FUN_00652de0((int *)&local_8c);
                  uVar11 = FUN_00643c30((int)local_50);
                  return CONCAT31((int3)((uint)uVar11 >> 8),1);
                }
                *(undefined4 *)(param_7 + 0x20) = 0;
                *(undefined4 *)(param_7 + 0x24) = 0;
              }
            }
            fVar24 = local_f8[1];
            local_f8[1] = (float)((int)fVar24 + -1);
            if ((float)((int)fVar24 + -1) == 0.0) {
              local_f8[1] = 1.4013e-45;
              (**(code **)*local_f8)(1);
            }
          }
          local_c0 = local_c0 + 1;
        } while (local_c0 != (float *)local_b0.x);
      }
    }
    FUN_00ca0570((int *)local_8c,(int *)local_88);
    if (local_8c != (float *)0x0) {
      Memory_FreeIfNonNull(local_8c);
    }
    if (local_30 != (undefined4 *)0x0) {
      piVar1 = local_30 + 1;
      LOCK();
      iVar16 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar16 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        if (local_30 != (undefined4 *)0x0) {
          (**(code **)*local_30)(1);
        }
      }
    }
  }
  uVar11 = RoutingOptions_TestMask(param_4,0x10000,0,'\0');
  if ((char)uVar11 != '\0') {
    FUN_00650a00(local_50,param_3);
    local_2c = param_2[9];
    local_8c = (float *)0x0;
    local_88 = (float *)0x0;
    local_84 = 0;
    local_80 = "Routing/RoutingHost/TemporaryFootprintSet";
    uVar11 = FUN_0082eae0(local_78,param_2,local_50,(int *)&local_8c,'\x01',param_1,0.0001);
    if ((char)uVar11 != '\0') {
      local_bc = local_8c;
      local_b0.x = (float)local_88;
      pfVar10 = local_8c;
      if (local_8c != local_88) {
        do {
          pfVar19 = (float *)*pfVar10;
          local_c0 = pfVar19;
          if (pfVar19 != (float *)0x0) {
            pfVar19[1] = (float)((int)pfVar19[1] + 1);
            local_bc = pfVar10;
            uVar22 = (**(code **)((int)*pfVar19 + 4))();
            iVar16 = (int)((ulonglong)uVar22 >> 0x20);
            if (((int)uVar22 != *(int *)((int)param_5 + 0x20)) ||
               (iVar16 != *(int *)((int)param_5 + 0x24))) {
              uVar11 = FUN_0081c5c0(param_4,(int)uVar22,iVar16);
              if ((char)uVar11 == '\0') {
                uVar11 = (**(code **)((int)*pfVar19 + 8))();
                switch(uVar11) {
                case 2:
                case 4:
                case 9:
                case 0xc:
                case 0xd:
                case 0x11:
                case 0x15:
                case 0x17:
                  if (((!bVar5) || (bVar4)) ||
                     ((cVar6 = (**(code **)((int)pfVar19[-1] + 0x5c))(), cVar6 == '\0' ||
                      (((uint)pfVar19[5] & (uint)pfVar19[6]) == 0xffffffff)))) {
                    FUN_00565d20((int *)&local_c0);
                    uVar11 = FUN_00652de0((int *)&local_8c);
                    return CONCAT31((int3)((uint)uVar11 >> 8),1);
                  }
                  *(undefined4 *)(param_7 + 0x20) = 0;
                  *(undefined4 *)(param_7 + 0x24) = 0;
                  pfVar10 = local_bc;
                }
              }
            }
            fVar24 = pfVar19[1];
            pfVar19[1] = (float)((int)fVar24 + -1);
            if ((float)((int)fVar24 + -1) == 0.0) {
              pfVar19[1] = 1.4013e-45;
              (**(code **)*pfVar19)(1);
            }
          }
          local_bc = pfVar10 + 1;
          pfVar10 = local_bc;
        } while (local_bc != (float *)local_b0.x);
      }
    }
    FUN_00ca0570((int *)local_8c,(int *)local_88);
    if (local_8c != (float *)0x0) {
      Memory_FreeIfNonNull(local_8c);
    }
  }
  uVar11 = RoutingOptions_TestMask(param_4,0x2000000,0,'\0');
  if (((char)uVar11 != '\0') &&
     (uVar11 = FUN_0074cd90(param_5,param_3,param_6,(undefined4 *)0x0), (char)uVar11 != '\0')) {
    local_b0.x = 0.0;
    local_b0.z = 0.0;
    puVar17 = (undefined4 *)FUN_0081c520((int)param_4);
    pfStack_cc = *(float **)((int)local_90 + 0x70);
    pcStack_c4 = (char *)0x0;
    fStack_c8 = 0.0;
    local_d0 = (float *)0x0;
    pfStack_70 = (float *)(*param_3 + 0.0);
    fStack_6c = (float)pfStack_cc + param_3[1];
    fStack_68 = param_3[2] + 0.0;
    fStack_64 = param_3[3] + 0.0;
    cVar6 = FUN_0078a170((float *)&pfStack_70,*(int *)((int)local_90 + 0x50),
                         *(int *)((int)local_90 + 0x54),'\0',puVar17,(int *)&local_b0);
    if (cVar6 == '\0') {
      pfVar10 = (float *)local_b0.x;
      if (((float *)local_b0.x != (float *)0x0 || local_b0.z != 0.0) &&
         (*(int *)(param_7 + 0x20) == 0 && *(int *)(param_7 + 0x24) == 0)) {
        pvVar9 = ObjectRegistry_FindBorrowed(local_74,CONCAT44(local_b0.z,local_b0.x));
        FUN_0055e250(&local_90,(int)pvVar9);
        if (local_90 != (void *)0x0) {
          *(float *)(param_7 + 0x20) = local_b0.x;
          *(float *)(param_7 + 0x24) = local_b0.z;
        }
        uVar11 = FUN_007462e0((int *)&local_90);
        return CONCAT31((int3)((uint)uVar11 >> 8),1);
      }
LAB_00759c48:
      return CONCAT31((int3)((uint)pfVar10 >> 8),1);
    }
  }
  pfStack_70 = (float *)*param_2;
  fStack_6c = param_2[1];
  fStack_68 = param_2[2];
  fStack_64 = param_2[3];
  pfStack_60 = pfStack_70;
  fStack_5c = fStack_6c;
  fStack_58 = fStack_68;
  fStack_54 = fStack_64;
  pvVar9 = LotSpatialIndex_FindContainingLotAtWorldXZ(local_b8,(float)pfStack_70,fStack_68);
  uVar12 = 0;
  if (pvVar9 == (void *)0x0) goto LAB_0075af9e;
  local_d0 = (float *)0x0;
  pfStack_cc = (float *)0x0;
  fStack_c8 = 0.0;
  pcStack_c4 = "World/Lot/TestIntersectionWithObjectsForFootprintPoly/objectIDs";
  local_a0.x = -1.0;
  local_a0.z = -1.0;
  local_a0.level = 0;
  Lot_WorldPositionToLocalXZLevel(pvVar9,param_3,&local_a0);
  local_b0.x = local_a0.x - 0.01;
  local_b0.z = local_a0.z - 0.01;
  local_f0 = (float *)0x0;
  pfStack_ec = (float *)0x0;
  pfStack_e8 = (float *)0x0;
  pcStack_e4 = "RoutingHost/ShouldPointBeRejectedEarly/testPolyVerts";
  FUN_00405c10(&local_f0,(undefined4 *)0x0,&local_b0.x);
  local_b0.x = local_a0.x - 0.01;
  local_b0.z = local_a0.z + 0.01;
  if (pfStack_ec < pfStack_e8) {
    pfVar10 = pfStack_ec + 2;
    if (pfStack_ec != (float *)0x0) {
      *pfStack_ec = local_b0.x;
      pfStack_ec[1] = local_b0.z;
      pfStack_ec = pfStack_ec + 2;
      goto LAB_0075ae7d;
    }
  }
  else {
    FUN_00405c10(&local_f0,pfStack_ec,&local_b0.x);
LAB_0075ae7d:
    pfVar10 = pfStack_ec;
  }
  pfStack_ec = pfVar10;
  local_b0.x = local_a0.x + 0.01;
  local_b0.z = local_a0.z + 0.01;
  if (pfStack_ec < pfStack_e8) {
    pfVar10 = pfStack_ec + 2;
    if (pfStack_ec != (float *)0x0) {
      *pfStack_ec = local_b0.x;
      pfStack_ec[1] = local_b0.z;
      pfStack_ec = pfStack_ec + 2;
      goto LAB_0075aed6;
    }
  }
  else {
    FUN_00405c10(&local_f0,pfStack_ec,&local_b0.x);
LAB_0075aed6:
    pfVar10 = pfStack_ec;
  }
  pfStack_ec = pfVar10;
  local_b0.x = local_a0.x + 0.01;
  local_b0.z = local_a0.z - 0.01;
  if (pfStack_ec < pfStack_e8) {
    pfVar10 = pfStack_ec + 2;
    if (pfStack_ec != (float *)0x0) {
      *pfStack_ec = local_b0.x;
      pfStack_ec[1] = local_b0.z;
    }
  }
  else {
    FUN_00405c10(&local_f0,pfStack_ec,&local_b0.x);
    pfVar10 = pfStack_ec;
  }
  pfStack_ec = pfVar10;
  Lot_CollectObjectsIntersectingPolygon(pvVar9,(int *)&local_f0,(int)param_3[9],&local_d0,'\0','\0')
  ;
  pfVar19 = pfStack_cc;
  for (pfVar10 = local_d0; pfVar10 != pfVar19; pfVar10 = pfVar10 + 1) {
    if ((((void *)*pfVar10 != (void *)0x0) &&
        (pvVar9 = Object_FindCatalogInfo((void *)*pfVar10), pvVar9 != (void *)0x0)) &&
       ((*(uint *)((int)pvVar9 + 0xd0) & 0x50000) != 0)) {
      if (local_f0 != (float *)0x0) {
        Memory_FreeIfNonNull(local_f0);
      }
      pfVar10 = (float *)0x0;
      if (local_d0 != (float *)0x0) {
        Memory_FreeIfNonNull(local_d0);
        return CONCAT31((int3)((uint)extraout_EAX_01 >> 8),1);
      }
      goto LAB_00759c48;
    }
  }
  uVar12 = 0;
  if (local_f0 != (float *)0x0) {
    Memory_FreeIfNonNull(local_f0);
    uVar12 = extraout_EAX;
  }
  if (local_d0 != (float *)0x0) {
    Memory_FreeIfNonNull(local_d0);
    uVar12 = extraout_EAX_00;
  }
LAB_0075af9e:
  return uVar12 & 0xffffff00;
}

