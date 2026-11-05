/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 static Road production: physical ECX owner saved at entry, thirteen stack words, RET0x34;
   stored prototype/void return remain inferred, not a Boolean success contract. Descriptor lookup
   selects source+0x30/+0x34 by byte; null source omits output. Supplied quad bounds feed 680D90;
   UInt16 source triples select vertices through67DF10, descriptor+0x20 translation and B76940
   classification. Byte-zero route calls B76AC0 for height/normal; otherwise normal(0,1,0,0). Four
   input SIMD vectors use DIVPS by first-two squared-component sum, not unit-length normalization.
   Cross-product RSQRTPS refinement and absolute selected component compare against binary32(0.1);
   threshold-greater branch skips. Zero classification OR fast-paths, nonzero AND rejects, mixed
   invokes B7CCF0 on0x40-byte records; require>=3 polygon records. RawDWORD0xFFFFFFFF sentinel is
   not floating NaN policy. UInt16 hash translation/B78710 vertex child and ordered
   first/previous/current fan yield word indices; nonempty triplets submit through6D48C0. Temporary
   cleanup visible; lower query/height/classifier/clipper, vertex/UV packing and
   render-service/lifetime contracts unexpanded. Descriptive analyst name, not recovered symbol.
   Complete799Listing/3140original bytes, no body gap; preserve ID/ABI/types/body/flow/bytes.
   Current fixed ribbons/junctions/color/lifts/sampling are separate proxy policy. */

void __thiscall
RoadNetwork_DrawQuadClippedMeshTriangles
          (void *this,void *param_1,char param_2,int param_3,undefined1 (*param_4) [16],
          float *param_5,float *param_6,undefined1 (*param_7) [16],undefined1 (*param_8) [16],
          undefined1 (*param_9) [16],undefined1 (*param_10) [16],char param_11,char param_12,
          float *param_13)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined1 auVar4 [12];
  ushort uVar5;
  undefined4 uVar6;
  ushort **ppuVar7;
  undefined4 *puVar8;
  uint uVar9;
  uint uVar10;
  byte *pbVar11;
  float *pfVar12;
  undefined4 *puVar13;
  undefined2 *puVar14;
  ushort *puVar15;
  int iVar16;
  float fVar17;
  float fVar20;
  undefined1 auVar18 [16];
  float fVar21;
  undefined1 auVar19 [16];
  undefined1 auVar22 [16];
  float fVar27;
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar28 [16];
  uint local_32c;
  float local_328;
  undefined4 *local_324;
  undefined4 *local_320;
  undefined2 *local_31c;
  undefined2 *local_318;
  char *local_314;
  uint local_310;
  int local_30c;
  uint local_308;
  void *local_304;
  undefined1 local_300 [4];
  undefined4 *local_2fc;
  uint local_2f8;
  undefined4 local_2f4;
  undefined4 local_2f0;
  undefined4 local_2ec;
  undefined4 local_2e8;
  char *local_2e4;
  ushort local_2e0 [3];
  undefined2 local_2da;
  float local_2d8;
  void *local_2d4;
  undefined4 *local_2d0;
  undefined4 *local_2cc;
  char *local_2c8;
  void *local_2c4;
  int local_2c0;
  undefined4 local_2bc;
  char *local_2b8;
  void *local_2b4;
  int local_2b0;
  undefined4 local_2ac;
  char *local_2a8;
  float local_2a4;
  float local_2a0;
  float local_29c;
  float local_298;
  uint local_294;
  void *local_290;
  uint local_28c;
  uint local_288;
  uint local_284;
  undefined1 local_280 [16];
  undefined1 local_270 [16];
  ushort *local_260;
  int *local_25c;
  ushort *local_258;
  undefined4 *local_254;
  ushort *local_250;
  undefined4 *local_24c;
  ushort *local_248;
  undefined4 *local_244;
  ushort *local_240;
  int *local_23c;
  ushort *local_238;
  undefined4 *local_234;
  ushort *local_230;
  undefined4 *local_22c;
  ushort *local_228;
  undefined4 *local_224;
  undefined4 local_220;
  undefined4 uStack_21c;
  undefined4 uStack_218;
  undefined4 uStack_214;
  undefined1 local_210 [8];
  float fStack_208;
  float fStack_204;
  undefined4 local_200;
  undefined4 uStack_1fc;
  undefined4 uStack_1f8;
  undefined4 uStack_1f4;
  undefined1 local_1f0 [8];
  float fStack_1e8;
  float fStack_1e4;
  undefined1 local_1e0 [16];
  undefined1 local_1d0 [16];
  undefined1 local_1c0 [16];
  undefined1 local_1b0 [16];
  ushort *local_198 [3];
  ushort *local_18c [3];
  float local_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float local_170;
  undefined4 local_160;
  float fStack_15c;
  undefined4 uStack_158;
  undefined4 uStack_154;
  undefined1 local_150 [16];
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  undefined1 local_130 [16];
  float local_120;
  undefined1 local_110 [16];
  float local_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  undefined4 local_e0;
  float fStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float local_c0 [4];
  byte local_b0 [32];
  float local_90;
  float fStack_8c;
  float fStack_88;
  byte local_70;
  float local_50;
  float fStack_4c;
  float fStack_48;
  byte local_30;
  
  auVar18 = *param_7;
  fVar17 = auVar18._0_4_ * auVar18._0_4_;
  fVar20 = auVar18._4_4_ * auVar18._4_4_;
  auVar26._0_4_ = fVar20 + fVar17;
  auVar26._4_4_ = fVar20 + fVar17;
  auVar26._8_4_ = fVar20 + fVar17;
  auVar26._12_4_ = fVar20 + fVar17;
  local_1e0 = divps(auVar18,auVar26);
  auVar18 = *param_8;
  fVar17 = auVar18._0_4_ * auVar18._0_4_;
  fVar20 = auVar18._4_4_ * auVar18._4_4_;
  auVar23._0_4_ = fVar20 + fVar17;
  auVar23._4_4_ = fVar20 + fVar17;
  auVar23._8_4_ = fVar20 + fVar17;
  auVar23._12_4_ = fVar20 + fVar17;
  local_1c0 = divps(auVar18,auVar23);
  auVar18 = *param_9;
  fVar17 = auVar18._0_4_ * auVar18._0_4_;
  fVar20 = auVar18._4_4_ * auVar18._4_4_;
  auVar24._0_4_ = fVar20 + fVar17;
  auVar24._4_4_ = fVar20 + fVar17;
  auVar24._8_4_ = fVar20 + fVar17;
  auVar24._12_4_ = fVar20 + fVar17;
  local_1d0 = divps(auVar18,auVar24);
  auVar18 = *param_10;
  fVar17 = auVar18._0_4_ * auVar18._0_4_;
  fVar20 = auVar18._4_4_ * auVar18._4_4_;
  auVar25._0_4_ = fVar20 + fVar17;
  auVar25._4_4_ = fVar20 + fVar17;
  auVar25._8_4_ = fVar20 + fVar17;
  auVar25._12_4_ = fVar20 + fVar17;
  local_2b8 = "RoadNetwork/Quad";
  local_314 = "RoadNetwork/Quad";
  local_2f0 = 0x3f800000;
  local_1b0 = divps(auVar18,auVar25);
  local_2c4 = (void *)0x0;
  local_2c0 = 0;
  local_2bc = 0;
  local_320 = (undefined4 *)0x0;
  local_31c = (undefined2 *)0x0;
  local_318 = (undefined2 *)0x0;
  local_2ec = 0x40000000;
  local_2e4 = "RoadNetwork/IndexTranslator";
  local_2f8 = 1;
  local_2fc = &DAT_0114d900;
  local_2f4 = 0;
  local_2e8 = 0;
  local_304 = this;
  local_30c = FUN_00c28910(*(void **)((int)this + 0xc),param_3);
  puVar8 = (undefined4 *)(local_30c + 0x34);
  if (param_2 == '\0') {
    puVar8 = (undefined4 *)(local_30c + 0x30);
  }
  local_290 = (void *)*puVar8;
  if (local_290 == (void *)0x0) {
    FUN_00ae0410((int)local_2fc,local_2f8);
    local_2f4 = 0;
    puVar8 = local_2fc;
    if (local_2f8 < 2) goto LAB_00b7de2a;
  }
  else {
    auVar18 = maxps(*param_4,param_4[1]);
    auVar26 = maxps(param_4[2],param_4[3]);
    local_280 = maxps(auVar18,auVar26);
    auVar18 = minps(*param_4,param_4[1]);
    auVar26 = minps(param_4[2],param_4[3]);
    _local_210 = minps(auVar18,auVar26);
    local_270._0_4_ = local_280._0_4_;
    local_1f0._0_4_ = local_210._0_4_;
    local_29c = -0.0 - *(float *)(local_30c + 0x10);
    local_298 = -0.0 - *(float *)(local_30c + 0x14);
    local_2a4 = local_29c + (float)local_1f0._0_4_;
    local_2a0 = local_298 + (float)local_210._4_4_;
    local_29c = local_29c + (float)local_270._0_4_;
    local_298 = local_298 + (float)local_280._4_4_;
    local_270 = local_280;
    _local_1f0 = _local_210;
    FUN_00680d90(local_290,&local_2a4,(int *)&local_2c4);
    local_308 = 0;
    local_288 = local_2c0 - (int)local_2c4 >> 1;
    puVar14 = (undefined2 *)0x0;
    if (local_288 != 0) {
      local_160 = 0x3f800000;
      fStack_15c = 1.0;
      uStack_158 = 0x3f800000;
      uStack_154 = 0x3f800000;
      local_e0 = 0x3f000000;
      fStack_dc = 0.5;
      uStack_d8 = 0x3f000000;
      uStack_d4 = 0x3f000000;
      local_180 = -1.0;
      fStack_17c = -1.0;
      fStack_178 = -1.0;
      fStack_174 = -1.0;
      local_100 = 0.1;
      uStack_fc = 0x3dcccccd;
      uStack_f8 = 0x3dcccccd;
      uStack_f4 = 0x3dcccccd;
      do {
        pfVar12 = &local_d0;
        iVar16 = local_308 * 2;
        local_32c = 3;
        do {
          uVar5 = *(ushort *)(iVar16 + (int)local_2c4);
          pfVar12[9] = (float)(uint)uVar5;
          FUN_0067df10(local_290,&local_140,uVar5);
          fVar17 = *(float *)(local_30c + 0x24);
          fVar20 = *(float *)(local_30c + 0x28);
          fVar27 = *(float *)(local_30c + 0x2c);
          *pfVar12 = local_140 + *(float *)(local_30c + 0x20);
          pfVar12[1] = fStack_13c + fVar17;
          pfVar12[2] = fStack_138 + fVar20;
          pfVar12[3] = fStack_134 + fVar27;
          local_210._0_4_ = *pfVar12;
          local_210._4_4_ = pfVar12[2];
          fStack_208 = (float)local_210._0_4_;
          fStack_204 = (float)local_210._0_4_;
          FUN_00b76940((float *)param_4,(float *)local_210,(char *)(pfVar12 + 8));
          local_2d8 = 0.0;
          if ((param_2 == '\0') &&
             (uVar6 = FUN_00b76ac0((float *)param_4,param_5,(float *)local_210,&local_2d8,&local_f0)
             , (char)uVar6 != '\0')) {
            auVar4 = *(undefined1 (*) [12])(pfVar12 + 0xc);
            local_1f0 = auVar4._0_8_;
            fStack_1e8 = local_2d8;
            fStack_1e4 = pfVar12[0xf];
            auVar18 = _local_1f0;
            local_1f0._0_4_ = auVar4._0_4_;
            local_1f0._4_4_ = auVar4._4_4_;
            pfVar12[0xc] = (float)local_1f0._0_4_;
            pfVar12[0xd] = (float)local_1f0._4_4_;
            pfVar12[0xe] = local_2d8;
            pfVar12[0xf] = pfVar12[0xf];
            fVar17 = local_f0;
            fVar20 = fStack_ec;
            fVar27 = fStack_e8;
            fVar21 = fStack_e4;
            _local_1f0 = auVar18;
          }
          else {
            uStack_214 = 0;
            uStack_218 = 0;
            uStack_21c = 0x3f800000;
            local_220 = 0;
            fVar17 = 0.0;
            fVar20 = 1.0;
            fVar27 = 0.0;
            fVar21 = 0.0;
          }
          pfVar12[4] = fVar17;
          pfVar12[5] = fVar20;
          pfVar12[6] = fVar27;
          pfVar12[7] = fVar21;
          iVar16 = iVar16 + 2;
          pfVar12 = pfVar12 + 0x10;
          local_32c = local_32c - 1;
        } while (local_32c != 0);
        fVar17 = (fStack_88 - fStack_c8) * (fStack_4c - fStack_cc) -
                 (fStack_8c - fStack_cc) * (fStack_48 - fStack_c8);
        fVar20 = (local_90 - local_d0) * (fStack_48 - fStack_c8) -
                 (fStack_88 - fStack_c8) * (local_50 - local_d0);
        fVar27 = (fStack_8c - fStack_cc) * (local_50 - local_d0) -
                 (local_90 - local_d0) * (fStack_4c - fStack_cc);
        fVar17 = fVar17 * fVar17;
        auVar28._4_4_ = fVar17;
        auVar28._0_4_ = fVar20 * fVar20;
        auVar28._8_4_ = fVar17;
        auVar28._12_4_ = fVar17;
        auVar18._0_4_ = fVar27 * fVar27 + fVar20 * fVar20 + fVar17;
        auVar18._4_4_ = auVar18._0_4_;
        auVar18._8_4_ = auVar18._0_4_;
        auVar18._12_4_ = auVar18._0_4_;
        auVar26 = rsqrtps(auVar28,auVar18);
        fVar17 = auVar26._4_4_;
        fVar17 = (fStack_15c - fVar17 * fVar17 * auVar18._0_4_) * fVar17 * fStack_dc + fVar17;
        auVar19._4_4_ =
             ((fStack_15c - fVar17 * fVar17 * auVar18._0_4_) * fVar17 * fStack_dc + fVar17) * fVar20
        ;
        auVar19._0_4_ = auVar19._4_4_;
        auVar19._8_4_ = auVar19._4_4_;
        auVar19._12_4_ = auVar19._4_4_;
        auVar22._0_4_ = auVar19._4_4_ * local_180;
        auVar22._4_4_ = auVar19._4_4_ * fStack_17c;
        auVar22._8_4_ = auVar19._4_4_ * fStack_178;
        auVar22._12_4_ = auVar19._4_4_ * fStack_174;
        auVar18 = maxps(auVar22,auVar19);
        local_120 = local_100;
        local_170 = auVar18._0_4_;
        local_32c = 0;
        if (local_100 <= local_170) {
          if ((local_30 == 0 && local_70 == 0) && local_b0[0] == 0) {
            pfVar12 = local_c0;
            local_328 = 4.2039e-45;
            local_32c = 0;
            puVar8 = local_2fc;
            do {
              uVar5 = *(ushort *)(pfVar12 + 5);
              uVar10 = (uint)uVar5 % local_2f8;
              for (puVar15 = (ushort *)puVar8[uVar10]; puVar15 != (ushort *)0x0;
                  puVar15 = *(ushort **)(puVar15 + 2)) {
                if (uVar5 == *puVar15) {
                  local_228 = puVar15;
                  local_224 = puVar8 + uVar10;
                  ppuVar7 = &local_228;
                  goto LAB_00b7d75b;
                }
              }
              local_24c = puVar8 + local_2f8;
              local_250 = (ushort *)puVar8[local_2f8];
              ppuVar7 = &local_250;
LAB_00b7d75b:
              piVar1 = puVar8 + local_2f8;
              if (*ppuVar7 == (ushort *)puVar8[local_2f8]) {
                for (puVar15 = (ushort *)puVar8[uVar10]; puVar15 != (ushort *)0x0;
                    puVar15 = *(ushort **)(puVar15 + 2)) {
                  if (uVar5 == *puVar15) {
                    local_230 = puVar15;
                    local_22c = puVar8 + uVar10;
                    ppuVar7 = &local_230;
                    goto LAB_00b7d7b6;
                  }
                }
                local_260 = (ushort *)*piVar1;
                local_25c = piVar1;
                ppuVar7 = &local_260;
LAB_00b7d7b6:
                puVar15 = *ppuVar7;
                if (puVar15 == (ushort *)*piVar1) {
                  local_294 = local_294 & 0xffffff00;
                  local_2da = 0;
                  local_2e0[2] = uVar5;
                  FUN_00d21580(local_300,local_198,local_2e0 + 2);
                  puVar15 = local_198[0];
                }
                uStack_1f4 = 0;
                uStack_1f8 = 0;
                uStack_1fc = 0x3f800000;
                local_200 = 0;
                local_150._0_4_ = *pfVar12 - 0.0;
                local_150._4_4_ = pfVar12[1] - 1.0;
                local_150._8_4_ = pfVar12[2] - 0.0;
                local_150._12_4_ = pfVar12[3] - 0.0;
                local_32c = FUN_00b78710(local_30c,param_1,pfVar12 + -4,(float *)local_150,
                                         (undefined1 (*) [16])(pfVar12 + 8),param_6,&local_1e0,
                                         (float *)local_1c0,(float *)local_1d0,(float *)local_1b0,
                                         param_11,param_12,param_13);
                puVar15[1] = (ushort)local_32c;
                local_32c = local_32c & 0xffff;
                puVar8 = local_2fc;
              }
              else {
                local_32c = (uint)(*ppuVar7)[1];
              }
              if (local_31c < local_318) {
                puVar14 = local_31c + 1;
                if (local_31c != (undefined2 *)0x0) {
                  *local_31c = (short)local_32c;
                  puVar8 = local_2fc;
                }
              }
              else {
                FUN_005d2730(&local_320,local_31c,(undefined2 *)&local_32c);
                puVar8 = local_2fc;
                puVar14 = local_31c;
              }
              local_31c = puVar14;
              pfVar12 = pfVar12 + 0x10;
              local_328 = (float)((int)local_328 + -1);
            } while (local_328 != 0.0);
            local_328 = 0.0;
          }
          else if ((local_b0[0] & local_30 & local_70) == 0) {
            local_2d4 = (void *)0x0;
            local_2d0 = (undefined4 *)0x0;
            local_2cc = (undefined4 *)0x0;
            local_2c8 = "RoadNetwork/InputVerts";
            local_2b4 = (void *)0x0;
            local_2b0 = 0;
            local_2ac = 0;
            local_2a8 = "RoadNetwork/OutputVerts";
            pbVar11 = local_b0;
            iVar16 = 3;
            local_32c = 0;
            do {
              if (local_2d0 < local_2cc) {
                puVar8 = local_2d0 + 0x10;
                if (local_2d0 != (undefined4 *)0x0) {
                  uVar6 = *(undefined4 *)(pbVar11 + -0x1c);
                  uVar2 = *(undefined4 *)(pbVar11 + -0x18);
                  uVar3 = *(undefined4 *)(pbVar11 + -0x14);
                  *local_2d0 = *(undefined4 *)(pbVar11 + -0x20);
                  local_2d0[1] = uVar6;
                  local_2d0[2] = uVar2;
                  local_2d0[3] = uVar3;
                  uVar6 = *(undefined4 *)(pbVar11 + -0xc);
                  uVar2 = *(undefined4 *)(pbVar11 + -8);
                  uVar3 = *(undefined4 *)(pbVar11 + -4);
                  local_2d0[4] = *(undefined4 *)(pbVar11 + -0x10);
                  local_2d0[5] = uVar6;
                  local_2d0[6] = uVar2;
                  local_2d0[7] = uVar3;
                  *(byte *)(local_2d0 + 8) = *pbVar11;
                  local_2d0[9] = *(undefined4 *)(pbVar11 + 4);
                  uVar6 = *(undefined4 *)(pbVar11 + 0x14);
                  uVar2 = *(undefined4 *)(pbVar11 + 0x18);
                  uVar3 = *(undefined4 *)(pbVar11 + 0x1c);
                  local_2d0[0xc] = *(undefined4 *)(pbVar11 + 0x10);
                  local_2d0[0xd] = uVar6;
                  local_2d0[0xe] = uVar2;
                  local_2d0[0xf] = uVar3;
                }
              }
              else {
                FUN_00b73a90(&local_2d4,local_2d0,(undefined4 *)(pbVar11 + -0x20));
                puVar8 = local_2d0;
              }
              local_2d0 = puVar8;
              pbVar11 = pbVar11 + 0x40;
              iVar16 = iVar16 + -1;
            } while (iVar16 != 0);
            FUN_00b7ccf0((float *)param_4,(int *)&local_2d4,(int *)&local_2b4);
            uVar10 = local_2b0 - (int)local_2b4 >> 6;
            local_32c = uVar10;
            if (2 < uVar10) {
              if (uVar10 == 0) {
                local_324 = (undefined4 *)0x0;
              }
              else {
                local_324 = (undefined4 *)FUN_004e4500(uVar10 * 2,"RoadNetwork/PolyIndices",0);
                puVar8 = local_324;
                for (uVar9 = uVar10 >> 1; uVar9 != 0; uVar9 = uVar9 - 1) {
                  *puVar8 = 0;
                  puVar8 = puVar8 + 1;
                }
                for (uVar9 = (uint)((uVar10 & 1) != 0); uVar9 != 0; uVar9 = uVar9 - 1) {
                  *(undefined2 *)puVar8 = 0;
                  puVar8 = (undefined4 *)((int)puVar8 + 2);
                }
              }
              local_310 = 0;
              if (uVar10 != 0) {
                pfVar12 = (float *)((int)local_2b4 + 0x10);
                do {
                  local_328 = pfVar12[5];
                  if (local_328 == -NAN) {
                    local_270 = ZEXT416(0x3f800000) << 0x20;
                    local_110._0_4_ = *pfVar12 - 0.0;
                    local_110._4_4_ = pfVar12[1] - 1.0;
                    local_110._8_4_ = pfVar12[2] - 0.0;
                    local_110._12_4_ = pfVar12[3] - 0.0;
                    iVar16 = FUN_00b78710(local_30c,param_1,pfVar12 + -4,(float *)local_110,
                                          (undefined1 (*) [16])(pfVar12 + 8),param_6,&local_1e0,
                                          (float *)local_1c0,(float *)local_1d0,(float *)local_1b0,
                                          param_11,param_12,param_13);
                    uVar5 = (ushort)iVar16;
LAB_00b7dc8f:
                    *(ushort *)((int)local_324 + local_310 * 2) = uVar5;
                  }
                  else {
                    local_28c = ((uint)local_328 & 0xffff) % local_2f8;
                    uVar5 = SUB42(local_328,0);
                    for (puVar15 = (ushort *)local_2fc[local_28c]; puVar15 != (ushort *)0x0;
                        puVar15 = *(ushort **)(puVar15 + 2)) {
                      if (uVar5 == *puVar15) {
                        local_258 = puVar15;
                        local_254 = local_2fc + local_28c;
                        ppuVar7 = &local_258;
                        goto LAB_00b7da8b;
                      }
                    }
                    local_234 = local_2fc + local_2f8;
                    local_238 = (ushort *)local_2fc[local_2f8];
                    ppuVar7 = &local_238;
LAB_00b7da8b:
                    piVar1 = local_2fc + local_2f8;
                    if (*ppuVar7 == (ushort *)local_2fc[local_2f8]) {
                      for (puVar15 = (ushort *)local_2fc[local_28c]; puVar15 != (ushort *)0x0;
                          puVar15 = *(ushort **)(puVar15 + 2)) {
                        if (uVar5 == *puVar15) {
                          local_248 = puVar15;
                          local_244 = local_2fc + local_28c;
                          ppuVar7 = &local_248;
                          goto LAB_00b7daf8;
                        }
                      }
                      local_240 = (ushort *)*piVar1;
                      local_23c = piVar1;
                      ppuVar7 = &local_240;
LAB_00b7daf8:
                      puVar15 = *ppuVar7;
                      if (*ppuVar7 == (ushort *)*piVar1) {
                        local_284 = local_284 & 0xffffff00;
                        local_2e0[1] = 0;
                        local_2e0[0] = uVar5;
                        FUN_00d21580(local_300,local_18c,local_2e0);
                        puVar15 = local_18c[0];
                      }
                      local_280 = ZEXT416(0x3f800000) << 0x20;
                      local_130._0_4_ = *pfVar12 - 0.0;
                      local_130._4_4_ = pfVar12[1] - 1.0;
                      local_130._8_4_ = pfVar12[2] - 0.0;
                      local_130._12_4_ = pfVar12[3] - 0.0;
                      iVar16 = FUN_00b78710(local_30c,param_1,pfVar12 + -4,(float *)local_130,
                                            (undefined1 (*) [16])(pfVar12 + 8),param_6,&local_1e0,
                                            (float *)local_1c0,(float *)local_1d0,(float *)local_1b0
                                            ,param_11,param_12,param_13);
                      uVar5 = (ushort)iVar16;
                      puVar15[1] = uVar5;
                      goto LAB_00b7dc8f;
                    }
                    *(ushort *)((int)local_324 + local_310 * 2) = (*ppuVar7)[1];
                  }
                  local_310 = local_310 + 1;
                  pfVar12 = pfVar12 + 0x10;
                } while (local_310 < local_32c);
              }
              puVar8 = local_324;
              if (2 < local_32c) {
                iVar16 = local_32c - 2;
                puVar13 = local_324 + 1;
                do {
                  if (local_31c < local_318) {
                    puVar14 = local_31c + 1;
                    if (local_31c != (undefined2 *)0x0) {
                      *local_31c = *(undefined2 *)puVar8;
                    }
                  }
                  else {
                    FUN_005d2730(&local_320,local_31c,(undefined2 *)puVar8);
                    puVar14 = local_31c;
                  }
                  local_31c = puVar14;
                  if (local_31c < local_318) {
                    puVar14 = local_31c + 1;
                    if (local_31c != (undefined2 *)0x0) {
                      *local_31c = *(undefined2 *)((int)puVar13 + -2);
                    }
                  }
                  else {
                    FUN_005d2730(&local_320,local_31c,(undefined2 *)((int)puVar13 + -2));
                    puVar14 = local_31c;
                  }
                  local_31c = puVar14;
                  if (local_31c < local_318) {
                    puVar14 = local_31c + 1;
                    if (local_31c != (undefined2 *)0x0) {
                      *local_31c = *(undefined2 *)puVar13;
                    }
                  }
                  else {
                    FUN_005d2730(&local_320,local_31c,(undefined2 *)puVar13);
                    puVar14 = local_31c;
                  }
                  local_31c = puVar14;
                  puVar13 = (undefined4 *)((int)puVar13 + 2);
                  iVar16 = iVar16 + -1;
                } while (iVar16 != 0);
              }
              if (puVar8 != (undefined4 *)0x0) {
                Memory_FreeIfNonNull(puVar8);
              }
            }
            if (local_2b4 != (void *)0x0) {
              Memory_FreeIfNonNull(local_2b4);
            }
            if (local_2d4 != (void *)0x0) {
              Memory_FreeIfNonNull(local_2d4);
            }
          }
        }
        local_308 = local_308 + 3;
        puVar14 = local_31c;
      } while (local_308 < local_288);
    }
    iVar16 = (int)puVar14 - (int)local_320 >> 1;
    if (iVar16 != 0) {
      puVar15 = (ushort *)((int)local_320 + 2);
      iVar16 = (iVar16 - 1U) / 3 + 1;
      do {
        FUN_006d48c0(param_1,(uint)puVar15[-1],(uint)*puVar15,(uint)puVar15[1]);
        puVar15 = puVar15 + 3;
        iVar16 = iVar16 + -1;
      } while (iVar16 != 0);
    }
    FUN_00ae0410((int)local_2fc,local_2f8);
    local_2f4 = 0;
    if (1 < local_2f8) {
      Memory_FreeIfNonNull(local_2fc);
    }
    puVar8 = local_320;
    if (local_320 == (undefined4 *)0x0) goto LAB_00b7de2a;
  }
  Memory_FreeIfNonNull(puVar8);
LAB_00b7de2a:
  if (local_2c4 != (void *)0x0) {
    Memory_FreeIfNonNull(local_2c4);
  }
  return;
}

