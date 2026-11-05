/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  undefined1 auVar3 [12];
  undefined1 auVar4 [16];
  char cVar5;
  uint uVar6;
  float *pfVar7;
  undefined4 uVar8;
  void *pvVar9;
  int *piVar10;
  int *piVar11;
  undefined4 *puVar12;
  int iVar13;
  float10 fVar14;
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  float fVar17;
  float fVar19;
  float fVar20;
  undefined1 auVar18 [16];
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  undefined1 auVar26 [16];
  float *pfVar27;
  undefined4 *puVar28;
  undefined4 *puVar29;
  int iStack_2c4;
  int iStack_2c0;
  undefined1 auStack_2bc [8];
  float local_2b4;
  float fStack_2b0;
  void *pvStack_2ac;
  float *pfStack_2a4;
  float *pfStack_2a0;
  uint uStack_29c;
  float fStack_298;
  int *piStack_290;
  void *pvStack_28c;
  float local_288;
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
  undefined1 auStack_1cc [8];
  undefined4 uStack_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 uStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float fStack_1a8;
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
  float fStack_138;
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
  float fStack_c8;
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
  float fStack_88;
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
  
  local_288 = (float)FUN_006e8170();
  if ((local_288 != 0.0) &&
     (((*(void **)((int)this + 0x28) == (void *)0x0 || (roof == (void *)0x0)) ||
      (cVar5 = FUN_00adf5a0(*(void **)((int)this + 0x28),(float *)((int)roof + 0x10)), cVar5 == '\0'
      )))) {
    FUN_004fa9f0(auStack_2bc + 8,-1);
    uVar6 = VariationWords_Lookup1999(*(uint *)((int)roof + 0xc));
    FUN_004fa9f0(auStack_2bc + 8,uVar6);
    iVar13 = *(int *)((int)roof + 0x18);
    local_280 = iVar13 * 0x10 + *(int *)((int)this + 0x20c);
    puVar28 = &local_258;
    local_258 = 0;
    local_254 = 0.0;
    local_250 = 0.0;
    local_268 = 0;
    local_264 = (float *)0x0;
    local_260 = (float *)0x0;
    puVar29 = &local_268;
    auStack_2bc._4_4_ = iVar13;
    local_24c = "Scratch/RoofRenderManager/AddWaterDripsForRoof/roofOutlines";
    local_25c = "Scratch/RoofRenderManager/AddWaterDripsForRoof/roofOutline";
    cVar5 = (**(code **)(*(int *)roof + 0x70))(1,puVar28,puVar29);
    if (cVar5 != '\0') {
      pvStack_284 = (void *)0x0;
      local_280 = 0;
      uStack_27c = 0;
      pcStack_278 = "LotRenderer/RoofRenderer/roofs";
      FUN_00beb570(this,&pvStack_284,*(uint *)((int)roof + 0xc),iVar13);
      pfStack_2a4 = local_260;
      if (local_264 != local_260) {
        fStack_12c = DAT_00f998f8;
        fStack_128 = DAT_00f998f8;
        fStack_124 = DAT_00f998f8;
        fStack_120 = DAT_00f998f8;
        fStack_14c = 0.0;
        fStack_148 = 0.0;
        fStack_144 = 0.0;
        fStack_140 = 0.0;
        uStack_240 = 0;
        uStack_244 = 0;
        fStack_248 = DAT_00f998f8;
        local_24c = (char *)0x0;
        uStack_4c = 0;
        fStack_48 = DAT_00f998f8;
        uStack_44 = 0;
        uStack_40 = 0;
        uStack_13c = 0;
        fStack_138 = 0.0;
        uStack_134 = 0;
        uStack_130 = 0;
        pfVar7 = local_264 + 1;
        fStack_10c = _DAT_00f9b5b4;
        fStack_108 = _DAT_00f9b5b4;
        fStack_104 = _DAT_00f9b5b4;
        fStack_100 = _DAT_00f9b5b4;
        do {
          fStack_214 = pfVar7[1];
          fStack_21c = pfVar7[-1];
          fStack_218 = *pfVar7;
          fStack_20c = pfVar7[2];
          fStack_204 = pfVar7[4];
          fStack_208 = pfVar7[3];
          auVar18._0_4_ = fStack_20c - fStack_21c;
          auVar18._4_4_ = fStack_208 - fStack_218;
          auVar18._8_4_ = fStack_204 - fStack_214;
          auVar18._12_4_ = fStack_20c - fStack_21c;
          auVar26._0_4_ =
               auVar18._8_4_ * auVar18._8_4_ + auVar18._4_4_ * auVar18._4_4_ +
               auVar18._0_4_ * auVar18._0_4_;
          auVar26._4_4_ = auVar26._0_4_;
          auVar26._8_4_ = auVar26._0_4_;
          auVar26._12_4_ = auVar26._0_4_;
          _auStack_1cc = sqrtps(auVar26,auVar26);
          auVar15._4_4_ = auStack_1cc._0_4_;
          auVar15._0_4_ = auStack_1cc._0_4_;
          auVar15._8_4_ = auStack_1cc._0_4_;
          auVar15._12_4_ = auStack_1cc._0_4_;
          _auStack_2bc = divps(auVar18,auVar15);
          fStack_298 = DAT_00f998f8;
          pfStack_2a0 = pfVar7;
          fStack_210 = fStack_21c;
          fStack_200 = fStack_20c;
          fStack_15c = fStack_21c;
          fStack_158 = fStack_218;
          fStack_154 = fStack_214;
          fStack_150 = fStack_21c;
          cVar5 = (**(code **)(*(int *)roof + 0xc))();
          fVar22 = (float)auStack_2bc._0_4_;
          fVar23 = (float)auStack_2bc._4_4_;
          fVar24 = local_2b4;
          fVar25 = fStack_2b0;
          if (cVar5 != '\0') {
            auStack_2bc._0_4_ = DAT_010724c4 * (float)auStack_2bc._0_4_;
            auStack_2bc._4_4_ = DAT_010724c4 * (float)auStack_2bc._4_4_;
            local_2b4 = DAT_010724c4 * local_2b4;
            fStack_2b0 = DAT_010724c4 * fStack_2b0;
            fStack_298 = DAT_010724c8;
            fVar22 = (float)auStack_2bc._0_4_;
            fVar23 = (float)auStack_2bc._4_4_;
            fVar24 = local_2b4;
            fVar25 = fStack_2b0;
          }
          iVar1 = *(int *)((int)this + 0x28);
          fStack_18c = fVar23 * *(float *)(iVar1 + 0x200) + fVar22 * *(float *)(iVar1 + 0x1f0) +
                       fVar24 * *(float *)(iVar1 + 0x210);
          fStack_184 = fVar23 * *(float *)(iVar1 + 0x208) + fVar22 * *(float *)(iVar1 + 0x1f8) +
                       fVar24 * *(float *)(iVar1 + 0x218);
          fStack_180 = fVar23 * *(float *)(iVar1 + 0x20c) + fVar22 * *(float *)(iVar1 + 0x1fc) +
                       fVar24 * *(float *)(iVar1 + 0x21c);
          uStack_188 = 0;
          fVar17 = fStack_18c * fStack_18c;
          auVar4._4_4_ = fVar17;
          auVar4._0_4_ = fVar17;
          auVar4._8_4_ = fVar17;
          auVar4._12_4_ = 0;
          auVar16._0_4_ = fStack_184 * fStack_184 + 0.0 + fVar17;
          auVar16._4_4_ = auVar16._0_4_;
          auVar16._8_4_ = auVar16._0_4_;
          auVar16._12_4_ = auVar16._0_4_;
          auVar26 = rsqrtps(auVar4 << 0x20,auVar16);
          fVar17 = auVar26._0_4_;
          fVar19 = auVar26._4_4_;
          fVar20 = auVar26._8_4_;
          fVar21 = auVar26._12_4_;
          fVar17 = (fStack_12c - fVar17 * fVar17 * auVar16._0_4_) * fVar17 * fStack_10c + fVar17;
          fVar19 = (fStack_128 - fVar19 * fVar19 * auVar16._0_4_) * fVar19 * fStack_108 + fVar19;
          fVar20 = (fStack_124 - fVar20 * fVar20 * auVar16._0_4_) * fVar20 * fStack_104 + fVar20;
          fVar21 = (fStack_120 - fVar21 * fVar21 * auVar16._0_4_) * fVar21 * fStack_100 + fVar21;
          fStack_17c = ((fStack_12c - fVar17 * fVar17 * auVar16._0_4_) * fVar17 * fStack_10c +
                       fVar17) * fStack_18c;
          fStack_178 = ((fStack_128 - fVar19 * fVar19 * auVar16._0_4_) * fVar19 * fStack_108 +
                       fVar19) * (fVar23 * *(float *)(iVar1 + 0x204) +
                                  fVar22 * *(float *)(iVar1 + 500) +
                                 fVar24 * *(float *)(iVar1 + 0x214));
          fStack_1ac = ((fStack_124 - fVar20 * fVar20 * auVar16._0_4_) * fVar20 * fStack_104 +
                       fVar20) * fStack_184;
          fStack_160 = ((fStack_120 - fVar21 * fVar21 * auVar16._0_4_) * fVar21 * fStack_100 +
                       fVar21) * fStack_180;
          fStack_6c = fStack_14c - fStack_17c;
          fStack_68 = fStack_148 - fStack_17c;
          fStack_1a4 = fStack_144 - fStack_17c;
          fStack_60 = fStack_140 - fStack_17c;
          fStack_228 = (float)auStack_1cc._0_4_ * fStack_298;
          fStack_1a8 = fStack_138;
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
            fStack_fc = fStack_10c * fVar22;
            fStack_f8 = fStack_108 * fVar23;
            fStack_f4 = fStack_104 * fVar24;
            fStack_f0 = fStack_100 * fVar25;
            while( true ) {
              local_288 = (float)(int)uStack_29c;
              if ((int)uStack_29c < 0) {
                local_288 = local_288 + _DAT_00f99948;
              }
              fStack_1dc = local_288 * fVar22 + fStack_15c;
              fStack_1d8 = local_288 * fVar23 + fStack_158;
              fStack_1d4 = local_288 * fVar24 + fStack_154;
              fStack_1d0 = local_288 * fVar25 + fStack_150;
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
              uVar8 = FUN_00b9f330(roof,(int *)&pvStack_284,&local_254,iVar13,'\0',0.0);
              if (((char)uVar8 == '\0') &&
                 (uVar8 = FUN_00b9d900(roof,(int *)&pvStack_284,&local_254,iVar13,'\0'),
                 (char)uVar8 == '\0')) {
                if ((_DAT_011ed5f0 & 1) == 0) {
                  _DAT_011ed5f0 = _DAT_011ed5f0 | 1;
                  uVar6 = FUN_007d0020((wint_t *)L"ep8RoofDrips");
                  _DAT_011ed5e0 = FUN_007cfea0(uVar6);
                  _DAT_011ed5e4 = 0;
                  _DAT_011ed5e8 = 0x1661233;
                  _DAT_011ed5ec = 1;
                }
                if ((_DAT_011ed5f0 & 2) == 0) {
                  _DAT_011ed5f0 = _DAT_011ed5f0 | 2;
                  uVar6 = FUN_007d0020((wint_t *)L"ep8RoofDripsDiag");
                  _DAT_011ed5d0 = FUN_007cfea0(uVar6);
                  _DAT_011ed5d4 = 0;
                  _DAT_011ed5d8 = 0x1661233;
                  _DAT_011ed5dc = 1;
                }
                cVar5 = (**(code **)(*(int *)roof + 0xc))();
                puVar12 = (undefined4 *)&DAT_011ed5d0;
                if (cVar5 == '\0') {
                  puVar12 = (undefined4 *)&DAT_011ed5e0;
                }
                pvVar9 = (void *)FUN_004e4520(0x2d0,0x10,0,
                                              "LotRenderer/RoofRenderer/AddWaterDripsForRoof",0);
                if (pvVar9 == (void *)0x0) {
                  piVar10 = (int *)0x0;
                }
                else {
                  piVar10 = RenderComponent_InitializeSceneModel(pvVar9,0,0);
                }
                if (piVar10 != (int *)0x0) {
                  (**(code **)*piVar10)();
                }
                FUN_006f46f0(piVar10,puVar12,0,0,0);
                (**(code **)(*piVar10 + 0x34))(0x7ffff080,0x40000080);
                (**(code **)(*piVar10 + 0x4c))
                          (*(undefined4 *)(*(int *)((int)this + 0x28) + 0x10),
                           *(undefined4 *)(*(int *)((int)this + 0x28) + 0x14));
                iVar13 = (int)puVar29 + 1;
                (**(code **)(*piVar10 + 0x50))(iVar13);
                pvVar9 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x28) + 8))
                                           (iVar13);
                FUN_006e82e0(pvStack_2ac,piVar10,pvVar9);
                iVar13 = *(int *)((int)this + 0x28);
                uStack_c4 = uStack_194;
                uStack_c0 = uStack_190;
                fStack_bc = fStack_18c;
                uStack_b8 = uStack_188;
                fStack_1b4 = fStack_1ec * *(float *)(iVar13 + 0x210) +
                             fStack_1f4 * *(float *)(iVar13 + 0x1f0) + *(float *)(iVar13 + 0x220) +
                             fStack_1f0 * *(float *)(iVar13 + 0x200);
                fStack_1b0 = fStack_1ec * *(float *)(iVar13 + 0x214) +
                             fStack_1f4 * *(float *)(iVar13 + 500) + *(float *)(iVar13 + 0x224) +
                             fStack_1f0 * *(float *)(iVar13 + 0x204);
                fStack_1ac = fStack_1ec * *(float *)(iVar13 + 0x218) +
                             fStack_1f4 * *(float *)(iVar13 + 0x1f8) + *(float *)(iVar13 + 0x228) +
                             fStack_1f0 * *(float *)(iVar13 + 0x208);
                fStack_b4 = fStack_64;
                fStack_b0 = fStack_60;
                uStack_ac = uStack_5c;
                uStack_a8 = uStack_58;
                fStack_1a8 = DAT_00f998f8;
                uStack_a4 = uStack_1c4;
                uStack_a0 = uStack_1c0;
                uStack_9c = uStack_1bc;
                uStack_98 = uStack_1b8;
                fStack_88 = DAT_00f998f8;
                fStack_94 = fStack_1b4;
                fStack_90 = fStack_1b0;
                fStack_8c = fStack_1ac;
                (**(code **)(*piVar10 + 0x20))(&uStack_c4);
                piVar11 = *(int **)((int)pvStack_28c + 4);
                if (piVar11 < *(int **)((int)pvStack_28c + 8)) {
                  *(int **)((int)pvStack_28c + 4) = piVar11 + 1;
                  if (piVar11 != (int *)0x0) {
                    *piVar11 = (int)piVar10;
                    (**(code **)*piVar10)();
                  }
                }
                else {
                  FUN_00c65ad0(pvStack_28c,piVar11,(int *)&stack0xfffffd38);
                }
                if (DAT_01184da0 != DAT_010f4ccc) {
                  fVar14 = FUN_004faa60(&iStack_2c0);
                  fStack_220 = DAT_01184d9c;
                  fStack_224 = (float)((float10)_DAT_01184d94 +
                                      ((float10)_DAT_01184d98 - (float10)_DAT_01184d94) * fVar14);
                  pvVar9 = (void *)FUN_004e4520(0x28,4,0,"Renderer/ParticleJetRateFixupLOD",0);
                  if (pvVar9 == (void *)0x0) {
                    piVar11 = (int *)0x0;
                  }
                  else {
                    piVar11 = (int *)FUN_006ddb10(pvVar9,&fStack_224,_DAT_011ed590);
                    if (piVar11 != (int *)0x0) {
                      (**(code **)*piVar11)();
                    }
                  }
                  fVar14 = FUN_00beced0(this,&fStack_1ec,iStack_2c4);
                  FUN_009de980(piVar11,(float)fVar14);
                  (**(code **)(*piVar10 + 0x80))(piVar11,&DAT_00ff8034);
                  FUN_006dcc00(piVar10 + 0x84);
                  FUN_006fa9f0((int)piVar10);
                  if (piVar11 != (int *)0x0) {
                    (**(code **)(*piVar11 + 4))();
                  }
                }
                iVar13 = iStack_2c4;
                if (piVar10 != (int *)0x0) {
                  (**(code **)(*piVar10 + 4))();
                }
              }
              uStack_29c = uStack_29c + 1;
              if ((uint)lStack_234 <= uStack_29c) break;
              fVar22 = (float)auStack_2bc._0_4_;
              fVar23 = (float)auStack_2bc._4_4_;
              fVar24 = local_2b4;
              fVar25 = fStack_2b0;
            }
          }
          pfVar7 = pfStack_2a0 + 6;
          pfVar27 = pfStack_2a0 + 5;
          pfStack_2a0 = pfVar7;
        } while (pfVar27 != pfStack_2a4);
      }
      pfStack_2a4 = pfStack_270;
      if (pfStack_274 != pfStack_270) {
        fStack_1e8 = 0.0;
        fStack_1ec = DAT_00f998f8;
        fStack_1e4 = 0.0;
        fStack_1e0 = 0.0;
        auVar3._4_8_ = 0;
        auVar3._0_4_ = DAT_00f998f8;
        auVar2._8_8_ = 0;
        auVar2._0_8_ = SUB128(auVar3 << 0x40,4);
        _auStack_2bc = auVar2 << 0x20;
        fStack_1dc = 0.0;
        fStack_1d8 = DAT_00f998f8;
        fStack_1d4 = 0.0;
        fStack_1d0 = 0.0;
        fStack_1fc = 0.0;
        fStack_1f8 = 0.0;
        fStack_1f4 = DAT_00f998f8;
        fStack_1f0 = 0.0;
        pfVar7 = pfStack_274;
        do {
          if ((_DAT_011ed5f0 & 4) == 0) {
            _DAT_011ed5f0 = _DAT_011ed5f0 | 4;
            uVar6 = FUN_007d0020((wint_t *)L"ep8RoofDripsPost");
            _DAT_011ed5c0 = FUN_007cfea0(uVar6);
            _DAT_011ed5c4 = 0;
            _DAT_011ed5c8 = 0x1661233;
            _DAT_011ed5cc = 1;
          }
          pvVar9 = (void *)FUN_004e4520(0x2d0,0x10,0,"LotRenderer/RoofRenderer/AddWaterDripsForRoof"
                                        ,0);
          if (pvVar9 == (void *)0x0) {
            piVar10 = (int *)0x0;
          }
          else {
            piVar10 = RenderComponent_InitializeSceneModel(pvVar9,0,0);
          }
          piStack_290 = piVar10;
          if (piVar10 != (int *)0x0) {
            (**(code **)*piVar10)();
          }
          FUN_006f46f0(piVar10,(undefined4 *)&DAT_011ed5c0,0,0,0);
          pfVar27 = (float *)0x40000080;
          (**(code **)(*piVar10 + 0x34))(0x7ffff080);
          (**(code **)(*piVar10 + 0x4c))
                    (*(undefined4 *)(*(int *)((int)this + 0x28) + 0x10),
                     *(undefined4 *)(*(int *)((int)this + 0x28) + 0x14));
          (**(code **)(*piVar10 + 0x50))((int)puVar29 + 1);
          pvVar9 = (void *)(*(code *)**(undefined4 **)(*(int *)((int)this + 0x28) + 8))
                                     ((int)puVar28 + 1);
          FUN_006e82e0(pvStack_2ac,piVar10,pvVar9);
          iVar13 = *(int *)((int)this + 0x28);
          fVar22 = *pfVar27;
          fVar23 = pfVar27[1];
          fVar24 = pfVar27[2];
          fStack_1d4 = fVar24 * *(float *)(iVar13 + 0x210) +
                       fVar22 * *(float *)(iVar13 + 0x1f0) + *(float *)(iVar13 + 0x220) +
                       fVar23 * *(float *)(iVar13 + 0x200);
          fStack_1d0 = fVar24 * *(float *)(iVar13 + 0x214) +
                       fVar22 * *(float *)(iVar13 + 500) + *(float *)(iVar13 + 0x224) +
                       fVar23 * *(float *)(iVar13 + 0x204);
          fStack_cc = fVar24 * *(float *)(iVar13 + 0x218) +
                      fVar22 * *(float *)(iVar13 + 0x1f8) + *(float *)(iVar13 + 0x228) +
                      fVar23 * *(float *)(iVar13 + 0x208);
          fStack_104 = fStack_204;
          fStack_100 = fStack_200;
          fStack_fc = fStack_1fc;
          fStack_f8 = fStack_1f8;
          fStack_f4 = fStack_1f4;
          fStack_f0 = fStack_1f0;
          fStack_ec = fStack_1ec;
          fStack_e8 = fStack_1e8;
          auStack_1cc._4_4_ = DAT_00f998f8;
          auStack_1cc._0_4_ = fStack_cc;
          fStack_e4 = fStack_214;
          fStack_e0 = fStack_210;
          fStack_dc = fStack_20c;
          fStack_d8 = fStack_208;
          fStack_c8 = DAT_00f998f8;
          fStack_d4 = fStack_1d4;
          fStack_d0 = fStack_1d0;
          (**(code **)(*piVar10 + 0x20))(&fStack_104);
          piVar11 = *(int **)((int)pvStack_28c + 4);
          if (piVar11 < *(int **)((int)pvStack_28c + 8)) {
            *(int **)((int)pvStack_28c + 4) = piVar11 + 1;
            if (piVar11 != (int *)0x0) {
              *piVar11 = (int)piVar10;
              (**(code **)*piVar10)();
            }
          }
          else {
            FUN_00c65ad0(pvStack_28c,piVar11,(int *)&piStack_290);
            piVar10 = piStack_290;
          }
          if (DAT_01184da0 != DAT_010f4ccc) {
            fVar14 = FUN_004faa60(&iStack_2c0);
            fStack_248 = DAT_01184d9c;
            local_24c = (char *)(float)((float10)_DAT_01184d94 +
                                       ((float10)_DAT_01184d98 - (float10)_DAT_01184d94) * fVar14);
            pvVar9 = (void *)FUN_004e4520(0x28,4,0,"Renderer/ParticleJetRateFixupLOD",0);
            if (pvVar9 == (void *)0x0) {
              piVar11 = (int *)0x0;
            }
            else {
              piVar11 = (int *)FUN_006ddb10(pvVar9,&local_24c,_DAT_011ed590);
              if (piVar11 != (int *)0x0) {
                (**(code **)*piVar11)();
              }
            }
            fVar14 = FUN_00beced0(this,pfVar7,iStack_2c4);
            FUN_009de980(piVar11,(float)fVar14);
            (**(code **)(*piVar10 + 0x80))(piVar11,&DAT_00ff8034);
            FUN_006dcc00(piVar10 + 0x84);
            FUN_006fa9f0((int)piVar10);
            if (piVar11 != (int *)0x0) {
              (**(code **)(*piVar11 + 4))();
            }
          }
          if (piVar10 != (int *)0x0) {
            (**(code **)(*piVar10 + 4))();
          }
          pfVar7 = pfVar7 + 4;
        } while (pfVar7 != pfStack_2a4);
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

