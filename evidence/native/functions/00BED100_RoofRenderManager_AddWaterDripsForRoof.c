/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 variation/leaf metadata contract. Selected caller context only, complete original
   body retained. Analyst name supported by embedded Scratch/RoofRenderManager/AddWaterDripsForRoof
   strings. AtBED14C roofDWORD+0C supplied to Lookup1999, returned raw32 word seeds local004FA9F0
   generator atBED15D. Thus table is shared deterministic variation data, not solely a tree format.
   Initial generator construction uses -1 before explicit reseed. Downstream roof outlines,
   particles, rates, resource/culling/failure and global staging behavior remain unexpanded; no
   claim of full effect contract or safety. */

void __thiscall RoofRenderManager_AddWaterDripsForRoof(void *this,void *roof)

{
  int iVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  char cVar4;
  uint uVar5;
  undefined4 uVar6;
  void *pvVar7;
  int *piVar8;
  int *piVar9;
  undefined4 *puVar10;
  int iVar11;
  float10 fVar12;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  float fVar15;
  float fVar17;
  float fVar18;
  undefined1 auVar16 [16];
  float fVar19;
  undefined1 auVar20 [4];
  float fVar21;
  float fVar22;
  float fVar23;
  undefined1 auVar24 [16];
  float *pfVar25;
  undefined4 *puVar26;
  undefined4 *puVar27;
  float *pfVar28;
  int iStack_2c4;
  int iStack_2c0;
  undefined1 auStack_2bc [4];
  undefined1 local_2b8 [8];
  float fStack_2b0;
  void *pvStack_2ac;
  float *pfStack_2a4;
  float *pfStack_2a0;
  uint uStack_29c;
  float fStack_298;
  int *piStack_290;
  void *pvStack_28c;
  void *local_288;
  void *pvStack_284;
  int local_280;
  undefined4 uStack_27c;
  char *pcStack_278;
  float *pfStack_274;
  float *pfStack_270;
  undefined4 local_268;
  float *local_264;
  float *local_260;
  char *local_25c;
  undefined4 local_258;
  float local_254;
  float local_250;
  char *local_24c;
  float fStack_248;
  undefined4 uStack_244;
  undefined4 uStack_240;
  longlong lStack_234;
  float fStack_228;
  float fStack_224;
  float fStack_220;
  float fStack_21c;
  float fStack_218;
  float fStack_214;
  float fStack_210;
  float fStack_20c;
  float fStack_208;
  float fStack_204;
  float fStack_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float fStack_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float fStack_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float fStack_1d0;
  undefined1 auStack_1cc [16];
  undefined4 uStack_1bc;
  undefined4 uStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  undefined4 uStack_1a8;
  float fStack_1a4;
  undefined4 uStack_1a0;
  undefined4 uStack_194;
  undefined4 uStack_190;
  float fStack_18c;
  undefined4 uStack_188;
  float fStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  undefined4 uStack_170;
  float fStack_16c;
  float fStack_168;
  float fStack_164;
  float fStack_160;
  float fStack_15c;
  float fStack_158;
  float fStack_154;
  float fStack_150;
  float fStack_14c;
  float fStack_148;
  float fStack_144;
  float fStack_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined4 uStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float fStack_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  float fStack_bc;
  undefined4 uStack_b8;
  float fStack_b4;
  float fStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  undefined4 uStack_88;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  
  local_288 = LoadPump_ReadFrameServiceGlobal();
  if ((local_288 != (void *)0x0) &&
     (((*(void **)((int)this + 0x28) == (void *)0x0 || (roof == (void *)0x0)) ||
      (cVar4 = FUN_00adf5a0(*(void **)((int)this + 0x28),(float *)((int)roof + 0x10)), cVar4 == '\0'
      )))) {
    TreeVariation_Reseed(local_2b8 + 4,-1);
    uVar5 = VariationWords_Lookup1999(*(uint *)((int)roof + 0xc));
    TreeVariation_Reseed(local_2b8 + 4,uVar5);
    iVar11 = *(int *)((int)roof + 0x18);
    local_280 = iVar11 * 0x10 + *(int *)((int)this + 0x20c);
    puVar26 = &local_258;
    local_258 = 0;
    local_254 = 0.0;
    local_250 = 0.0;
    local_268 = 0;
    local_264 = (float *)0x0;
    local_260 = (float *)0x0;
    puVar27 = &local_268;
    local_2b8._0_4_ = iVar11;
    local_24c = "Scratch/RoofRenderManager/AddWaterDripsForRoof/roofOutlines";
    local_25c = "Scratch/RoofRenderManager/AddWaterDripsForRoof/roofOutline";
    cVar4 = (**(code **)(*(int *)roof + 0x70))(1,puVar26,puVar27);
    if (cVar4 != '\0') {
      pvStack_284 = (void *)0x0;
      local_280 = 0;
      uStack_27c = 0;
      pcStack_278 = "LotRenderer/RoofRenderer/roofs";
      FUN_00beb570(this,&pvStack_284,*(uint *)((int)roof + 0xc),iVar11);
      pfStack_2a4 = local_260;
      if (local_264 != local_260) {
        fStack_12c = 1.0;
        fStack_128 = 1.0;
        fStack_124 = 1.0;
        fStack_120 = 1.0;
        fStack_14c = 0.0;
        fStack_148 = 0.0;
        fStack_144 = 0.0;
        fStack_140 = 0.0;
        uStack_240 = 0;
        uStack_244 = 0;
        fStack_248 = 1.0;
        local_24c = (char *)0x0;
        uStack_4c = 0;
        fStack_48 = 1.0;
        uStack_44 = 0;
        uStack_40 = 0;
        uStack_13c = 0;
        uStack_138 = 0;
        uStack_134 = 0;
        uStack_130 = 0;
        fStack_10c = 0.5;
        pfStack_2a0 = local_264 + 1;
        fStack_108 = fStack_10c;
        fStack_104 = fStack_10c;
        fStack_100 = fStack_10c;
        do {
          fStack_214 = pfStack_2a0[1];
          fStack_21c = pfStack_2a0[-1];
          fStack_218 = *pfStack_2a0;
          fStack_20c = pfStack_2a0[2];
          fStack_204 = pfStack_2a0[4];
          fStack_208 = pfStack_2a0[3];
          auVar16._0_4_ = fStack_20c - fStack_21c;
          auVar16._4_4_ = fStack_208 - fStack_218;
          auVar16._8_4_ = fStack_204 - fStack_214;
          auVar16._12_4_ = fStack_20c - fStack_21c;
          auVar24._0_4_ =
               auVar16._8_4_ * auVar16._8_4_ + auVar16._4_4_ * auVar16._4_4_ +
               auVar16._0_4_ * auVar16._0_4_;
          auVar24._4_4_ = auVar24._0_4_;
          auVar24._8_4_ = auVar24._0_4_;
          auVar24._12_4_ = auVar24._0_4_;
          auStack_1cc = sqrtps(auVar24,auVar24);
          auVar13._4_4_ = auStack_1cc._0_4_;
          auVar13._0_4_ = auStack_1cc._0_4_;
          auVar13._8_4_ = auStack_1cc._0_4_;
          auVar13._12_4_ = auStack_1cc._0_4_;
          _auStack_2bc = divps(auVar16,auVar13);
          fStack_298 = 1.0;
          fStack_210 = fStack_21c;
          fStack_200 = fStack_20c;
          fStack_15c = fStack_21c;
          fStack_158 = fStack_218;
          fStack_154 = fStack_214;
          fStack_150 = fStack_21c;
          cVar4 = (**(code **)(*(int *)roof + 0xc))();
          if (cVar4 == '\0') {
            auVar20 = auStack_2bc;
            fVar21 = (float)local_2b8._0_4_;
            fVar22 = (float)local_2b8._4_4_;
            fVar23 = fStack_2b0;
          }
          else {
            fStack_298 = 0.70710677;
            auStack_2bc = (undefined1  [4])((float)auStack_2bc * 1.4142135);
            local_2b8._0_4_ = (float)local_2b8._0_4_ * 1.4142135;
            local_2b8._4_4_ = (float)local_2b8._4_4_ * 1.4142135;
            fStack_2b0 = fStack_2b0 * 1.4142135;
            auVar20 = auStack_2bc;
            fVar21 = (float)local_2b8._0_4_;
            fVar22 = (float)local_2b8._4_4_;
            fVar23 = fStack_2b0;
          }
          iVar1 = *(int *)((int)this + 0x28);
          fStack_18c = fVar21 * *(float *)(iVar1 + 0x200) +
                       (float)auVar20 * *(float *)(iVar1 + 0x1f0) +
                       fVar22 * *(float *)(iVar1 + 0x210);
          fStack_184 = fVar21 * *(float *)(iVar1 + 0x208) +
                       (float)auVar20 * *(float *)(iVar1 + 0x1f8) +
                       fVar22 * *(float *)(iVar1 + 0x218);
          fStack_180 = fVar21 * *(float *)(iVar1 + 0x20c) +
                       (float)auVar20 * *(float *)(iVar1 + 0x1fc) +
                       fVar22 * *(float *)(iVar1 + 0x21c);
          uStack_188 = 0;
          fVar15 = fStack_18c * fStack_18c;
          auVar3._4_4_ = fVar15;
          auVar3._0_4_ = fVar15;
          auVar3._8_4_ = fVar15;
          auVar3._12_4_ = 0;
          auVar14._0_4_ = fStack_184 * fStack_184 + 0.0 + fVar15;
          auVar14._4_4_ = auVar14._0_4_;
          auVar14._8_4_ = auVar14._0_4_;
          auVar14._12_4_ = auVar14._0_4_;
          auVar24 = rsqrtps(auVar3 << 0x20,auVar14);
          fVar15 = auVar24._0_4_;
          fVar17 = auVar24._4_4_;
          fVar18 = auVar24._8_4_;
          fVar19 = auVar24._12_4_;
          fVar15 = (fStack_12c - fVar15 * fVar15 * auVar14._0_4_) * fVar15 * fStack_10c + fVar15;
          fVar17 = (fStack_128 - fVar17 * fVar17 * auVar14._0_4_) * fVar17 * fStack_108 + fVar17;
          fVar18 = (fStack_124 - fVar18 * fVar18 * auVar14._0_4_) * fVar18 * fStack_104 + fVar18;
          fVar19 = (fStack_120 - fVar19 * fVar19 * auVar14._0_4_) * fVar19 * fStack_100 + fVar19;
          fStack_17c = ((fStack_12c - fVar15 * fVar15 * auVar14._0_4_) * fVar15 * fStack_10c +
                       fVar15) * fStack_18c;
          fStack_178 = ((fStack_128 - fVar17 * fVar17 * auVar14._0_4_) * fVar17 * fStack_108 +
                       fVar17) * (fVar21 * *(float *)(iVar1 + 0x204) +
                                  (float)auVar20 * *(float *)(iVar1 + 500) +
                                 fVar22 * *(float *)(iVar1 + 0x214));
          fStack_1ac = ((fStack_124 - fVar18 * fVar18 * auVar14._0_4_) * fVar18 * fStack_104 +
                       fVar18) * fStack_184;
          fStack_160 = ((fStack_120 - fVar19 * fVar19 * auVar14._0_4_) * fVar19 * fStack_100 +
                       fVar19) * fStack_180;
          fStack_6c = fStack_14c - fStack_17c;
          fStack_68 = fStack_148 - fStack_17c;
          fStack_1a4 = fStack_144 - fStack_17c;
          fStack_60 = fStack_140 - fStack_17c;
          fStack_228 = (float)auStack_1cc._0_4_ * fStack_298;
          uStack_1a8 = uStack_138;
          uStack_170 = 0;
          uStack_1a0 = 0;
          lStack_234 = (longlong)ROUND(fStack_228);
          uStack_29c = 0;
          fStack_174 = fStack_1ac;
          fStack_16c = fStack_17c;
          fStack_168 = fStack_178;
          fStack_164 = fStack_1ac;
          fStack_64 = fStack_1a4;
          if ((uint)lStack_234 != 0) {
            fStack_fc = fStack_10c * (float)auVar20;
            fStack_f8 = fStack_108 * fVar21;
            fStack_f4 = fStack_104 * fVar22;
            fStack_f0 = fStack_100 * fVar23;
            while( true ) {
              local_288 = (void *)(float)(int)uStack_29c;
              if ((int)uStack_29c < 0) {
                local_288 = (void *)((float)local_288 + 4.2949673e+09);
              }
              fStack_1dc = (float)local_288 * (float)auVar20 + fStack_15c;
              fStack_1d8 = (float)local_288 * fVar21 + fStack_158;
              fStack_1d4 = (float)local_288 * fVar22 + fStack_154;
              fStack_1d0 = (float)local_288 * fVar23 + fStack_150;
              local_254 = fStack_1dc + fStack_fc;
              fStack_1f8 = fStack_1d8 + fStack_f8;
              local_250 = fStack_1d4 + fStack_f4;
              fStack_1f0 = fStack_1d0 + fStack_f0;
              fStack_1fc = local_254;
              fStack_1f4 = local_250;
              fStack_1ec = local_254;
              fStack_1e8 = fStack_1f8;
              fStack_1e4 = local_250;
              fStack_1e0 = fStack_1f0;
              fStack_11c = local_254;
              fStack_118 = fStack_1f8;
              fStack_114 = local_250;
              fStack_110 = fStack_1f0;
              uVar6 = FUN_00b9f330(roof,(int *)&pvStack_284,&local_254,iVar11,'\0',0.0);
              if ((char)uVar6 == '\0') {
                uVar6 = FUN_00b9d900(roof,(int *)&pvStack_284,&local_254,iVar11,'\0');
                if ((char)uVar6 == '\0') {
                  if ((_DAT_011ed5f0 & 1) == 0) {
                    _DAT_011ed5f0 = _DAT_011ed5f0 | 1;
                    uVar5 = FUN_007d0020((wint_t *)L"ep8RoofDrips");
                    _DAT_011ed5e0 = FUN_007cfea0(uVar5);
                    _DAT_011ed5e4 = 0;
                    _DAT_011ed5e8 = 0x1661233;
                    _DAT_011ed5ec = 1;
                  }
                  if ((_DAT_011ed5f0 & 2) == 0) {
                    _DAT_011ed5f0 = _DAT_011ed5f0 | 2;
                    uVar5 = FUN_007d0020((wint_t *)L"ep8RoofDripsDiag");
                    _DAT_011ed5d0 = FUN_007cfea0(uVar5);
                    _DAT_011ed5d4 = 0;
                    _DAT_011ed5d8 = 0x1661233;
                    _DAT_011ed5dc = 1;
                  }
                  cVar4 = (**(code **)(*(int *)roof + 0xc))();
                  puVar10 = (undefined4 *)&DAT_011ed5d0;
                  if (cVar4 == '\0') {
                    puVar10 = (undefined4 *)&DAT_011ed5e0;
                  }
                  pvVar7 = (void *)FUN_004e4520(0x2d0,0x10,0,
                                                "LotRenderer/RoofRenderer/AddWaterDripsForRoof",0);
                  if (pvVar7 == (void *)0x0) {
                    piVar8 = (int *)0x0;
                  }
                  else {
                    piVar8 = RenderComponent_InitializeSceneModel(pvVar7,0,0);
                  }
                  if (piVar8 != (int *)0x0) {
                    (**(code **)*piVar8)();
                  }
                  FUN_006f46f0(piVar8,puVar10,0,0,0);
                  (**(code **)(*piVar8 + 0x34))(0x7ffff080,0x40000080);
                  (**(code **)(*piVar8 + 0x4c))
                            (*(undefined4 *)(*(int *)((int)this + 0x28) + 0x10),
                             *(undefined4 *)(*(int *)((int)this + 0x28) + 0x14));
                  iVar11 = (int)puVar27 + 1;
                  (**(code **)(*piVar8 + 0x50))(iVar11);
                  pvVar7 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x28) + 8))
                                             (iVar11);
                  FUN_006e82e0(pvStack_2ac,piVar8,pvVar7);
                  iVar11 = *(int *)((int)this + 0x28);
                  uStack_c4 = uStack_194;
                  uStack_c0 = uStack_190;
                  fStack_bc = fStack_18c;
                  uStack_b8 = uStack_188;
                  fStack_1b4 = fStack_1ec * *(float *)(iVar11 + 0x210) +
                               fStack_1f4 * *(float *)(iVar11 + 0x1f0) + *(float *)(iVar11 + 0x220)
                               + fStack_1f0 * *(float *)(iVar11 + 0x200);
                  fStack_1b0 = fStack_1ec * *(float *)(iVar11 + 0x214) +
                               fStack_1f4 * *(float *)(iVar11 + 500) + *(float *)(iVar11 + 0x224) +
                               fStack_1f0 * *(float *)(iVar11 + 0x204);
                  fStack_1ac = fStack_1ec * *(float *)(iVar11 + 0x218) +
                               fStack_1f4 * *(float *)(iVar11 + 0x1f8) + *(float *)(iVar11 + 0x228)
                               + fStack_1f0 * *(float *)(iVar11 + 0x208);
                  uStack_1a8 = 0x3f800000;
                  fStack_b4 = fStack_64;
                  fStack_b0 = fStack_60;
                  uStack_ac = uStack_5c;
                  uStack_a8 = uStack_58;
                  uStack_a4 = auStack_1cc._8_4_;
                  uStack_a0 = auStack_1cc._12_4_;
                  uStack_9c = uStack_1bc;
                  uStack_98 = uStack_1b8;
                  fStack_94 = fStack_1b4;
                  fStack_90 = fStack_1b0;
                  fStack_8c = fStack_1ac;
                  uStack_88 = uStack_1a8;
                  (**(code **)(*piVar8 + 0x20))(&uStack_c4);
                  piVar9 = *(int **)((int)pvStack_28c + 4);
                  if (piVar9 < *(int **)((int)pvStack_28c + 8)) {
                    *(int **)((int)pvStack_28c + 4) = piVar9 + 1;
                    if (piVar9 != (int *)0x0) {
                      *piVar9 = (int)piVar8;
                      (**(code **)*piVar8)();
                    }
                  }
                  else {
                    FUN_00c65ad0(pvStack_28c,piVar9,(int *)(auStack_2bc + -0xc));
                  }
                  if (DAT_01184da0 != 0.0) {
                    fVar12 = TreeVariation_DrawUniform(&iStack_2c0);
                    fStack_220 = DAT_01184d9c;
                    fStack_224 = (float)((float10)_DAT_01184d94 +
                                        ((float10)_DAT_01184d98 - (float10)_DAT_01184d94) * fVar12);
                    pvVar7 = (void *)FUN_004e4520(0x28,4,0,"Renderer/ParticleJetRateFixupLOD",0);
                    if (pvVar7 == (void *)0x0) {
                      piVar9 = (int *)0x0;
                    }
                    else {
                      piVar9 = (int *)FUN_006ddb10(pvVar7,&fStack_224,_DAT_011ed590);
                      if (piVar9 != (int *)0x0) {
                        (**(code **)*piVar9)();
                      }
                    }
                    fVar12 = FUN_00beced0(this,&fStack_1ec,iStack_2c4);
                    FUN_009de980(piVar9,(float)fVar12);
                    (**(code **)(*piVar8 + 0x80))(piVar9,&DAT_00ff8034);
                    ModelBinding_ApplyMaterialToAvailableLod(piVar8 + 0x84);
                    SceneObject_QueueDirtyOnce((int)piVar8);
                    if (piVar9 != (int *)0x0) {
                      (**(code **)(*piVar9 + 4))();
                    }
                  }
                  if (piVar8 != (int *)0x0) {
                    (**(code **)(*piVar8 + 4))();
                  }
                  iVar11 = iStack_2c4;
                }
              }
              uStack_29c = uStack_29c + 1;
              if ((uint)lStack_234 <= uStack_29c) break;
              auVar20 = auStack_2bc;
              fVar21 = (float)local_2b8._0_4_;
              fVar22 = (float)local_2b8._4_4_;
              fVar23 = fStack_2b0;
            }
          }
          pfVar28 = pfStack_2a0 + 6;
          pfVar25 = pfStack_2a0 + 5;
          pfStack_2a0 = pfVar28;
        } while (pfVar25 != pfStack_2a4);
      }
      pfStack_2a4 = pfStack_270;
      if (pfStack_274 != pfStack_270) {
        fStack_1e8 = 0.0;
        fStack_1d8 = 1.0;
        fStack_1ec = 1.0;
        fStack_1e4 = 0.0;
        fStack_1e0 = 0.0;
        _auStack_2bc = ZEXT416((uint)1.0) << 0x40;
        auVar2._12_4_ = 0;
        auVar2._0_12_ = _local_2b8;
        _auStack_2bc = auVar2 << 0x20;
        fStack_1dc = 0.0;
        fStack_1d4 = 0.0;
        fStack_1d0 = 0.0;
        fStack_1fc = 0.0;
        fStack_1f8 = 0.0;
        fStack_1f4 = 1.0;
        fStack_1f0 = 0.0;
        pfVar28 = pfStack_274;
        do {
          if ((_DAT_011ed5f0 & 4) == 0) {
            _DAT_011ed5f0 = _DAT_011ed5f0 | 4;
            uVar5 = FUN_007d0020((wint_t *)L"ep8RoofDripsPost");
            _DAT_011ed5c0 = FUN_007cfea0(uVar5);
            _DAT_011ed5c4 = 0;
            _DAT_011ed5c8 = 0x1661233;
            _DAT_011ed5cc = 1;
          }
          pvVar7 = (void *)FUN_004e4520(0x2d0,0x10,0,"LotRenderer/RoofRenderer/AddWaterDripsForRoof"
                                        ,0);
          if (pvVar7 == (void *)0x0) {
            piVar8 = (int *)0x0;
          }
          else {
            piVar8 = RenderComponent_InitializeSceneModel(pvVar7,0,0);
          }
          piStack_290 = piVar8;
          if (piVar8 != (int *)0x0) {
            (**(code **)*piVar8)();
          }
          FUN_006f46f0(piVar8,(undefined4 *)&DAT_011ed5c0,0,0,0);
          pfVar25 = (float *)0x40000080;
          (**(code **)(*piVar8 + 0x34))(0x7ffff080);
          (**(code **)(*piVar8 + 0x4c))
                    (*(undefined4 *)(*(int *)((int)this + 0x28) + 0x10),
                     *(undefined4 *)(*(int *)((int)this + 0x28) + 0x14));
          (**(code **)(*piVar8 + 0x50))((int)puVar27 + 1);
          pvVar7 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x28) + 8))
                                     ((int)puVar26 + 1);
          FUN_006e82e0(pvStack_2ac,piVar8,pvVar7);
          iVar11 = *(int *)((int)this + 0x28);
          fVar21 = *pfVar25;
          fVar22 = pfVar25[1];
          fVar23 = pfVar25[2];
          fStack_1d4 = fVar23 * *(float *)(iVar11 + 0x210) +
                       fVar21 * *(float *)(iVar11 + 0x1f0) + *(float *)(iVar11 + 0x220) +
                       fVar22 * *(float *)(iVar11 + 0x200);
          fStack_1d0 = fVar23 * *(float *)(iVar11 + 0x214) +
                       fVar21 * *(float *)(iVar11 + 500) + *(float *)(iVar11 + 0x224) +
                       fVar22 * *(float *)(iVar11 + 0x204);
          fStack_cc = fVar23 * *(float *)(iVar11 + 0x218) +
                      fVar21 * *(float *)(iVar11 + 0x1f8) + *(float *)(iVar11 + 0x228) +
                      fVar22 * *(float *)(iVar11 + 0x208);
          fStack_104 = fStack_204;
          fStack_100 = fStack_200;
          fStack_fc = fStack_1fc;
          fStack_f8 = fStack_1f8;
          fStack_f4 = fStack_1f4;
          fStack_f0 = fStack_1f0;
          fStack_ec = fStack_1ec;
          fStack_e8 = fStack_1e8;
          auStack_1cc._4_4_ = 0x3f800000;
          auStack_1cc._0_4_ = fStack_cc;
          fStack_e4 = fStack_214;
          fStack_e0 = fStack_210;
          fStack_dc = fStack_20c;
          fStack_d8 = fStack_208;
          uStack_c8 = 0x3f800000;
          fStack_d4 = fStack_1d4;
          fStack_d0 = fStack_1d0;
          (**(code **)(*piVar8 + 0x20))(&fStack_104);
          piVar9 = *(int **)((int)pvStack_28c + 4);
          if (piVar9 < *(int **)((int)pvStack_28c + 8)) {
            *(int **)((int)pvStack_28c + 4) = piVar9 + 1;
            if (piVar9 != (int *)0x0) {
              *piVar9 = (int)piVar8;
              (**(code **)*piVar8)();
            }
          }
          else {
            FUN_00c65ad0(pvStack_28c,piVar9,(int *)&piStack_290);
            piVar8 = piStack_290;
          }
          if (DAT_01184da0 != 0.0) {
            fVar12 = TreeVariation_DrawUniform(&iStack_2c0);
            fStack_248 = DAT_01184d9c;
            local_24c = (char *)(float)((float10)_DAT_01184d94 +
                                       ((float10)_DAT_01184d98 - (float10)_DAT_01184d94) * fVar12);
            pvVar7 = (void *)FUN_004e4520(0x28,4,0,"Renderer/ParticleJetRateFixupLOD",0);
            if (pvVar7 == (void *)0x0) {
              piVar9 = (int *)0x0;
            }
            else {
              piVar9 = (int *)FUN_006ddb10(pvVar7,&local_24c,_DAT_011ed590);
              if (piVar9 != (int *)0x0) {
                (**(code **)*piVar9)();
              }
            }
            fVar12 = FUN_00beced0(this,pfVar28,iStack_2c4);
            FUN_009de980(piVar9,(float)fVar12);
            (**(code **)(*piVar8 + 0x80))(piVar9,&DAT_00ff8034);
            ModelBinding_ApplyMaterialToAvailableLod(piVar8 + 0x84);
            SceneObject_QueueDirtyOnce((int)piVar8);
            if (piVar9 != (int *)0x0) {
              (**(code **)(*piVar9 + 4))();
            }
          }
          if (piVar8 != (int *)0x0) {
            (**(code **)(*piVar8 + 4))();
          }
          pfVar28 = pfVar28 + 4;
        } while (pfVar28 != pfStack_2a4);
      }
      if (pvStack_284 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_284);
      }
    }
    if (pfStack_274 != (float *)0x0) {
      Memory_FreeIfNonNull(pfStack_274);
    }
    if (local_264 != (float *)0x0) {
      Memory_FreeIfNonNull(local_264);
    }
  }
  return;
}

