/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 fireplace tool caller, complete bodyCE1FA0..CE3272. Verified support callsiteCE21CF PUSH0,
   CE21D1 LEA packedcell, CE21D5 PUSHcell, CE21D6 PUSH lot, CE21D7 CALLAD2930. Third input is null
   ignoredObject, NOT placement flags. ALfalse breaks upward support scan; signed live maximum read
   from lot+180. Function-wide parameter2 array seed, other virtual ABIs, special roof/zone behavior
   and complete placement failure semantics remain separate analysis; no unsupported full signature
   reconstruction implied. Original bytes unchanged. */

int __thiscall FireplaceTool_TryPlaceChimney(void *this,int *param_1,undefined1 (*param_2) [12])

{
  char cVar1;
  bool bVar2;
  short sVar3;
  int iVar4;
  uint3 extraout_var;
  void *pvVar5;
  uint uVar6;
  int *piVar7;
  float *pfVar8;
  uint *puVar9;
  uint extraout_EAX;
  undefined4 *puVar10;
  undefined4 extraout_EAX_00;
  float fVar11;
  float fVar12;
  uint unaff_ESI;
  float10 fVar13;
  float10 fVar14;
  float10 fVar15;
  float fVar16;
  float fVar17;
  double dVar18;
  LotXZLevel *pLVar19;
  undefined4 uVar20;
  undefined1 uVar21;
  byte bVar22;
  longlong lVar23;
  char cVar24;
  undefined4 uStack_154;
  float fStack_150;
  float fStack_14c;
  undefined4 uStack_148;
  float fStack_144;
  undefined4 uStack_140;
  float fStack_13c;
  undefined2 uStack_138;
  undefined1 uStack_136;
  undefined1 uStack_135;
  LotXZLevel LStack_134;
  LotXZLevel local_128;
  float *local_11c;
  float local_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  int iStack_108;
  undefined4 uStack_104;
  float fStack_100;
  LotXZLevel local_fc;
  LotXZLevel LStack_f0;
  undefined4 *puStack_e4;
  undefined4 *puStack_e0;
  undefined4 uStack_dc;
  char *pcStack_d8;
  void *pvStack_d4;
  float fStack_d0;
  float fStack_cc;
  float local_c8;
  float local_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a4;
  longlong lStack_a0;
  float fStack_98;
  float fStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
  float afStack_88 [2];
  float afStack_80 [2];
  float afStack_78 [2];
  undefined4 local_70 [2];
  float fStack_68;
  float fStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  float local_50 [19];
  
  uVar6 = (int)this + 0x270;
  FUN_00ad77d0(uVar6);
  FUN_00cdf790((int)this);
  *(undefined1 *)((int)this + 0x47c) = 0;
  cVar1 = FUN_00d06020(this,param_1,param_2,'\0');
  if (cVar1 == '\0') {
    local_128.level = (int)-1.0;
    local_11c = (float *)-1.0;
    local_118 = 0.0;
    (**(code **)(*(int *)this + 0x98))(param_2,&local_128.level);
    lVar23 = (ulonglong)uVar6 << 0x20;
    uVar21 = 0;
    cVar1 = FUN_00cfa710();
    uVar20 = 0;
    pLVar19 = &local_128;
    iVar4 = FUN_00cfb880((int)this);
    FUN_00ccdad0(iVar4,(int)param_1,&pLVar19->x,uVar20,cVar1,uVar21,(char)lVar23,
                 (void *)((ulonglong)lVar23 >> 0x20));
    bVar2 = FUN_00ad6f10(uVar6);
    if (bVar2) {
      *(undefined1 *)((int)this + 0x1d1) = 1;
    }
    return (uint)extraout_var << 8;
  }
  pvVar5 = (void *)FUN_00cfb880((int)this);
  uVar20 = FUN_00affcb0(pvVar5);
  local_fc.x = (float)CONCAT31(local_fc.x._1_3_,(char)uVar20);
  pvVar5 = (void *)FUN_00cfb880((int)this);
  uVar6 = ObjectField_ReadUInt32At88(*(void **)((int)this + 0x3b0));
  uStack_154._0_3_ = CONCAT12(uVar6 == 1,(undefined2)uStack_154);
  if ((uVar6 != 1) && (bVar2 = FUN_00ce0280(this,pvVar5), bVar2)) {
    uVar20 = FUN_00ce0710(this,pvVar5,local_70);
    if ((char)uVar20 == '\0') {
      FUN_00ad6fb0(local_50,0xbf,pvVar5);
      FUN_00ad8570((void *)((int)this + 0x270),local_50);
      *(undefined1 *)((int)this + 0x1d1) = 1;
      uVar6 = FUN_00ad70d0((int)local_50);
      return uVar6 & 0xffffff00;
    }
    goto LAB_00ce3261;
  }
  local_c8 = *(float *)((int)pvVar5 + 8);
  local_c4 = *(float *)((int)pvVar5 + 0xc);
  LStack_134.level = (int)-1.0;
  local_128.x = -1.0;
  local_128.z = 0.0;
  (**(code **)(*(int *)this + 0x98))(param_2,&LStack_134.level);
  cVar1 = (char)(unaff_ESI >> 0x10);
  fStack_100 = 0.0;
  fStack_10c = 0.0;
  if (cVar1 == '\0') {
    FUN_00cde5a0(pvVar5,&fStack_100,&fStack_10c);
  }
  pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011edf08);
  fStack_110 = PlacementLocation_ReadYawWithRefresh(pvVar5);
  fStack_144 = (float)LStack_134.level;
  fVar11 = (float)LStack_134.level;
  if (LStack_134.level <= param_1[0x60]) {
    do {
      local_128.x = LStack_134.x;
      local_128.z = LStack_134.z;
      fStack_13c = -1.714704e+38;
      local_128.level = (int)fVar11;
      LotLocation_EncodeCellAndQuadrant(&local_128.x,(char *)&fStack_13c);
      bVar2 = Lot_TestChimneyCellSupport((undefined *)param_1,(char *)&fStack_13c,(undefined *)0x0);
      if (!bVar2) {
        fVar11 = (float)((int)fVar11 + -1);
        break;
      }
      fVar11 = (float)((int)fVar11 + 1);
    } while ((int)fVar11 <= param_1[0x60]);
    fStack_144 = fVar11;
  }
  fStack_13c = 0.0;
  fStack_a4 = 0.0;
  fStack_144 = fVar11;
  if (cVar1 == '\0') {
    if (0 < LStack_134.level) {
      local_128.x = LStack_134.x;
      local_128.z = LStack_134.z;
      local_128.level = 0;
      uStack_154 = (float)CONCAT13(uStack_154._3_1_,0xffff);
      FUN_00af7730(&local_128.x,(char *)&uStack_154);
      uVar20 = FUN_00b01530((int)param_1,&local_128.x);
      if ((char)uVar20 != '\0') {
        LStack_f0.x = LStack_134.x + fStack_100;
        LStack_f0.z = LStack_134.z + fStack_10c;
        LStack_f0.level = 0;
        fVar13 = LotLevelHeight_SampleLocalPosition((void *)param_1[0xa4],&LStack_f0);
        LStack_f0.x = LStack_134.x + fStack_100;
        LStack_f0.z = LStack_134.z + fStack_10c;
        LStack_f0.level = 1;
        fVar14 = LotLevelHeight_SampleLocalPosition((void *)param_1[0xa4],&LStack_f0);
        fStack_a4 = (float)(((fVar14 - (float10)(float)fVar13) - (float10)0.75) + (float10)0.25);
      }
    }
  }
  else if ((float)LStack_134.level == 0.0) {
    fVar13 = LotLevelHeight_SampleLocalPosition((void *)param_1[0xa4],&LStack_134);
    local_128.level = LStack_134.level + 1;
    local_128.x = LStack_134.x;
    local_128.z = LStack_134.z;
    fVar14 = LotLevelHeight_SampleLocalPosition((void *)param_1[0xa4],&local_128);
    fVar15 = FUN_00ab02d0();
    fStack_13c = (float)(fVar15 - (float10)(float)(fVar14 - (float10)(float)fVar13));
  }
  piVar7 = (int *)&stack0xfffffea8;
  if ((int)fVar11 <= param_1[0x60]) {
    piVar7 = (int *)&fStack_144;
  }
  if (*piVar7 < LStack_134.level) {
    piVar7 = &LStack_134.level;
  }
  fStack_144 = (float)*piVar7;
  uStack_140 = fStack_144;
  piVar7 = &LStack_134.level;
  if (-1 < LStack_134.level) {
    piVar7 = (int *)&stack0xfffffea8;
  }
  iStack_108 = *piVar7;
  pvStack_d4 = (void *)((int)fStack_144 - iStack_108);
  puStack_e4 = (undefined4 *)0x0;
  puStack_e0 = (undefined4 *)0x0;
  uStack_dc = 0;
  pcStack_d8 = "UserTool/UserToolFireplace/elevationOffsets";
  if ((int)pvStack_d4 + 1U == 0) {
    memmove((void *)0x0,(void *)0x0,0);
    puVar10 = (undefined4 *)0x0;
  }
  else {
    FUN_0056db20(&puStack_e4,(undefined4 *)0x0,(int)pvStack_d4 + 1U,(undefined4 *)&stack0xfffffea8);
    puVar10 = puStack_e0;
  }
  if (puStack_e4 != puVar10) {
    uStack_148 = -1.714704e+38;
    LotLocation_EncodeCellAndQuadrant(&LStack_134.x,(char *)&uStack_148);
    fVar12 = (float)(iStack_108 + 1);
    *puStack_e4 = 0;
    uStack_154 = fStack_13c;
    fVar11 = fStack_13c;
    if ((int)fVar12 < (int)uStack_140) {
      local_11c = (float *)(puStack_e4 + ((int)fVar12 - iStack_108));
      fVar17 = uStack_140;
      fVar16 = fStack_13c;
      do {
        local_128.x = LStack_134.x + fStack_100;
        local_128.z = LStack_134.z + fStack_10c;
        uStack_148._0_3_ = CONCAT12(SUB41(fVar17,0),(undefined2)uStack_148);
        uStack_138 = (undefined2)uStack_148;
        uStack_136 = SUB41(fVar17,0);
        uStack_135 = 0xf;
        fVar11 = fVar16;
        local_128.level = (int)fVar12;
        if ((0 < (int)fVar17) &&
           ((uVar20 = Lot_TestSelectedFloorZone4(param_1,&uStack_138), (char)uVar20 != '\0' ||
            (uVar20 = FUN_00b015c0((int)param_1,&local_128.x), fVar17 = uStack_140,
            fVar11 = uStack_154, (char)uVar20 != '\0')))) {
          uStack_154 = uStack_154 - 0.125;
          fVar17 = uStack_140;
          fVar11 = uStack_154;
        }
        *local_11c = fVar16;
        fVar12 = (float)((int)fVar12 + 1);
        local_11c = local_11c + 1;
        fVar16 = fVar11;
      } while ((int)fVar12 < (int)fVar17);
    }
    puStack_e4[(int)pvStack_d4] = fVar11;
  }
  pvStack_d4 = (void *)param_1[0xab];
  fVar11 = 0.0;
  local_118 = 0.0;
  fStack_114 = 0.0;
  pfVar8 = (float *)&stack0xfffffea8;
  if ((int)uStack_140 <= param_1[0x60]) {
    pfVar8 = &fStack_144;
  }
  fVar12 = *pfVar8;
  fVar17 = LStack_134.x + fStack_100;
  if (LStack_134.level < (int)fVar12) {
    local_fc.z = LStack_134.z + fStack_10c;
    fStack_144 = (float)((int)fVar12 + -1);
    uStack_154 = 3.0;
    if (fStack_13c + 1.1920929e-07 < 0.0) {
      uStack_154 = 3.0 - fStack_13c;
    }
    local_fc.x = fVar17;
    local_fc.level = (int)fVar12;
    fVar13 = LotLevelHeight_SampleLocalPosition((void *)param_1[0xa4],&local_fc);
    fVar14 = RoofManager_HighestHeightAtPoint(pvStack_d4,local_fc.x,local_fc.z);
    pfVar8 = (float *)&stack0xfffffea8;
    fVar13 = (fVar14 - (float10)(float)fVar13) + (float10)uStack_154;
    uStack_154 = (float)fVar13;
    if ((float10)3.0 <= fVar13) {
      pfVar8 = (float *)&uStack_154;
    }
    dVar18 = floor((double)*pfVar8);
    unaff_ESI = unaff_ESI & 0xffffff;
    uStack_154 = (float)dVar18;
    while( true ) {
      if ((uStack_154 < 0.0) && (0.001 <= ABS(-uStack_154))) goto LAB_00ce2b76;
      fStack_150 = 0.0;
      fStack_14c = 0.0;
      fStack_b8 = 0.0;
      fStack_b4 = 0.0;
      fStack_b0 = 0.0;
      fStack_ac = 0.0;
      pvVar5 = *(void **)((int)this + 0x3b0);
      if (0.001 <= ABS(uStack_154 - (float)dVar18)) {
        if ((char)(unaff_ESI >> 0x18) == '\0') {
          pfVar8 = ObjectField_AddressE0(pvVar5);
        }
        else {
          pfVar8 = ObjectField_AddressD0(pvVar5);
        }
        fStack_b8 = *pfVar8;
        fStack_b4 = pfVar8[1];
        fStack_b0 = pfVar8[2];
        fStack_ac = pfVar8[3];
      }
      else {
        pfVar8 = ObjectField_AddressF0(pvVar5);
        fStack_b8 = *pfVar8;
        fStack_b4 = pfVar8[1];
        fStack_b0 = pfVar8[2];
        fStack_ac = pfVar8[3];
      }
      uVar20 = FUN_00cdfd00(this,param_1,(uint *)&fStack_b8,(void *)((int)this + 0x3b8),
                            (undefined1 (*) [12])&local_fc,fStack_110,
                            (float)puStack_e4[local_fc.level - iStack_108] + uStack_154 + fStack_13c
                            ,(byte)uStack_104,'\0',&fStack_150);
      if ((char)uVar20 == '\0') break;
      fVar13 = (float10)_CIfmod();
      if ((float10)0.001 <= ABS(fVar13)) {
        fVar12 = 1.0;
        unaff_ESI = unaff_ESI & 0xffffff;
      }
      else {
        fVar12 = 3.0;
        unaff_ESI = CONCAT13(1,(int3)unaff_ESI);
      }
      uStack_154 = uStack_154 - fVar12;
      U64PairMap_Find((void *)((int)this + 0x45c),&lStack_a0,(ulonglong *)&fStack_150);
      fVar12 = (float)lStack_a0;
      if ((float)lStack_a0 ==
          *(float *)(*(int *)((int)this + 0x460) + *(int *)((int)this + 0x464) * 4)) {
        local_c8 = fStack_150;
        local_11c = (float *)((uint)local_11c & 0xffffff00);
        fStack_c0 = 0.0;
        fStack_bc = 0.0;
        local_c4 = fStack_14c;
        U64PairMap_InsertUnique((void *)((int)this + 0x45c),&local_128,&local_c8,(uint)local_11c);
        fVar12 = local_128.x;
      }
      *(float *)((int)fVar12 + 8) = fVar11;
      *(float *)((int)fVar12 + 0xc) = fStack_114;
      if (fVar11 != 0.0 || fStack_114 != 0.0) {
        U64PairMap_Find((void *)((int)this + 0x43c),afStack_80,(ulonglong *)&local_118);
        fVar12 = afStack_80[0];
        if (afStack_80[0] ==
            *(float *)(*(int *)((int)this + 0x440) + *(int *)((int)this + 0x444) * 4)) {
          uStack_60 = 0;
          uStack_5c = 0;
          uStack_140 = (float)((uint)uStack_140 & 0xffffff00);
          fStack_64 = fStack_114;
          fStack_68 = fVar11;
          U64PairMap_InsertUnique
                    ((void *)((int)this + 0x43c),&LStack_f0,&fStack_68,(uint)uStack_140);
          fVar12 = LStack_f0.x;
        }
        *(float *)((int)fVar12 + 8) = fStack_150;
        *(float *)((int)fVar12 + 0xc) = fStack_14c;
      }
      fVar12 = fStack_14c;
      fVar11 = fStack_150;
      U64PairMap_Find((void *)((int)this + 0x43c),afStack_88,(ulonglong *)&fStack_150);
      fVar17 = afStack_88[0];
      if (afStack_88[0] == *(float *)(*(int *)((int)this + 0x440) + *(int *)((int)this + 0x444) * 4)
         ) {
        uStack_90 = 0;
        uStack_8c = 0;
        uStack_148 = (float)((uint)uStack_148 & 0xffffff00);
        fStack_98 = fVar11;
        fStack_94 = fVar12;
        U64PairMap_InsertUnique((void *)((int)this + 0x43c),afStack_78,&fStack_98,(uint)uStack_148);
        fVar17 = afStack_78[0];
      }
      *(undefined4 *)((int)fVar17 + 8) = 0;
      *(undefined4 *)((int)fVar17 + 0xc) = 0;
      local_118 = fVar11;
      fStack_114 = fVar12;
    }
LAB_00ce29cb:
    bVar2 = FUN_00ad6f10((int)this + 0x270);
    if (!bVar2) goto LAB_00ce29db;
  }
  else {
    local_128.z = LStack_134.z + fStack_10c;
    local_128.level = (int)fVar12 + 1;
    local_11c = (float *)0x0;
    fStack_144 = fVar12;
    local_128.x = fVar17;
    LStack_f0.x = fVar17;
    LStack_f0.z = local_128.z;
    LStack_f0.level = (int)fVar12;
    bVar2 = FUN_00cdf1c0(this,(float)param_1,&LStack_f0.x,&local_128.x,(float *)&local_11c);
    if (bVar2) {
      fStack_150 = 0.0;
      fStack_14c = 0.0;
      if ((int)fVar12 < param_1[0x60]) {
LAB_00ce29a9:
        pLVar19 = &local_128;
        pvVar5 = (void *)((int)this + 0x3b8);
        lVar23 = ZEXT48(&fStack_150) << 0x20;
        fVar12 = 0.0;
        fVar11 = fStack_110;
        bVar22 = (byte)uStack_104;
        puVar9 = ObjectField_AddressF0(*(void **)((int)this + 0x3b0));
        uVar20 = FUN_00cdfd00(this,param_1,puVar9,pvVar5,(undefined1 (*) [12])pLVar19,fVar11,fVar12,
                              bVar22,(char)lVar23,(undefined4 *)((ulonglong)lVar23 >> 0x20));
        cVar1 = (char)uVar20;
      }
      else {
        if ((int)fVar12 < 5) {
          FUN_00ace0e0(param_1,param_1[0x5f],param_1[0x60] + 1);
          goto LAB_00ce29a9;
        }
        lVar23 = ZEXT48(&fStack_150) << 0x20;
        pLVar19 = &LStack_f0;
        pvVar5 = (void *)((int)this + 0x3b8);
        fVar11 = fStack_110;
        pfVar8 = local_11c;
        bVar22 = (byte)uStack_104;
        puVar9 = ObjectField_AddressF0(*(void **)((int)this + 0x3b0));
        uVar20 = FUN_00cdfd00(this,param_1,puVar9,pvVar5,(undefined1 (*) [12])pLVar19,fVar11,
                              (float)pfVar8,bVar22,(char)lVar23,
                              (undefined4 *)((ulonglong)lVar23 >> 0x20));
        cVar1 = (char)uVar20;
      }
      if (cVar1 != '\0') {
        puVar10 = (undefined4 *)FUN_00ce0c70((void *)((int)this + 0x45c),(uint *)&fStack_150);
        *puVar10 = 0;
        puVar10[1] = 0;
        puVar10 = (undefined4 *)FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&fStack_150);
        *puVar10 = 0;
        puVar10[1] = 0;
        local_118 = fStack_150;
        fStack_114 = fStack_14c;
        fVar11 = fStack_150;
LAB_00ce2b76:
        cVar1 = (char)(unaff_ESI >> 0x10);
        if ((cVar1 != '\0') && (iStack_108 = LStack_134.level + 1, (int)fStack_144 < iStack_108)) {
          pfVar8 = (float *)FUN_00ce0c70((void *)((int)this + 0x45c),(uint *)&fStack_d0);
          *pfVar8 = fVar11;
          pfVar8[1] = fStack_114;
          if (fVar11 != 0.0 || fStack_114 != 0.0) {
            pfVar8 = (float *)FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&local_118);
            *pfVar8 = fStack_d0;
            pfVar8[1] = fStack_cc;
          }
          puVar10 = (undefined4 *)FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&fStack_d0);
          *puVar10 = 0;
          puVar10[1] = 0;
        }
        if (iStack_108 <= (int)fStack_144) {
          do {
            fVar12 = fStack_144;
            local_fc.x = LStack_134.x + fStack_100;
            local_fc.z = LStack_134.z + fStack_10c;
            local_fc.level = (int)fStack_144;
            sVar3 = LotRoom_ResolveForLocalLocation((void *)param_1[0xa6],&local_fc.x,1,1);
            if (((int)fVar12 < LStack_134.level) &&
               ((sVar3 != 0 ||
                (uVar20 = RoofManager_TestPointCoverage
                                    (pvStack_d4,&local_fc.x,(LPCRITICAL_SECTION)0x0,'\x01'),
                (char)uVar20 != '\0')))) break;
            fStack_150 = 0.0;
            fStack_14c = 0.0;
            uStack_136 = 0;
            uStack_138 = 0xffff;
            uStack_135 = 0xff;
            LotLocation_EncodeCellAndQuadrant(&local_fc.x,(char *)&uStack_138);
            uStack_148 = (float)puStack_e4[local_fc.level - iStack_108];
            if (local_fc.level == LStack_134.level) {
LAB_00ce2f6d:
              pfVar8 = ObjectField_AddressA0(*(void **)((int)this + 0x3b0));
              local_c8 = *pfVar8;
              local_c4 = pfVar8[1];
              fStack_c0 = pfVar8[2];
              fStack_bc = pfVar8[3];
              if (LStack_134.level < (int)fVar12) {
                pfVar8 = ObjectField_AddressD0(*(void **)((int)this + 0x3b0));
LAB_00ce2fc1:
                local_c8 = *pfVar8;
                local_c4 = pfVar8[1];
                fStack_c0 = pfVar8[2];
                fStack_bc = pfVar8[3];
              }
              else if ((int)fVar12 < LStack_134.level) {
                pfVar8 = ObjectField_AddressB0(*(void **)((int)this + 0x3b0));
                goto LAB_00ce2fc1;
              }
              pfVar8 = &local_c8;
              fVar17 = uStack_148 + fStack_13c;
LAB_00ce302b:
              uVar20 = FUN_00cdfd00(this,param_1,(uint *)pfVar8,(void *)((int)this + 0x3b8),
                                    (undefined1 (*) [12])&local_fc,fStack_110,fVar17,
                                    (byte)uStack_104,'\0',&fStack_150);
              if ((char)uVar20 == '\0') goto LAB_00ce29cb;
              if (*(int *)((int)this + 0x3c0) != *(int *)((int)this + 0x3d0)) {
                iVar4 = *(int *)((int)this + 0x3d0);
                if (iVar4 == *(int *)((int)this + 0x3d4)) {
                  iVar4 = *(int *)(*(int *)((int)this + 0x3dc) + -4) + 0x100;
                }
                pvVar5 = *(void **)(*(int *)(iVar4 + -4) + 0x58);
                if ((pvVar5 != (void *)0x0) &&
                   (pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011edf08), pvVar5 != (void *)0x0))
                {
                  local_128.x = -1.0;
                  local_128.z = -1.0;
                  local_128.level = 0;
                  ObjectLocation_CopyXZLevel(pvVar5,&local_128.x,&local_128.z,&local_128.level);
                  uStack_154 = (float)CONCAT13(uStack_154._3_1_,0xffff);
                  FUN_00af7730(&local_128.x,(char *)&uStack_154);
                  uVar20 = FUN_00cde460(param_1,(undefined2 *)&uStack_154,
                                        (void *)((int)this + 0x270));
                  if ((char)uVar20 == '\0') goto LAB_00ce29cb;
                }
              }
              pvVar5 = (void *)((int)this + 0x45c);
              U64PairMap_Find(pvVar5,afStack_78,(ulonglong *)&fStack_150);
              fVar12 = afStack_78[0];
              if (afStack_78[0] ==
                  *(float *)(*(int *)((int)this + 0x460) + *(int *)((int)this + 0x464) * 4)) {
                fStack_94 = fStack_14c;
                afStack_80[0] = (float)((uint)afStack_80[0] & 0xffffff00);
                fStack_98 = fStack_150;
                uStack_90 = 0;
                uStack_8c = 0;
                U64PairMap_InsertUnique(pvVar5,&fStack_b8,&fStack_98,(uint)afStack_80[0]);
                fVar12 = fStack_b8;
              }
              *(float *)((int)fVar12 + 8) = fVar11;
              *(float *)((int)fVar12 + 0xc) = fStack_114;
              if (fVar11 != 0.0 || fStack_114 != 0.0) {
                pfVar8 = (float *)FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&local_118);
                *pfVar8 = fStack_150;
                pfVar8[1] = fStack_14c;
              }
              if (fStack_144 == (float)((uint)(cVar1 != '\0') + LStack_134.level)) {
                pfVar8 = (float *)FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&fStack_150);
                fVar11 = fStack_d0;
                *pfVar8 = fStack_d0;
                pfVar8[1] = fStack_cc;
                pfVar8 = (float *)FUN_00ce0c70(pvVar5,(uint *)&fStack_d0);
                *pfVar8 = fStack_150;
                pfVar8[1] = fStack_14c;
                fStack_114 = fStack_cc;
                local_118 = fVar11;
              }
              else {
                puVar10 = (undefined4 *)
                          FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&fStack_150);
                *puVar10 = 0;
                puVar10[1] = 0;
                fStack_114 = fStack_14c;
                fVar11 = fStack_150;
                local_118 = fStack_150;
              }
            }
            else {
              uStack_140 = (float)CONCAT13(0xf,CONCAT12(uStack_136,uStack_138));
              if (((fVar12 == 0.0) &&
                  (uVar20 = Lot_TestSelectedFloorZone2(param_1,(undefined2 *)&uStack_140),
                  (char)uVar20 != '\0')) ||
                 (uVar20 = FUN_00b01530((int)param_1,&local_fc.x), (char)uVar20 != '\0')) {
                unaff_ESI = CONCAT13(1,(int3)unaff_ESI);
LAB_00ce2d9e:
                bVar2 = false;
                if ((char)(unaff_ESI >> 0x18) == '\0') goto LAB_00ce2f6d;
                if ((char)(unaff_ESI >> 0x10) != '\0') {
                  uStack_148 = uStack_148 - 0.25;
                  bVar2 = false;
                }
              }
              else {
                unaff_ESI = unaff_ESI & 0xffffff;
                if (((int)fVar12 < 1) ||
                   ((uVar20 = Lot_TestSelectedFloorZone4(param_1,(undefined2 *)&uStack_140),
                    (char)uVar20 == '\0' &&
                    (uVar20 = FUN_00b015c0((int)param_1,&local_fc.x), (char)uVar20 == '\0'))))
                goto LAB_00ce2d9e;
                bVar2 = true;
              }
              if (0 < (int)fVar12) {
                uStack_148 = uStack_148 + fStack_13c;
              }
              cVar24 = (char)(unaff_ESI >> 0x10);
              if ((cVar24 != '\0') || (bVar2)) {
                pfVar8 = ObjectField_AddressE0(*(void **)((int)this + 0x3b0));
                fVar17 = uStack_148;
                local_11c = pfVar8;
                if (cVar24 != '\0') goto LAB_00ce302b;
              }
              else {
                pfVar8 = ObjectField_AddressC0(*(void **)((int)this + 0x3b0));
              }
              fVar17 = uStack_148;
              local_11c = pfVar8;
              if ((fVar12 != 0.0) || ((char)(unaff_ESI >> 0x18) == '\0')) goto LAB_00ce302b;
              dVar18 = ceil((double)(fStack_a4 * 0.2));
              afStack_88[0] = (float)dVar18;
              lStack_a0 = (longlong)ROUND(afStack_88[0]);
              LStack_f0.x = local_fc.x;
              LStack_f0.z = local_fc.z;
              LStack_f0.level = 1;
              fVar12 = 0.0;
              fVar17 = fVar11;
              if ((float)lStack_a0 != 0.0) {
                do {
                  fVar11 = (float)(int)fVar12;
                  if ((int)fVar12 < 0) {
                    fVar11 = fVar11 + 4.2949673e+09;
                  }
                  afStack_88[0] = fVar12;
                  uVar20 = FUN_00cdfd00(this,param_1,(uint *)local_11c,(void *)((int)this + 0x3b8),
                                        (undefined1 (*) [12])&LStack_f0,fStack_110,
                                        -0.5 - fVar11 * 5.0,(byte)uStack_104,'\x01',&fStack_150);
                  if ((char)uVar20 == '\0') goto LAB_00ce29cb;
                  pfVar8 = (float *)FUN_00ce0c70((void *)((int)this + 0x45c),(uint *)&fStack_150);
                  fVar11 = fStack_150;
                  *pfVar8 = fVar17;
                  pfVar8[1] = fStack_114;
                  if (fVar17 != 0.0 || fStack_114 != 0.0) {
                    pfVar8 = (float *)FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&local_118);
                    *pfVar8 = fVar11;
                    pfVar8[1] = fStack_14c;
                  }
                  puVar10 = (undefined4 *)
                            FUN_00ce0c70((void *)((int)this + 0x43c),(uint *)&fStack_150);
                  *puVar10 = 0;
                  puVar10[1] = 0;
                  fStack_114 = fStack_14c;
                  fVar12 = (float)((int)fVar12 + 1);
                  local_118 = fVar11;
                  fVar17 = fVar11;
                } while ((uint)fVar12 < (uint)(float)lStack_a0);
              }
            }
            fStack_144 = (float)((int)fStack_144 + -1);
          } while (iStack_108 <= (int)fStack_144);
        }
        FUN_00ad77d0((int)this + 0x270);
        thunk_FUN_00792320();
        *(undefined1 *)((int)this + 0x47c) = 1;
        uVar20 = 0;
        if (puStack_e4 != (undefined4 *)0x0) {
          Memory_FreeIfNonNull(puStack_e4);
          uVar20 = extraout_EAX_00;
        }
LAB_00ce3261:
        return CONCAT31((int3)((uint)uVar20 >> 8),1);
      }
      goto LAB_00ce29cb;
    }
  }
  *(undefined1 *)((int)this + 0x1d1) = 1;
LAB_00ce29db:
  FUN_00cdf790((int)this);
  uVar6 = 0;
  if (puStack_e4 != (undefined4 *)0x0) {
    Memory_FreeIfNonNull(puStack_e4);
    uVar6 = extraout_EAX;
  }
  return uVar6 & 0xffffff00;
}

