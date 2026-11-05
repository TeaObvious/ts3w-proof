/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67: updates listener placements from camera state. In the ordinary branch, listener
   0 uses eye plus forward-curve metres and target/reference Y plus height-curve metres; listener 1
   receives the camera vector. Other world and camera-mode branches exist and were not fully
   compared. Raw instruction proof:
   /home/lego/WorldTool/build/pr194-main-20261011/native-research/audio-native-corrected.txt.
   Reference TS3W.exe SHA256 694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   Static PC1.67 original instruction comparison; 2862 complete owned bytes/656 actual Listing
   instructions. No runtime execution.
   Additional bounded audio-view comparison:0086CF40 is an interior PUSH1, not a function entry;
   actual CALL0086CF5C invokes0086C530. This full listener body invokes query13 and conditionally
   query2 with separate point/output buffers and AL-gated copies, using00AB73B0/00AB7430 coordinate
   conversions. Query13 expands to mask3 and query2 to mask4 through00686F10. This does not
   establish the current stepped room search, cache generation, file fallback, roof visibility
   cutoff or0.1 camera-side room fallback. */

void __thiscall AudioListener_UpdateFromCamera(void *this,int *param_1)

{
  undefined1 auVar1 [16];
  undefined4 uVar2;
  undefined4 uVar3;
  char cVar4;
  int iVar5;
  float *pfVar6;
  int iVar7;
  undefined4 uVar8;
  undefined1 (*pauVar9) [16];
  uint uVar10;
  int iVar11;
  int extraout_ECX;
  int iVar12;
  bool bVar13;
  float10 fVar14;
  float fVar15;
  float fVar18;
  float fVar19;
  float fVar20;
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  float fVar21;
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
  undefined1 in_XMM5 [16];
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  short asStack_2a8 [2];
  float fStack_284;
  float fStack_280;
  float fStack_27c;
  void *local_278;
  float fStack_274;
  undefined1 local_270 [8];
  float fStack_268;
  float fStack_264;
  float afStack_260 [4];
  float local_250;
  float fStack_24c;
  float fStack_248;
  float fStack_244;
  float local_240;
  float fStack_23c;
  undefined4 uStack_238;
  undefined4 uStack_234;
  float local_230;
  float fStack_22c;
  float fStack_228;
  float fStack_224;
  float local_220;
  float fStack_21c;
  float fStack_218;
  float fStack_214;
  float fStack_210;
  undefined4 uStack_20c;
  float local_204;
  float local_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float local_1f0;
  float fStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float local_1e0;
  float fStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float local_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float local_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float local_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float local_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  undefined4 local_190;
  undefined4 uStack_18c;
  undefined4 uStack_188;
  undefined4 uStack_184;
  float local_178;
  float local_174;
  float local_170;
  undefined4 local_16c;
  float local_168;
  undefined4 local_164;
  float local_160;
  float local_15c;
  float local_158;
  undefined4 local_154;
  undefined4 local_150;
  undefined4 local_14c;
  float local_148;
  float local_144;
  undefined4 local_140;
  undefined4 local_13c;
  undefined4 local_138;
  undefined4 local_134;
  float local_130 [4];
  float local_120;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float local_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float local_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float local_f0 [4];
  float local_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80 [4];
  float local_70 [5];
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30 [11];
  
  iVar5 = FUN_0096a050();
  if (iVar5 == 0) {
    return;
  }
  local_220 = *(float *)(iVar5 + 0x60);
  fStack_21c = *(float *)(iVar5 + 100);
  fStack_218 = *(float *)(iVar5 + 0x68);
  fStack_214 = *(float *)(iVar5 + 0x6c);
  local_a0 = 0.0;
  fStack_9c = 0.0;
  fStack_98 = 0.0;
  fStack_94 = 0.0;
  local_90 = 0.0 - *(float *)(iVar5 + 0x50);
  fStack_8c = 0.0 - *(float *)(iVar5 + 0x54);
  fStack_88 = 0.0 - *(float *)(iVar5 + 0x58);
  fStack_84 = 0.0 - *(float *)(iVar5 + 0x5c);
  local_b0 = local_90 * 1000.0 + local_220;
  fStack_ac = fStack_8c * 1000.0 + fStack_21c;
  fStack_a8 = fStack_88 * 1000.0 + fStack_218;
  fStack_a4 = fStack_84 * 1000.0 + fStack_214;
  if (DAT_011edbc4 == (void *)0x0) {
    local_278 = (void *)0x0;
  }
  else {
    local_278 = (void *)FUN_00c69bb0(DAT_011edbc4,&local_220,&local_b0,local_130,local_80);
    if (local_278 != (void *)0x0) {
      iVar11 = *(int *)((int)local_278 + 0x48);
      fStack_23c = *(float *)((int)local_278 + 0x4c);
      goto LAB_0086c8e9;
    }
  }
  iVar11 = 0;
  fStack_23c = 0.0;
LAB_0086c8e9:
  if (local_278 == (void *)0x0) {
    local_70[0] = 0.0;
    local_70[1] = 0.0;
    local_70[2] = 0.0;
    local_70[3] = 1.0;
    local_70[4] = local_a0;
    fStack_5c = fStack_9c;
    fStack_58 = fStack_98;
    fStack_54 = fStack_94;
    pfVar6 = local_70;
    iVar12 = iVar11;
  }
  else {
    pfVar6 = (float *)Lot_GetAttachedWorldQuaternionTranslation(local_278,local_30);
    iVar12 = extraout_ECX;
  }
  local_110 = *pfVar6;
  fStack_10c = pfVar6[1];
  fStack_108 = pfVar6[2];
  fStack_104 = pfVar6[3];
  local_100 = pfVar6[4];
  fStack_fc = pfVar6[5];
  fStack_f8 = pfVar6[6];
  fStack_f4 = pfVar6[7];
  if (*(char *)((int)this + 0xa61) == '\0') {
    auVar23._0_4_ = *(float *)(iVar5 + 0xb0) - *(float *)this;
    auVar23._4_4_ = *(float *)(iVar5 + 0xb4) - *(float *)((int)this + 4);
    auVar23._8_4_ = *(float *)(iVar5 + 0xb8) - *(float *)((int)this + 8);
    auVar23._12_4_ = *(float *)(iVar5 + 0xbc) - *(float *)((int)this + 0xc);
    auVar33._0_4_ = *(float *)(iVar5 + 0xc0) - *(float *)((int)this + 0x10);
    auVar33._4_4_ = *(float *)(iVar5 + 0xc4) - *(float *)((int)this + 0x14);
    auVar33._8_4_ = *(float *)(iVar5 + 200) - *(float *)((int)this + 0x18);
    auVar33._12_4_ = *(float *)(iVar5 + 0xcc) - *(float *)((int)this + 0x1c);
    in_XMM5._0_4_ = *(float *)(iVar5 + 0xd0) - *(float *)((int)this + 0x20);
    in_XMM5._4_4_ = *(float *)(iVar5 + 0xd4) - *(float *)((int)this + 0x24);
    in_XMM5._8_4_ = *(float *)(iVar5 + 0xd8) - *(float *)((int)this + 0x28);
    in_XMM5._12_4_ = *(float *)(iVar5 + 0xdc) - *(float *)((int)this + 0x2c);
    fVar15 = *(float *)(iVar5 + 0xe0) - *(float *)((int)this + 0x30);
    fVar18 = *(float *)(iVar5 + 0xe4) - *(float *)((int)this + 0x34);
    fVar19 = *(float *)(iVar5 + 0xe8) - *(float *)((int)this + 0x38);
    fVar20 = *(float *)(iVar5 + 0xec) - *(float *)((int)this + 0x3c);
    auVar38._0_4_ = auVar33._0_4_ * -1.0;
    auVar38._4_4_ = auVar33._4_4_ * -1.0;
    auVar38._8_4_ = auVar33._8_4_ * -1.0;
    auVar38._12_4_ = auVar33._12_4_ * -1.0;
    auVar38 = maxps(auVar38,auVar33);
    auVar32._0_4_ = auVar23._0_4_ * -1.0;
    auVar32._4_4_ = auVar23._4_4_ * -1.0;
    auVar32._8_4_ = auVar23._8_4_ * -1.0;
    auVar32._12_4_ = auVar23._12_4_ * -1.0;
    auVar33 = maxps(auVar32,auVar23);
    auVar22._0_4_ = in_XMM5._0_4_ * -1.0;
    auVar22._4_4_ = in_XMM5._4_4_ * -1.0;
    auVar22._8_4_ = in_XMM5._8_4_ * -1.0;
    auVar22._12_4_ = in_XMM5._12_4_ * -1.0;
    auVar23 = maxps(auVar22,in_XMM5);
    auVar35._4_4_ = fVar18;
    auVar35._0_4_ = fVar15;
    auVar35._8_4_ = fVar19;
    auVar35._12_4_ = fVar20;
    auVar34._0_4_ = fVar15 * -1.0;
    auVar34._4_4_ = fVar18 * -1.0;
    auVar34._8_4_ = fVar19 * -1.0;
    auVar34._12_4_ = fVar20 * -1.0;
    auVar35 = maxps(auVar34,auVar35);
    auVar39._0_4_ =
         -(uint)(((auVar33._0_4_ <= 1.5258789e-05 && auVar38._0_4_ <= 1.5258789e-05) &&
                 auVar23._0_4_ <= 1.5258789e-05) && auVar35._0_4_ <= 1.5258789e-05);
    auVar39._4_4_ =
         -(uint)(((auVar33._4_4_ <= 1.5258789e-05 && auVar38._4_4_ <= 1.5258789e-05) &&
                 auVar23._4_4_ <= 1.5258789e-05) && auVar35._4_4_ <= 1.5258789e-05);
    auVar39._8_4_ =
         -(uint)(((auVar33._8_4_ <= 1.5258789e-05 && auVar38._8_4_ <= 1.5258789e-05) &&
                 auVar23._8_4_ <= 1.5258789e-05) && auVar35._8_4_ <= 1.5258789e-05);
    auVar39._12_4_ =
         -(uint)(((auVar33._12_4_ <= 1.5258789e-05 && auVar38._12_4_ <= 1.5258789e-05) &&
                 auVar23._12_4_ <= 1.5258789e-05) && auVar35._12_4_ <= 1.5258789e-05);
    iVar7 = movmskps(pfVar6,auVar39);
    if (((iVar7 == 0xf) && (iVar11 == *(int *)((int)this + 0xa68))) &&
       (fStack_23c == (float)*(int *)((int)this + 0xa6c))) {
      auVar24._0_4_ = local_110 - *(float *)((int)this + 0xa70);
      auVar24._4_4_ = fStack_10c - *(float *)((int)this + 0xa74);
      auVar24._8_4_ = fStack_108 - *(float *)((int)this + 0xa78);
      auVar24._12_4_ = fStack_104 - *(float *)((int)this + 0xa7c);
      auVar36._0_4_ = auVar24._0_4_ * -1.0;
      auVar36._4_4_ = auVar24._4_4_ * -1.0;
      auVar36._8_4_ = auVar24._8_4_ * -1.0;
      auVar36._12_4_ = auVar24._12_4_ * -1.0;
      auVar35 = maxps(auVar36,auVar24);
      auVar37._4_4_ = -(uint)(auVar35._4_4_ <= 1.5258789e-05);
      auVar37._0_4_ = -(uint)(auVar35._0_4_ <= 1.5258789e-05);
      auVar37._8_4_ = -(uint)(auVar35._8_4_ <= 1.5258789e-05);
      auVar37._12_4_ = -(uint)(auVar35._12_4_ <= 1.5258789e-05);
      iVar12 = movmskps(iVar12,auVar37);
      if (iVar12 == 0xf) {
        auVar25._0_4_ = local_100 - *(float *)((int)this + 0xa80);
        auVar25._4_4_ = fStack_fc - *(float *)((int)this + 0xa84);
        auVar25._8_4_ = fStack_f8 - *(float *)((int)this + 0xa88);
        auVar25._12_4_ = fStack_f4 - *(float *)((int)this + 0xa8c);
        auVar16._0_4_ = auVar25._0_4_ * -1.0;
        auVar16._4_4_ = auVar25._4_4_ * -1.0;
        auVar16._8_4_ = auVar25._8_4_ * -1.0;
        auVar16._12_4_ = auVar25._12_4_ * -1.0;
        auVar35 = maxps(auVar16,auVar25);
        auVar17._4_4_ = -(uint)(auVar35._4_4_ <= 1.5258789e-05);
        auVar17._0_4_ = -(uint)(auVar35._0_4_ <= 1.5258789e-05);
        auVar17._8_4_ = -(uint)(auVar35._8_4_ <= 1.5258789e-05);
        auVar17._12_4_ = -(uint)(auVar35._12_4_ <= 1.5258789e-05);
        uVar8 = movmskps(0xf,auVar17);
        if (((byte)uVar8 & 7) == 7) {
          return;
        }
      }
    }
  }
  uVar8 = *(undefined4 *)(iVar5 + 0xb4);
  uVar2 = *(undefined4 *)(iVar5 + 0xb8);
  uVar3 = *(undefined4 *)(iVar5 + 0xbc);
  *(undefined4 *)this = *(undefined4 *)(iVar5 + 0xb0);
  *(undefined4 *)((int)this + 4) = uVar8;
  *(undefined4 *)((int)this + 8) = uVar2;
  *(undefined4 *)((int)this + 0xc) = uVar3;
  uVar8 = *(undefined4 *)(iVar5 + 0xc4);
  uVar2 = *(undefined4 *)(iVar5 + 200);
  uVar3 = *(undefined4 *)(iVar5 + 0xcc);
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(iVar5 + 0xc0);
  *(undefined4 *)((int)this + 0x14) = uVar8;
  *(undefined4 *)((int)this + 0x18) = uVar2;
  *(undefined4 *)((int)this + 0x1c) = uVar3;
  uVar8 = *(undefined4 *)(iVar5 + 0xd4);
  uVar2 = *(undefined4 *)(iVar5 + 0xd8);
  uVar3 = *(undefined4 *)(iVar5 + 0xdc);
  *(undefined4 *)((int)this + 0x20) = *(undefined4 *)(iVar5 + 0xd0);
  *(undefined4 *)((int)this + 0x24) = uVar8;
  *(undefined4 *)((int)this + 0x28) = uVar2;
  *(undefined4 *)((int)this + 0x2c) = uVar3;
  uVar8 = *(undefined4 *)(iVar5 + 0xe4);
  uVar2 = *(undefined4 *)(iVar5 + 0xe8);
  uVar3 = *(undefined4 *)(iVar5 + 0xec);
  *(undefined4 *)((int)this + 0x30) = *(undefined4 *)(iVar5 + 0xe0);
  *(undefined4 *)((int)this + 0x34) = uVar8;
  *(undefined4 *)((int)this + 0x38) = uVar2;
  *(undefined4 *)((int)this + 0x3c) = uVar3;
  *(int *)((int)this + 0xa68) = iVar11;
  *(float *)((int)this + 0xa6c) = fStack_23c;
  *(float *)((int)this + 0xa70) = local_110;
  *(float *)((int)this + 0xa74) = fStack_10c;
  *(float *)((int)this + 0xa78) = fStack_108;
  *(float *)((int)this + 0xa7c) = fStack_104;
  *(float *)((int)this + 0xa80) = local_100;
  *(float *)((int)this + 0xa84) = fStack_fc;
  *(float *)((int)this + 0xa88) = fStack_f8;
  *(float *)((int)this + 0xa8c) = fStack_f4;
  local_13c = *(undefined4 *)(iVar5 + 0xd0);
  local_138 = *(undefined4 *)(iVar5 + 0xd4);
  local_134 = *(undefined4 *)(iVar5 + 0xd8);
  local_240 = *(float *)(iVar5 + 0xc0);
  fStack_23c = *(float *)(iVar5 + 0xc4);
  uStack_238 = *(undefined4 *)(iVar5 + 200);
  uStack_234 = *(undefined4 *)(iVar5 + 0xcc);
  local_190 = *(undefined4 *)(iVar5 + 0xb0);
  uStack_18c = *(undefined4 *)(iVar5 + 0xb4);
  uStack_188 = *(undefined4 *)(iVar5 + 0xb8);
  uStack_184 = *(undefined4 *)(iVar5 + 0xbc);
  local_250 = *(float *)(iVar5 + 0xd0) * 1.0;
  fStack_24c = *(float *)(iVar5 + 0xd4) * 0.0;
  fStack_248 = *(float *)(iVar5 + 0xd8) * 1.0;
  fStack_244 = *(float *)(iVar5 + 0xdc) * 0.0;
  fVar15 = fStack_244 * fStack_244 + fStack_24c * fStack_24c +
           fStack_248 * fStack_248 + local_250 * local_250;
  auVar1._4_4_ = fVar15;
  auVar1._0_4_ = fVar15;
  auVar1._8_4_ = fVar15;
  auVar1._12_4_ = fVar15;
  auVar35 = rsqrtps(in_XMM5,auVar1);
  fVar18 = auVar35._0_4_;
  fVar19 = auVar35._4_4_;
  fVar20 = auVar35._8_4_;
  fVar21 = auVar35._12_4_;
  fVar18 = (1.0 - fVar18 * fVar18 * fVar15) * fVar18 * 0.5 + fVar18;
  fVar19 = (1.0 - fVar19 * fVar19 * fVar15) * fVar19 * 0.5 + fVar19;
  fVar20 = (1.0 - fVar20 * fVar20 * fVar15) * fVar20 * 0.5 + fVar20;
  fVar21 = (1.0 - fVar21 * fVar21 * fVar15) * fVar21 * 0.5 + fVar21;
  local_250 = ((1.0 - fVar18 * fVar18 * fVar15) * fVar18 * 0.5 + fVar18) * local_250;
  fStack_24c = ((1.0 - fVar19 * fVar19 * fVar15) * fVar19 * 0.5 + fVar19) * fStack_24c;
  fStack_248 = ((1.0 - fVar20 * fVar20 * fVar15) * fVar20 * 0.5 + fVar20) * fStack_248;
  fStack_244 = ((1.0 - fVar21 * fVar21 * fVar15) * fVar21 * 0.5 + fVar21) * fStack_244;
  local_1c0 = fStack_248 * 1.0 - fStack_24c * 0.0;
  fStack_1bc = local_250 * 0.0 - fStack_248 * 0.0;
  fStack_1b8 = fStack_24c * 0.0 - local_250 * 1.0;
  fStack_1b4 = local_250 * 0.0 - local_250 * 0.0;
  local_270._4_4_ = fStack_1bc;
  local_270._0_4_ = local_1c0;
  fStack_268 = fStack_1b8;
  fStack_264 = fStack_1b4;
  local_16c = 0;
  local_168 = 1.0;
  local_164 = 0;
  local_1e0 = local_220;
  fStack_1dc = fStack_21c;
  fStack_1d8 = fStack_218;
  fStack_1d4 = fStack_214;
  local_200 = local_250;
  fStack_1fc = fStack_24c;
  fStack_1f8 = fStack_248;
  fStack_1f4 = fStack_244;
  local_1d0 = local_250;
  fStack_1cc = fStack_24c;
  fStack_1c8 = fStack_248;
  fStack_1c4 = fStack_244;
  local_1b0 = local_1c0;
  fStack_1ac = fStack_1bc;
  fStack_1a8 = fStack_1b8;
  fStack_1a4 = fStack_1b4;
  local_1a0 = local_240;
  fStack_19c = fStack_23c;
  fStack_198 = (float)uStack_238;
  fStack_194 = (float)uStack_234;
  local_178 = local_1c0;
  local_174 = fStack_1bc;
  local_170 = fStack_1b8;
  local_160 = local_250;
  local_15c = fStack_24c;
  local_158 = fStack_248;
  local_154 = local_190;
  local_150 = uStack_18c;
  local_14c = uStack_188;
  local_148 = local_240;
  local_144 = fStack_23c;
  local_140 = uStack_238;
  local_50 = local_250;
  fStack_4c = fStack_24c;
  fStack_48 = fStack_248;
  fStack_44 = fStack_244;
  local_40 = local_1c0;
  fStack_3c = fStack_1bc;
  fStack_38 = fStack_1b8;
  fStack_34 = fStack_1b4;
  pfVar6 = (float *)FUN_0095fda0(iVar5);
  local_230 = *pfVar6;
  fStack_22c = pfVar6[1];
  fStack_228 = pfVar6[2];
  fStack_224 = pfVar6[3];
  pfVar6 = (float *)FUN_0095fda0(iVar5);
  local_1f0 = *pfVar6;
  fStack_1ec = pfVar6[1];
  fStack_1e8 = pfVar6[2];
  fStack_1e4 = pfVar6[3];
  asStack_2a8[0] = -0x325b;
  asStack_2a8[1] = 0x86;
  uVar8 = AudioView_QueryFilteredSegmentHit(&local_220,&local_b0,0xd,local_f0,'\x01');
  bVar13 = (char)uVar8 != '\0';
  if (bVar13) {
    local_230 = local_e0;
    fStack_22c = fStack_dc;
    fStack_228 = fStack_d8;
    fStack_224 = fStack_d4;
  }
  if (local_278 != (void *)0x0) {
    Lot_TransformWorldPointToLocal(local_278,&local_230,&local_120);
    pauVar9 = (undefined1 (*) [16])&local_120;
    if (!bVar13) {
      pauVar9 = (undefined1 (*) [16])local_80;
    }
    _local_270 = *pauVar9;
    asStack_2a8[0] = -0x31f3;
    asStack_2a8[1] = 0x86;
    uVar8 = AudioView_QueryFilteredSegmentHit(local_130,(float *)local_270,0xd,local_f0,'\x01');
    if ((char)uVar8 != '\0') {
      local_120 = local_e0;
      fStack_11c = fStack_dc;
      fStack_118 = fStack_d8;
      fStack_114 = fStack_d4;
      uVar8 = Lot_TransformLocalPointToWorld(local_278,&local_e0,&local_230);
    }
  }
  if (*(char *)((int)param_1 + 0x27d09) != '\0') {
    auVar26._0_4_ = local_230 - local_220;
    auVar26._4_4_ = fStack_22c - fStack_21c;
    auVar26._8_4_ = fStack_228 - fStack_218;
    auVar26._12_4_ = fStack_224 - fStack_214;
    auVar28._0_4_ = auVar26._0_4_ * -1.0;
    auVar28._4_4_ = auVar26._4_4_ * -1.0;
    auVar28._8_4_ = auVar26._8_4_ * -1.0;
    auVar28._12_4_ = auVar26._12_4_ * -1.0;
    auVar35 = maxps(auVar28,auVar26);
    auVar29._4_4_ = -(uint)(auVar35._4_4_ <= 1.5258789e-05);
    auVar29._0_4_ = -(uint)(auVar35._0_4_ <= 1.5258789e-05);
    auVar29._8_4_ = -(uint)(auVar35._8_4_ <= 1.5258789e-05);
    auVar29._12_4_ = -(uint)(auVar35._12_4_ <= 1.5258789e-05);
    uVar10 = movmskps(uVar8,auVar29);
    uVar10 = uVar10 & 7;
    local_250 = -1.0;
    fStack_24c = -1.0;
    fStack_248 = -1.0;
    fStack_244 = -1.0;
    local_200 = 1.5258789e-05;
    fStack_1fc = 1.5258789e-05;
    fStack_1f8 = 1.5258789e-05;
    fStack_1f4 = 1.5258789e-05;
    if ((char)uVar10 != '\a') {
      asStack_2a8[0] = -0x314e;
      asStack_2a8[1] = 0x86;
      uVar10 = AudioView_QueryFilteredSegmentHit(&local_220,&local_230,2,local_f0,'\x01');
      if ((char)uVar10 != '\0') {
        local_230 = local_e0;
        fStack_22c = fStack_dc;
        fStack_228 = fStack_d8;
        fStack_224 = fStack_d4;
      }
      if (local_278 != (void *)0x0) {
        asStack_2a8[0] = -0x3112;
        asStack_2a8[1] = 0x86;
        uVar10 = AudioView_QueryFilteredSegmentHit(local_130,&local_120,2,local_f0,'\x01');
        if ((char)uVar10 != '\0') {
          uVar10 = Lot_TransformLocalPointToWorld(local_278,&local_e0,&local_230);
        }
      }
    }
    auVar27._0_4_ = local_1f0 - local_220;
    auVar27._4_4_ = fStack_1ec - fStack_21c;
    auVar27._8_4_ = fStack_1e8 - fStack_218;
    auVar27._12_4_ = fStack_1e4 - fStack_214;
    auVar30._0_4_ = auVar27._0_4_ * local_250;
    auVar30._4_4_ = auVar27._4_4_ * fStack_24c;
    auVar30._8_4_ = auVar27._8_4_ * fStack_248;
    auVar30._12_4_ = auVar27._12_4_ * fStack_244;
    auVar35 = maxps(auVar30,auVar27);
    auVar31._4_4_ = -(uint)(auVar35._4_4_ <= fStack_1fc);
    auVar31._0_4_ = -(uint)(auVar35._0_4_ <= local_200);
    auVar31._8_4_ = -(uint)(auVar35._8_4_ <= fStack_1f8);
    auVar31._12_4_ = -(uint)(auVar35._12_4_ <= fStack_1f4);
    uVar8 = movmskps(uVar10,auVar31);
    if (((byte)uVar8 & 7) != 7) {
      asStack_2a8[0] = -0x309f;
      asStack_2a8[1] = 0x86;
      uVar8 = AudioView_QueryFilteredSegmentHit(&local_220,&local_1f0,2,local_f0,'\x01');
      if ((char)uVar8 != '\0') {
        local_1f0 = local_e0;
        fStack_1ec = fStack_dc;
        fStack_1e8 = fStack_d8;
        fStack_1e4 = fStack_d4;
      }
      if (local_278 != (void *)0x0) {
        Lot_TransformWorldPointToLocal(local_278,&local_1f0,&local_1b0);
        asStack_2a8[0] = -0x304a;
        asStack_2a8[1] = 0x86;
        uVar8 = AudioView_QueryFilteredSegmentHit(local_130,&local_1b0,2,local_f0,'\x01');
        if ((char)uVar8 != '\0') {
          Lot_TransformLocalPointToWorld(local_278,&local_e0,&local_1f0);
        }
      }
    }
  }
  cVar4 = FUN_00868950();
  if (cVar4 == '\0') {
    fVar14 = Camera_GetZoomDistance(iVar5);
    local_204 = (float)fVar14;
    local_240 = (float)fVar14;
    local_1d0 = local_240 * local_90 + local_220;
    fStack_1cc = local_240 * fStack_8c + fStack_21c;
    fStack_1c8 = local_240 * fStack_88 + fStack_218;
    fStack_1c4 = local_240 * fStack_84 + fStack_214;
    fVar15 = 0.0;
    if (*(char *)((int)this + 0xa60) != '\0') {
      local_1c0 = local_a0 - *(float *)(iVar5 + 0x50);
      fStack_1bc = fStack_9c - *(float *)(iVar5 + 0x54);
      fStack_1b8 = fStack_98 - *(float *)(iVar5 + 0x58);
      fStack_1b4 = fStack_94 - *(float *)(iVar5 + 0x5c);
      fVar14 = AudioCurve_EvaluateLinear((void *)((int)this + 0x700),(float)fVar14);
      local_240 = (float)fVar14;
      local_1e0 = local_240 * local_1c0 + local_1e0;
      fStack_1dc = local_240 * fStack_1bc + fStack_1dc;
      fStack_1d8 = local_240 * fStack_1b8 + fStack_1d8;
      fStack_1d4 = local_240 * fStack_1b4 + fStack_1d4;
      fVar14 = AudioCurve_EvaluateLinear((void *)((int)this + 0x3a0),local_204);
      local_240 = (float)fVar14;
      fVar15 = local_240;
    }
    local_110 = fStack_1cc + fVar15;
    fStack_1dc = fStack_1cc + fVar15;
    fStack_108 = fStack_1cc + fVar15;
    fStack_104 = fStack_1cc + fVar15;
    fStack_10c = fStack_1dc;
    bVar13 = FUN_00c890a0(&local_220);
    if (!bVar13) {
      fVar14 = AudioCurve_EvaluateLinear((void *)((int)this + 0x40),local_204);
      local_240 = (float)fVar14;
      local_230 = local_240 * local_90 + local_230;
      fStack_22c = local_240 * fStack_8c + fStack_22c;
      fStack_228 = local_240 * fStack_88 + fStack_228;
      fStack_224 = local_240 * fStack_84 + fStack_224;
    }
  }
  local_1a0 = local_1e0;
  local_270._4_4_ = fStack_1dc;
  local_270._0_4_ = local_1e0;
  fStack_268 = fStack_1d8;
  fStack_264 = fStack_1d4;
  fStack_19c = fStack_1dc;
  fStack_198 = fStack_1d8;
  (**(code **)(*param_1 + 0x14))();
  fStack_19c = fStack_22c;
  fStack_27c = fStack_22c;
  local_278 = (void *)fStack_228;
  fStack_274 = fStack_224;
  local_270._0_4_ = local_220;
  asStack_2a8[0] = 1;
  asStack_2a8[1] = 0;
  fStack_198 = fStack_228;
  fStack_194 = fStack_224;
  (**(code **)(*param_1 + 0x14))();
  fStack_218 = fStack_248;
  fStack_284 = fStack_244;
  fStack_280 = local_240;
  fStack_27c = fStack_23c;
  fStack_214 = fStack_244;
  fStack_210 = local_240;
  (**(code **)(*param_1 + 0x14))(2,&fStack_218,&local_190);
  fStack_274 = fStack_214;
  local_270._4_4_ = uStack_20c;
  local_270._0_4_ = fStack_210;
  (**(code **)(*param_1 + 0x14))(3,&fStack_274,&fStack_19c);
  FUN_0086c3e0(&fStack_210,(undefined4 *)&stack0xfffffd5c,asStack_2a8,&fStack_284);
  FUN_00864b60(param_1);
  FUN_0086c3e0(afStack_260,(undefined4 *)&stack0xfffffd5c,asStack_2a8,&fStack_284);
  FUN_00864b60(param_1);
  FUN_0086c3e0(&local_220,(undefined4 *)&stack0xfffffd5c,asStack_2a8,&fStack_284);
  FUN_00864b60(param_1);
  FUN_0086c3e0(&local_250,(undefined4 *)&stack0xfffffd5c,asStack_2a8,&fStack_284);
  FUN_00864b60(param_1);
  *(undefined1 *)((int)this + 0xa61) = 0;
  return;
}

