/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 weather snapshot instruction contract. Selected publication/consumer boundary
   inside complete ECXmanager/twofloatstack RET8 update. Gated by global11EF110. Under980lock,
   overrideB04 maycopyA48->active8C8; dirty9A0 causesREP MOVSD23 pending924->render-prepared9EC
   thenXCHGdirty0; unlock. Later choosesA48override or9EC prepared, comparessemanticfields with
   previousAA4 viaD6A3F0; view transition also forcesupdate. D69B30 publishes shader constants for
   changed/settings/view conditions. D6A2E0 executes onlywhen precipitationcellownerBF4exists,
   before cellupdateD66AD0. Other audio/world/snow/resource/effect branches retained but unexpanded;
   no universal immediate rendering, onepacketpertick, complete smoothing/state machine or staging
   readiness guarantee.
   
   Analyst PC1.67 original contract. Selected flora-option producer inside the complete6179-byte
   original owner. Ordinary-world weather snapshot snowThickness/treeLeafLoss/treeFallColor are
   tested with original SIMD absolute/epsilon predicate(negative1 multiplier, tolerance34000000);
   snow5B4ECBF5, fall0BB5EA4E and leaf-transition1FD020A8(useFallSet true)/BB9EE5E0(false) are
   added/removed via6E37A0/6E3110, with membership queries6E15C0. Special view-state branch can also
   modify fall/twig membership. The14 direct original insertion callsites all belong to this owner
   and insert none of8D8B43A1/B5758B8C/C036773A. No FSAALevel read feeds these decisions; no
   universal world/view/NaN behavior inferred from ordinary finite snapshot. Existing weather
   publication/locking annotations remain authoritative. */

void __thiscall WeatherManager_Update(void *this,float timeInput0,float timeInput1)

{
  float fVar1;
  float fVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  float fVar18;
  char cVar19;
  bool bVar20;
  int iVar21;
  undefined4 extraout_EAX;
  uint uVar22;
  uint uVar23;
  int *piVar24;
  void *pvVar25;
  void **ppvVar26;
  int **ppiVar27;
  void *pvVar28;
  int *piVar29;
  undefined4 uVar30;
  void *pvVar31;
  int *piVar32;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined4 extraout_ECX;
  int iVar33;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  char *extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined4 extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 extraout_ECX_08;
  undefined4 extraout_ECX_09;
  undefined4 extraout_ECX_10;
  undefined4 extraout_ECX_11;
  undefined4 extraout_ECX_12;
  undefined4 extraout_ECX_13;
  undefined4 extraout_ECX_14;
  float fVar34;
  float fVar35;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  undefined4 uVar36;
  int iVar37;
  float extraout_EDX_01;
  uint3 uVar38;
  int extraout_EDX_02;
  int extraout_EDX_03;
  undefined4 extraout_EDX_04;
  undefined4 extraout_EDX_05;
  undefined4 extraout_EDX_06;
  undefined4 extraout_EDX_07;
  undefined3 uVar39;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  undefined3 extraout_var_03;
  undefined3 extraout_var_04;
  undefined3 extraout_var_05;
  undefined4 extraout_EDX_08;
  undefined4 extraout_EDX_09;
  undefined4 extraout_EDX_10;
  undefined4 *puVar40;
  LPCRITICAL_SECTION p_Var41;
  undefined4 *puVar42;
  PCWeatherSettings *pPVar43;
  bool bVar44;
  undefined2 in_FPUControlWord;
  undefined1 uVar45;
  float fVar46;
  float fVar47;
  undefined1 auVar48 [16];
  undefined1 auVar49 [16];
  undefined1 auVar50 [16];
  undefined1 auVar51 [16];
  undefined1 auVar52 [16];
  undefined1 auVar53 [16];
  undefined1 auVar54 [16];
  undefined1 auVar55 [16];
  undefined1 auVar56 [16];
  undefined1 auVar57 [16];
  undefined1 auVar58 [16];
  undefined1 auVar59 [16];
  undefined1 auVar60 [16];
  undefined1 auVar61 [16];
  undefined1 auVar62 [16];
  undefined1 auVar63 [16];
  undefined1 auVar64 [16];
  undefined1 auVar65 [16];
  undefined1 auVar66 [16];
  undefined1 auVar67 [16];
  undefined1 auVar68 [16];
  undefined1 auVar69 [16];
  undefined1 auVar70 [16];
  undefined1 auVar71 [16];
  undefined1 auVar72 [16];
  undefined1 auVar73 [16];
  undefined1 auVar74 [16];
  undefined1 auVar75 [16];
  undefined1 auVar76 [16];
  undefined1 auVar77 [16];
  undefined1 auVar78 [16];
  undefined1 auVar79 [16];
  undefined1 auVar80 [16];
  undefined1 auVar81 [16];
  undefined1 auVar82 [16];
  undefined1 auVar83 [16];
  undefined1 auVar84 [16];
  undefined1 auVar85 [16];
  undefined1 auVar86 [16];
  undefined1 auVar87 [16];
  undefined1 auVar88 [16];
  undefined1 auVar89 [16];
  undefined1 auVar90 [16];
  undefined1 auVar91 [16];
  undefined1 auVar92 [16];
  undefined1 auVar93 [16];
  undefined1 auVar94 [16];
  undefined1 auVar95 [16];
  undefined1 auVar96 [16];
  undefined1 auVar97 [16];
  undefined1 auVar98 [16];
  undefined1 auVar99 [16];
  undefined1 auVar100 [16];
  undefined1 auVar101 [16];
  undefined1 auVar102 [16];
  undefined1 auVar103 [16];
  undefined1 auVar104 [16];
  undefined1 auVar105 [16];
  undefined1 auVar106 [16];
  undefined1 auVar107 [16];
  longlong local_d0;
  void *local_c8;
  int *local_c4;
  byte bStack_c0;
  char cStack_bf;
  char cStack_be;
  char cStack_bd;
  uint uStack_bc;
  int *piStack_b8;
  int *local_b4;
  PCWeatherSettings *local_b0;
  PCWeatherSettings *pPStack_ac;
  bool bStack_a6;
  undefined1 uStack_a5;
  void *local_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  undefined1 auStack_90 [8];
  float fStack_88;
  float fStack_84;
  undefined1 auStack_80 [8];
  float fStack_78;
  float fStack_74;
  PC167_SurfaceMapping PStack_70;
  PC167_SurfaceMapping PStack_48;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  DAT_011d0564 = 0;
  local_a4 = this;
  cVar19 = CachedGlobalMask100000_Query();
  if (cVar19 != '\0') {
    iVar21 = FUN_00c5f930((int)DAT_011edbc4);
    local_b4 = (int *)((uint)local_b4 & 0xffffff00);
    local_b0 = (PCWeatherSettings *)((uint)local_b0 & 0xffffff00);
    local_c8 = (void *)((uint)local_c8 & 0xffffff00);
    if ((iVar21 == 1) || (iVar21 == 2)) {
      EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
      fVar34 = FLOAT_00f998f8;
      *(float *)((int)this + 0x954) = FLOAT_00f998f8;
      fVar35 = FLOAT_00fab218;
      if (iVar21 == 1) {
        fVar46 = fVar34;
      }
      else {
        fVar46 = 0.0;
      }
      auVar71._4_4_ = fVar46;
      auVar71._0_4_ = fVar46;
      auVar71._8_4_ = fVar46;
      auVar71._12_4_ = fVar46;
      *(float *)((int)this + 0x94c) = fVar46;
      auVar73._0_4_ = fVar46 - fVar34;
      auVar73._4_4_ = auVar73._0_4_;
      auVar73._8_4_ = auVar73._0_4_;
      auVar73._12_4_ = auVar73._0_4_;
      auVar99._0_4_ = fVar46 * fVar35;
      auVar99._4_4_ = fVar46 * fVar35;
      auVar99._8_4_ = fVar46 * fVar35;
      auVar99._12_4_ = fVar46 * fVar35;
      auVar100 = maxps(auVar99,auVar71);
      auVar72._0_4_ = auVar73._0_4_ * fVar35;
      auVar72._4_4_ = auVar73._0_4_ * fVar35;
      auVar72._8_4_ = auVar73._0_4_ * fVar35;
      auVar72._12_4_ = auVar73._0_4_ * fVar35;
      auVar73 = maxps(auVar72,auVar73);
      auVar74._4_4_ = -(uint)(auVar73._4_4_ <= FLOAT_0108b27c);
      auVar74._0_4_ = -(uint)(auVar73._0_4_ <= FLOAT_0108b27c);
      auVar74._8_4_ = -(uint)(auVar73._8_4_ <= FLOAT_0108b27c);
      auVar74._12_4_ = -(uint)(auVar73._12_4_ <= FLOAT_0108b27c);
      iVar33 = movmskps(extraout_ECX,auVar74);
      auVar101._4_4_ = -(uint)(auVar100._4_4_ <= DAT_0108b284);
      auVar101._0_4_ = -(uint)(auVar100._0_4_ <= DAT_0108b284);
      auVar101._8_4_ = -(uint)(auVar100._8_4_ <= DAT_0108b284);
      auVar101._12_4_ = -(uint)(auVar100._12_4_ <= DAT_0108b284);
      iVar21 = movmskps(extraout_EAX,auVar101);
      auVar100._4_4_ = fVar34;
      auVar100._0_4_ = fVar34;
      auVar100._8_4_ = fVar34;
      auVar100._12_4_ = fVar34;
      local_b4 = (int *)CONCAT31(local_b4._1_3_,iVar21 != 0xf);
      auVar75._0_4_ = fVar34 * fVar35;
      auVar75._4_4_ = fVar34 * fVar35;
      auVar75._8_4_ = fVar34 * fVar35;
      auVar75._12_4_ = fVar34 * fVar35;
      auVar73 = maxps(auVar75,auVar100);
      auVar76._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
      auVar76._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
      auVar76._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
      auVar76._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
      iVar21 = movmskps(iVar21,auVar76);
      local_b0 = (PCWeatherSettings *)CONCAT31(local_b0._1_3_,iVar33 == 0xf);
      local_c8 = (void *)CONCAT31(local_c8._1_3_,iVar21 != 0xf);
      cVar19 = CachedGlobalMask8000_Query();
      if (cVar19 == '\0') {
        fVar34 = (float)((uint)*(float *)((int)this + 0x94c) &
                        (int)(FLOAT_00f998f0 - *(float *)((int)this + 0x94c)) >> 0x1f);
        uVar22 = (int)(FLOAT_00f998f8 - fVar34) >> 0x1f;
        fVar35 = (float)((uint)*(float *)((int)this + 0x954) &
                        (int)(FLOAT_00f998f0 - *(float *)((int)this + 0x954)) >> 0x1f);
        uVar23 = (int)(FLOAT_00f998f8 - fVar35) >> 0x1f;
        local_c4 = (int *)FLOAT_00f998f8;
        uVar23 = ~uVar23 & (uint)fVar35 | (uint)FLOAT_00f998f8 & uVar23;
        local_d0 = CONCAT44((int)((ulonglong)local_d0 >> 0x20),uVar23);
        register0x00001244 = uVar23;
        _DAT_011ef150 = ~uVar22 & (uint)fVar34 | (uint)FLOAT_00f998f8 & uVar22;
        WeatherResources_PublishGlobalBindings(0x11ef130);
      }
      LeaveCriticalSection((LPCRITICAL_SECTION)((int)this + 0x980));
    }
    if ((DAT_011d2530 != (void *)0x0) && (cVar19 = CachedGlobalMask8000_Query(), cVar19 == '\0')) {
      uVar22 = 0;
      bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,0xbb5ea4e);
      if ((bool)(char)local_c8 != bVar20) {
        if ((char)local_c8 == '\0') {
          RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,0xbb5ea4e);
        }
        else {
          RenderSystem_AddGlobalShaderOption(DAT_011d2530,0xbb5ea4e);
        }
        uVar22 = 0x4000000;
      }
      piVar24 = (int *)FloraRenderer_GetService();
      if (piVar24 != (int *)0x0) {
        bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x44611a20);
        if ((bool)(char)local_b4 != bVar20) {
          RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x44611a20);
          uVar22 = 0x4000000;
        }
        (**(code **)(*piVar24 + 0x18))(local_b4);
        (**(code **)(*piVar24 + 0x1c))(local_b4);
        (**(code **)(*piVar24 + 0x24))((void *)local_d0);
      }
      if ((uVar22 != 0) && (pvVar25 = LoadPump_ReadFrameServiceGlobal(), pvVar25 != (void *)0x0)) {
        FUN_006e8310(pvVar25,uVar22,1);
      }
    }
  }
  if (DAT_011ef110 == '\0') {
    return;
  }
  local_b0 = (PCWeatherSettings *)((int)this + 0x980);
  EnterCriticalSection((LPCRITICAL_SECTION)local_b0);
  *(char *)((int)this + 0x9e8) = *(char *)((int)this + 0xb04);
  if (*(char *)((int)this + 0xb04) != '\0') {
    puVar40 = (undefined4 *)((int)this + 0xa48);
    puVar42 = (undefined4 *)((int)this + 0x8c8);
    for (iVar21 = 0x17; iVar21 != 0; iVar21 = iVar21 + -1) {
      *puVar42 = *puVar40;
      puVar40 = puVar40 + 1;
      puVar42 = puVar42 + 1;
    }
  }
  if (*(int *)((int)this + 0x9a0) != 0) {
                    /* Under lock: pending924 -> render-prepared9EC onlyifdirty, 23DWORD; then
                       atomicclear. This is later consumption, not setter synchronously applying
                       active rendering. */
    puVar40 = (undefined4 *)((int)this + 0x924);
    puVar42 = (undefined4 *)((int)this + 0x9ec);
    for (iVar21 = 0x17; iVar21 != 0; iVar21 = iVar21 + -1) {
      *puVar42 = *puVar40;
      puVar40 = puVar40 + 1;
      puVar42 = puVar42 + 1;
    }
    LOCK();
    *(undefined4 *)((int)this + 0x9a0) = 0;
    UNLOCK();
  }
  LeaveCriticalSection((LPCRITICAL_SECTION)local_b0);
  EnterCriticalSection((LPCRITICAL_SECTION)((int)this + 0x9a8));
  puVar40 = (undefined4 *)((int)this + 0xb08);
  if ((((*(int *)((int)this + 0xb0c) * *(int *)((int)this + 0xb08) == 0) &&
       ((DAT_011ef2cc & 3) == 0)) && (DAT_011ef2cc != 0)) &&
     ((DAT_011ef2cc != 0 && ((DAT_011ef2cc & 3) == 0)))) {
    uVar22 = -(uint)(*(int *)(DAT_011ef2cc + 0x60) != 0) & DAT_011ef2cc;
    if (uVar22 != 0) {
      pvVar25 = (void *)(uVar22 + 0x28);
      local_c8 = pvVar25;
      if (pvVar25 != (void *)0x0) {
        Surface_MapTextureLevel(pvVar25,&PStack_48,0,0);
        local_b0 = (PCWeatherSettings *)PStack_48.width;
        local_d0._0_4_ = (void *)PStack_48.height;
        if (*(int *)(uVar22 + 0x50) == 0x10) {
          ByteBlockGrid_SetDimensions(puVar40,PStack_48.width,PStack_48.height);
          pvVar25 = (void *)0x0;
          local_b4 = PStack_48.bits;
          if ((void *)local_d0 != (void *)0x0) {
            do {
              p_Var41 = (LPCRITICAL_SECTION)0x0;
              if (local_b0 != (PCWeatherSettings *)0x0) {
                do {
                  FUN_00aee310(puVar40,(char *)((int)((int)&p_Var41->DebugInfo +
                                                     PStack_48.rowPitchBytes * (int)pvVar25) +
                                               (int)local_b4),(uint)p_Var41,(uint)pvVar25);
                  p_Var41 = (LPCRITICAL_SECTION)((int)&p_Var41->DebugInfo + 1);
                } while (p_Var41 < local_b0);
              }
              pvVar25 = (void *)((int)pvVar25 + 1);
            } while (pvVar25 < (void *)local_d0);
          }
          ByteBlockGrid_CompressUniformBlocks((int)puVar40);
          pvVar25 = local_c8;
          this = local_a4;
        }
        Surface_UnmapIfMapped(pvVar25,&PStack_48);
        local_c8 = (void *)*puVar40;
        local_d0 = CONCAT44(local_d0._4_4_,*(int *)((int)this + 0xb0c));
        *(undefined1 *)((int)this + 0xb90) = 1;
        ppvVar26 = (void **)&local_d0;
        if ((int)local_c8 <= *(int *)((int)this + 0xb0c)) {
          ppvVar26 = &local_c8;
        }
        *(void **)((int)this + 0xb98) = *ppvVar26;
        piVar24 = (int *)FUN_007693a0();
        if (piVar24 != (int *)0x0) {
          (**(code **)(*piVar24 + 0x1c))(0xe81545f,0,0,0);
        }
      }
    }
  }
  piVar24 = (int *)((int)local_a4 + 0xb4c);
  local_b4 = piVar24;
  if (((*(int *)((int)local_a4 + 0xb50) * *(int *)((int)local_a4 + 0xb4c) == 0) &&
      ((DAT_011ef2d8 & 3) == 0)) &&
     ((DAT_011ef2d8 != 0 && ((DAT_011ef2d8 != 0 && ((DAT_011ef2d8 & 3) == 0)))))) {
    uVar22 = -(uint)(*(int *)(DAT_011ef2d8 + 0x60) != 0) & DAT_011ef2d8;
    if (uVar22 != 0) {
      pvVar25 = (void *)(uVar22 + 0x28);
      local_c8 = pvVar25;
      if (pvVar25 != (void *)0x0) {
        Surface_MapTextureLevel(pvVar25,&PStack_70,0,0);
        local_b0 = (PCWeatherSettings *)PStack_70.height;
        if (*(int *)(uVar22 + 0x50) == 0x10) {
          ByteBlockGrid_SetDimensions(piVar24,PStack_70.width,PStack_70.height);
          p_Var41 = (LPCRITICAL_SECTION)0x0;
          local_d0 = CONCAT44(local_d0._4_4_,PStack_70.bits);
          if (local_b0 != (PCWeatherSettings *)0x0) {
            do {
              uVar22 = 0;
              if (PStack_70.width != 0) {
                do {
                  FUN_00aee310(local_b4,(char *)(PStack_70.rowPitchBytes * (int)p_Var41 + uVar22 +
                                                (int)(void *)local_d0),uVar22,(uint)p_Var41);
                  uVar22 = uVar22 + 1;
                } while (uVar22 < PStack_70.width);
              }
              p_Var41 = (LPCRITICAL_SECTION)((int)&p_Var41->DebugInfo + 1);
            } while (p_Var41 < local_b0);
          }
          ByteBlockGrid_CompressUniformBlocks((int)local_b4);
          pvVar25 = local_c8;
          piVar24 = local_b4;
        }
        Surface_UnmapIfMapped(pvVar25,&PStack_70);
        local_c4 = *(int **)((int)local_a4 + 0xb50);
        piStack_b8 = (int *)*piVar24;
        ppiVar27 = &local_c4;
        if (*piVar24 <= (int)*(int **)((int)local_a4 + 0xb50)) {
          ppiVar27 = &piStack_b8;
        }
        *(int **)((int)local_a4 + 0xb9c) = *ppiVar27;
      }
    }
  }
  pvVar25 = local_a4;
  LeaveCriticalSection((LPCRITICAL_SECTION)((int)local_a4 + 0x9a8));
  cVar19 = *(char *)((int)pvVar25 + 0xb04);
  if (cVar19 == '\0') {
    pPStack_ac = (PCWeatherSettings *)((int)pvVar25 + 0x9ec);
  }
  else {
    pPStack_ac = (PCWeatherSettings *)((int)pvVar25 + 0xa48);
  }
  pPVar43 = pPStack_ac;
  local_b0 = (PCWeatherSettings *)((int)pvVar25 + 0xaa4);
  uVar22 = WeatherSettings_AreSimilar(pPStack_ac,local_b0);
  piStack_b8 = (int *)CONCAT31(piStack_b8._1_3_,(char)uVar22 == '\0');
  if (cVar19 == '\0') {
    local_b4 = (int *)((int)pvVar25 + 0xba0);
  }
  else {
    local_b4 = (int *)((int)pvVar25 + 3000);
  }
  pvVar28 = LoadPump_ReadFrameServiceGlobal();
  if (pvVar28 == (void *)0x0) {
    local_c8 = (void *)((uint)local_c8 & 0xffffff00);
    iVar21 = 0;
    uVar30 = extraout_ECX_00;
    uVar36 = extraout_EDX;
  }
  else {
    iVar21 = CameraFlags_TestBelowHeightThreshold((int)pvVar28);
    local_c8 = (void *)CONCAT31(local_c8._1_3_,(char)iVar21);
    uVar30 = extraout_ECX_01;
    uVar36 = extraout_EDX_00;
  }
  fVar34 = pPVar43->snowThickness;
  fVar35 = *(float *)((int)pvVar25 + 0xabc);
  fVar46 = fVar34 - fVar35;
  auStack_90._4_4_ = FLOAT_00fab218;
  auStack_90._0_4_ = FLOAT_00fab218;
  fStack_88 = FLOAT_00fab218;
  fStack_84 = FLOAT_00fab218;
  auStack_80._4_4_ = FLOAT_0108b27c;
  auStack_80._0_4_ = FLOAT_0108b27c;
  fStack_78 = FLOAT_0108b27c;
  fStack_74 = FLOAT_0108b27c;
  auVar80._0_4_ = fVar46 * FLOAT_00fab218;
  auVar80._4_4_ = fVar46 * FLOAT_00fab218;
  auVar80._8_4_ = fVar46 * FLOAT_00fab218;
  auVar80._12_4_ = fVar46 * FLOAT_00fab218;
  auVar3._4_4_ = fVar46;
  auVar3._0_4_ = fVar46;
  auVar3._8_4_ = fVar46;
  auVar3._12_4_ = fVar46;
  auVar73 = maxps(auVar80,auVar3);
  auVar81._4_4_ = -(uint)(auVar73._4_4_ <= FLOAT_0108b27c);
  auVar81._0_4_ = -(uint)(auVar73._0_4_ <= FLOAT_0108b27c);
  auVar81._8_4_ = -(uint)(auVar73._8_4_ <= FLOAT_0108b27c);
  auVar81._12_4_ = -(uint)(auVar73._12_4_ <= FLOAT_0108b27c);
  iVar33 = movmskps(uVar30,auVar81);
  if (iVar33 != 0xf) {
    if (((_DAT_00f9b5b4 <= fVar34) && (fVar35 < _DAT_00f9b5b4)) ||
       ((fVar34 < _DAT_00f9b5b4 && (_DAT_00f9b5b4 <= fVar35)))) {
      cStack_bf = '\x01';
    }
    else {
      cStack_bf = '\0';
    }
    auVar48._4_4_ = fVar34;
    auVar48._0_4_ = fVar34;
    auVar48._8_4_ = fVar34;
    auVar48._12_4_ = fVar34;
    auVar82._0_4_ = fVar34 * FLOAT_00fab218;
    auVar82._4_4_ = fVar34 * FLOAT_00fab218;
    auVar82._8_4_ = fVar34 * FLOAT_00fab218;
    auVar82._12_4_ = fVar34 * FLOAT_00fab218;
    auVar73 = maxps(auVar82,auVar48);
    auVar83._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
    auVar83._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
    auVar83._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
    auVar83._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
    iVar37 = movmskps(uVar36,auVar83);
    fStack_a0 = DAT_0108b284;
    fStack_9c = DAT_0108b284;
    fStack_98 = DAT_0108b284;
    fStack_94 = DAT_0108b284;
    if (iVar37 == 0xf) {
      auVar84._4_4_ = fVar35;
      auVar84._0_4_ = fVar35;
      auVar84._8_4_ = fVar35;
      auVar84._12_4_ = fVar35;
      auVar104._0_4_ = fVar35 * FLOAT_00fab218;
      auVar104._4_4_ = fVar35 * FLOAT_00fab218;
      auVar104._8_4_ = fVar35 * FLOAT_00fab218;
      auVar104._12_4_ = fVar35 * FLOAT_00fab218;
      auVar73 = maxps(auVar104,auVar84);
      auVar105._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
      auVar105._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
      auVar105._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
      auVar105._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
      iVar21 = movmskps(iVar21,auVar105);
      if (iVar21 == 0xf) goto LAB_00d6ebed;
LAB_00d6ec1f:
      cStack_bd = '\x01';
    }
    else {
LAB_00d6ebed:
      auVar85._0_4_ = fVar34 * FLOAT_00fab218;
      auVar85._4_4_ = fVar34 * FLOAT_00fab218;
      auVar85._8_4_ = fVar34 * FLOAT_00fab218;
      auVar85._12_4_ = fVar34 * FLOAT_00fab218;
      auVar73 = maxps(auVar85,auVar48);
      auVar86._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
      auVar86._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
      auVar86._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
      auVar86._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
      iVar33 = movmskps(iVar33,auVar86);
      if (iVar33 != 0xf) {
        auVar87._4_4_ = fVar35;
        auVar87._0_4_ = fVar35;
        auVar87._8_4_ = fVar35;
        auVar87._12_4_ = fVar35;
        auVar106._0_4_ = fVar35 * FLOAT_00fab218;
        auVar106._4_4_ = fVar35 * FLOAT_00fab218;
        auVar106._8_4_ = fVar35 * FLOAT_00fab218;
        auVar106._12_4_ = fVar35 * FLOAT_00fab218;
        auVar73 = maxps(auVar106,auVar87);
        auVar107._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
        auVar107._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
        auVar107._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
        auVar107._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
        iVar37 = movmskps(iVar37,auVar107);
        if (iVar37 == 0xf) goto LAB_00d6ec1f;
      }
      cStack_bd = '\0';
    }
    if (((_DAT_00f9b5b4 <= fVar34) && (fVar35 < _DAT_00f9b5b4)) ||
       ((fVar34 < _DAT_00f9b5b4 && (_DAT_00f9b5b4 <= fVar35)))) {
      cStack_be = '\x01';
    }
    else {
      cStack_be = '\0';
    }
    auVar88._0_4_ = fVar34 * FLOAT_00fab218;
    auVar88._4_4_ = fVar34 * FLOAT_00fab218;
    auVar88._8_4_ = fVar34 * FLOAT_00fab218;
    auVar88._12_4_ = fVar34 * FLOAT_00fab218;
    auVar73 = maxps(auVar88,auVar48);
    auVar89._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
    auVar89._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
    auVar89._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
    auVar89._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
    iVar21 = movmskps(iVar21,auVar89);
    if (iVar21 == 0xf) {
LAB_00d6ec7d:
      auVar91._0_4_ = FLOAT_00fab218 * fVar34;
      auVar91._4_4_ = FLOAT_00fab218 * fVar34;
      auVar91._8_4_ = FLOAT_00fab218 * fVar34;
      auVar91._12_4_ = FLOAT_00fab218 * fVar34;
      auVar73 = maxps(auVar91,auVar48);
      auVar92._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
      auVar92._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
      auVar92._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
      auVar92._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
      iVar33 = movmskps(iVar37,auVar92);
      if (iVar33 == 0xf) {
        auVar77._4_4_ = fVar35;
        auVar77._0_4_ = fVar35;
        auVar77._8_4_ = fVar35;
        auVar77._12_4_ = fVar35;
        auVar102._0_4_ = FLOAT_00fab218 * fVar35;
        auVar102._4_4_ = FLOAT_00fab218 * fVar35;
        auVar102._8_4_ = FLOAT_00fab218 * fVar35;
        auVar102._12_4_ = FLOAT_00fab218 * fVar35;
        auVar73 = maxps(auVar102,auVar77);
        auVar103._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
        auVar103._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
        auVar103._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
        auVar103._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
        iVar21 = movmskps(iVar21,auVar103);
        if (iVar21 != 0xf) goto LAB_00d6ecab;
      }
      bStack_c0 = '\0';
    }
    else {
      auVar90._4_4_ = fVar35;
      auVar90._0_4_ = fVar35;
      auVar90._8_4_ = fVar35;
      auVar90._12_4_ = fVar35;
      auVar95._0_4_ = FLOAT_00fab218 * fVar35;
      auVar95._4_4_ = FLOAT_00fab218 * fVar35;
      auVar95._8_4_ = FLOAT_00fab218 * fVar35;
      auVar95._12_4_ = FLOAT_00fab218 * fVar35;
      auVar73 = maxps(auVar95,auVar90);
      auVar96._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
      auVar96._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
      auVar96._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
      auVar96._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
      iVar33 = movmskps(iVar33,auVar96);
      if (iVar33 != 0xf) goto LAB_00d6ec7d;
LAB_00d6ecab:
      bStack_c0 = '\x01';
    }
    piVar29 = (int *)FUN_00c687a0(DAT_011edbc4,'\x01');
    piVar24 = (int *)*piVar29;
    local_c4 = piVar29;
    if (piVar24 != (int *)piVar29[1]) {
      do {
        iVar21 = *piVar24;
        if (iVar21 != 0) {
          if ((cStack_bf != '\0') && (*(void **)(iVar21 + 0x2ac) != (void *)0x0)) {
            piVar29 = (int *)FUN_00b95630(*(void **)(iVar21 + 0x2ac),'\0');
          }
          iVar21 = *(int *)(iVar21 + 0x364);
          if (iVar21 != 0) {
            if ((cStack_bd != '\0') && (*(int *)(iVar21 + 0x254) != 0)) {
              piVar29 = (int *)FUN_00b28590(*(int *)(iVar21 + 0x254));
            }
            pvVar25 = *(void **)(iVar21 + 0x240);
            if (((cStack_be != '\0') && (pvVar25 != (void *)0x0)) &&
               (piVar29 = (int *)FUN_00bee160((int)pvVar25),
               _DAT_00f9b5b4 <= pPStack_ac->snowThickness)) {
              piVar29 = (int *)FUN_00bef420(pvVar25);
            }
            pvVar25 = *(void **)(iVar21 + 0x230);
            if ((bStack_c0 != '\0') && (pvVar25 != (void *)0x0)) {
              fVar34 = pPStack_ac->snowThickness;
              auVar49._0_4_ = (float)auStack_90._0_4_ * fVar34;
              auVar49._4_4_ = (float)auStack_90._4_4_ * fVar34;
              auVar49._8_4_ = fStack_88 * fVar34;
              auVar49._12_4_ = fStack_84 * fVar34;
              auVar4._4_4_ = fVar34;
              auVar4._0_4_ = fVar34;
              auVar4._8_4_ = fVar34;
              auVar4._12_4_ = fVar34;
              auVar73 = maxps(auVar49,auVar4);
              auVar50._4_4_ = -(uint)(auVar73._4_4_ <= fStack_9c);
              auVar50._0_4_ = -(uint)(auVar73._0_4_ <= fStack_a0);
              auVar50._8_4_ = -(uint)(auVar73._8_4_ <= fStack_98);
              auVar50._12_4_ = -(uint)(auVar73._12_4_ <= fStack_94);
              iVar33 = movmskps(piVar29,auVar50);
              bVar20 = iVar33 != 0xf;
              piVar29 = (int *)CONCAT31((int3)((uint)iVar33 >> 8),bVar20);
              local_d0 = CONCAT71(local_d0._1_7_,bVar20);
              if (bVar20 != (bool)*(char *)((int)pvVar25 + 0x15c)) {
                if (*(int *)(iVar21 + 0x248) != 0) {
                  FUN_00a68fa0(*(int *)(iVar21 + 0x248));
                }
                FUN_00aa0940((int)pvVar25);
                piVar29 = (int *)FUN_00aa4bd0(pvVar25,(void *)local_d0);
              }
            }
          }
        }
        piVar24 = piVar24 + 1;
      } while (piVar24 != (int *)local_c4[1]);
      pvVar25 = local_a4;
    }
    pPVar43 = pPStack_ac;
  }
  uVar45 = (undefined1)((ushort)in_FPUControlWord >> 8);
  if (((local_b0->precipitationType != 1) && (local_b0->precipitationType != 5)) ||
     (*(float *)((int)pvVar25 + 0xaa8) <= DAT_0108b270)) {
    bVar20 = false;
  }
  else {
    bVar20 = true;
  }
  if (((pPVar43->precipitationType != 1) && (pPVar43->precipitationType != 5)) ||
     (pPVar43->precipitationStrength <= DAT_0108b270)) {
    bStack_c0 = '\0';
    if (bVar20) goto LAB_00d6ee1b;
  }
  else {
    bStack_c0 = '\x01';
LAB_00d6ee1b:
    piVar29 = (int *)FUN_00c687a0(DAT_011edbc4,'\x01');
    uVar45 = (undefined1)((ushort)in_FPUControlWord >> 8);
    piVar24 = (int *)*piVar29;
    local_d0 = CONCAT44(local_d0._4_4_,piVar29);
    if (piVar24 != (int *)piVar29[1]) {
      do {
        iVar21 = *piVar24;
        if ((iVar21 == 0) || (*(int *)(iVar21 + 0x364) == 0)) {
          pvVar25 = (void *)0x0;
        }
        else {
          pvVar25 = *(void **)(*(int *)(iVar21 + 0x364) + 0x240);
        }
        if (pvVar25 != (void *)0x0) {
          if (((bStack_c0 == '\0') || (cVar19 = FUN_00ab1020(iVar21), cVar19 == '\0')) ||
             (uVar30 = FUN_00aafe80(iVar21), (char)uVar30 != '\0')) {
            FUN_00be8450((int)pvVar25);
          }
          else {
            FUN_00bef0e0(pvVar25);
          }
        }
        uVar45 = (undefined1)((ushort)in_FPUControlWord >> 8);
        piVar24 = piVar24 + 1;
      } while (piVar24 != *(int **)((int)(void *)local_d0 + 4));
    }
  }
  pvVar25 = local_a4;
  pPVar43 = pPStack_ac;
  if (DAT_01192d88 != DAT_01192d84) {
    piStack_b8 = (int *)CONCAT31(piStack_b8._1_3_,1);
  }
  if ((char)local_c8 == *(char *)((int)local_a4 + 0xb05)) {
    if ((char)piStack_b8 != '\0') {
      WeatherShader_PublishSettingsConstants(pPStack_ac,local_c8);
    }
  }
  else {
    piStack_b8 = (int *)CONCAT31(piStack_b8._1_3_,1);
    *(char *)((int)local_a4 + 0xb05) = (char)local_c8;
    WeatherShader_PublishSettingsConstants(pPStack_ac,local_c8);
  }
  if (*(int *)((int)pvVar25 + 0xbf4) != 0) {
    WeatherShader_UpdatePrecipitationScalar(pPVar43);
    Seasons_UpdatePrecipitationCells
              (*(void **)((int)pvVar25 + 0xbf4),(int *)pPVar43,piStack_b8,timeInput0,timeInput1);
  }
  fVar34 = _DAT_0106e6ec;
  fVar46 = *(float *)((int)pvVar25 + 0xbec) - timeInput0;
  local_d0 = CONCAT44(local_d0._4_4_,fVar46);
  local_c8 = (void *)0x0;
  fVar35 = 0.0;
  *(uint *)((int)pvVar25 + 0xbec) = ~((int)fVar46 >> 0x1f) & (uint)fVar46;
  uVar22 = local_b0->precipitationType;
  if ((uVar22 == 0) ||
     (((2 < uVar22 && (uVar22 < 5)) ||
      (cStack_bf = '\x01', *(float *)((int)pvVar25 + 0xaa8) <= fVar34)))) {
    cStack_bf = '\0';
  }
  pvVar28 = (void *)pPVar43->precipitationType;
  if (((pvVar28 == (void *)0x0) || (((void *)0x2 < pvVar28 && (pvVar28 < (void *)0x5)))) ||
     (pPVar43->precipitationStrength <= fVar34)) {
    cVar19 = '\0';
  }
  else {
    cVar19 = '\x01';
  }
  cStack_bd = cVar19;
  if ((cStack_bf == '\0') && (cVar19 == '\0')) {
    fVar34 = FLOAT_00f998f0;
    fVar46 = FLOAT_00f998f8;
  }
  else {
    pvVar31 = LoadPump_ReadFrameServiceGlobal();
    fVar1 = DAT_00fa2b9c;
    fVar46 = FLOAT_00f998f8;
    fVar34 = FLOAT_00f998f0;
    if (pvVar31 == (void *)0x0) {
      pvVar28 = (void *)0x0;
      fVar35 = extraout_EDX_01;
    }
    else {
      fVar35 = (float)((uint)pPVar43->precipitationStrength &
                      (int)(FLOAT_00f998f0 - pPVar43->precipitationStrength) >> 0x1f);
      uVar22 = (int)(FLOAT_00f998f8 - fVar35) >> 0x1f;
      local_c8 = (void *)FLOAT_00f998f8;
      fVar35 = (float)(~uVar22 & (uint)fVar35 | (uint)FLOAT_00f998f8 & uVar22);
      local_d0 = CONCAT44(local_d0._4_4_,fVar35);
      pvVar28 = (void *)0x0;
      if (cVar19 != '\0') {
        fVar35 = (float)DAT_010f6bf4 /
                 ((fVar35 * _DAT_0108bfcc - DAT_00fa2b9c) * fVar35 + FLOAT_00f998f8);
        uVar22 = (int)(DAT_00fb3f7c - fVar35) >> 0x1f;
        fVar35 = (float)(~uVar22 & (uint)DAT_00fb3f7c | (uint)fVar35 & uVar22);
        uVar22 = (int)((float)DAT_010f6bf4 - fVar35) >> 0x1f;
        local_c8 = DAT_010f6bf4;
        fVar35 = (float)(~uVar22 & (uint)fVar35 | (uint)DAT_010f6bf4 & uVar22);
        local_d0 = (longlong)ROUND(fVar35);
        pvVar28 = (void *)local_d0;
        uStack_a5 = uVar45;
      }
      *(void **)((int)pvVar31 + 0x1f0) = pvVar28;
      pPVar43 = pPStack_ac;
    }
    if (cVar19 != '\0') {
      *(float *)((int)pvVar25 + 0xbec) = fVar1;
    }
  }
  fVar18 = DAT_00f998e8;
  fVar1 = pPVar43->precipitationFog;
  uVar38 = (uint3)((uint)fVar35 >> 8);
  if ((fVar1 <= 0.0) || ((char)*local_b4 == '\0')) {
    iVar21 = (uint)uVar38 << 8;
  }
  else {
    iVar21 = CONCAT31(uVar38,1);
  }
  fVar35 = *(float *)((int)pvVar25 + 0xae8);
  uVar38 = (uint3)((uint)pvVar28 >> 8);
  if ((fVar35 <= 0.0) || (*(char *)((int)pvVar25 + 0xbd0) == '\0')) {
    iVar33 = (uint)uVar38 << 8;
  }
  else {
    iVar33 = CONCAT31(uVar38,1);
  }
  cVar19 = (char)iVar21;
  if (((cVar19 != (char)iVar33) ||
      ((cVar19 != '\0' &&
       (((((*(float *)((int)local_b4 + 4) != *(float *)((int)pvVar25 + 0xbd4) ||
           (*(float *)((int)local_b4 + 8) != *(float *)((int)pvVar25 + 0xbd8))) ||
          (*(float *)((int)local_b4 + 0xc) != *(float *)((int)pvVar25 + 0xbdc))) ||
         ((*(float *)((int)local_b4 + 0x10) != *(float *)((int)pvVar25 + 0xbe0) ||
          (*(float *)((int)local_b4 + 0x14) != *(float *)((int)pvVar25 + 0xbe4))))) ||
        (iVar33 = CONCAT22((short)((uint)iVar33 >> 0x10),
                           CONCAT11((fVar1 == fVar35) << 6 | (NAN(fVar1) || NAN(fVar35)) << 2 | 2U |
                                    fVar1 < fVar35,(char)iVar33)), fVar1 != fVar35)))))) &&
     ((iVar33 = 0, DAT_011edbc4 != (void *)0x0 &&
      (iVar33 = *(int *)((int)DAT_011edbc4 + 100), iVar33 != 0)))) {
    if (cVar19 == '\0') {
      fStack_9c = 0.0;
      fStack_a0 = 0.0;
      *(undefined4 *)(iVar33 + 2000) = 0;
      *(undefined4 *)(iVar33 + 0x7d4) = 0;
      *(undefined4 *)(iVar33 + 0x7d8) = 0;
      *(undefined4 *)(iVar33 + 0x7dc) = 0;
    }
    else {
      fVar35 = *(float *)((int)local_b4 + 8);
      fVar47 = (*(float *)((int)local_b4 + 0xc) + fVar35) - fVar35;
      iVar21 = 0x7fffffff;
      if (ABS(fVar47) < DAT_00f998e8) {
        if (0.0 <= fVar47) {
          fVar47 = DAT_00f998e8;
        }
        else {
          fVar47 = DAT_01062bf8;
        }
      }
      fVar2 = *(float *)((int)local_b4 + 4);
      *(float *)(iVar33 + 2000) = fVar46 / fVar47;
      *(float *)(iVar33 + 0x7d4) = fVar35;
      *(float *)(iVar33 + 0x7d8) = fVar2 * fVar1;
      *(undefined4 *)(iVar33 + 0x7dc) = 0;
      fVar35 = *(float *)((int)local_b4 + 0x10);
      fStack_a0 = (*(float *)((int)local_b4 + 0x14) + fVar35) - fVar35;
      local_c8 = (void *)ABS(fStack_a0);
      if ((float)local_c8 < fVar18) {
        if (0.0 <= fStack_a0) {
          fStack_a0 = fVar18;
        }
        else {
          fStack_a0 = DAT_01062bf8;
        }
      }
      fStack_a0 = fVar46 / fStack_a0;
      fStack_9c = fVar34 - fStack_a0 * fVar35;
    }
    fStack_94 = 0.0;
    fStack_98 = 0.0;
    *(float *)(iVar33 + 0x7e0) = fStack_a0;
    *(float *)(iVar33 + 0x7e4) = fStack_9c;
    *(undefined4 *)(iVar33 + 0x7e8) = 0;
    *(undefined4 *)(iVar33 + 0x7ec) = 0;
  }
  pvVar28 = (void *)pPVar43->heatShimmerDistance;
  fVar34 = (float)pvVar28 - *(float *)((int)pvVar25 + 0xad8);
  auVar51._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar51._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar51._8_4_ = fStack_88 * fVar34;
  auVar51._12_4_ = fStack_84 * fVar34;
  auVar5._4_4_ = fVar34;
  auVar5._0_4_ = fVar34;
  auVar5._8_4_ = fVar34;
  auVar5._12_4_ = fVar34;
  auVar73 = maxps(auVar51,auVar5);
  auVar52._4_4_ = -(uint)(auVar73._4_4_ <= (float)auStack_80._4_4_);
  auVar52._0_4_ = -(uint)(auVar73._0_4_ <= (float)auStack_80._0_4_);
  auVar52._8_4_ = -(uint)(auVar73._8_4_ <= fStack_78);
  auVar52._12_4_ = -(uint)(auVar73._12_4_ <= fStack_74);
  iVar33 = movmskps(iVar33,auVar52);
  piVar24 = local_b4;
  if ((iVar33 != 0xf) && (DAT_011edbc4 != (void *)0x0)) {
    piVar24 = (int *)0x0;
    if (*(void **)((int)DAT_011edbc4 + 100) != (void *)0x0) {
      local_d0._0_4_ = pvVar28;
      FUN_00c0fd70(*(void **)((int)DAT_011edbc4 + 100),pvVar28);
      piVar24 = (int *)extraout_ECX_02;
      iVar21 = extraout_EDX_02;
    }
  }
  local_d0._0_4_ = (void *)pPVar43->cloudinessTarget;
  fVar34 = (float)(void *)local_d0 - *(float *)((int)pvVar25 + 0xaf4);
  auVar53._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar53._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar53._8_4_ = fStack_88 * fVar34;
  auVar53._12_4_ = fStack_84 * fVar34;
  auVar6._4_4_ = fVar34;
  auVar6._0_4_ = fVar34;
  auVar6._8_4_ = fVar34;
  auVar6._12_4_ = fVar34;
  auVar73 = maxps(auVar53,auVar6);
  auVar54._4_4_ = -(uint)(auVar73._4_4_ <= (float)auStack_80._4_4_);
  auVar54._0_4_ = -(uint)(auVar73._0_4_ <= (float)auStack_80._0_4_);
  auVar54._8_4_ = -(uint)(auVar73._8_4_ <= fStack_78);
  auVar54._12_4_ = -(uint)(auVar73._12_4_ <= fStack_74);
  iVar33 = movmskps(piVar24,auVar54);
  if (iVar33 != 0xf) {
    FUN_00c14f70((void *)((int)pvVar25 + 0x10),(void *)local_d0);
    iVar21 = extraout_EDX_03;
  }
  local_d0._0_4_ = (void *)pPVar43->normalFog;
  fVar34 = (float)(void *)local_d0 - *(float *)((int)pvVar25 + 0xafc);
  auVar55._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar55._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar55._8_4_ = fStack_88 * fVar34;
  auVar55._12_4_ = fStack_84 * fVar34;
  auVar7._4_4_ = fVar34;
  auVar7._0_4_ = fVar34;
  auVar7._8_4_ = fVar34;
  auVar7._12_4_ = fVar34;
  auVar73 = maxps(auVar55,auVar7);
  auVar56._4_4_ = -(uint)(auVar73._4_4_ <= (float)auStack_80._4_4_);
  auVar56._0_4_ = -(uint)(auVar73._0_4_ <= (float)auStack_80._0_4_);
  auVar56._8_4_ = -(uint)(auVar73._8_4_ <= fStack_78);
  auVar56._12_4_ = -(uint)(auVar73._12_4_ <= fStack_74);
  iVar21 = movmskps(iVar21,auVar56);
  if (iVar21 != 0xf) {
    FUN_00c14f90((void *)((int)pvVar25 + 0x10),(void *)local_d0);
  }
  if (DAT_011d2530 == (void *)0x0) goto LAB_00d6fc0b;
  piVar24 = (int *)FloraRenderer_GetService();
  pPVar43 = pPStack_ac;
  fVar34 = pPStack_ac->frostAmount;
  auVar93._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar93._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar93._8_4_ = fStack_88 * fVar34;
  auVar93._12_4_ = fStack_84 * fVar34;
  auVar8._4_4_ = fVar34;
  auVar8._0_4_ = fVar34;
  auVar8._8_4_ = fVar34;
  auVar8._12_4_ = fVar34;
  auVar73 = maxps(auVar93,auVar8);
  fVar34 = pPStack_ac->snowThickness;
  auVar94._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
  auVar94._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
  auVar94._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
  auVar94._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
  auVar78._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar78._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar78._8_4_ = fStack_88 * fVar34;
  auVar78._12_4_ = fStack_84 * fVar34;
  iVar21 = movmskps(piVar24,auVar94);
  auVar9._4_4_ = fVar34;
  auVar9._0_4_ = fVar34;
  auVar9._8_4_ = fVar34;
  auVar9._12_4_ = fVar34;
  auVar73 = maxps(auVar78,auVar9);
  auVar79._4_4_ = -(uint)(auVar73._4_4_ <= DAT_0108b284);
  auVar79._0_4_ = -(uint)(auVar73._0_4_ <= DAT_0108b284);
  auVar79._8_4_ = -(uint)(auVar73._8_4_ <= DAT_0108b284);
  auVar79._12_4_ = -(uint)(auVar73._12_4_ <= DAT_0108b284);
  iVar33 = movmskps(extraout_ECX_03,auVar79);
  _bStack_a6 = CONCAT11(uStack_a5,iVar21 != 0xf);
  bVar44 = iVar33 != 0xf;
  uStack_bc = 0;
  fStack_a0 = DAT_0108b284;
  fStack_9c = DAT_0108b284;
  fStack_98 = DAT_0108b284;
  fStack_94 = DAT_0108b284;
  local_c8 = (void *)CONCAT31(local_c8._1_3_,bVar44);
  piStack_b8 = piVar24;
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,0x5b4ecbf5);
  local_d0 = CONCAT44(local_d0._4_4_,DAT_011edbc4);
  uVar30 = extraout_ECX_04;
  if (bVar20 != bVar44) {
    if (*(char *)((int)local_a4 + 0xbf8) != '\0') {
      if (bVar44) {
        RenderSystem_AddGlobalShaderOption(DAT_011d2530,0x6b4a1e93);
      }
      else {
        RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,0x6b4a1e93);
      }
    }
    pvVar25 = local_c8;
    if (((void *)local_d0 != (void *)0x0) &&
       (*(void **)((int)(void *)local_d0 + 0x5c) != (void *)0x0)) {
      FUN_00b77670(*(void **)((int)(void *)local_d0 + 0x5c),(char)local_c8);
    }
    if (bVar44) {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,0x5b4ecbf5);
      uVar30 = extraout_ECX_05;
    }
    else {
      RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,0x5b4ecbf5);
      uVar30 = extraout_ECX_06;
    }
    uStack_bc = 0x15c1e000;
    if (piStack_b8 != (int *)0x0) {
      (**(code **)(*piStack_b8 + 0x20))(pvVar25);
      uVar30 = extraout_ECX_07;
    }
    piVar24 = piStack_b8;
  }
  if ((bVar44) && (piVar24 != (int *)0x0)) {
    (**(code **)(*piVar24 + 0x28))(pPVar43->snowThickness);
    uVar30 = extraout_ECX_08;
  }
  fVar34 = pPVar43->pondFreeze;
  auVar57._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar57._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar57._8_4_ = fStack_88 * fVar34;
  auVar57._12_4_ = fStack_84 * fVar34;
  auVar10._4_4_ = fVar34;
  auVar10._0_4_ = fVar34;
  auVar10._8_4_ = fVar34;
  auVar10._12_4_ = fVar34;
  auVar73 = maxps(auVar57,auVar10);
  auVar58._4_4_ = -(uint)(auVar73._4_4_ <= fStack_9c);
  auVar58._0_4_ = -(uint)(auVar73._0_4_ <= fStack_a0);
  auVar58._8_4_ = -(uint)(auVar73._8_4_ <= fStack_98);
  auVar58._12_4_ = -(uint)(auVar73._12_4_ <= fStack_94);
  iVar21 = movmskps(uVar30,auVar58);
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,0x5fabe4ad);
  uVar30 = extraout_EDX_04;
  if (bVar20 != (iVar21 != 0xf)) {
    if (iVar21 != 0xf) {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,0x5fabe4ad);
      uVar30 = extraout_EDX_05;
    }
    else {
      RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,0x5fabe4ad);
      uVar30 = extraout_EDX_06;
    }
    uStack_bc = uStack_bc | 0x42000;
  }
  fVar34 = pPVar43->treeLeafLoss;
  auVar59._0_4_ = (float)auStack_90._0_4_ * fVar34;
  auVar59._4_4_ = (float)auStack_90._4_4_ * fVar34;
  auVar59._8_4_ = fStack_88 * fVar34;
  auVar59._12_4_ = fStack_84 * fVar34;
  auVar11._4_4_ = fVar34;
  auVar11._0_4_ = fVar34;
  auVar11._8_4_ = fVar34;
  auVar11._12_4_ = fVar34;
  auVar73 = maxps(auVar59,auVar11);
  auVar60._4_4_ = -(uint)(auVar73._4_4_ <= fStack_9c);
  auVar60._0_4_ = -(uint)(auVar73._0_4_ <= fStack_a0);
  auVar60._8_4_ = -(uint)(auVar73._8_4_ <= fStack_98);
  auVar60._12_4_ = -(uint)(auVar73._12_4_ <= fStack_94);
  iVar21 = movmskps(uVar30,auVar60);
  local_c4 = (int *)CONCAT31(local_c4._1_3_,iVar21 != 0xf);
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,0x1fd020a8);
  cStack_be = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x44611a20);
  if ((bVar20) || (cVar19 = '\0', (bool)cStack_be)) {
    cVar19 = '\x01';
  }
  uVar39 = (undefined3)((uint)extraout_EDX_07 >> 8);
  bStack_c0 = pPVar43->useFallSet;
  uVar30 = CONCAT31((int3)((uint)extraout_ECX_09 >> 8),bStack_c0);
  if (((char)local_c4 != cVar19) || ((cVar19 != '\0' && (bVar20 != (bool)bStack_c0)))) {
    if (((char)local_c4 == '\0') || (bStack_c0 == 0)) {
      if (bVar20) {
        RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,0x1fd020a8);
        uVar30 = extraout_ECX_11;
        uVar39 = extraout_var_02;
        goto LAB_00d6f635;
      }
    }
    else {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,0x1fd020a8);
      uVar30 = extraout_ECX_10;
      uVar39 = extraout_var_01;
LAB_00d6f635:
      uVar30 = CONCAT31((int3)((uint)uVar30 >> 8),bStack_c0);
    }
    if (((char)local_c4 == '\0') || ((char)uVar30 != '\0')) {
      if (cStack_be != '\0') {
        RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x44611a20);
        uVar30 = extraout_ECX_13;
        uVar39 = extraout_var_04;
      }
    }
    else {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x44611a20);
      uVar30 = extraout_ECX_12;
      uVar39 = extraout_var_03;
    }
    uStack_bc = uStack_bc | 0x4000000;
    if (piVar24 != (int *)0x0) {
      (**(code **)(*piVar24 + 0x18))(local_c4);
      uVar30 = extraout_ECX_14;
      uVar39 = extraout_var_05;
    }
  }
  if (((char)local_c4 != '\0') && (piVar24 != (int *)0x0)) {
    fVar34 = pPVar43->treeLeafLoss - FLOAT_00f998f8;
    auVar61._0_4_ = fVar34 * (float)auStack_90._0_4_;
    auVar61._4_4_ = fVar34 * (float)auStack_90._4_4_;
    auVar61._8_4_ = fVar34 * fStack_88;
    auVar61._12_4_ = fVar34 * fStack_84;
    auVar12._4_4_ = fVar34;
    auVar12._0_4_ = fVar34;
    auVar12._8_4_ = fVar34;
    auVar12._12_4_ = fVar34;
    auVar73 = maxps(auVar61,auVar12);
    auVar62._4_4_ = -(uint)(auVar73._4_4_ <= (float)auStack_80._4_4_);
    auVar62._0_4_ = -(uint)(auVar73._0_4_ <= (float)auStack_80._0_4_);
    auVar62._8_4_ = -(uint)(auVar73._8_4_ <= fStack_78);
    auVar62._12_4_ = -(uint)(auVar73._12_4_ <= fStack_74);
    iVar21 = movmskps(uVar30,auVar62);
    (**(code **)(*piVar24 + 0x1c))(CONCAT31(uVar39,iVar21 == 0xf));
  }
  if ((bStack_a6 == false) && ((char)local_c8 == '\0')) {
    bVar20 = false;
  }
  else {
    bVar20 = true;
  }
  local_c4 = (int *)CONCAT31(local_c4._1_3_,bVar20);
  bVar44 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x4f4072fa);
  uVar30 = extraout_EDX_08;
  if (bVar44 != bVar20) {
    if (bVar20 == false) {
      RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x4f4072fa);
    }
    else {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x4f4072fa);
    }
    uStack_bc = uStack_bc | 0x31416020;
    pvVar25 = (void *)FUN_006fdbe0();
    uVar30 = extraout_EDX_09;
    if (pvVar25 != (void *)0x0) {
      WeatherGeometry_UpdateFrostedGlassFixupAttachments(pvVar25,(char)local_c4);
      uVar30 = extraout_EDX_10;
    }
  }
  fVar34 = pPVar43->wetAmount;
  auVar63._0_4_ = fVar34 * (float)auStack_90._0_4_;
  auVar63._4_4_ = fVar34 * (float)auStack_90._4_4_;
  auVar63._8_4_ = fVar34 * fStack_88;
  auVar63._12_4_ = fVar34 * fStack_84;
  auVar13._4_4_ = fVar34;
  auVar13._0_4_ = fVar34;
  auVar13._8_4_ = fVar34;
  auVar13._12_4_ = fVar34;
  auVar73 = maxps(auVar63,auVar13);
  auVar64._4_4_ = -(uint)(auVar73._4_4_ <= fStack_9c);
  auVar64._0_4_ = -(uint)(auVar73._0_4_ <= fStack_a0);
  auVar64._8_4_ = -(uint)(auVar73._8_4_ <= fStack_98);
  auVar64._12_4_ = -(uint)(auVar73._12_4_ <= fStack_94);
  iVar21 = movmskps(uVar30,auVar64);
  bVar44 = iVar21 != 0xf;
  local_c4 = (int *)CONCAT31(local_c4._1_3_,bVar44);
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x173b025e);
  if (bVar44 != bVar20) {
    if (bVar44) {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x173b025e);
    }
    else {
      RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x173b025e);
    }
    piVar32 = (int *)FUN_00c687a0(DAT_011edbc4,'\x01');
    piVar29 = local_c4;
    piVar24 = (int *)*piVar32;
    if (piVar24 != (int *)piVar32[1]) {
      do {
        if (((*piVar24 != 0) && (iVar21 = *(int *)(*piVar24 + 0x364), iVar21 != 0)) &&
           (pvVar25 = *(void **)(iVar21 + 0x230), pvVar25 != (void *)0x0)) {
          FUN_00aa4c70(pvVar25,piVar29);
        }
        piVar24 = piVar24 + 1;
      } while (piVar24 != (int *)piVar32[1]);
    }
    uStack_bc = uStack_bc | 0x1c5e000;
    piVar24 = piStack_b8;
    pPVar43 = pPStack_ac;
  }
  if ((0.0 < *(float *)((int)local_a4 + 0xbf0)) || (cStack_bf != '\0')) {
    cVar19 = '\x01';
  }
  else {
    cVar19 = '\0';
  }
  uVar38 = (uint3)((uint)local_a4 >> 8);
  if ((0.0 < *(float *)((int)local_a4 + 0xbec)) || (cStack_bd != '\0')) {
    iVar21 = CONCAT31(uVar38,1);
  }
  else {
    iVar21 = (uint)uVar38 << 8;
  }
  if ((char)iVar21 != cVar19) {
    if ((char)iVar21 == '\0') {
      iVar21 = RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0xc6d54d4);
    }
    else {
      iVar21 = RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0xc6d54d4);
    }
    uStack_bc = uStack_bc | 0x1040000;
  }
  fVar34 = pPVar43->wetAmount;
  auVar65._0_4_ = fVar34 * (float)auStack_90._0_4_;
  auVar65._4_4_ = fVar34 * (float)auStack_90._4_4_;
  auVar65._8_4_ = fVar34 * fStack_88;
  auVar65._12_4_ = fVar34 * fStack_84;
  auVar14._4_4_ = fVar34;
  auVar14._0_4_ = fVar34;
  auVar14._8_4_ = fVar34;
  auVar14._12_4_ = fVar34;
  auVar73 = maxps(auVar65,auVar14);
  auVar66._4_4_ = -(uint)(auVar73._4_4_ <= (float)auStack_80._4_4_);
  auVar66._0_4_ = -(uint)(auVar73._0_4_ <= (float)auStack_80._0_4_);
  auVar66._8_4_ = -(uint)(auVar73._8_4_ <= fStack_78);
  auVar66._12_4_ = -(uint)(auVar73._12_4_ <= fStack_74);
  iVar21 = movmskps(iVar21,auVar66);
  if (((iVar21 == 0xf) || ((char)local_c8 != '\0')) || (bStack_a6 != false)) {
    bVar20 = false;
  }
  else {
    bVar20 = true;
  }
  bVar44 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x3c17ef26);
  if (bVar20 != bVar44) {
    if (bVar20 == false) {
      RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x3c17ef26);
    }
    else {
      RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x3c17ef26);
    }
    uStack_bc = uStack_bc | 0x414000;
  }
  uVar22 = (int)(DAT_00ffc7d8 - pPVar43->windStrength) >> 0x1f;
  fVar34 = (float)(~uVar22 & (uint)DAT_00ffc7d8 | (uint)pPVar43->windStrength & uVar22);
  uVar22 = (int)(FLOAT_00f998f8 - fVar34) >> 0x1f;
  piStack_b8 = (int *)FLOAT_00f998f8;
  local_c4 = (int *)(~uVar22 & (uint)fVar34 | (uint)FLOAT_00f998f8 & uVar22);
  uVar30 = FUN_00713090((float)local_c4,(float *)&DAT_011d3ac0);
  fVar34 = pPVar43->treeFallColor;
  auVar67._0_4_ = fVar34 * (float)auStack_90._0_4_;
  auVar67._4_4_ = fVar34 * (float)auStack_90._4_4_;
  auVar67._8_4_ = fVar34 * fStack_88;
  auVar67._12_4_ = fVar34 * fStack_84;
  auVar15._4_4_ = fVar34;
  auVar15._0_4_ = fVar34;
  auVar15._8_4_ = fVar34;
  auVar15._12_4_ = fVar34;
  auVar73 = maxps(auVar67,auVar15);
  auVar68._4_4_ = -(uint)(auVar73._4_4_ <= fStack_9c);
  auVar68._0_4_ = -(uint)(auVar73._0_4_ <= fStack_a0);
  auVar68._8_4_ = -(uint)(auVar73._8_4_ <= fStack_98);
  auVar68._12_4_ = -(uint)(auVar73._12_4_ <= fStack_94);
  iVar21 = movmskps(uVar30,auVar68);
  bVar44 = iVar21 != 0xf;
  local_c4 = (int *)CONCAT31(local_c4._1_3_,bVar44);
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,0xbb5ea4e);
  uVar30 = CONCAT31(extraout_var,bVar20);
  if (bVar44 != bVar20) {
    if (bVar44) {
      uVar30 = RenderSystem_AddGlobalShaderOption(DAT_011d2530,0xbb5ea4e);
    }
    else {
      uVar30 = RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,0xbb5ea4e);
    }
    uStack_bc = uStack_bc | 0x4000000;
    if (piVar24 != (int *)0x0) {
      uVar30 = (**(code **)(*piVar24 + 0x24))(local_c4);
    }
  }
  fVar34 = pPVar43->worldLeaves;
  auVar69._0_4_ = fVar34 * (float)auStack_90._0_4_;
  auVar69._4_4_ = fVar34 * (float)auStack_90._4_4_;
  auVar69._8_4_ = fVar34 * fStack_88;
  auVar69._12_4_ = fVar34 * fStack_84;
  auVar16._4_4_ = fVar34;
  auVar16._0_4_ = fVar34;
  auVar16._8_4_ = fVar34;
  auVar16._12_4_ = fVar34;
  auVar73 = maxps(auVar69,auVar16);
  auVar70._4_4_ = -(uint)(auVar73._4_4_ <= fStack_9c);
  auVar70._0_4_ = -(uint)(auVar73._0_4_ <= fStack_a0);
  auVar70._8_4_ = -(uint)(auVar73._8_4_ <= fStack_98);
  auVar70._12_4_ = -(uint)(auVar73._12_4_ <= fStack_94);
  iVar21 = movmskps(uVar30,auVar70);
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x3feae255);
  if ((iVar21 != 0xf) == bVar20) {
    uVar22 = uStack_bc;
  }
  else if (iVar21 != 0xf) {
    RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x3feae255);
    uVar22 = uStack_bc | 0x10000;
  }
  else {
    RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x3feae255);
    uVar22 = uStack_bc | 0x10000;
  }
  bVar20 = RenderSystem_HasGlobalShaderOption(DAT_011d2530,-0x21f146e);
  pvVar25 = (void *)CONCAT31(extraout_var_00,bVar20);
  if ((pPVar43->isSnowMelting == 0) ||
     (_DAT_00f9b5b4 < pPVar43->snowThickness || _DAT_00f9b5b4 == pPVar43->snowThickness)) {
    bVar44 = false;
  }
  else {
    bVar44 = true;
  }
  if (bVar44 != bVar20) {
    if (bVar44 == false) {
      pvVar25 = (void *)RenderSystem_RemoveGlobalShaderOption(DAT_011d2530,-0x21f146e);
    }
    else {
      pvVar25 = (void *)RenderSystem_AddGlobalShaderOption(DAT_011d2530,-0x21f146e);
    }
    uVar22 = uVar22 | 0x1141e020;
  }
  if (uVar22 != 0) {
    pvVar28 = LoadPump_ReadFrameServiceGlobal();
    pvVar25 = (void *)0x0;
    if (pvVar28 != (void *)0x0) {
      pvVar25 = (void *)FUN_006e8310(pvVar28,uVar22,1);
    }
    if ((uVar22 & 0x40000) != 0) {
      pvVar25 = (void *)FUN_00af9ac0('\x01');
    }
  }
  if ((((char)local_c8 == '\0') ||
      (pvVar25 = LoadPump_ReadFrameServiceGlobal(), pvVar25 == (void *)0x0)) ||
     (*(void **)((int)pvVar25 + 0x38) == (void *)0x0)) {
    iVar21 = DAT_011d8530;
    auVar97._0_4_ = (fRam011ef184 - DAT_010f4ccc) * (float)auStack_90._0_4_;
    auVar97._4_4_ = (fRam011ef184 - DAT_010f4ccc) * (float)auStack_90._4_4_;
    auVar97._8_4_ = (fRam011ef184 - DAT_010f4ccc) * fStack_88;
    auVar97._12_4_ = (fRam011ef184 - DAT_010f4ccc) * fStack_84;
    auVar17._4_4_ = fRam011ef184 - DAT_010f4ccc;
    auVar17._0_4_ = fRam011ef184 - DAT_010f4ccc;
    auVar17._8_4_ = fRam011ef184 - DAT_010f4ccc;
    auVar17._12_4_ = fRam011ef184 - DAT_010f4ccc;
    auVar73 = maxps(auVar97,auVar17);
    auVar98._4_4_ = -(uint)(auVar73._4_4_ <= (float)auStack_80._4_4_);
    auVar98._0_4_ = -(uint)(auVar73._0_4_ <= (float)auStack_80._0_4_);
    auVar98._8_4_ = -(uint)(auVar73._8_4_ <= fStack_78);
    auVar98._12_4_ = -(uint)(auVar73._12_4_ <= fStack_74);
    iVar33 = movmskps(pvVar25,auVar98);
    if (iVar33 != 0xf) {
      _DAT_011ef180 = (float)auStack_90._0_4_;
      fRam011ef184 = FLOAT_00f998f8;
      fRam011ef188 = DAT_010f4ccc;
      if (((DAT_011ef130 != '\0') && (DAT_011d8530 != 0)) &&
         (DAT_011ef190 < *(uint *)(DAT_011d8530 + 8))) {
        piVar24 = (int *)(DAT_011ef190 * 0x10 + *(int *)(DAT_011d8530 + 4));
        *piVar24 = *piVar24 + 1;
        *(undefined2 *)(piVar24 + 1) = *(undefined2 *)(iVar21 + 0x12);
        piVar24[3] = (int)&DAT_011ef180;
      }
    }
  }
  else {
    FUN_006df200(*(void **)((int)pvVar25 + 0x38),&fStack_20);
    fStack_a0 = fStack_20;
    fStack_9c = fStack_1c;
    fStack_98 = fStack_18;
    fStack_94 = fStack_14;
    auStack_80._4_4_ = fStack_1c;
    auStack_80._0_4_ = fStack_20;
    fStack_78 = fStack_18;
    fStack_74 = fStack_14;
    FUN_00d6a6e0(&DAT_011ef130,'\x01',fStack_20,fStack_1c);
  }
  if ((void *)local_d0 != (void *)0x0) {
    if (((uVar22 & 0x10000) != 0) &&
       (pvVar25 = (void *)FUN_00c60a50((int)(void *)local_d0), pvVar25 != (void *)0x0)) {
      FUN_00c83bb0(pvVar25);
    }
    if ((uVar22 & 0x404000) != 0) {
      pvVar25 = (void *)local_d0;
      piVar29 = (int *)FUN_00c687a0((void *)local_d0,'\x01');
      piVar24 = (int *)*piVar29;
      if (piVar24 != (int *)piVar29[1]) {
        do {
          if (((*piVar24 != 0) && (iVar21 = *(int *)(*piVar24 + 0x364), iVar21 != 0)) &&
             (iVar21 = *(int *)(iVar21 + 0x230), iVar21 != 0)) {
            FUN_00aa0890(iVar21);
          }
          piVar24 = piVar24 + 1;
        } while (piVar24 != (int *)piVar29[1]);
      }
      iVar21 = FUN_00c60a50((int)pvVar25);
      if (iVar21 != 0) {
        FUN_00c81220(iVar21);
      }
    }
  }
LAB_00d6fc0b:
  uVar30 = *(undefined4 *)((int)local_a4 + 0xbec);
  for (iVar21 = 0x17; iVar21 != 0; iVar21 = iVar21 + -1) {
    local_b0->precipitationType = pPStack_ac->precipitationType;
    pPStack_ac = (PCWeatherSettings *)&pPStack_ac->precipitationStrength;
    local_b0 = (PCWeatherSettings *)&local_b0->precipitationStrength;
  }
  *(undefined4 *)((int)local_a4 + 0xbf0) = uVar30;
  *(int *)((int)local_a4 + 0xbd0) = *local_b4;
  *(undefined4 *)((int)local_a4 + 0xbd4) = *(undefined4 *)((int)local_b4 + 4);
  *(undefined4 *)((int)local_a4 + 0xbd8) = *(undefined4 *)((int)local_b4 + 8);
  *(undefined4 *)((int)local_a4 + 0xbdc) = *(undefined4 *)((int)local_b4 + 0xc);
  *(undefined4 *)((int)local_a4 + 0xbe0) = *(undefined4 *)((int)local_b4 + 0x10);
  *(undefined4 *)((int)local_a4 + 0xbe4) = *(undefined4 *)((int)local_b4 + 0x14);
  DAT_01192d88 = DAT_01192d84;
  return;
}

