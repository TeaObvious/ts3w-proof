/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECX childRenderNode, parentRenderNode one stack word/RET4 void. Unsigned mode-1<=3 switch table6FC5D4. Modes1/2/3 query parent virtual+2C using storedINDEX+150, out64byte bone matrix; AL0 exits without world setter. Mode1 childLocalC0 * bone * parentWorld80; mode2 childLocalC0 * offset110 * bone * parentWorld80. Mode3 has additional orientation reconstruction, global-mask/normalization/acos branches and original SSE/x87 boundaries: not certified equivalent to a generic AlignAlwaysUp. Mode4 combines stored static matrix150 and offset110 with parent world, then child local. Each successful branch calls child virtual+20. Full numeric exceptional/FPU/environment and concrete parent virtual target remain open; this is not palette/GPU retirement. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall FUN_006fb340(void *this,int *param_1)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  char cVar4;
  undefined4 extraout_ECX;
  int iVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  float fVar30;
  float fVar31;
  float fVar32;
  float fVar33;
  float fVar34;
  float fVar35;
  float fVar38;
  float fVar39;
  float fVar40;
  float fVar41;
  float fVar42;
  float fVar43;
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
  float fVar44;
  float fVar45;
  float fVar46;
  float fVar49;
  float fVar50;
  undefined1 auVar47 [16];
  undefined1 auVar48 [16];
  float fVar51;
  float fVar52;
  float fVar53;
  float fVar54;
  float fVar55;
  float fVar56;
  float fVar57;
  undefined1 auVar58 [16];
  undefined1 auVar59 [16];
  undefined1 auVar60 [16];
  float fStack_398;
  float fStack_394;
  float fStack_390;
  float fStack_38c;
  float fStack_348;
  float fStack_344;
  float local_340;
  float fStack_33c;
  float fStack_338;
  float fStack_334;
  float fStack_330;
  float fStack_32c;
  float fStack_328;
  float fStack_324;
  float fStack_320;
  float fStack_31c;
  float fStack_318;
  float fStack_314;
  float fStack_310;
  float fStack_30c;
  float fStack_308;
  float fStack_304;
  float local_300;
  float fStack_2fc;
  float fStack_2f8;
  float fStack_2f4;
  float fStack_2f0;
  float fStack_2ec;
  float fStack_2e8;
  float fStack_2e4;
  float fStack_2e0;
  float fStack_2dc;
  float fStack_2d8;
  float fStack_2d4;
  float fStack_2d0;
  float fStack_2cc;
  float fStack_2c8;
  float fStack_2c4;
  float local_2c0;
  float fStack_2bc;
  float fStack_2b8;
  float fStack_2b4;
  float fStack_2b0;
  float fStack_2ac;
  float fStack_2a8;
  float fStack_2a4;
  float fStack_2a0;
  float fStack_29c;
  float fStack_298;
  float fStack_294;
  float fStack_290;
  float fStack_28c;
  float fStack_288;
  float fStack_284;
  float fStack_280;
  float fStack_27c;
  float fStack_278;
  float fStack_274;
  float fStack_270;
  float fStack_26c;
  float fStack_268;
  float fStack_264;
  float fStack_260;
  float fStack_25c;
  undefined4 uStack_258;
  undefined4 uStack_254;
  undefined4 uStack_250;
  undefined4 uStack_24c;
  float fStack_248;
  float fStack_244;
  float fStack_240;
  float fStack_23c;
  float fStack_238;
  float fStack_234;
  float fStack_230;
  float fStack_22c;
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
  undefined4 uStack_1f8;
  undefined4 uStack_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  float fStack_1e8;
  float fStack_1e4;
  float fStack_1e0;
  float fStack_1dc;
  undefined4 uStack_1d8;
  undefined4 uStack_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 uStack_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  undefined4 uStack_1a8;
  undefined4 uStack_1a4;
  undefined4 uStack_1a0;
  undefined4 uStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float fStack_170;
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
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float fStack_130;
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
  float local_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float local_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  
  switch(*(undefined4 *)((int)this + 0x100)) {
  case 1:
    cVar4 = (**(code **)(*param_1 + 0x2c))(*(undefined4 *)((int)this + 0x150),&local_2c0);
    if (cVar4 != '\0') {
      fVar32 = (float)param_1[0x24];
      fVar38 = (float)param_1[0x25];
      fVar20 = (float)param_1[0x26];
      fVar25 = (float)param_1[0x27];
      fVar41 = (float)param_1[0x20];
      fVar33 = (float)param_1[0x21];
      fVar26 = (float)param_1[0x22];
      fVar28 = (float)param_1[0x23];
      fVar53 = (float)param_1[0x28];
      fVar30 = (float)param_1[0x29];
      fVar8 = (float)param_1[0x2a];
      fVar52 = (float)param_1[0x2b];
      fVar35 = fStack_2c8 * fVar33;
      fVar40 = fStack_2c8 * fVar26;
      fVar43 = fStack_2c8 * fVar28;
      fVar45 = fStack_2c4 * fVar20;
      fVar7 = fStack_2c4 * fVar25;
      fVar11 = local_2c0 * fVar52;
      fStack_2c8 = fStack_2c8 * fVar41 + fStack_2c4 * fVar32 + local_2c0 * fVar53 +
                   fStack_2bc * (float)param_1[0x2c];
      fStack_2c4 = fVar35 + fStack_2c4 * fVar38 + local_2c0 * fVar30 +
                   fStack_2bc * (float)param_1[0x2d];
      local_2c0 = fVar40 + fVar45 + local_2c0 * fVar8 + fStack_2bc * (float)param_1[0x2e];
      fStack_2bc = fVar43 + fVar7 + fVar11 + fStack_2bc * (float)param_1[0x2f];
      fVar35 = fStack_2b8 * fVar33;
      fVar40 = fStack_2b8 * fVar26;
      fVar43 = fStack_2b8 * fVar28;
      fVar45 = fStack_2b4 * fVar20;
      fVar7 = fStack_2b4 * fVar25;
      fVar11 = fStack_2b0 * fVar52;
      fStack_2b8 = fStack_2b8 * fVar41 + fStack_2b4 * fVar32 + fStack_2b0 * fVar53 +
                   fStack_2ac * (float)param_1[0x2c];
      fStack_2b4 = fVar35 + fStack_2b4 * fVar38 + fStack_2b0 * fVar30 +
                   fStack_2ac * (float)param_1[0x2d];
      fStack_2b0 = fVar40 + fVar45 + fStack_2b0 * fVar8 + fStack_2ac * (float)param_1[0x2e];
      fStack_2ac = fVar43 + fVar7 + fVar11 + fStack_2ac * (float)param_1[0x2f];
      fVar45 = fStack_2a4 * fVar20;
      fVar7 = fStack_2a4 * fVar25;
      fVar35 = fStack_2a8 * fVar33;
      fVar40 = fStack_2a8 * fVar26;
      fVar43 = fStack_2a8 * fVar28;
      fVar11 = fStack_2a0 * fVar52;
      fStack_2a8 = fStack_2a8 * fVar41 + fStack_2a4 * fVar32 + fStack_2a0 * fVar53 +
                   fStack_29c * (float)param_1[0x2c];
      fStack_2a4 = fVar35 + fStack_2a4 * fVar38 + fStack_2a0 * fVar30 +
                   fStack_29c * (float)param_1[0x2d];
      fStack_2a0 = fVar40 + fVar45 + fStack_2a0 * fVar8 + fStack_29c * (float)param_1[0x2e];
      fStack_29c = fVar43 + fVar7 + fVar11 + fStack_29c * (float)param_1[0x2f];
      fVar33 = fStack_298 * fVar33;
      fVar26 = fStack_298 * fVar26;
      fVar28 = fStack_298 * fVar28;
      fVar20 = fStack_294 * fVar20;
      fVar25 = fStack_294 * fVar25;
      fVar52 = fStack_290 * fVar52;
      fVar35 = *(float *)((int)this + 0xc0);
      fVar40 = *(float *)((int)this + 0xc4);
      fVar43 = *(float *)((int)this + 200);
      fVar45 = *(float *)((int)this + 0xcc);
      fStack_298 = fStack_298 * fVar41 + fStack_294 * fVar32 + fStack_290 * fVar53 +
                   fStack_28c * (float)param_1[0x2c];
      fStack_294 = fVar33 + fStack_294 * fVar38 + fStack_290 * fVar30 +
                   fStack_28c * (float)param_1[0x2d];
      fStack_290 = fVar26 + fVar20 + fStack_290 * fVar8 + fStack_28c * (float)param_1[0x2e];
      fStack_28c = fVar28 + fVar25 + fVar52 + fStack_28c * (float)param_1[0x2f];
      fVar32 = *(float *)((int)this + 0xd0);
      fVar38 = *(float *)((int)this + 0xd4);
      fVar20 = *(float *)((int)this + 0xd8);
      fVar25 = *(float *)((int)this + 0xdc);
      fStack_118 = fVar35 * fStack_2c8 + fVar40 * fStack_2b8 + fVar43 * fStack_2a8 +
                   fVar45 * fStack_298;
      fStack_114 = fVar35 * fStack_2c4 + fVar40 * fStack_2b4 + fVar43 * fStack_2a4 +
                   fVar45 * fStack_294;
      fStack_110 = fVar35 * local_2c0 + fVar40 * fStack_2b0 + fVar43 * fStack_2a0 +
                   fVar45 * fStack_290;
      fStack_10c = fVar35 * fStack_2bc + fVar40 * fStack_2ac + fVar43 * fStack_29c +
                   fVar45 * fStack_28c;
      fVar41 = *(float *)((int)this + 0xe0);
      fVar33 = *(float *)((int)this + 0xe4);
      fVar26 = *(float *)((int)this + 0xe8);
      fVar28 = *(float *)((int)this + 0xec);
      fStack_108 = fVar32 * fStack_2c8 + fVar38 * fStack_2b8 + fVar20 * fStack_2a8 +
                   fVar25 * fStack_298;
      fStack_104 = fVar32 * fStack_2c4 + fVar38 * fStack_2b4 + fVar20 * fStack_2a4 +
                   fVar25 * fStack_294;
      fStack_100 = fVar32 * local_2c0 + fVar38 * fStack_2b0 + fVar20 * fStack_2a0 +
                   fVar25 * fStack_290;
      fStack_fc = fVar32 * fStack_2bc + fVar38 * fStack_2ac + fVar20 * fStack_29c +
                  fVar25 * fStack_28c;
      fVar32 = *(float *)((int)this + 0xf0);
      fVar38 = *(float *)((int)this + 0xf4);
      fVar20 = *(float *)((int)this + 0xf8);
      fVar25 = *(float *)((int)this + 0xfc);
      fStack_f8 = fVar41 * fStack_2c8 + fVar33 * fStack_2b8 + fVar26 * fStack_2a8 +
                  fVar28 * fStack_298;
      fStack_f4 = fVar41 * fStack_2c4 + fVar33 * fStack_2b4 + fVar26 * fStack_2a4 +
                  fVar28 * fStack_294;
      fStack_f0 = fVar41 * local_2c0 + fVar33 * fStack_2b0 + fVar26 * fStack_2a0 +
                  fVar28 * fStack_290;
      fStack_ec = fVar41 * fStack_2bc + fVar33 * fStack_2ac + fVar26 * fStack_29c +
                  fVar28 * fStack_28c;
      fStack_e8 = fVar38 * fStack_2b8 + fVar32 * fStack_2c8 + fVar20 * fStack_2a8 +
                  fVar25 * fStack_298;
      fStack_e4 = fVar38 * fStack_2b4 + fVar32 * fStack_2c4 + fVar20 * fStack_2a4 +
                  fVar25 * fStack_294;
      fStack_e0 = fVar38 * fStack_2b0 + fVar32 * local_2c0 + fVar20 * fStack_2a0 +
                  fVar25 * fStack_290;
      fStack_dc = fVar38 * fStack_2ac + fVar32 * fStack_2bc + fVar20 * fStack_29c +
                  fVar25 * fStack_28c;
      (**(code **)(*(int *)this + 0x20))(&fStack_118);
      return;
    }
    break;
  case 2:
    cVar4 = (**(code **)(*param_1 + 0x2c))(*(undefined4 *)((int)this + 0x150),&local_300);
    if (cVar4 != '\0') {
      fVar32 = *(float *)((int)this + 0x110);
      fVar38 = *(float *)((int)this + 0x114);
      fVar20 = *(float *)((int)this + 0x118);
      fVar25 = *(float *)((int)this + 0x11c);
      fVar41 = *(float *)((int)this + 0x120);
      fVar33 = *(float *)((int)this + 0x124);
      fVar26 = *(float *)((int)this + 0x128);
      fVar28 = *(float *)((int)this + 300);
      fVar53 = *(float *)((int)this + 0x130);
      fVar30 = *(float *)((int)this + 0x134);
      fVar8 = *(float *)((int)this + 0x138);
      fVar52 = *(float *)((int)this + 0x13c);
      fVar35 = *(float *)((int)this + 0x140);
      fVar40 = *(float *)((int)this + 0x144);
      fVar43 = *(float *)((int)this + 0x148);
      fVar45 = *(float *)((int)this + 0x14c);
      fVar7 = fVar32 * fStack_308 + fVar38 * fStack_2f8 + fVar20 * fStack_2e8 + fVar25 * fStack_2d8;
      fVar11 = fVar32 * fStack_304 + fVar38 * fStack_2f4 + fVar20 * fStack_2e4 + fVar25 * fStack_2d4
      ;
      fVar14 = fVar32 * local_300 + fVar38 * fStack_2f0 + fVar20 * fStack_2e0 + fVar25 * fStack_2d0;
      fVar17 = fVar32 * fStack_2fc + fVar38 * fStack_2ec + fVar20 * fStack_2dc + fVar25 * fStack_2cc
      ;
      fVar10 = fVar41 * fStack_308 + fVar33 * fStack_2f8 + fVar26 * fStack_2e8 + fVar28 * fStack_2d8
      ;
      fVar13 = fVar41 * fStack_304 + fVar33 * fStack_2f4 + fVar26 * fStack_2e4 + fVar28 * fStack_2d4
      ;
      fVar16 = fVar41 * local_300 + fVar33 * fStack_2f0 + fVar26 * fStack_2e0 + fVar28 * fStack_2d0;
      fVar19 = fVar41 * fStack_2fc + fVar33 * fStack_2ec + fVar26 * fStack_2dc + fVar28 * fStack_2cc
      ;
      fVar9 = fVar53 * fStack_308 + fVar30 * fStack_2f8 + fVar8 * fStack_2e8 + fVar52 * fStack_2d8;
      fVar12 = fVar53 * fStack_304 + fVar30 * fStack_2f4 + fVar8 * fStack_2e4 + fVar52 * fStack_2d4;
      fVar15 = fVar53 * local_300 + fVar30 * fStack_2f0 + fVar8 * fStack_2e0 + fVar52 * fStack_2d0;
      fVar53 = fVar53 * fStack_2fc + fVar30 * fStack_2ec + fVar8 * fStack_2dc + fVar52 * fStack_2cc;
      fVar32 = (float)param_1[0x28];
      fVar38 = (float)param_1[0x29];
      fVar20 = (float)param_1[0x2a];
      fVar25 = (float)param_1[0x2b];
      fVar18 = fVar35 * fStack_308 + fVar40 * fStack_2f8 + fVar43 * fStack_2e8 + fVar45 * fStack_2d8
      ;
      fVar21 = fVar35 * fStack_304 + fVar40 * fStack_2f4 + fVar43 * fStack_2e4 + fVar45 * fStack_2d4
      ;
      fVar27 = fVar35 * local_300 + fVar40 * fStack_2f0 + fVar43 * fStack_2e0 + fVar45 * fStack_2d0;
      fVar29 = fVar35 * fStack_2fc + fVar40 * fStack_2ec + fVar43 * fStack_2dc + fVar45 * fStack_2cc
      ;
      fVar41 = (float)param_1[0x24];
      fVar33 = (float)param_1[0x25];
      fVar26 = (float)param_1[0x26];
      fVar28 = (float)param_1[0x27];
      fVar31 = fVar7 * (float)param_1[0x20] + fVar11 * fVar41 + fVar14 * fVar32 +
               fVar17 * (float)param_1[0x2c];
      fVar34 = fVar7 * (float)param_1[0x21] + fVar11 * fVar33 + fVar14 * fVar38 +
               fVar17 * (float)param_1[0x2d];
      fVar39 = fVar7 * (float)param_1[0x22] + fVar11 * fVar26 + fVar14 * fVar20 +
               fVar17 * (float)param_1[0x2e];
      fVar42 = fVar7 * (float)param_1[0x23] + fVar11 * fVar28 + fVar14 * fVar25 +
               fVar17 * (float)param_1[0x2f];
      fVar35 = fVar10 * (float)param_1[0x20] + fVar13 * fVar41 + fVar16 * fVar32 +
               fVar19 * (float)param_1[0x2c];
      fVar40 = fVar10 * (float)param_1[0x21] + fVar13 * fVar33 + fVar16 * fVar38 +
               fVar19 * (float)param_1[0x2d];
      fVar43 = fVar10 * (float)param_1[0x22] + fVar13 * fVar26 + fVar16 * fVar20 +
               fVar19 * (float)param_1[0x2e];
      fVar45 = fVar10 * (float)param_1[0x23] + fVar13 * fVar28 + fVar16 * fVar25 +
               fVar19 * (float)param_1[0x2f];
      auVar58 = *(undefined1 (*) [16])(param_1 + 0x2c);
      fVar7 = fVar9 * (float)param_1[0x20] + fVar12 * fVar41 + fVar15 * fVar32 +
              fVar53 * *(float *)*(undefined1 (*) [16])(param_1 + 0x2c);
      fVar11 = fVar9 * (float)param_1[0x21] + fVar12 * fVar33 + fVar15 * fVar38 +
               fVar53 * (float)param_1[0x2d];
      fVar14 = fVar9 * (float)param_1[0x22] + fVar12 * fVar26 + fVar15 * fVar20 +
               fVar53 * (float)param_1[0x2e];
      fVar17 = fVar9 * (float)param_1[0x23] + fVar12 * fVar28 + fVar15 * fVar25 +
               fVar53 * (float)param_1[0x2f];
      fStack_398 = auVar58._0_4_;
      fStack_394 = auVar58._4_4_;
      fStack_390 = auVar58._8_4_;
      fStack_38c = auVar58._12_4_;
      fVar53 = *(float *)((int)this + 0xc0);
      fVar30 = *(float *)((int)this + 0xc4);
      fVar8 = *(float *)((int)this + 200);
      fVar52 = *(float *)((int)this + 0xcc);
      fVar10 = fVar18 * (float)param_1[0x20] + fVar21 * fVar41 + fVar27 * fVar32 +
               fVar29 * fStack_398;
      fVar13 = fVar18 * (float)param_1[0x21] + fVar21 * fVar33 + fVar27 * fVar38 +
               fVar29 * fStack_394;
      fVar16 = fVar18 * (float)param_1[0x22] + fVar21 * fVar26 + fVar27 * fVar20 +
               fVar29 * fStack_390;
      fVar19 = fVar18 * (float)param_1[0x23] + fVar21 * fVar28 + fVar27 * fVar25 +
               fVar29 * fStack_38c;
      fVar32 = *(float *)((int)this + 0xd0);
      fVar38 = *(float *)((int)this + 0xd4);
      fVar20 = *(float *)((int)this + 0xd8);
      fVar25 = *(float *)((int)this + 0xdc);
      fStack_98 = fVar30 * fVar35 + fVar53 * fVar31 + fVar8 * fVar7 + fVar52 * fVar10;
      fStack_94 = fVar30 * fVar40 + fVar53 * fVar34 + fVar8 * fVar11 + fVar52 * fVar13;
      fStack_90 = fVar30 * fVar43 + fVar53 * fVar39 + fVar8 * fVar14 + fVar52 * fVar16;
      fStack_8c = fVar30 * fVar45 + fVar53 * fVar42 + fVar8 * fVar17 + fVar52 * fVar19;
      fVar41 = *(float *)((int)this + 0xe0);
      fVar33 = *(float *)((int)this + 0xe4);
      fVar26 = *(float *)((int)this + 0xe8);
      fVar28 = *(float *)((int)this + 0xec);
      fStack_88 = fVar38 * fVar35 + fVar32 * fVar31 + fVar20 * fVar7 + fVar25 * fVar10;
      fStack_84 = fVar38 * fVar40 + fVar32 * fVar34 + fVar20 * fVar11 + fVar25 * fVar13;
      fStack_80 = fVar38 * fVar43 + fVar32 * fVar39 + fVar20 * fVar14 + fVar25 * fVar16;
      fStack_7c = fVar38 * fVar45 + fVar32 * fVar42 + fVar20 * fVar17 + fVar25 * fVar19;
      fVar32 = *(float *)((int)this + 0xf0);
      fVar38 = *(float *)((int)this + 0xf4);
      fVar20 = *(float *)((int)this + 0xf8);
      fVar25 = *(float *)((int)this + 0xfc);
      fStack_78 = fVar33 * fVar35 + fVar41 * fVar31 + fVar26 * fVar7 + fVar28 * fVar10;
      fStack_74 = fVar33 * fVar40 + fVar41 * fVar34 + fVar26 * fVar11 + fVar28 * fVar13;
      fStack_70 = fVar33 * fVar43 + fVar41 * fVar39 + fVar26 * fVar14 + fVar28 * fVar16;
      fStack_6c = fVar33 * fVar45 + fVar41 * fVar42 + fVar26 * fVar17 + fVar28 * fVar19;
      fStack_68 = fVar38 * fVar35 + fVar32 * fVar31 + fVar20 * fVar7 + fVar25 * fVar10;
      fStack_64 = fVar38 * fVar40 + fVar32 * fVar34 + fVar20 * fVar11 + fVar25 * fVar13;
      fStack_60 = fVar38 * fVar43 + fVar32 * fVar39 + fVar20 * fVar14 + fVar25 * fVar16;
      fStack_5c = fVar38 * fVar45 + fVar32 * fVar42 + fVar20 * fVar17 + fVar25 * fVar19;
      (**(code **)(*(int *)this + 0x20))(&fStack_98);
      return;
    }
    break;
  case 3:
    cVar4 = (**(code **)(*param_1 + 0x2c))(*(undefined4 *)((int)this + 0x150),&local_340);
    if (cVar4 != '\0') {
      fVar32 = *(float *)((int)this + 0x110);
      fVar38 = *(float *)((int)this + 0x114);
      fVar20 = *(float *)((int)this + 0x118);
      fVar25 = *(float *)((int)this + 0x11c);
      fVar41 = *(float *)((int)this + 0x120);
      fVar33 = *(float *)((int)this + 0x124);
      fVar26 = *(float *)((int)this + 0x128);
      fVar28 = *(float *)((int)this + 300);
      fVar53 = *(float *)((int)this + 0x130);
      fVar30 = *(float *)((int)this + 0x134);
      fVar8 = *(float *)((int)this + 0x138);
      fVar52 = *(float *)((int)this + 0x13c);
      fStack_168 = *(float *)((int)this + 0x140);
      fStack_164 = *(float *)((int)this + 0x144);
      fStack_160 = *(float *)((int)this + 0x148);
      fStack_15c = *(float *)((int)this + 0x14c);
      fStack_58 = fVar32 * fStack_348 + fVar38 * fStack_338 + fVar20 * fStack_328 +
                  fVar25 * fStack_318;
      fStack_54 = fVar32 * fStack_344 + fVar38 * fStack_334 + fVar20 * fStack_324 +
                  fVar25 * fStack_314;
      fStack_50 = fVar32 * local_340 + fVar38 * fStack_330 + fVar20 * fStack_320 +
                  fVar25 * fStack_310;
      fStack_4c = fVar32 * fStack_33c + fVar38 * fStack_32c + fVar20 * fStack_31c +
                  fVar25 * fStack_30c;
      fStack_48 = fVar41 * fStack_348 + fVar33 * fStack_338 + fVar26 * fStack_328 +
                  fVar28 * fStack_318;
      fStack_44 = fVar41 * fStack_344 + fVar33 * fStack_334 + fVar26 * fStack_324 +
                  fVar28 * fStack_314;
      fStack_40 = fVar41 * local_340 + fVar33 * fStack_330 + fVar26 * fStack_320 +
                  fVar28 * fStack_310;
      fStack_3c = fVar41 * fStack_33c + fVar33 * fStack_32c + fVar26 * fStack_31c +
                  fVar28 * fStack_30c;
      fStack_38 = fVar53 * fStack_348 + fVar30 * fStack_338 + fVar8 * fStack_328 +
                  fVar52 * fStack_318;
      fStack_34 = fVar53 * fStack_344 + fVar30 * fStack_334 + fVar8 * fStack_324 +
                  fVar52 * fStack_314;
      fStack_30 = fVar53 * local_340 + fVar30 * fStack_330 + fVar8 * fStack_320 +
                  fVar52 * fStack_310;
      fStack_2c = fVar53 * fStack_33c + fVar30 * fStack_32c + fVar8 * fStack_31c +
                  fVar52 * fStack_30c;
      fVar41 = (float)param_1[0x28];
      fVar33 = (float)param_1[0x29];
      fVar26 = (float)param_1[0x2a];
      fVar28 = (float)param_1[0x2b];
      fStack_28 = fStack_168 * fStack_348 + fStack_164 * fStack_338 + fStack_160 * fStack_328 +
                  fStack_15c * fStack_318;
      fStack_24 = fStack_168 * fStack_344 + fStack_164 * fStack_334 + fStack_160 * fStack_324 +
                  fStack_15c * fStack_314;
      fStack_20 = fStack_168 * local_340 + fStack_164 * fStack_330 + fStack_160 * fStack_320 +
                  fStack_15c * fStack_310;
      fStack_1c = fStack_168 * fStack_33c + fStack_164 * fStack_32c + fStack_160 * fStack_31c +
                  fStack_15c * fStack_30c;
      auVar58 = *(undefined1 (*) [16])(param_1 + 0x24);
      fVar32 = auVar58._0_4_;
      fVar38 = auVar58._4_4_;
      fVar20 = auVar58._8_4_;
      fVar25 = auVar58._12_4_;
      fStack_238 = fStack_58 * (float)param_1[0x20] + fStack_54 * fVar32 + fStack_50 * fVar41 +
                   fStack_4c * (float)param_1[0x2c];
      fStack_234 = fStack_58 * (float)param_1[0x21] + fStack_54 * fVar38 + fStack_50 * fVar33 +
                   fStack_4c * (float)param_1[0x2d];
      fStack_230 = fStack_58 * (float)param_1[0x22] + fStack_54 * fVar20 + fStack_50 * fVar26 +
                   fStack_4c * (float)param_1[0x2e];
      fStack_22c = fStack_58 * (float)param_1[0x23] + fStack_54 * fVar25 + fStack_50 * fVar28 +
                   fStack_4c * (float)param_1[0x2f];
      fStack_228 = fStack_48 * (float)param_1[0x20] + fStack_44 * fVar32 + fStack_40 * fVar41 +
                   fStack_3c * (float)param_1[0x2c];
      fStack_224 = fStack_48 * (float)param_1[0x21] + fStack_44 * fVar38 + fStack_40 * fVar33 +
                   fStack_3c * (float)param_1[0x2d];
      fStack_220 = fStack_48 * (float)param_1[0x22] + fStack_44 * fVar20 + fStack_40 * fVar26 +
                   fStack_3c * (float)param_1[0x2e];
      fStack_21c = fStack_48 * (float)param_1[0x23] + fStack_44 * fVar25 + fStack_40 * fVar28 +
                   fStack_3c * (float)param_1[0x2f];
      auVar1 = *(undefined1 (*) [16])(param_1 + 0x2c);
      fStack_218 = fStack_38 * (float)param_1[0x20] + fStack_34 * fVar32 + fStack_30 * fVar41 +
                   fStack_2c * *(float *)*(undefined1 (*) [16])(param_1 + 0x2c);
      fStack_214 = fStack_38 * (float)param_1[0x21] + fStack_34 * fVar38 + fStack_30 * fVar33 +
                   fStack_2c * (float)param_1[0x2d];
      fStack_210 = fStack_38 * (float)param_1[0x22] + fStack_34 * fVar20 + fStack_30 * fVar26 +
                   fStack_2c * (float)param_1[0x2e];
      fStack_20c = fStack_38 * (float)param_1[0x23] + fStack_34 * fVar25 + fStack_30 * fVar28 +
                   fStack_2c * (float)param_1[0x2f];
      fStack_398 = auVar1._0_4_;
      fStack_394 = auVar1._4_4_;
      fStack_390 = auVar1._8_4_;
      fStack_38c = auVar1._12_4_;
      fStack_208 = fStack_28 * (float)param_1[0x20] + fStack_24 * fVar32 + fStack_20 * fVar41 +
                   fStack_1c * fStack_398;
      fStack_204 = fStack_28 * (float)param_1[0x21] + fStack_24 * fVar38 + fStack_20 * fVar33 +
                   fStack_1c * fStack_394;
      fStack_200 = fStack_28 * (float)param_1[0x22] + fStack_24 * fVar20 + fStack_20 * fVar26 +
                   fStack_1c * fStack_390;
      fStack_1fc = fStack_28 * (float)param_1[0x23] + fStack_24 * fVar25 + fStack_20 * fVar28 +
                   fStack_1c * fStack_38c;
      if ((_DAT_011d2cf0 & 1) == 0) {
        _DAT_011d2cf0 = _DAT_011d2cf0 | 1;
        _DAT_011d2ce0 = 0.0;
        fRam011d2ce4 = 1.0;
        fRam011d2ce8 = 0.0;
        fRam011d2cec = 0.0;
      }
      auVar22._0_4_ = fStack_220 * fStack_220 + fStack_224 * fStack_224 + fStack_228 * fStack_228;
      auVar22._4_4_ = auVar22._0_4_;
      auVar22._8_4_ = auVar22._0_4_;
      auVar22._12_4_ = auVar22._0_4_;
      auVar58 = rsqrtps(auVar58,auVar22);
      fVar32 = auVar58._0_4_;
      fVar38 = auVar58._4_4_;
      fVar41 = auVar58._8_4_;
      auVar47._8_4_ = 0x3f800000;
      auVar47._0_8_ = 0x3f8000003f800000;
      auVar47._12_4_ = 0x3f800000;
      fVar32 = (1.0 - fVar32 * fVar32 * auVar22._0_4_) * fVar32 * 0.5 + fVar32;
      fVar38 = (1.0 - fVar38 * fVar38 * auVar22._0_4_) * fVar38 * 0.5 + fVar38;
      fVar41 = (1.0 - fVar41 * fVar41 * auVar22._0_4_) * fVar41 * 0.5 + fVar41;
      fVar20 = ((1.0 - fVar32 * fVar32 * auVar22._0_4_) * fVar32 * 0.5 + fVar32) * fStack_228;
      fVar25 = ((1.0 - fVar38 * fVar38 * auVar22._0_4_) * fVar38 * 0.5 + fVar38) * fStack_224;
      fVar41 = ((1.0 - fVar41 * fVar41 * auVar22._0_4_) * fVar41 * 0.5 + fVar41) * fStack_220;
      fVar32 = fVar20 * fVar20;
      auVar59._4_4_ = fVar32;
      auVar59._0_4_ = fVar25 * fVar25;
      auVar59._8_4_ = fVar32;
      auVar59._12_4_ = fVar32;
      fVar32 = fVar41 * fVar41 + fVar25 * fVar25 + fVar32;
      auVar58._4_4_ = fVar32;
      auVar58._0_4_ = fVar32;
      auVar58._8_4_ = fVar32;
      auVar58._12_4_ = fVar32;
      auVar60 = rsqrtps(auVar59,auVar58);
      auVar36._0_4_ = _DAT_011d2ce0 * _DAT_011d2ce0;
      auVar36._4_4_ = fRam011d2ce4 * fRam011d2ce4;
      auVar36._8_4_ = fRam011d2ce8 * fRam011d2ce8;
      auVar36._12_4_ = fRam011d2cec * fRam011d2cec;
      fVar38 = auVar36._8_4_ + auVar36._4_4_ + auVar36._0_4_;
      auVar1._4_4_ = fVar38;
      auVar1._0_4_ = fVar38;
      auVar1._8_4_ = fVar38;
      auVar1._12_4_ = fVar38;
      auVar58 = rsqrtps(auVar36,auVar1);
      fVar33 = auVar58._0_4_;
      fVar26 = auVar58._4_4_;
      fVar28 = auVar58._8_4_;
      fVar53 = auVar60._0_4_;
      fVar30 = auVar60._4_4_;
      fVar8 = auVar60._8_4_;
      fVar32 = ((1.0 - fVar28 * fVar28 * fVar38) * fVar28 * 0.5 + fVar28) * fRam011d2ce8 *
               ((1.0 - fVar8 * fVar8 * fVar32) * fVar8 * 0.5 + fVar8) * fVar41 +
               ((1.0 - fVar26 * fVar26 * fVar38) * fVar26 * 0.5 + fVar26) * fRam011d2ce4 *
               ((1.0 - fVar30 * fVar30 * fVar32) * fVar30 * 0.5 + fVar30) * fVar25 +
               ((1.0 - fVar33 * fVar33 * fVar38) * fVar33 * 0.5 + fVar33) * _DAT_011d2ce0 *
               ((1.0 - fVar53 * fVar53 * fVar32) * fVar53 * 0.5 + fVar53) * fVar20;
      auVar37._4_4_ = fVar32;
      auVar37._0_4_ = fVar32;
      auVar37._8_4_ = fVar32;
      auVar37._12_4_ = fVar32;
      auVar60._8_4_ = 0xbf800000;
      auVar60._0_8_ = 0xbf800000bf800000;
      auVar60._12_4_ = 0xbf800000;
      auVar58 = maxps(auVar37,auVar60);
      minps(auVar58,auVar47);
      fStack_198 = fStack_238;
      fStack_194 = fStack_234;
      fStack_190 = fStack_230;
      fStack_18c = fStack_22c;
      fStack_188 = fStack_228;
      fStack_184 = fStack_224;
      fStack_180 = fStack_220;
      fStack_17c = fStack_21c;
      fStack_178 = fStack_218;
      fStack_174 = fStack_214;
      fStack_170 = fStack_210;
      fStack_16c = fStack_20c;
      fVar6 = (float10)_CIacos();
      fVar32 = (float)fVar6;
      auVar23._0_4_ = (fVar32 - 0.0) * -1.0;
      auVar23._4_4_ = (fVar32 - 0.0) * -1.0;
      auVar23._8_4_ = (fVar32 - 0.0) * -1.0;
      auVar23._12_4_ = (fVar32 - 0.0) * -1.0;
      auVar2._4_4_ = fVar32 - 0.0;
      auVar2._0_4_ = fVar32 - 0.0;
      auVar2._8_4_ = fVar32 - 0.0;
      auVar2._12_4_ = fVar32 - 0.0;
      auVar58 = maxps(auVar23,auVar2);
      auVar24._4_4_ = -(uint)(auVar58._4_4_ <= 0.01);
      auVar24._0_4_ = -(uint)(auVar58._0_4_ <= 0.01);
      auVar24._8_4_ = -(uint)(auVar58._8_4_ <= 0.01);
      auVar24._12_4_ = -(uint)(auVar58._12_4_ <= 0.01);
      iVar5 = movmskps(extraout_ECX,auVar24);
      if (iVar5 == 0xf) {
        fVar32 = fStack_198;
        fVar38 = fStack_194;
        fVar20 = fStack_190;
        fVar25 = fStack_18c;
        fVar41 = fStack_188;
        fVar33 = fStack_184;
        fVar26 = fStack_180;
        fVar28 = fStack_17c;
        fVar53 = fStack_178;
        fVar30 = fStack_174;
        fVar8 = fStack_170;
        fVar52 = fStack_16c;
      }
      else {
        fVar6 = (float10)fsin((float10)fVar32);
        fVar33 = fVar25 * fRam011d2ce8 - fVar41 * fRam011d2ce4;
        fVar41 = fVar41 * _DAT_011d2ce0 - fVar20 * fRam011d2ce8;
        fVar20 = fVar20 * fRam011d2ce4 - fVar25 * _DAT_011d2ce0;
        fVar38 = fVar33 * fVar33;
        auVar48._4_4_ = fVar38;
        auVar48._0_4_ = fVar41 * fVar41;
        auVar48._8_4_ = fVar38;
        auVar48._12_4_ = fVar38;
        fVar38 = fVar20 * fVar20 + fVar41 * fVar41 + fVar38;
        auVar3._4_4_ = fVar38;
        auVar3._0_4_ = fVar38;
        auVar3._8_4_ = fVar38;
        auVar3._12_4_ = fVar38;
        auVar58 = rsqrtps(auVar48,auVar3);
        fVar25 = auVar58._0_4_;
        fVar26 = auVar58._4_4_;
        fVar28 = auVar58._8_4_;
        fVar25 = (1.0 - fVar25 * fVar25 * fVar38) * fVar25 * 0.5 + fVar25;
        fVar26 = (1.0 - fVar26 * fVar26 * fVar38) * fVar26 * 0.5 + fVar26;
        fVar28 = (1.0 - fVar28 * fVar28 * fVar38) * fVar28 * 0.5 + fVar28;
        fVar33 = ((1.0 - fVar25 * fVar25 * fVar38) * fVar25 * 0.5 + fVar25) * fVar33;
        fVar41 = ((1.0 - fVar26 * fVar26 * fVar38) * fVar26 * 0.5 + fVar26) * fVar41;
        fVar20 = ((1.0 - fVar28 * fVar28 * fVar38) * fVar28 * 0.5 + fVar28) * fVar20;
        fVar38 = (float)fVar6;
        fVar6 = (float10)fcos((float10)fVar32);
        fVar53 = (float)fVar6;
        fVar32 = 1.0 - fVar53;
        fVar25 = fVar32 * fVar20;
        fVar26 = (1.0 - fVar53) * fVar20;
        fVar28 = (1.0 - fVar53) * fVar20;
        fVar30 = (1.0 - fVar53) * fVar20;
        fVar52 = fVar32 * fVar33;
        fVar32 = fVar32 * fVar41;
        fVar35 = (1.0 - fVar53) * fVar41;
        fVar40 = (1.0 - fVar53) * fVar41;
        fVar43 = (1.0 - fVar53) * fVar41;
        uStack_1c8 = 0x3f800000;
        uStack_1c4 = 0x3f800000;
        uStack_1c0 = 0x3f800000;
        fStack_268 = fVar25 * fVar20 + fVar53;
        fStack_264 = fVar26 * fVar20 + fVar53;
        fStack_260 = fVar28 * fVar20 + fVar53;
        fStack_25c = fVar30 * fVar20 + fVar53;
        fStack_1e8 = fVar25 * fVar41 - fVar38 * fVar33;
        fStack_1e4 = fVar26 * fVar41 - fVar38 * fVar33;
        fStack_1e0 = fVar28 * fVar41 - fVar38 * fVar33;
        fStack_1dc = fVar30 * fVar41 - fVar38 * fVar33;
        fStack_288 = fVar25 * fVar33 + fVar38 * fVar41;
        fStack_284 = fVar26 * fVar33 + fVar38 * fVar41;
        fStack_280 = fVar28 * fVar33 + fVar38 * fVar41;
        fStack_27c = fVar30 * fVar33 + fVar38 * fVar41;
        fStack_248 = fVar32 * fVar20 + fVar38 * fVar33;
        fStack_244 = fVar35 * fVar20 + fVar38 * fVar33;
        fStack_240 = fVar40 * fVar20 + fVar38 * fVar33;
        fStack_23c = fVar43 * fVar20 + fVar38 * fVar33;
        fStack_1b8 = fVar32 * fVar41 + fVar53;
        fStack_1b4 = fVar35 * fVar41 + fVar53;
        fStack_1b0 = fVar40 * fVar41 + fVar53;
        fStack_1ac = fVar43 * fVar41 + fVar53;
        fVar8 = fVar52 * fVar20 - fVar38 * fVar41;
        fVar30 = fVar52 * fVar41 + fVar38 * fVar20;
        fStack_278 = fVar32 * fVar33 - fVar38 * fVar20;
        fStack_274 = fVar35 * fVar33 - fVar38 * fVar20;
        fStack_270 = fVar40 * fVar33 - fVar38 * fVar20;
        fStack_26c = fVar43 * fVar33 - fVar38 * fVar20;
        fVar53 = fVar52 * fVar33 + fVar53;
        uStack_258 = 0;
        uStack_254 = 0;
        uStack_250 = 0;
        uStack_24c = 0;
        uStack_1f8 = 0;
        uStack_1f4 = 0;
        uStack_1f0 = 0;
        uStack_1ec = 0;
        uStack_1a8 = 0;
        uStack_1a4 = 0;
        uStack_1a0 = 0;
        uStack_19c = 0;
        uStack_1d8 = 0;
        uStack_1d4 = 0;
        uStack_1d0 = 0;
        uStack_1cc = 0;
        fVar32 = fStack_234 * fStack_278 + fStack_238 * fVar53 + fStack_230 * fStack_288 +
                 fStack_22c * 0.0;
        fVar38 = fStack_234 * fStack_1b8 + fStack_238 * fVar30 + fStack_230 * fStack_1e8 +
                 fStack_22c * 0.0;
        fVar20 = fStack_234 * fStack_248 + fStack_238 * fVar8 + fStack_230 * fStack_268 +
                 fStack_22c * 0.0;
        fVar25 = fStack_234 * 0.0 + fStack_238 * 0.0 + fStack_230 * 0.0 + fStack_22c * 1.0;
        fVar41 = fStack_224 * fStack_278 + fStack_228 * fVar53 + fStack_220 * fStack_288 +
                 fStack_21c * 0.0;
        fVar33 = fStack_224 * fStack_1b8 + fStack_228 * fVar30 + fStack_220 * fStack_1e8 +
                 fStack_21c * 0.0;
        fVar26 = fStack_224 * fStack_248 + fStack_228 * fVar8 + fStack_220 * fStack_268 +
                 fStack_21c * 0.0;
        fVar28 = fStack_224 * 0.0 + fStack_228 * 0.0 + fStack_220 * 0.0 + fStack_21c * 1.0;
        fVar53 = fStack_214 * fStack_278 + fStack_218 * fVar53 + fStack_210 * fStack_288 +
                 fStack_20c * 0.0;
        fVar30 = fStack_214 * fStack_1b8 + fStack_218 * fVar30 + fStack_210 * fStack_1e8 +
                 fStack_20c * 0.0;
        fVar8 = fStack_214 * fStack_248 + fStack_218 * fVar8 + fStack_210 * fStack_268 +
                fStack_20c * 0.0;
        fVar52 = fStack_214 * 0.0 + fStack_218 * 0.0 + fStack_210 * 0.0 + fStack_20c * 1.0;
        uStack_1bc = 0x3f800000;
      }
      fVar35 = *(float *)((int)this + 0xc0);
      fVar40 = *(float *)((int)this + 0xc4);
      fVar43 = *(float *)((int)this + 200);
      fVar45 = *(float *)((int)this + 0xcc);
      fVar7 = *(float *)((int)this + 0xd0);
      fVar11 = *(float *)((int)this + 0xd4);
      fVar14 = *(float *)((int)this + 0xd8);
      fVar17 = *(float *)((int)this + 0xdc);
      fStack_158 = fVar40 * fVar41 + fVar35 * fVar32 + fVar43 * fVar53 + fVar45 * fStack_208;
      fStack_154 = fVar40 * fVar33 + fVar35 * fVar38 + fVar43 * fVar30 + fVar45 * fStack_204;
      fStack_150 = fVar40 * fVar26 + fVar35 * fVar20 + fVar43 * fVar8 + fVar45 * fStack_200;
      fStack_14c = fVar40 * fVar28 + fVar35 * fVar25 + fVar43 * fVar52 + fVar45 * fStack_1fc;
      fVar35 = *(float *)((int)this + 0xe0);
      fVar40 = *(float *)((int)this + 0xe4);
      fVar43 = *(float *)((int)this + 0xe8);
      fVar45 = *(float *)((int)this + 0xec);
      fStack_148 = fVar11 * fVar41 + fVar7 * fVar32 + fVar14 * fVar53 + fVar17 * fStack_208;
      fStack_144 = fVar11 * fVar33 + fVar7 * fVar38 + fVar14 * fVar30 + fVar17 * fStack_204;
      fStack_140 = fVar11 * fVar26 + fVar7 * fVar20 + fVar14 * fVar8 + fVar17 * fStack_200;
      fStack_13c = fVar11 * fVar28 + fVar7 * fVar25 + fVar14 * fVar52 + fVar17 * fStack_1fc;
      fVar7 = *(float *)((int)this + 0xf0);
      fVar11 = *(float *)((int)this + 0xf4);
      fVar14 = *(float *)((int)this + 0xf8);
      fVar17 = *(float *)((int)this + 0xfc);
      fStack_138 = fVar40 * fVar41 + fVar35 * fVar32 + fVar43 * fVar53 + fVar45 * fStack_208;
      fStack_134 = fVar40 * fVar33 + fVar35 * fVar38 + fVar43 * fVar30 + fVar45 * fStack_204;
      fStack_130 = fVar40 * fVar26 + fVar35 * fVar20 + fVar43 * fVar8 + fVar45 * fStack_200;
      fStack_12c = fVar40 * fVar28 + fVar35 * fVar25 + fVar43 * fVar52 + fVar45 * fStack_1fc;
      fStack_128 = fVar11 * fVar41 + fVar7 * fVar32 + fVar14 * fVar53 + fVar17 * fStack_208;
      fStack_124 = fVar11 * fVar33 + fVar7 * fVar38 + fVar14 * fVar30 + fVar17 * fStack_204;
      fStack_120 = fVar11 * fVar26 + fVar7 * fVar20 + fVar14 * fVar8 + fVar17 * fStack_200;
      fStack_11c = fVar11 * fVar28 + fVar7 * fVar25 + fVar14 * fVar52 + fVar17 * fStack_1fc;
      (**(code **)(*(int *)this + 0x20))(&fStack_158);
      return;
    }
    break;
  case 4:
    fVar32 = *(float *)((int)this + 0x150);
    fVar38 = *(float *)((int)this + 0x154);
    fVar20 = *(float *)((int)this + 0x158);
    fVar25 = *(float *)((int)this + 0x15c);
    fVar41 = *(float *)((int)this + 0x120);
    fVar33 = *(float *)((int)this + 0x124);
    fVar26 = *(float *)((int)this + 0x128);
    fVar28 = *(float *)((int)this + 300);
    fVar53 = *(float *)((int)this + 0x130);
    fVar30 = *(float *)((int)this + 0x134);
    fVar8 = *(float *)((int)this + 0x138);
    fVar52 = *(float *)((int)this + 0x13c);
    fVar35 = *(float *)((int)this + 0x160);
    fVar40 = *(float *)((int)this + 0x164);
    fVar43 = *(float *)((int)this + 0x168);
    fVar45 = *(float *)((int)this + 0x16c);
    fVar7 = *(float *)((int)this + 0x170);
    fVar11 = *(float *)((int)this + 0x174);
    fVar14 = *(float *)((int)this + 0x178);
    fVar17 = *(float *)((int)this + 0x17c);
    fVar10 = *(float *)((int)this + 0x180);
    fVar13 = *(float *)((int)this + 0x184);
    fVar16 = *(float *)((int)this + 0x188);
    fVar19 = *(float *)((int)this + 0x18c);
    fVar9 = fVar32 * *(float *)((int)this + 0x110) + fVar38 * fVar41 + fVar20 * fVar53 +
            fVar25 * *(float *)((int)this + 0x140);
    fVar12 = fVar32 * *(float *)((int)this + 0x114) + fVar38 * fVar33 + fVar20 * fVar30 +
             fVar25 * *(float *)((int)this + 0x144);
    fVar15 = fVar32 * *(float *)((int)this + 0x118) + fVar38 * fVar26 + fVar20 * fVar8 +
             fVar25 * *(float *)((int)this + 0x148);
    fVar18 = fVar32 * *(float *)((int)this + 0x11c) + fVar38 * fVar28 + fVar20 * fVar52 +
             fVar25 * *(float *)((int)this + 0x14c);
    fVar21 = fVar35 * *(float *)((int)this + 0x110) + fVar40 * fVar41 + fVar43 * fVar53 +
             fVar45 * *(float *)((int)this + 0x140);
    fVar27 = fVar35 * *(float *)((int)this + 0x114) + fVar40 * fVar33 + fVar43 * fVar30 +
             fVar45 * *(float *)((int)this + 0x144);
    fVar29 = fVar35 * *(float *)((int)this + 0x118) + fVar40 * fVar26 + fVar43 * fVar8 +
             fVar45 * *(float *)((int)this + 0x148);
    fVar31 = fVar35 * *(float *)((int)this + 0x11c) + fVar40 * fVar28 + fVar43 * fVar52 +
             fVar45 * *(float *)((int)this + 0x14c);
    fVar34 = fVar7 * *(float *)((int)this + 0x110) + fVar11 * fVar41 + fVar14 * fVar53 +
             fVar17 * *(float *)((int)this + 0x140);
    fVar39 = fVar7 * *(float *)((int)this + 0x114) + fVar11 * fVar33 + fVar14 * fVar30 +
             fVar17 * *(float *)((int)this + 0x144);
    fVar42 = fVar7 * *(float *)((int)this + 0x118) + fVar11 * fVar26 + fVar14 * fVar8 +
             fVar17 * *(float *)((int)this + 0x148);
    fVar44 = fVar7 * *(float *)((int)this + 0x11c) + fVar11 * fVar28 + fVar14 * fVar52 +
             fVar17 * *(float *)((int)this + 0x14c);
    fVar32 = (float)param_1[0x28];
    fVar38 = (float)param_1[0x29];
    fVar20 = (float)param_1[0x2a];
    fVar25 = (float)param_1[0x2b];
    fVar35 = (float)param_1[0x20];
    fVar40 = (float)param_1[0x21];
    fVar43 = (float)param_1[0x22];
    fVar45 = (float)param_1[0x23];
    fVar7 = (float)param_1[0x2c];
    fVar11 = (float)param_1[0x2d];
    fVar14 = (float)param_1[0x2e];
    fVar17 = (float)param_1[0x2f];
    fVar46 = fVar10 * *(float *)((int)this + 0x110) + fVar13 * fVar41 + fVar16 * fVar53 +
             fVar19 * *(float *)((int)this + 0x140);
    fVar49 = fVar10 * *(float *)((int)this + 0x114) + fVar13 * fVar33 + fVar16 * fVar30 +
             fVar19 * *(float *)((int)this + 0x144);
    fVar50 = fVar10 * *(float *)((int)this + 0x118) + fVar13 * fVar26 + fVar16 * fVar8 +
             fVar19 * *(float *)((int)this + 0x148);
    fVar51 = fVar10 * *(float *)((int)this + 0x11c) + fVar13 * fVar28 + fVar16 * fVar52 +
             fVar19 * *(float *)((int)this + 0x14c);
    fVar41 = (float)param_1[0x24];
    fVar33 = (float)param_1[0x25];
    fVar26 = (float)param_1[0x26];
    fVar28 = (float)param_1[0x27];
    fVar54 = fVar9 * fVar35 + fVar12 * fVar41 + fVar15 * fVar32 + fVar18 * fVar7;
    fVar55 = fVar9 * fVar40 + fVar12 * fVar33 + fVar15 * fVar38 + fVar18 * fVar11;
    fVar56 = fVar9 * fVar43 + fVar12 * fVar26 + fVar15 * fVar20 + fVar18 * fVar14;
    fVar57 = fVar9 * fVar45 + fVar12 * fVar28 + fVar15 * fVar25 + fVar18 * fVar17;
    fVar10 = fVar21 * fVar35 + fVar27 * fVar41 + fVar29 * fVar32 + fVar31 * fVar7;
    fVar13 = fVar21 * fVar40 + fVar27 * fVar33 + fVar29 * fVar38 + fVar31 * fVar11;
    fVar16 = fVar21 * fVar43 + fVar27 * fVar26 + fVar29 * fVar20 + fVar31 * fVar14;
    fVar19 = fVar21 * fVar45 + fVar27 * fVar28 + fVar29 * fVar25 + fVar31 * fVar17;
    fVar9 = fVar34 * fVar35 + fVar39 * fVar41 + fVar42 * fVar32 + fVar44 * fVar7;
    fVar12 = fVar34 * fVar40 + fVar39 * fVar33 + fVar42 * fVar38 + fVar44 * fVar11;
    fVar15 = fVar34 * fVar43 + fVar39 * fVar26 + fVar42 * fVar20 + fVar44 * fVar14;
    fVar18 = fVar34 * fVar45 + fVar39 * fVar28 + fVar42 * fVar25 + fVar44 * fVar17;
    fVar53 = *(float *)((int)this + 0xc0);
    fVar30 = *(float *)((int)this + 0xc4);
    fVar8 = *(float *)((int)this + 200);
    fVar52 = *(float *)((int)this + 0xcc);
    fVar35 = fVar46 * fVar35 + fVar49 * fVar41 + fVar50 * fVar32 + fVar51 * fVar7;
    fVar40 = fVar46 * fVar40 + fVar49 * fVar33 + fVar50 * fVar38 + fVar51 * fVar11;
    fVar43 = fVar46 * fVar43 + fVar49 * fVar26 + fVar50 * fVar20 + fVar51 * fVar14;
    fVar45 = fVar46 * fVar45 + fVar49 * fVar28 + fVar50 * fVar25 + fVar51 * fVar17;
    fVar32 = *(float *)((int)this + 0xd0);
    fVar38 = *(float *)((int)this + 0xd4);
    fVar20 = *(float *)((int)this + 0xd8);
    fVar25 = *(float *)((int)this + 0xdc);
    local_d0 = fVar53 * fVar54 + fVar30 * fVar10 + fVar8 * fVar9 + fVar52 * fVar35;
    fStack_cc = fVar53 * fVar55 + fVar30 * fVar13 + fVar8 * fVar12 + fVar52 * fVar40;
    fStack_c8 = fVar53 * fVar56 + fVar30 * fVar16 + fVar8 * fVar15 + fVar52 * fVar43;
    fStack_c4 = fVar53 * fVar57 + fVar30 * fVar19 + fVar8 * fVar18 + fVar52 * fVar45;
    fVar41 = *(float *)((int)this + 0xe0);
    fVar33 = *(float *)((int)this + 0xe4);
    fVar26 = *(float *)((int)this + 0xe8);
    fVar28 = *(float *)((int)this + 0xec);
    local_c0 = fVar38 * fVar10 + fVar32 * fVar54 + fVar20 * fVar9 + fVar25 * fVar35;
    fStack_bc = fVar38 * fVar13 + fVar32 * fVar55 + fVar20 * fVar12 + fVar25 * fVar40;
    fStack_b8 = fVar38 * fVar16 + fVar32 * fVar56 + fVar20 * fVar15 + fVar25 * fVar43;
    fStack_b4 = fVar38 * fVar19 + fVar32 * fVar57 + fVar20 * fVar18 + fVar25 * fVar45;
    fVar32 = *(float *)((int)this + 0xf0);
    fVar38 = *(float *)((int)this + 0xf4);
    fVar20 = *(float *)((int)this + 0xf8);
    fVar25 = *(float *)((int)this + 0xfc);
    local_b0 = fVar33 * fVar10 + fVar41 * fVar54 + fVar26 * fVar9 + fVar28 * fVar35;
    fStack_ac = fVar33 * fVar13 + fVar41 * fVar55 + fVar26 * fVar12 + fVar28 * fVar40;
    fStack_a8 = fVar33 * fVar16 + fVar41 * fVar56 + fVar26 * fVar15 + fVar28 * fVar43;
    fStack_a4 = fVar33 * fVar19 + fVar41 * fVar57 + fVar26 * fVar18 + fVar28 * fVar45;
    local_a0 = fVar38 * fVar10 + fVar32 * fVar54 + fVar20 * fVar9 + fVar25 * fVar35;
    fStack_9c = fVar38 * fVar13 + fVar32 * fVar55 + fVar20 * fVar12 + fVar25 * fVar40;
    fStack_98 = fVar38 * fVar16 + fVar32 * fVar56 + fVar20 * fVar15 + fVar25 * fVar43;
    fStack_94 = fVar38 * fVar19 + fVar32 * fVar57 + fVar20 * fVar18 + fVar25 * fVar45;
    (**(code **)(*(int *)this + 0x20))(&local_d0);
  }
  return;
}
