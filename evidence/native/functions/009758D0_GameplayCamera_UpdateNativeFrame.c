/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name, original PC 1.67 TS3W.exe. Complete gameplay-camera frame. Preserve
   original call order: map-threshold update00976612 precedes ordinary-follow00977CB5 and ground
   preparation0097836F when those blocks run. Input collector00962C90 returns continuous rate and
   impulse blocks; angular speed=-(impulse/deltaSeconds+continuousRate) at00975D56..00975D71.
   Rotation speed lives at+7F0 pitch /+7F4 yaw, angle at+7D0 pitch /+7D4 yaw. Ordinary
   branch00977EBC..00977ED5 integrates angle+=speed*deltaSeconds. With no fresh angular input, speed
   decays by pow(rotationRetention+8D4,deltaSeconds) while sqrt(pitchSpeed^2+yawSpeed^2)>0.1
   (104487C bytesCD CC CC3D); below that branch installs fresh input (usually zero). No yaw wrapping
   or clamp in this integration; subsequent limit writes replace pitch only. Translation outputs
   preserve positive rate+impulse/dt. Four eye-adjacent ground samples and horizontal/descent gate
   remain here. Camera fields are inferred analyst mappings verified by input writer and angle
   getter; SIMD locals, imported x87 math and indirect-call ABI are decompiler artifacts. */

void __thiscall GameplayCamera_UpdateNativeFrame(void *this,float deltaSeconds,char param_2)

{
  void *pvVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  bool bVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  byte bVar8;
  char cVar9;
  bool bVar10;
  undefined4 in_EAX;
  int iVar11;
  undefined4 uVar12;
  int *piVar13;
  int *piVar14;
  float *pfVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  uint uVar19;
  int iVar20;
  undefined4 *puVar21;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  void *this_00;
  undefined4 extraout_ECX;
  float extraout_ECX_00;
  float extraout_ECX_01;
  int iVar22;
  float extraout_ECX_02;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  undefined4 extraout_EDX_01;
  undefined4 extraout_EDX_02;
  undefined4 extraout_EDX_03;
  undefined4 extraout_EDX_04;
  undefined4 extraout_EDX_05;
  uint uVar23;
  undefined4 extraout_EDX_06;
  undefined4 extraout_EDX_07;
  float *extraout_EDX_08;
  float *extraout_EDX_09;
  float *extraout_EDX_10;
  float *extraout_EDX_11;
  float *pfVar24;
  float *pfVar25;
  float *pfVar26;
  float *extraout_EDX_12;
  float *extraout_EDX_13;
  float *extraout_EDX_14;
  float *extraout_EDX_15;
  float *extraout_EDX_16;
  undefined1 (*pauVar27) [16];
  bool bVar28;
  bool bVar29;
  float10 fVar30;
  float10 extraout_ST0;
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined1 auVar35 [16];
  undefined1 auVar36 [16];
  undefined1 auVar37 [16];
  undefined1 auVar38 [16];
  undefined1 auVar39 [16];
  undefined1 auVar40 [16];
  undefined1 auVar41 [16];
  undefined1 auVar42 [16];
  undefined1 auVar43 [16];
  undefined1 auVar44 [16];
  undefined1 auVar45 [16];
  undefined1 auVar46 [16];
  undefined1 auVar47 [16];
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
  float fVar60;
  float fVar61;
  float fVar62;
  float fVar76;
  float fVar77;
  undefined1 auVar63 [16];
  undefined1 auVar64 [16];
  undefined1 auVar65 [16];
  undefined1 auVar66 [16];
  float fVar78;
  undefined1 auVar67 [16];
  undefined1 auVar68 [16];
  undefined1 auVar69 [16];
  undefined1 auVar70 [16];
  undefined1 auVar71 [16];
  undefined1 auVar72 [16];
  undefined1 auVar73 [16];
  undefined1 auVar74 [16];
  undefined1 auVar75 [16];
  float fVar79;
  float fVar86;
  float fVar87;
  undefined1 auVar80 [16];
  undefined1 auVar81 [16];
  undefined1 auVar82 [16];
  undefined1 auVar83 [16];
  float fVar88;
  undefined1 auVar84 [16];
  undefined1 auVar85 [16];
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
  undefined1 auVar108 [16];
  undefined1 auVar109 [16];
  undefined1 auVar110 [16];
  undefined1 auVar111 [16];
  undefined1 auVar112 [16];
  undefined1 auVar113 [16];
  undefined1 auVar114 [16];
  undefined1 auVar115 [16];
  undefined1 auVar116 [16];
  undefined1 auVar117 [16];
  undefined1 auVar118 [16];
  undefined1 auVar119 [16];
  undefined1 auVar120 [16];
  undefined1 auVar121 [16];
  undefined8 uVar122;
  uint *puVar123;
  float fStack_984;
  float fStack_97c;
  float fStack_978;
  float fStack_974;
  float fStack_970;
  float fStack_96c;
  char cStack_965;
  float *pfStack_964;
  float *pfStack_960;
  float *pfStack_95c;
  float *pfStack_958;
  float *pfStack_954;
  float *pfStack_944;
  float *pfStack_940;
  float *pfStack_93c;
  float *pfStack_938;
  float *pfStack_934;
  float local_924;
  undefined1 auStack_920 [8];
  float *pfStack_918;
  float *pfStack_914;
  float fStack_910;
  float *pfStack_90c;
  float fStack_908;
  float fStack_904;
  float *pfStack_900;
  float *pfStack_8fc;
  float *pfStack_8f8;
  float *pfStack_8f4;
  undefined1 uStack_8e1;
  float *pfStack_8e0;
  float *pfStack_8dc;
  float *pfStack_8d8;
  float *pfStack_8d4;
  float local_8d0;
  float fStack_8cc;
  float fStack_8c8;
  float fStack_8c4;
  float *pfStack_8c0;
  float *pfStack_8bc;
  float *pfStack_8b8;
  float *pfStack_8b4;
  undefined1 auStack_8b0 [8];
  float *pfStack_8a8;
  float *pfStack_8a4;
  float local_8a0;
  float fStack_89c;
  float fStack_898;
  float fStack_894;
  float fStack_888;
  float fStack_884;
  float *pfStack_880;
  float *pfStack_87c;
  float *pfStack_878;
  float *pfStack_874;
  float *pfStack_864;
  float *pfStack_860;
  float *pfStack_85c;
  float *pfStack_858;
  float *pfStack_854;
  float local_850;
  float fStack_84c;
  float fStack_848;
  float fStack_844;
  float fStack_838;
  float fStack_834;
  float *pfStack_830;
  float *pfStack_82c;
  float *pfStack_828;
  float *pfStack_824;
  undefined1 local_820 [8];
  float fStack_818;
  float fStack_814;
  float *pfStack_810;
  float *pfStack_80c;
  float *pfStack_808;
  float *pfStack_804;
  int iStack_7f8;
  int iStack_7f4;
  float fStack_7f0;
  undefined4 uStack_7ec;
  undefined4 uStack_7e8;
  undefined4 uStack_7e4;
  float *pfStack_7e0;
  float *pfStack_7dc;
  float *pfStack_7d8;
  float *pfStack_7d4;
  float fStack_7d0;
  float fStack_7cc;
  float fStack_7c8;
  float fStack_7c4;
  undefined1 (*pauStack_7b4) [16];
  float *pfStack_7b0;
  int iStack_7ac;
  float *pfStack_7a8;
  float **ppfStack_7a4;
  float *pfStack_7a0;
  float *pfStack_79c;
  float *pfStack_798;
  float *pfStack_794;
  undefined1 (*pauStack_78c) [16];
  float *pfStack_788;
  float *pfStack_784;
  undefined **appuStack_780 [2];
  ushort uStack_778;
  undefined2 uStack_776;
  undefined1 uStack_770;
  float *pfStack_760;
  undefined1 (*pauStack_75c) [16];
  float *pfStack_758;
  float *pfStack_754;
  float **ppfStack_750;
  undefined4 *puStack_74c;
  float **ppfStack_748;
  float *pfStack_744;
  undefined1 (*pauStack_740) [16];
  undefined1 (*pauStack_73c) [16];
  undefined1 (*pauStack_738) [16];
  float **ppfStack_734;
  float *pfStack_730;
  float *pfStack_72c;
  float *pfStack_728;
  undefined1 (*pauStack_724) [16];
  float *pfStack_720;
  float *pfStack_71c;
  float *pfStack_718;
  undefined1 (*pauStack_714) [16];
  float *pfStack_710;
  float *pfStack_70c;
  float *pfStack_708;
  int iStack_704;
  float *pfStack_700;
  undefined1 (*pauStack_6fc) [16];
  float *pfStack_6f8;
  undefined4 *puStack_6f4;
  float fStack_6f0;
  undefined4 uStack_6ec;
  undefined4 uStack_6e8;
  undefined4 uStack_6e4;
  float *pfStack_6d8;
  float *pfStack_6d4;
  undefined1 auStack_6d0 [8];
  float fStack_6c8;
  float fStack_6c4;
  undefined1 auStack_6c0 [8];
  float fStack_6b8;
  float fStack_6b4;
  float fStack_6b0;
  float fStack_6a0;
  undefined4 uStack_69c;
  float fStack_698;
  float fStack_694;
  float *pfStack_690;
  float *pfStack_68c;
  float *pfStack_688;
  float *pfStack_684;
  float fStack_680;
  undefined4 uStack_67c;
  float fStack_678;
  float fStack_674;
  float *pfStack_670;
  float *pfStack_66c;
  float *pfStack_668;
  float *pfStack_664;
  float fStack_660;
  float fStack_65c;
  float fStack_658;
  float *pfStack_650;
  float *pfStack_64c;
  float *pfStack_648;
  float *pfStack_644;
  float *pfStack_640;
  float *pfStack_63c;
  float *pfStack_638;
  float *pfStack_634;
  float *pfStack_630;
  float *pfStack_62c;
  float *pfStack_628;
  float *pfStack_624;
  float fStack_620;
  undefined4 uStack_61c;
  undefined4 uStack_618;
  undefined4 uStack_614;
  undefined1 auStack_610 [8];
  float fStack_608;
  float fStack_604;
  undefined1 local_600 [16];
  float fStack_5f0;
  float fStack_5ec;
  float fStack_5e8;
  float fStack_5e4;
  float fStack_5e0;
  float fStack_5dc;
  float fStack_5d8;
  float fStack_5d4;
  undefined1 auStack_5d0 [16];
  float *pfStack_5c0;
  float fStack_5b0;
  undefined4 uStack_5a0;
  float fStack_590;
  float fStack_580;
  float fStack_570;
  float fStack_560;
  float fStack_55c;
  float fStack_558;
  float fStack_554;
  undefined4 uStack_550;
  float *pfStack_540;
  undefined4 uStack_53c;
  float *pfStack_538;
  float *pfStack_534;
  float fStack_530;
  float fStack_520;
  float fStack_510;
  float *pfStack_500;
  undefined4 uStack_4f0;
  float *pfStack_4e0;
  float fStack_4d0;
  float *pfStack_4c0;
  float fStack_4b0;
  float *pfStack_4a0;
  undefined4 uStack_490;
  float fStack_480;
  float fStack_470;
  undefined4 uStack_460;
  float fStack_450;
  undefined4 uStack_440;
  float fStack_430;
  undefined4 uStack_42c;
  float fStack_428;
  undefined4 uStack_424;
  float *pfStack_420;
  float *pfStack_410;
  float *pfStack_40c;
  float *pfStack_408;
  float *pfStack_404;
  float *pfStack_400;
  float fStack_3f0;
  float fStack_3e0;
  float fStack_3d0;
  float *pfStack_3c0;
  float *pfStack_3bc;
  float *pfStack_3b8;
  float *pfStack_3b4;
  float fStack_3b0;
  float fStack_3a0;
  undefined4 uStack_390;
  float *pfStack_380;
  float fStack_370;
  float *pfStack_360;
  undefined **appuStack_350 [2];
  byte bStack_348;
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
  float local_300 [4];
  undefined1 auStack_2f0 [16];
  float fStack_2e0;
  float local_2d0 [4];
  float fStack_2c0;
  float fStack_2bc;
  float fStack_2b8;
  float fStack_2b4;
  float fStack_2b0;
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
  float afStack_260 [4];
  float fStack_250;
  float fStack_24c;
  float fStack_248;
  float fStack_244;
  undefined1 auStack_240 [16];
  float *pfStack_230;
  float fStack_22c;
  float fStack_228;
  float fStack_224;
  float *pfStack_220;
  float *pfStack_21c;
  float *pfStack_218;
  float *pfStack_214;
  float *pfStack_210;
  float fStack_20c;
  float fStack_208;
  float fStack_204;
  float fStack_200;
  float fStack_1fc;
  float fStack_1f8;
  float fStack_1f4;
  float *pfStack_1f0;
  float *pfStack_1ec;
  float *pfStack_1e8;
  float *pfStack_1e4;
  float *pfStack_1e0;
  float *pfStack_1dc;
  float *pfStack_1d8;
  float *pfStack_1d4;
  undefined1 auStack_1d0 [16];
  float *pfStack_1c0;
  float *pfStack_1bc;
  float *pfStack_1b8;
  float *pfStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float *pfStack_1a8;
  float fStack_1a4;
  float *pfStack_1a0;
  float *pfStack_19c;
  float *pfStack_198;
  float *pfStack_194;
  float fStack_190;
  float fStack_18c;
  float *pfStack_188;
  float fStack_184;
  float *pfStack_180;
  float *pfStack_17c;
  float *pfStack_178;
  float *pfStack_174;
  undefined1 auStack_150 [12];
  undefined1 auStack_144 [20];
  float *pfStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  undefined1 auStack_120 [16];
  float fStack_110;
  float fStack_10c;
  float *pfStack_108;
  float fStack_104;
  float afStack_100 [4];
  float fStack_f0;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float *pfStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float *pfStack_c0;
  float *pfStack_bc;
  float *pfStack_b8;
  float *pfStack_b4;
  float afStack_b0 [4];
  float *pfStack_a0;
  float *pfStack_9c;
  float *pfStack_98;
  float *pfStack_94;
  float *pfStack_90;
  float *pfStack_8c;
  float *pfStack_88;
  float *pfStack_84;
  float *pfStack_80;
  float *pfStack_7c;
  float *pfStack_78;
  float *pfStack_74;
  undefined1 auStack_70 [16];
  float *pfStack_60;
  float *pfStack_5c;
  float *pfStack_58;
  float *pfStack_54;
  float fStack_50;
  float fStack_4c;
  float *pfStack_48;
  float fStack_44;
  float *pfStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float *pfStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  undefined1 auStack_20 [16];
  
  local_850 = 1.1920929e-07;
  auVar63._4_4_ = deltaSeconds;
  auVar63._0_4_ = deltaSeconds;
  auVar63._8_4_ = deltaSeconds;
  auVar63._12_4_ = deltaSeconds;
  auVar96._0_4_ = deltaSeconds * -1.0;
  auVar96._4_4_ = deltaSeconds * -1.0;
  auVar96._8_4_ = deltaSeconds * -1.0;
  auVar96._12_4_ = deltaSeconds * -1.0;
  auVar63 = maxps(auVar96,auVar63);
  auVar64._4_4_ = -(uint)(auVar63._4_4_ <= 1.1920929e-07);
  auVar64._0_4_ = -(uint)(auVar63._0_4_ <= 1.1920929e-07);
  auVar64._8_4_ = -(uint)(auVar63._8_4_ <= 1.1920929e-07);
  auVar64._12_4_ = -(uint)(auVar63._12_4_ <= 1.1920929e-07);
  iVar11 = movmskps(in_EAX,auVar64);
  local_8d0 = deltaSeconds;
  fStack_8cc = deltaSeconds;
  fStack_8c8 = deltaSeconds;
  fStack_8c4 = deltaSeconds;
  local_8a0 = -1.0;
  fStack_89c = -1.0;
  fStack_898 = -1.0;
  fStack_894 = -1.0;
  fStack_84c = local_850;
  fStack_848 = local_850;
  fStack_844 = local_850;
  if (iVar11 == 0xf) {
    local_600._0_4_ = *(float *)((int)this + 0x780) - *(float *)((int)this + 0x770);
    local_600._4_4_ = *(float *)((int)this + 0x784) - *(float *)((int)this + 0x774);
    local_600._8_4_ = *(float *)((int)this + 0x788) - *(float *)((int)this + 0x778);
    local_600._12_4_ = *(float *)((int)this + 0x78c) - *(float *)((int)this + 0x77c);
    auVar31._0_4_ =
         local_600._8_4_ * local_600._8_4_ + local_600._4_4_ * local_600._4_4_ +
         local_600._0_4_ * local_600._0_4_;
    auVar31._4_4_ = auVar31._0_4_;
    auVar31._8_4_ = auVar31._0_4_;
    auVar31._12_4_ = auVar31._0_4_;
    _local_820 = sqrtps(auVar31,auVar31);
    auVar32._4_4_ = local_820._0_4_;
    auVar32._0_4_ = local_820._0_4_;
    auVar32._8_4_ = local_820._0_4_;
    auVar32._12_4_ = local_820._0_4_;
    auVar80._0_4_ = (float)local_820._0_4_ * -1.0;
    auVar80._4_4_ = (float)local_820._0_4_ * -1.0;
    auVar80._8_4_ = (float)local_820._0_4_ * -1.0;
    auVar80._12_4_ = (float)local_820._0_4_ * -1.0;
    auVar63 = maxps(auVar80,auVar32);
    auVar81._4_4_ = -(uint)(auVar63._4_4_ <= 1.1920929e-07);
    auVar81._0_4_ = -(uint)(auVar63._0_4_ <= 1.1920929e-07);
    auVar81._8_4_ = -(uint)(auVar63._8_4_ <= 1.1920929e-07);
    auVar81._12_4_ = -(uint)(auVar63._12_4_ <= 1.1920929e-07);
    iVar11 = movmskps(this,auVar81);
    if (iVar11 != 0xf) {
      local_600 = divps(local_600,auVar32);
    }
    pfVar15 = (float *)local_600;
    fStack_96c = (float)local_820._0_4_;
    goto LAB_00978b07;
  }
  if ((((*(char *)((int)this + 0x14) == '\0') && (param_2 == '\0')) &&
      (uVar12 = FUN_00970040((int)this), (char)uVar12 == '\0')) &&
     (*(char *)((int)this + 0x818) == '\0')) {
    return;
  }
  uVar12 = 0xbf800000;
  auVar112 = ZEXT816(0x3f800000);
  if ((*(byte *)((int)this + 0x880) & 1) == 0) {
    uVar16 = 0;
  }
  else {
    uVar16 = 0x3f800000;
  }
  *(undefined4 *)((int)this + 0x3d0) = uVar16;
  uVar16 = uVar12;
  if ((*(byte *)((int)this + 0x880) & 2) == 0) {
    uVar16 = 0;
  }
  *(undefined4 *)((int)this + 0x3a0) = uVar16;
  if ((*(byte *)((int)this + 0x880) & 0x10) == 0) {
    uVar16 = 0;
  }
  else {
    uVar16 = 0x3f800000;
  }
  *(undefined4 *)((int)this + 0x390) = uVar16;
  *(undefined4 *)((int)this + 0x394) = *(undefined4 *)((int)this + 0x394);
  *(undefined4 *)((int)this + 0x398) = *(undefined4 *)((int)this + 0x398);
  *(undefined4 *)((int)this + 0x39c) = *(undefined4 *)((int)this + 0x39c);
  uVar16 = uVar12;
  if ((*(byte *)((int)this + 0x880) & 0x20) == 0) {
    uVar16 = 0;
  }
  *(undefined4 *)((int)this + 0x3c0) = uVar16;
  *(undefined4 *)((int)this + 0x3c4) = *(undefined4 *)((int)this + 0x3c4);
  *(undefined4 *)((int)this + 0x3c8) = *(undefined4 *)((int)this + 0x3c8);
  *(undefined4 *)((int)this + 0x3cc) = *(undefined4 *)((int)this + 0x3cc);
  if ((*(byte *)((int)this + 0x880) & 4) == 0) {
    uVar12 = 0;
  }
  *(undefined4 *)((int)this + 0x390) = *(undefined4 *)((int)this + 0x390);
  *(undefined4 *)((int)this + 0x394) = uVar12;
  *(undefined4 *)((int)this + 0x398) = *(undefined4 *)((int)this + 0x398);
  *(undefined4 *)((int)this + 0x39c) = *(undefined4 *)((int)this + 0x39c);
  if ((*(byte *)((int)this + 0x880) & 8) == 0) {
    uVar12 = 0;
  }
  else {
    uVar12 = 0x3f800000;
  }
  *(undefined4 *)((int)this + 0x3c0) = *(undefined4 *)((int)this + 0x3c0);
  *(undefined4 *)((int)this + 0x3c4) = uVar12;
  *(undefined4 *)((int)this + 0x3c8) = *(undefined4 *)((int)this + 0x3c8);
  *(undefined4 *)((int)this + 0x3cc) = *(undefined4 *)((int)this + 0x3cc);
  piVar13 = (int *)FUN_0050af90();
  local_924 = (float)Graphics_GetManagerSingleton();
  if (((piVar13 != (int *)0x0) && (local_924 != 0.0)) &&
     (piVar14 = (int *)(**(code **)(*piVar13 + 4))(), piVar14 != (int *)0x0)) {
    pfVar15 = (float *)(**(code **)(*piVar14 + 0x38))();
    uVar12 = FUN_0060ee50((int)local_924);
    if ((((char)uVar12 == '\0') && (*(char *)((int)this + 0x8cc) != '\0')) &&
       (bVar8 = CameraInput_IsPanDragActive((int)this + 0x40), bVar8 == 0)) {
      (**(code **)(*piVar13 + 0x48))(&fStack_888);
      uVar12 = FUN_00513d60(fStack_884,1.0);
      uVar16 = FUN_00624be0(fStack_888,(pfVar15[2] - *pfVar15) - 1.0,1.0);
      uVar17 = FUN_00624be0(fStack_884,(pfVar15[3] - pfVar15[1]) - 1.0,1.0);
      uVar18 = FUN_00513d60(fStack_888,1.0);
      if ((char)uVar18 == '\0') {
        uVar18 = 0;
      }
      else {
        uVar18 = 0xbf800000;
      }
      *(undefined4 *)((int)this + 0x380) = uVar18;
      *(undefined4 *)((int)this + 900) = *(undefined4 *)((int)this + 900);
      *(undefined4 *)((int)this + 0x388) = *(undefined4 *)((int)this + 0x388);
      *(undefined4 *)((int)this + 0x38c) = *(undefined4 *)((int)this + 0x38c);
      if ((char)uVar17 == '\0') {
        uVar17 = 0;
      }
      else {
        uVar17 = 0xbf800000;
      }
      *(undefined4 *)((int)this + 0x380) = *(undefined4 *)((int)this + 0x380);
      *(undefined4 *)((int)this + 900) = *(undefined4 *)((int)this + 900);
      *(undefined4 *)((int)this + 0x388) = uVar17;
      *(undefined4 *)((int)this + 0x38c) = *(undefined4 *)((int)this + 0x38c);
      if ((char)uVar16 == '\0') {
        uVar16 = 0;
      }
      else {
        uVar16 = 0x3f800000;
      }
      *(undefined4 *)((int)this + 0x3b0) = uVar16;
      *(undefined4 *)((int)this + 0x3b4) = *(undefined4 *)((int)this + 0x3b4);
      *(undefined4 *)((int)this + 0x3b8) = *(undefined4 *)((int)this + 0x3b8);
      *(undefined4 *)((int)this + 0x3bc) = *(undefined4 *)((int)this + 0x3bc);
      if ((char)uVar12 == '\0') {
        uVar18 = 0;
      }
      else {
        uVar18 = 0x3f800000;
      }
      uVar12 = *(undefined4 *)((int)this + 0x3b0);
      uVar16 = *(undefined4 *)((int)this + 0x3b4);
      uVar17 = *(undefined4 *)((int)this + 0x3bc);
    }
    else {
      uVar12 = 0;
      uVar16 = 0;
      uVar18 = 0;
      uVar17 = 0;
      *(undefined4 *)((int)this + 0x380) = 0;
      *(undefined4 *)((int)this + 900) = 0;
      *(undefined4 *)((int)this + 0x388) = 0;
      *(undefined4 *)((int)this + 0x38c) = 0;
    }
    *(undefined4 *)((int)this + 0x3b0) = uVar12;
    *(undefined4 *)((int)this + 0x3b4) = uVar16;
    *(undefined4 *)((int)this + 0x3b8) = uVar18;
    *(undefined4 *)((int)this + 0x3bc) = uVar17;
  }
                    /* Input drain: ECX=controller+40; first output contains continuous rates,
                       second impulses. Input-bank rotation pitch/yaw feed their respective angular
                       channels; transformed XYZ outputs below are translation only. */
  CameraInput_CollectRateAndImpulse((void *)((int)this + 0x40),local_2d0,local_300);
  CameraInput_TranslationToHorizontalWorld
            (local_2d0,&fStack_560,&fStack_560,local_2d0,(float *)(*(int *)((int)this + 0xc) + 0x30)
            );
  uVar122 = CameraInput_TranslationToHorizontalWorld
                      (local_300,auStack_5d0,(float *)auStack_5d0,local_300,
                       (float *)(*(int *)((int)this + 0xc) + 0x30));
  auVar3._4_4_ = fStack_8cc;
  auVar3._0_4_ = local_8d0;
  auVar3._8_4_ = fStack_8c8;
  auVar3._12_4_ = fStack_8c4;
  auVar63 = divps(auStack_5d0,auVar3);
  auStack_6d0._0_4_ = auVar63._0_4_ + fStack_560;
  auStack_6d0._4_4_ = auVar63._4_4_ + fStack_55c;
  fStack_6c8 = auVar63._8_4_ + fStack_558;
  fStack_6c4 = auVar63._12_4_ + fStack_554;
                    /* Angular speed combines continuous block and impulse block divided by frame
                       seconds. The Ghidra SIMD stack propagation obscures channels; instructions
                       preserve pitch/yaw in the first two lanes of the angular block. */
                    /* Angular lanes combine here. First 9-float output is continuous rate; second
                       is impulse. 00975D56 divides impulse.angular by frame seconds and00975D61
                       adds rate.angular;00975D71 multiplies angular result by -1 replicated
                       from00FAB218 (bytes00 00 80 BF). XYZ at00975D48..00975D4B is separate
                       translation, with no sign change in its stored output. Pitch angular lane0,
                       yaw lane1. */
  auVar63 = divps(auStack_2f0,auVar3);
  auStack_6c0._0_4_ = (auVar63._0_4_ + fStack_2c0) * local_8a0;
  auStack_6c0._4_4_ = (auVar63._4_4_ + fStack_2bc) * fStack_89c;
  fStack_6b8 = (auVar63._8_4_ + fStack_2b8) * fStack_898;
  fStack_6b4 = (auVar63._12_4_ + fStack_2b4) * fStack_894;
  auVar102._0_4_ = (float)auStack_6d0._0_4_ * local_8a0;
  auVar102._4_4_ = (float)auStack_6d0._4_4_ * fStack_89c;
  auVar102._8_4_ = fStack_6c8 * fStack_898;
  auVar102._12_4_ = fStack_6c4 * fStack_894;
  auVar63 = maxps(auVar102,_auStack_6d0);
  auVar33._0_4_ = ((1.0 / deltaSeconds) * fStack_2e0 + fStack_2b0) * -1.0;
  auVar103._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
  auVar103._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
  auVar103._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
  auVar103._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
  uVar12 = movmskps((int)uVar122,auVar103);
  cStack_965 = ((byte)uVar12 & 7) != 7;
  auVar104._0_4_ = (float)auStack_6c0._0_4_ * local_8a0;
  auVar104._4_4_ = (float)auStack_6c0._4_4_ * fStack_89c;
  auVar104._8_4_ = fStack_6b8 * fStack_898;
  auVar104._12_4_ = fStack_6b4 * fStack_894;
  auVar63 = maxps(auVar104,_auStack_6c0);
  auVar105._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
  auVar105._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
  auVar105._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
  auVar105._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
  auVar33._4_4_ = auVar33._0_4_;
  auVar33._8_4_ = auVar33._0_4_;
  auVar33._12_4_ = auVar33._0_4_;
  uVar12 = movmskps(extraout_ECX,auVar105);
  bVar28 = ((byte)uVar12 & 7) != 7;
  auVar65._0_4_ = auVar33._0_4_ * local_8a0;
  auVar65._4_4_ = auVar33._0_4_ * fStack_89c;
  auVar65._8_4_ = auVar33._0_4_ * fStack_898;
  auVar65._12_4_ = auVar33._0_4_ * fStack_894;
  auVar63 = maxps(auVar65,auVar33);
  auVar66._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
  auVar66._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
  auVar66._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
  auVar66._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
  iVar11 = movmskps((int)((ulonglong)uVar122 >> 0x20),auVar66);
  bVar29 = iVar11 != 0xf;
  fStack_6b0 = auVar33._0_4_;
  uVar12 = FUN_00971030(this,(float *)&pfStack_860);
  if ((char)uVar12 != '\0') {
    uVar12 = FUN_00971120((int)this);
    if ((((char)uVar12 != *(char *)((int)this + 0x819)) && (*(char *)((int)this + 0x8b1) == '\0'))
       || (*(char *)((int)this + 0x8b5) != '\0')) {
      FUN_009746e0(this,(float *)&pfStack_860,*(float *)((int)this + 0x9ac),'\x01','\0','\0','\x01')
      ;
    }
    *(char *)((int)this + 0x819) = (char)uVar12;
    uVar19 = FUN_00971180(this,&iStack_7f8);
    if ((char)uVar19 != *(char *)((int)this + 0x830)) {
      if ((char)uVar19 == '\0') {
        FUN_009711c0((int)this);
      }
      else {
        FUN_00971c50(this,iStack_7f8,iStack_7f4);
      }
    }
  }
  bVar5 = false;
  pfStack_8c0 = (float *)0x0;
  pfStack_8bc = (float *)0x0;
  pfStack_8b8 = (float *)0x0;
  pfStack_8b4 = (float *)0x0;
  _auStack_8b0 = ZEXT816(0);
  if ((*(char *)((int)this + 0x830) != '\0') &&
     (pvVar1 = *(void **)((int)this + 0x834), pvVar1 != (void *)0x0)) {
    if ((*(char *)((int)this + 0x8b9) == '\0') &&
       ((*(int *)((int)this + 0x3c) == 0 ||
        (uVar12 = FUN_0096fe00(*(int *)((int)this + 0x3c)), (char)uVar12 == '\0')))) {
      if ((*(char *)((int)this + 0x8b1) == '\0') &&
         (((*(char *)((int)this + 0x8b2) == '\0' && (*(char *)((int)this + 0x8b3) == '\0')) &&
          (*(char *)((int)this + 0x8b4) == '\0')))) {
        fStack_6a0 = *(float *)((int)this + 0x780) - *(float *)((int)this + 0x770);
        fStack_698 = *(float *)((int)this + 0x788) - *(float *)((int)this + 0x778);
        fStack_694 = *(float *)((int)this + 0x78c) - *(float *)((int)this + 0x77c);
        fStack_7d0 = 0.5;
        uStack_69c = 0;
        fVar60 = fStack_6a0 * fStack_6a0;
        auVar6._4_4_ = fVar60;
        auVar6._0_4_ = fVar60;
        auVar6._8_4_ = fVar60;
        auVar6._12_4_ = 0;
        fVar60 = fStack_698 * fStack_698 + 0.0 + fVar60;
        auVar106._4_4_ = fVar60;
        auVar106._0_4_ = fVar60;
        auVar106._8_4_ = fVar60;
        auVar106._12_4_ = fVar60;
        pfStack_830 = (float *)0x3f800000;
        auVar63 = rsqrtps(auVar6 << 0x20,auVar106);
        fVar61 = auVar63._0_4_;
        fVar76 = auVar63._4_4_;
        fVar77 = auVar63._8_4_;
        fVar78 = auVar63._12_4_;
        fVar61 = (1.0 - fVar61 * fVar61 * fVar60) * fVar61 * 0.5 + fVar61;
        fVar76 = (1.0 - fVar76 * fVar76 * fVar60) * fVar76 * 0.5 + fVar76;
        fVar77 = (1.0 - fVar77 * fVar77 * fVar60) * fVar77 * 0.5 + fVar77;
        fVar78 = (1.0 - fVar78 * fVar78 * fVar60) * fVar78 * 0.5 + fVar78;
        pfStack_8e0 = (float *)(((1.0 - fVar61 * fVar61 * fVar60) * fVar61 * 0.5 + fVar61) *
                               fStack_6a0);
        pfStack_8dc = (float *)(((1.0 - fVar76 * fVar76 * fVar60) * fVar76 * 0.5 + fVar76) * 0.0);
        pfStack_8d8 = (float *)(((1.0 - fVar77 * fVar77 * fVar60) * fVar77 * 0.5 + fVar77) *
                               fStack_698);
        pfStack_8d4 = (float *)(((1.0 - fVar78 * fVar78 * fVar60) * fVar78 * 0.5 + fVar78) *
                               fStack_694);
        pfStack_82c = pfStack_830;
        pfStack_828 = pfStack_830;
        pfStack_824 = pfStack_830;
        fStack_7cc = fStack_7d0;
        fStack_7c8 = fStack_7d0;
        fStack_7c4 = fStack_7d0;
        FUN_00ab2750(pvVar1,afStack_100,'\x01');
        fStack_680 = fStack_f0 - *(float *)((int)this + 0x770);
        fStack_678 = fStack_e8 - *(float *)((int)this + 0x778);
        fStack_674 = fStack_e4 - *(float *)((int)this + 0x77c);
        uStack_67c = 0;
        fVar60 = fStack_678 * (float)pfStack_8d8 + (float)pfStack_8dc * 0.0 +
                 fStack_680 * (float)pfStack_8e0;
        if (fVar60 <= 0.0) {
          fVar61 = *(float *)((int)this + 0x9d0);
        }
        else {
          fVar61 = *(float *)((int)this + 0x9d4);
        }
        fVar76 = fStack_680 - fVar60 * (float)pfStack_8e0;
        fVar77 = 0.0 - fVar60 * (float)pfStack_8dc;
        fVar78 = fStack_678 - fVar60 * (float)pfStack_8d8;
        fVar76 = fVar76 * fVar76;
        fVar77 = fVar77 * fVar77;
        auVar112._4_4_ = fVar76;
        auVar112._0_4_ = fVar77;
        auVar112._8_4_ = fVar76;
        auVar112._12_4_ = fVar76;
        auVar34._0_4_ = fVar78 * fVar78 + fVar77 + fVar76;
        auVar34._4_4_ = auVar34._0_4_;
        auVar34._8_4_ = auVar34._0_4_;
        auVar34._12_4_ = auVar34._0_4_;
        auVar63 = sqrtps(auVar34,auVar34);
        pfStack_8e0 = auVar63._0_4_;
        pfStack_8dc = auVar63._4_4_;
        pfStack_8d8 = auVar63._8_4_;
        pfStack_8d4 = auVar63._12_4_;
        fVar76 = (float)pfStack_8e0 / *(float *)((int)this + 0x9d8);
        fVar61 = (fVar60 / fVar61) * (fVar60 / fVar61);
        fVar60 = fVar76 * fVar76 + fVar61;
        if (1.0 < fVar60) {
          fVar60 = (fVar60 - 1.0) * *(float *)((int)this + 0x9d8);
          if (*(float *)((int)this + 0x9dc) < fVar60) goto LAB_00976296;
          auVar35._0_4_ = fStack_678 * fStack_678 + 0.0 + fStack_680 * fStack_680;
          auVar35._4_4_ = auVar35._0_4_;
          auVar35._8_4_ = auVar35._0_4_;
          auVar35._12_4_ = auVar35._0_4_;
          auVar63 = rsqrtps(ZEXT416((uint)fVar61),auVar35);
          fVar61 = auVar63._0_4_;
          fVar76 = auVar63._4_4_;
          fVar77 = auVar63._8_4_;
          fVar78 = auVar63._12_4_;
          auVar112._4_4_ = fStack_7cc;
          auVar112._0_4_ = fStack_7d0;
          auVar112._8_4_ = fStack_7c8;
          auVar112._12_4_ = fStack_7c4;
          fVar61 = ((float)pfStack_830 - fVar61 * fVar61 * auVar35._0_4_) * fVar61 * fStack_7d0 +
                   fVar61;
          fVar76 = ((float)pfStack_82c - fVar76 * fVar76 * auVar35._0_4_) * fVar76 * fStack_7cc +
                   fVar76;
          fVar77 = ((float)pfStack_828 - fVar77 * fVar77 * auVar35._0_4_) * fVar77 * fStack_7c8 +
                   fVar77;
          fVar78 = ((float)pfStack_824 - fVar78 * fVar78 * auVar35._0_4_) * fVar78 * fStack_7c4 +
                   fVar78;
          bVar5 = true;
          pfVar15 = (float *)((*(float *)((int)this + 0x9e0) / *(float *)((int)this + 0x9dc)) *
                             fVar60);
          if (cStack_965 != '\0') {
            auVar89._0_4_ = (float)auStack_6d0._0_4_ * (float)auStack_6d0._0_4_;
            auVar89._4_4_ = (float)auStack_6d0._4_4_ * (float)auStack_6d0._4_4_;
            auVar89._8_4_ = fStack_6c8 * fStack_6c8;
            auVar89._12_4_ = fStack_6c4 * fStack_6c4;
            auVar67._0_4_ = auVar89._8_4_ + auVar89._4_4_ + auVar89._0_4_;
            auVar67._4_4_ = auVar67._0_4_;
            auVar67._8_4_ = auVar67._0_4_;
            auVar67._12_4_ = auVar67._0_4_;
            auVar63 = sqrtps(auVar89,auVar67);
            fVar60 = *(float *)((int)this + 0x9e4);
            pfStack_8e0 = (float *)(auVar63._0_4_ * fVar60);
            pfStack_8dc = (float *)(auVar63._4_4_ * fVar60);
            pfStack_8d8 = (float *)(auVar63._8_4_ * fVar60);
            pfStack_8d4 = (float *)(auVar63._12_4_ * fVar60);
            if ((float)pfStack_8e0 < (float)pfVar15) {
              pfVar15 = pfStack_8e0;
            }
          }
          auStack_8b0._4_4_ =
               (float)pfVar15 *
               (((float)pfStack_82c - fVar76 * fVar76 * auVar35._0_4_) * fVar76 * fStack_7cc +
               fVar76) * 0.0;
          auStack_8b0._0_4_ =
               (float)pfVar15 *
               (((float)pfStack_830 - fVar61 * fVar61 * auVar35._0_4_) * fVar61 * fStack_7d0 +
               fVar61) * fStack_680;
          pfStack_8a8 = (float *)((float)pfVar15 *
                                 (((float)pfStack_828 - fVar77 * fVar77 * auVar35._0_4_) *
                                  fVar77 * fStack_7c8 + fVar77) * fStack_678);
          pfStack_8a4 = (float *)((float)pfVar15 *
                                 (((float)pfStack_824 - fVar78 * fVar78 * auVar35._0_4_) *
                                  fVar78 * fStack_7c4 + fVar78) * fStack_674);
        }
      }
      FUN_00ab2750(*(void **)((int)this + 0x834),&fStack_5f0,'\x01');
      uVar122 = FUN_0095fe40(*(void **)((int)this + 0xc),&fStack_5f0);
      auVar36._0_4_ = fStack_5f0 - *(float *)((int)this + 0x840);
      auVar36._4_4_ = fStack_5ec - *(float *)((int)this + 0x844);
      auVar36._8_4_ = fStack_5e8 - *(float *)((int)this + 0x848);
      auVar36._12_4_ = fStack_5e4 - *(float *)((int)this + 0x84c);
      auVar90._0_4_ = auVar36._0_4_ * local_8a0;
      auVar90._4_4_ = auVar36._4_4_ * fStack_89c;
      auVar90._8_4_ = auVar36._8_4_ * fStack_898;
      auVar90._12_4_ = auVar36._12_4_ * fStack_894;
      auVar63 = maxps(auVar90,auVar36);
      auVar91._4_4_ = -(uint)(auVar63._4_4_ <= 0.001);
      auVar91._0_4_ = -(uint)(auVar63._0_4_ <= 0.001);
      auVar91._8_4_ = -(uint)(auVar63._8_4_ <= 0.001);
      auVar91._12_4_ = -(uint)(auVar63._12_4_ <= 0.001);
      iVar11 = movmskps((int)((ulonglong)uVar122 >> 0x20),auVar91);
      if (iVar11 == 0xf) {
        auVar92._0_4_ = fStack_5e0 - *(float *)((int)this + 0x850);
        auVar92._4_4_ = fStack_5dc - *(float *)((int)this + 0x854);
        auVar92._8_4_ = fStack_5d8 - *(float *)((int)this + 0x858);
        auVar92._12_4_ = fStack_5d4 - *(float *)((int)this + 0x85c);
        auVar113._0_4_ = auVar92._0_4_ * local_8a0;
        auVar113._4_4_ = auVar92._4_4_ * fStack_89c;
        auVar113._8_4_ = auVar92._8_4_ * fStack_898;
        auVar113._12_4_ = auVar92._12_4_ * fStack_894;
        auVar63 = maxps(auVar113,auVar92);
        auVar112._4_4_ = -(uint)(auVar63._4_4_ <= 0.001);
        auVar112._0_4_ = -(uint)(auVar63._0_4_ <= 0.001);
        auVar112._8_4_ = -(uint)(auVar63._8_4_ <= 0.001);
        auVar112._12_4_ = -(uint)(auVar63._12_4_ <= 0.001);
        uVar12 = movmskps((int)uVar122,auVar112);
        if (((byte)uVar12 & 7) == 7) {
          pfStack_880 = pfStack_8c0;
          pfStack_87c = pfStack_8bc;
          pfStack_878 = pfStack_8b8;
          pfStack_874 = pfStack_8b4;
          pfStack_7e0 = pfStack_8c0;
          pfStack_7dc = pfStack_8bc;
          pfStack_7d8 = pfStack_8b8;
          pfStack_7d4 = pfStack_8b4;
          goto LAB_00976513;
        }
      }
      pfStack_8e0 = (float *)(fStack_5e0 - *(float *)((int)this + 0x850));
      pfStack_8dc = (float *)(fStack_5dc - *(float *)((int)this + 0x854));
      pfStack_8d8 = (float *)(fStack_5d8 - *(float *)((int)this + 0x858));
      pfStack_8d4 = (float *)(fStack_5d4 - *(float *)((int)this + 0x85c));
      fVar60 = *(float *)((int)this + 0x840);
      fVar61 = *(float *)((int)this + 0x844);
      fVar76 = *(float *)((int)this + 0x848);
      fVar77 = *(float *)((int)this + 0x84c);
      auVar37._0_4_ = fVar77 * fVar77 + fVar61 * fVar61 + fVar76 * fVar76 + fVar60 * fVar60;
      auVar37._4_4_ = auVar37._0_4_;
      auVar37._8_4_ = auVar37._0_4_;
      auVar37._12_4_ = auVar37._0_4_;
      auVar63 = rcpps(auVar112,auVar37);
      fVar78 = (2.0 - auVar63._0_4_ * auVar37._0_4_) * auVar63._0_4_;
      fVar62 = (2.0 - auVar63._4_4_ * auVar37._0_4_) * auVar63._4_4_;
      fVar79 = (2.0 - auVar63._8_4_ * auVar37._0_4_) * auVar63._8_4_;
      fVar86 = (2.0 - auVar63._12_4_ * auVar37._0_4_) * auVar63._12_4_;
      pfStack_8f4 = (float *)0x0;
      pfStack_8f8 = (float *)0x80000000;
      pfStack_8fc = (float *)0x80000000;
      pfStack_900 = (float *)0x80000000;
      fVar60 = (2.0 - fVar78 * auVar37._0_4_) * fVar78 * -fVar60;
      fVar61 = (2.0 - fVar62 * auVar37._0_4_) * fVar62 * -fVar61;
      fVar76 = (2.0 - fVar79 * auVar37._0_4_) * fVar79 * -fVar76;
      fVar77 = (2.0 - fVar86 * auVar37._0_4_) * fVar86 * fVar77;
      fStack_d0 = (fVar76 * fStack_5ec - fVar61 * fStack_5e8) + fStack_5e4 * fVar60 +
                  fVar77 * fStack_5f0;
      fStack_cc = (fVar60 * fStack_5e8 - fVar76 * fStack_5f0) + fStack_5e4 * fVar61 +
                  fVar77 * fStack_5ec;
      fStack_c8 = (fVar61 * fStack_5f0 - fVar60 * fStack_5ec) + fStack_5e4 * fVar76 +
                  fVar77 * fStack_5e8;
      fStack_c4 = fVar77 * fStack_5e4 -
                  (fVar76 * fStack_5e8 + fVar61 * fStack_5ec + fVar60 * fStack_5f0);
      fVar60 = *(float *)((int)this + 0x780) - *(float *)((int)this + 0x850);
      fVar61 = *(float *)((int)this + 0x784) - *(float *)((int)this + 0x854);
      fVar76 = *(float *)((int)this + 0x788) - *(float *)((int)this + 0x858);
      fVar77 = *(float *)((int)this + 0x78c) - *(float *)((int)this + 0x85c);
      fVar78 = (fVar76 * fStack_cc - fVar61 * fStack_c8) + fStack_c4 * fVar60;
      fVar62 = (fVar60 * fStack_c8 - fVar76 * fStack_d0) + fStack_c4 * fVar61;
      fVar79 = (fVar61 * fStack_d0 - fVar60 * fStack_cc) + fStack_c4 * fVar76;
      pfStack_880 = (float *)(((fVar79 * fStack_cc - fVar62 * fStack_c8) * 2.0 + fVar60 +
                              (float)pfStack_8e0) - fVar60);
      pfStack_87c = (float *)(((fVar78 * fStack_c8 - fVar79 * fStack_d0) * 2.0 + fVar61 +
                              (float)pfStack_8dc) - fVar61);
      pfStack_878 = (float *)(((fVar62 * fStack_d0 - fVar78 * fStack_cc) * 2.0 + fVar76 +
                              (float)pfStack_8d8) - fVar76);
      pfStack_874 = (float *)(((fVar78 * fStack_d0 - fVar78 * fStack_d0) * 2.0 + fVar77 +
                              (float)pfStack_8d4) - fVar77);
      fVar60 = fStack_d0 * 1.4142135;
      fVar61 = fStack_cc * 1.4142135;
      fVar76 = fStack_c8 * 1.4142135;
      fVar77 = fStack_c4 * 1.4142135;
      fStack_31c = ((float)pfStack_8c0 - fVar60) * fVar60 + 0.5;
      fStack_330 = ((float)pfStack_8bc - fVar61) * fVar61 + 0.5;
      fVar78 = ((float)pfStack_8b8 - fVar76) * fVar76 + 0.5;
      fStack_32c = fVar77 * fVar76 + fVar61 * fVar60;
      fStack_318 = fVar77 * fVar60 + fVar76 * fVar61;
      fStack_310 = fVar77 * fVar61 + fVar60 * fVar76;
      fStack_324 = fVar61 * fVar60 - fVar77 * fVar76;
      fStack_30c = fVar76 * fVar61 - fVar77 * fVar60;
      fStack_328 = fVar60 * fVar76 - fVar77 * fVar61;
      fStack_308 = fStack_330 + fStack_31c;
      fStack_330 = fVar78 + fStack_330;
      fStack_31c = fStack_31c + fVar78;
      fStack_320 = fStack_324;
      fStack_314 = fStack_32c;
      fStack_304 = fStack_308;
      pfStack_c0 = pfStack_8e0;
      pfStack_bc = pfStack_8dc;
      pfStack_b8 = pfStack_8d8;
      pfStack_b4 = pfStack_8d4;
      FUN_009712e0((float *)&pfStack_3c0,&fStack_330);
      pfStack_7e0 = pfStack_3c0;
      pfStack_7dc = pfStack_3bc;
      pfStack_7d8 = pfStack_3b8;
      pfStack_7d4 = pfStack_3b4;
      *(float *)((int)this + 0x840) = fStack_5f0;
      *(float *)((int)this + 0x844) = fStack_5ec;
      *(float *)((int)this + 0x848) = fStack_5e8;
      *(float *)((int)this + 0x84c) = fStack_5e4;
      *(float *)((int)this + 0x850) = fStack_5e0;
      *(float *)((int)this + 0x854) = fStack_5dc;
      *(float *)((int)this + 0x858) = fStack_5d8;
      *(float *)((int)this + 0x85c) = fStack_5d4;
    }
    else {
LAB_00976296:
      FUN_009711c0((int)this);
    }
  }
LAB_00976513:
  pfVar15 = (float *)((int)this + 0x5f0);
  cVar9 = (**(code **)(*(int *)((int)this + 0x5f0) + 4))();
  if (cVar9 == '\0') {
    pfStack_944 = (float *)((int)this + 0x570);
  }
  else {
    pfStack_944 = pfVar15;
  }
  auVar59._0_4_ = pfStack_944;
  if ((*(char *)((int)this + 0x8b6) == '\0') && (*(int *)((int)this + 0x8c0) == 0)) {
    if (cStack_965 != '\0') {
      cVar9 = (**(code **)((int)*pfStack_944 + 4))();
      if (cVar9 != '\0') {
        (**(code **)((int)*auVar59._0_4_ + 0x20))(&pfStack_410);
        if (*(void **)((int)this + 0x3c) != (void *)0x0) {
          pfStack_8e0 = pfStack_410;
          pfStack_8dc = pfStack_40c;
          pfStack_8d8 = pfStack_408;
          pfStack_8d4 = pfStack_404;
          pfStack_830 = pfStack_410;
          pfStack_82c = pfStack_40c;
          pfStack_828 = pfStack_408;
          pfStack_824 = pfStack_404;
          bVar10 = WorldSurface_TestLowerRegionGroundAdmission
                             (*(void **)((int)this + 0x3c),(float)pfStack_410,(float)pfStack_408);
          if (!bVar10) goto LAB_009765d0;
        }
      }
      *(undefined1 *)((int)this + 0x8b1) = 0;
      *(undefined1 *)((int)this + 0x8b2) = 0;
      FUN_00973db0((int)this);
    }
LAB_009765d0:
    if (bVar28) {
      *(undefined1 *)((int)this + 0x8b3) = 0;
      *(undefined1 *)((int)this + 0x8b2) = 0;
    }
    if (bVar29) {
      *(undefined1 *)((int)this + 0x8b4) = 0;
      *(undefined1 *)((int)this + 0x8b2) = 0;
    }
  }
  if (*(char *)((int)this + 0x8b2) == '\0') {
    cVar9 = (**(code **)((int)*pfVar15 + 4))();
                    /* Verified map-threshold call 00973D00. In this function's CFG this block
                       reaches subsequent follow/ground blocks; the ground block cannot reach this
                       block. Map-mode changes therefore precede later ground calculations on a
                       frame that runs both. */
    if (((cVar9 != '\0') && (cVar9 = FUN_00973d00(this), cVar9 != '\0')) && (bVar28)) {
      *(undefined1 *)((int)this + 0x8b3) = 0;
    }
    if (*(char *)((int)this + 0x8b1) == '\0') {
      (**(code **)((int)*pfVar15 + 0xc))();
      (**(code **)(*(int *)((int)this + 0x570) + 0xc))();
    }
  }
  if ((*(char *)((int)this + 0x8b3) == '\0') && (*(char *)((int)this + 0x8b4) == '\0')) {
    (**(code **)(*(int *)((int)this + 0x6b0) + 0xc))();
  }
  cVar9 = (**(code **)((int)*auVar59._0_4_ + 4))();
  if (cVar9 == '\0') {
    *(undefined1 *)((int)this + 0x8b1) = 0;
    *(undefined1 *)((int)this + 0x8b2) = 0;
  }
  else {
    if (*(char *)((int)this + 0x818) != '\0') {
      FUN_00973830(this,(float *)&pfStack_860);
    }
    (**(code **)*auVar59._0_4_)(deltaSeconds);
  }
  piVar13 = (int *)((int)this + 0x6b0);
  cVar9 = (**(code **)(*(int *)((int)this + 0x6b0) + 4))();
  if (cVar9 == '\0') {
    *(undefined1 *)((int)this + 0x8b3) = 0;
    *(undefined1 *)((int)this + 0x8b4) = 0;
    *(undefined4 *)((int)this + 0x8c0) = 0;
    uVar12 = extraout_EDX;
  }
  else {
    (**(code **)*piVar13)(deltaSeconds);
    uVar12 = extraout_EDX_00;
  }
  if ((((*(char *)((int)this + 0x8b1) == '\0') && (*(char *)((int)this + 0x8b2) == '\0')) &&
      (*(char *)((int)this + 0x8b3) == '\0')) && (*(char *)((int)this + 0x8b4) == '\0')) {
    FUN_0095fe10(*(int *)((int)this + 0xc));
    uVar12 = extraout_EDX_01;
  }
  if (cStack_965 == '\0') {
    auVar38._0_4_ =
         *(float *)((int)this + 0x7e8) * *(float *)((int)this + 0x7e8) +
         *(float *)((int)this + 0x7e4) * *(float *)((int)this + 0x7e4) +
         *(float *)((int)this + 0x7e0) * *(float *)((int)this + 0x7e0);
    auVar38._4_4_ = auVar38._0_4_;
    auVar38._8_4_ = auVar38._0_4_;
    auVar38._12_4_ = auVar38._0_4_;
    auVar63 = sqrtps(auVar38,auVar38);
    fStack_3d0 = auVar63._0_4_;
    uStack_390 = 0x3dcccccd;
    if (fStack_3d0 <= 0.1) goto LAB_009767a4;
    fVar30 = (float10)_CIpow();
    fVar77 = (float)fVar30;
    uVar12 = extraout_EDX_02;
    fVar60 = fVar77 * *(float *)((int)this + 0x7e0);
    fVar61 = fVar77 * *(float *)((int)this + 0x7e4);
    fVar76 = fVar77 * *(float *)((int)this + 0x7e8);
    fVar77 = fVar77 * *(float *)((int)this + 0x7ec);
  }
  else {
LAB_009767a4:
    fVar60 = (float)auStack_6d0._0_4_;
    fVar61 = (float)auStack_6d0._4_4_;
    fVar76 = fStack_6c8;
    fVar77 = fStack_6c4;
  }
  *(float *)((int)this + 0x7e0) = fVar60;
  *(float *)((int)this + 0x7e4) = fVar61;
  *(float *)((int)this + 0x7e8) = fVar76;
  *(float *)((int)this + 0x7ec) = fVar77;
  if (bVar28) {
LAB_00976830:
    fVar60 = (float)auStack_6c0._0_4_;
    fVar61 = (float)auStack_6c0._4_4_;
    fVar76 = fStack_6b8;
    fVar77 = fStack_6b4;
  }
  else {
    auVar39._0_4_ = *(float *)((int)this + 0x7f0) * *(float *)((int)this + 0x7f0);
    fVar60 = *(float *)((int)this + 0x7f4) * *(float *)((int)this + 0x7f4);
    auVar39._4_4_ = auVar39._0_4_;
    auVar39._8_4_ = auVar39._0_4_;
    auVar39._12_4_ = auVar39._0_4_;
    auVar68._0_4_ = fVar60 + auVar39._0_4_;
    auVar68._4_4_ = fVar60 + auVar39._0_4_;
    auVar68._8_4_ = fVar60 + auVar39._0_4_;
    auVar68._12_4_ = fVar60 + auVar39._0_4_;
    auVar63 = sqrtps(auVar39,auVar68);
    fStack_370 = auVar63._0_4_;
    uStack_440 = 0x3dcccccd;
    if (fStack_370 <= 0.1) goto LAB_00976830;
                    /* x87 _CIpow ABI: fld(controller+8D4) then fld(deltaSeconds), yielding
                       pow(rotationRetention,deltaSeconds). This decays retained angular speed, not
                       distance to a yaw intent. */
    fVar30 = (float10)_CIpow();
    fVar77 = (float)fVar30;
    uVar12 = extraout_EDX_03;
    fVar60 = fVar77 * *(float *)((int)this + 0x7f0);
    fVar61 = fVar77 * *(float *)((int)this + 0x7f4);
    fVar76 = fVar77 * *(float *)((int)this + 0x7f8);
    fVar77 = fVar77 * *(float *)((int)this + 0x7fc);
  }
  pauVar27 = (undefined1 (*) [16])((int)this + 0x7f0);
  *(float *)*pauVar27 = fVar60;
  *(float *)((int)this + 0x7f4) = fVar61;
  *(float *)((int)this + 0x7f8) = fVar76;
  *(float *)((int)this + 0x7fc) = fVar77;
  fVar60 = ABS(*(float *)((int)this + 0x800));
  if ((bVar29) || (fVar60 <= 0.1)) {
    fVar61 = fStack_6b0;
LAB_009768d9:
    *(float *)((int)this + 0x800) = fVar61;
  }
  else {
    iVar11 = 2;
    if (0.0 <= *(float *)((int)this + 0x800)) {
      iVar11 = 3;
    }
                    /* Input bank1 scalar2 (negative zoom velocity) or scalar3 (positive). This is a
                       zoom-speed cap; it does not cap yaw. */
    fVar30 = CameraInput_GetBankScalar((void *)((int)this + 0x40),1,iVar11);
    if (fVar30 < (float10)fVar60) {
      fVar61 = *(float *)((int)this + 0x800) / fVar60;
      fVar60 = extraout_ECX_00;
      uVar12 = extraout_EDX_04;
      fVar61 = fVar61 * (float)fVar30;
      goto LAB_009768d9;
    }
    fVar30 = (float10)_CIpow();
    *(float *)((int)this + 0x800) = (float)(fVar30 * (float10)*(float *)((int)this + 0x800));
    fVar60 = extraout_ECX_01;
    uVar12 = extraout_EDX_05;
  }
  pfVar15 = pfStack_944;
  if (bVar5) {
    auVar40._0_4_ =
         *(float *)((int)this + 0x7e8) * *(float *)((int)this + 0x7e8) +
         *(float *)((int)this + 0x7e4) * *(float *)((int)this + 0x7e4) +
         *(float *)((int)this + 0x7e0) * *(float *)((int)this + 0x7e0);
    uStack_5a0 = 0x3dcccccd;
    auVar40._4_4_ = auVar40._0_4_;
    auVar40._8_4_ = auVar40._0_4_;
    auVar40._12_4_ = auVar40._0_4_;
    auVar63 = sqrtps(auVar40,auVar40);
    fStack_3b0 = auVar63._0_4_;
    if ((0.1 < fStack_3b0) && (ABS(*(float *)((int)this + 0x800)) < 0.1)) {
      auVar69._0_4_ = *(float *)*pauVar27 * *(float *)*pauVar27;
      fVar61 = *(float *)((int)this + 0x7f4) * *(float *)((int)this + 0x7f4);
      auVar69._4_4_ = auVar69._0_4_;
      auVar69._8_4_ = auVar69._0_4_;
      auVar69._12_4_ = auVar69._0_4_;
      auVar82._0_4_ = fVar61 + auVar69._0_4_;
      auVar82._4_4_ = fVar61 + auVar69._0_4_;
      auVar82._8_4_ = fVar61 + auVar69._0_4_;
      auVar82._12_4_ = fVar61 + auVar69._0_4_;
      auVar63 = sqrtps(auVar69,auVar82);
      fStack_580 = auVar63._0_4_;
      uStack_460 = uStack_5a0;
      if (fStack_580 < 0.1) {
        *(float *)((int)this + 0x7e0) = *(float *)((int)this + 0x7e0) + (float)auStack_8b0._0_4_;
        *(float *)((int)this + 0x7e4) = *(float *)((int)this + 0x7e4) + (float)auStack_8b0._4_4_;
        *(float *)((int)this + 0x7e8) = *(float *)((int)this + 0x7e8) + (float)pfStack_8a8;
        *(float *)((int)this + 0x7ec) = *(float *)((int)this + 0x7ec) + (float)pfStack_8a4;
      }
    }
  }
  auVar63 = *(undefined1 (*) [16])((int)this + 0x7e0);
  auVar93._0_4_ = local_8a0 * auVar63._0_4_;
  auVar93._4_4_ = fStack_89c * auVar63._4_4_;
  auVar93._8_4_ = fStack_898 * auVar63._8_4_;
  auVar93._12_4_ = fStack_894 * auVar63._12_4_;
  auVar63 = maxps(auVar93,auVar63);
  fVar61 = *(float *)((int)this + 0x800);
  auVar94._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
  auVar94._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
  auVar94._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
  auVar94._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
  uVar19 = movmskps(uVar12,auVar94);
  auVar41._4_4_ = fVar61;
  auVar41._0_4_ = fVar61;
  auVar41._8_4_ = fVar61;
  auVar41._12_4_ = fVar61;
  auVar95._0_4_ = local_8a0 * fVar61;
  auVar95._4_4_ = fStack_89c * fVar61;
  auVar95._8_4_ = fStack_898 * fVar61;
  auVar95._12_4_ = fStack_894 * fVar61;
  auVar96 = maxps(auVar95,auVar41);
  auVar63 = *pauVar27;
  auVar97._4_4_ = -(uint)(auVar96._4_4_ <= fStack_84c);
  auVar97._0_4_ = -(uint)(auVar96._0_4_ <= local_850);
  auVar97._8_4_ = -(uint)(auVar96._8_4_ <= fStack_848);
  auVar97._12_4_ = -(uint)(auVar96._12_4_ <= fStack_844);
  iVar11 = movmskps(fVar60,auVar97);
  auVar98._0_4_ = auVar63._0_4_ * local_8a0;
  auVar98._4_4_ = auVar63._4_4_ * fStack_89c;
  auVar98._8_4_ = auVar63._8_4_ * fStack_898;
  auVar98._12_4_ = auVar63._12_4_ * fStack_894;
  auVar63 = maxps(auVar98,auVar63);
  auVar99._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
  auVar99._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
  auVar99._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
  auVar99._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
  uVar23 = movmskps(uVar19 & 7,auVar99);
  if ((uVar23 & 1) != 0) {
    pauStack_73c = pauVar27;
  }
  fVar60 = *(float *)*pauVar27;
  auVar42._4_4_ = fVar60;
  auVar42._0_4_ = fVar60;
  auVar42._8_4_ = fVar60;
  auVar42._12_4_ = fVar60;
  auVar70._0_4_ = local_8a0 * fVar60;
  auVar70._4_4_ = fStack_89c * fVar60;
  auVar70._8_4_ = fStack_898 * fVar60;
  auVar70._12_4_ = fStack_894 * fVar60;
  auVar63 = maxps(auVar70,auVar42);
  auVar71._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
  auVar71._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
  auVar71._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
  auVar71._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
  iVar22 = movmskps(pauVar27,auVar71);
  if ((((char)(uVar19 & 7) != '\a') && (*(char *)((int)this + 0x8b9) != '\0')) &&
     (*(char *)((int)this + 0x8ba) == '\0')) {
    *(undefined4 *)((int)this + 0x8c4) = 0xc2c80000;
    *(undefined4 *)((int)this + 0x8c8) = 0xc2c80000;
  }
  fStack_96c = *(float *)((int)this + 0x8ec);
  fVar60 = *(float *)((int)this + 0x770) - *(float *)((int)this + 0x780);
  fVar61 = *(float *)((int)this + 0x774) - *(float *)((int)this + 0x784);
  fVar76 = *(float *)((int)this + 0x778) - *(float *)((int)this + 0x788);
  auVar43._0_4_ = fVar76 * fVar76 + fVar61 * fVar61 + fVar60 * fVar60;
  auVar43._4_4_ = auVar43._0_4_;
  auVar43._8_4_ = auVar43._0_4_;
  auVar43._12_4_ = auVar43._0_4_;
  auVar63 = sqrtps(auVar43,auVar43);
  pfStack_900 = auVar63._0_4_;
  pfStack_8fc = auVar63._4_4_;
  pfStack_8f8 = auVar63._8_4_;
  pfStack_8f4 = auVar63._12_4_;
  fStack_974 = *(float *)((int)this + 0x8e4);
  pfStack_964 = (float *)(((float)pfStack_900 - fStack_974) * *(float *)((int)this + 0x8f0));
  if (*(int *)((int)this + 0x8c0) == 0) {
    if ((*(char *)((int)this + 0x8b9) == '\0') || (*(char *)((int)this + 0x8b8) != '\0')) {
      if (*(char *)((int)this + 0x8ba) != '\0') {
LAB_00976b38:
        fStack_96c = *(float *)((int)this + 0x8e8);
        goto LAB_00976b40;
      }
    }
    else {
      if (*(char *)((int)this + 0x8ba) != '\0') goto LAB_00976b38;
      fStack_96c = *(float *)((int)this + 0x8e8);
      fStack_974 = fStack_96c;
    }
  }
  else {
    fStack_96c = 3.4028235e+38;
LAB_00976b40:
  }
  pauStack_714 = pauVar27;
  pauStack_6fc = pauVar27;
  if (*(char *)((int)this + 0x8b2) == '\0') {
    if (*(int *)((int)this + 0x8c0) == 2) {
      fVar30 = (float10)(**(code **)(*piVar13 + 0x2c))();
      uVar19 = (int)(float)((float10)fStack_974 - fVar30) >> 0x1f;
      fVar60 = (float)(~uVar19 & (uint)fStack_974 | (uint)(float)fVar30 & uVar19);
      uVar19 = (int)(fStack_96c - fVar60) >> 0x1f;
      fVar60 = ((float)(~uVar19 & (uint)fVar60 | (uint)fStack_96c & uVar19) - (float)pfStack_900) *
               (1.0 / deltaSeconds);
      fVar30 = GameplayCamera_AdjustZoomRateNearBounds
                         (this,fStack_6b0,(float)pfStack_900,(float)pfStack_964,fStack_974,
                          fStack_96c);
      uVar19 = (int)((float)fVar30 - fVar60) >> 0x1f;
      fStack_97c = (float)(~uVar19 & (uint)fVar60 | (uint)(float)fVar30 & uVar19) * deltaSeconds +
                   (float)pfStack_900;
      fVar60 = fStack_974 - fStack_97c;
LAB_00976d03:
      fStack_984 = (float)(~((int)fVar60 >> 0x1f) & (uint)fStack_974 |
                          (uint)fStack_97c & (int)fVar60 >> 0x1f);
      fVar60 = fStack_96c - fStack_984;
      fStack_97c = fStack_96c;
    }
    else {
      if (*(char *)((int)this + 0x8b4) != '\0') {
        fVar30 = (float10)(**(code **)(*piVar13 + 0x2c))();
        fVar60 = (float)((float10)fStack_974 - fVar30);
        fStack_97c = (float)fVar30;
        goto LAB_00976d03;
      }
      fVar30 = GameplayCamera_AdjustZoomRateNearBounds
                         (this,fStack_6b0,(float)pfStack_900,(float)pfStack_964,fStack_974,
                          fStack_96c);
      fVar30 = fVar30 * (float10)deltaSeconds + (float10)(float)pfStack_900;
      uVar19 = (int)(float)((float10)fStack_974 - fVar30) >> 0x1f;
      fStack_984 = (float)(~uVar19 & (uint)fStack_974 | (uint)(float)fVar30 & uVar19);
      fVar60 = fStack_96c - fStack_984;
      fStack_97c = fStack_96c;
    }
    uVar19 = (int)fVar60 >> 0x1f;
    uVar122 = CONCAT44((uint)fStack_97c & uVar19,uVar19);
    fVar60 = (float)(~uVar19 & (uint)fStack_984 | (uint)fStack_97c & uVar19);
    fStack_96c = fVar60;
  }
  else {
    auVar59._0_4_ = (float *)(**(code **)((int)*pfStack_944 + 0x1c))(auStack_120);
    uVar122 = (**(code **)((int)*pfVar15 + 0x20))();
    pfVar15 = (float *)uVar122;
    auVar44._0_4_ =
         (pfVar15[2] - auVar59._0_4_[2]) * (pfVar15[2] - auVar59._0_4_[2]) +
         (pfVar15[1] - auVar59._0_4_[1]) * (pfVar15[1] - auVar59._0_4_[1]) +
         (*pfVar15 - *auVar59._0_4_) * (*pfVar15 - *auVar59._0_4_);
    auVar44._4_4_ = auVar44._0_4_;
    auVar44._8_4_ = auVar44._0_4_;
    auVar44._12_4_ = auVar44._0_4_;
    _auStack_8b0 = sqrtps(auVar44,auVar44);
    fStack_96c = (float)auStack_8b0._0_4_;
    fVar60 = extraout_ECX_02;
  }
  fVar61 = (fStack_96c - *(float *)((int)this + 0x8e4)) * *(float *)((int)this + 0x8f0);
  auVar45._0_4_ = fStack_96c - *(float *)((int)this + 0x8ec);
  auVar72._0_4_ = (float)pfStack_900 - *(float *)((int)this + 0x8ec);
  auVar45._4_4_ = auVar45._0_4_;
  auVar45._8_4_ = auVar45._0_4_;
  auVar45._12_4_ = auVar45._0_4_;
  auVar107._0_4_ = local_8a0 * auVar45._0_4_;
  auVar107._4_4_ = fStack_89c * auVar45._0_4_;
  auVar107._8_4_ = fStack_898 * auVar45._0_4_;
  auVar107._12_4_ = fStack_894 * auVar45._0_4_;
  auVar72._4_4_ = auVar72._0_4_;
  auVar72._8_4_ = auVar72._0_4_;
  auVar72._12_4_ = auVar72._0_4_;
  auVar63 = maxps(auVar107,auVar45);
  auVar108._4_4_ = -(uint)(auVar63._4_4_ <= 0.01);
  auVar108._0_4_ = -(uint)(auVar63._0_4_ <= 0.01);
  auVar108._8_4_ = -(uint)(auVar63._8_4_ <= 0.01);
  auVar108._12_4_ = -(uint)(auVar63._12_4_ <= 0.01);
  iVar20 = movmskps((int)uVar122,auVar108);
  uStack_8e1 = iVar20 == 0xf;
  auVar100._0_4_ = local_8a0 * auVar72._0_4_;
  auVar100._4_4_ = fStack_89c * auVar72._0_4_;
  auVar100._8_4_ = fStack_898 * auVar72._0_4_;
  auVar100._12_4_ = fStack_894 * auVar72._0_4_;
  uVar12 = CONCAT31((int3)((uint)iVar20 >> 8),uStack_8e1);
  auVar63 = maxps(auVar100,auVar72);
  auVar101._4_4_ = (float)-(uint)(auVar63._4_4_ <= 0.01);
  auVar101._0_4_ = (float *)-(uint)(auVar63._0_4_ <= 0.01);
  auVar101._8_4_ = (float *)-(uint)(auVar63._8_4_ <= 0.01);
  auVar101._12_4_ = (float)-(uint)(auVar63._12_4_ <= 0.01);
  iVar20 = movmskps(fVar60,auVar101);
  uVar16 = CONCAT31((int3)((ulonglong)uVar122 >> 0x28),iVar20 == 0xf);
  if ((((iVar20 == 0xf) != (bool)uStack_8e1) ||
      ((uVar122 = CONCAT44(uVar16,uVar12), (bool)uStack_8e1 &&
       (uVar122 = CONCAT44(uVar16,uVar12), bVar29)))) &&
     (uVar122 = CONCAT44(uVar16,uVar12), *(char *)((int)this + 0x8b8) == '\0')) {
    appuStack_780[0] = &PTR_FUN_00fba6f4;
    uStack_776 = 1;
    uStack_778 = 0;
    uStack_770 = uStack_8e1;
    puVar21 = Camera_DispatchRegisteredEventCallback(appuStack_350,4,appuStack_780,1);
    uVar122 = CONCAT44(extraout_EDX_06,puVar21);
    appuStack_350[0] = &PTR_FUN_00fba6f4;
    if ((bStack_348 & 4) != 0) {
      uVar122 = FUN_004f5760(appuStack_350,'\0');
    }
    appuStack_780[0] = &PTR_FUN_00fba6f4;
    if ((uStack_778 & 4) != 0) {
      uVar122 = FUN_004f5760(appuStack_780,'\0');
    }
  }
  pfVar15 = pfStack_944;
  pfStack_810 = *(float **)((int)this + 0x780);
  pfStack_80c = *(float **)((int)this + 0x784);
  pfStack_808 = *(float **)((int)this + 0x788);
  pfStack_804 = *(float **)((int)this + 0x78c);
  bVar28 = false;
  if (*(char *)((int)this + 0x8b1) == '\0') {
    if (*(char *)((int)this + 0x8b6) == '\0') {
      if (*(char *)((int)this + 0x8b7) != '\0') {
        FUN_00975510(this,(float *)((int)this + 0x7e0),(float *)&pfStack_810,fVar61);
      }
      uVar122 = FUN_00970fe0(this,afStack_260,(float *)((int)this + 0x7e0),fVar61);
      auVar117 = *(undefined1 (*) [16])uVar122;
      pfStack_900 = auVar117._0_4_;
      pfStack_8fc = auVar117._4_4_;
      pfStack_8f8 = auVar117._8_4_;
      pfStack_8f4 = auVar117._12_4_;
    }
    else {
      auVar117._4_4_ = (float)pfStack_8bc;
      auVar117._0_4_ = (float)pfStack_8c0;
      auVar117._8_4_ = (float)pfStack_8b8;
      auVar117._12_4_ = (float)pfStack_8b4;
      pfStack_900 = pfStack_8c0;
      pfStack_8fc = pfStack_8bc;
      pfStack_8f8 = pfStack_8b8;
      pfStack_8f4 = pfStack_8b4;
    }
  }
  else {
    (**(code **)((int)*pfStack_944 + 0x20))(&fStack_660);
    if (*(char *)((int)this + 0x8b7) != '\0') {
      fVar60 = fStack_978;
      auVar59._0_4_ = (float *)(**(code **)((int)*pfVar15 + 0x28))(auStack_144);
      uVar12 = FUN_009723b0(this,auVar59._0_4_,fVar60);
      if ((char)uVar12 == '\0') {
        FUN_00975750(this,(float *)&pfStack_664,fStack_978);
      }
    }
    auVar46._0_4_ = (float)pfStack_664 - fStack_814;
    auVar46._4_4_ = fStack_660 - (float)pfStack_810;
    auVar46._8_4_ = fStack_65c - (float)pfStack_80c;
    auVar46._12_4_ = fStack_658 - (float)pfStack_808;
    auVar2._4_4_ = local_8d0;
    auVar2._0_4_ = pfStack_8d4;
    auVar2._8_4_ = fStack_8cc;
    auVar2._12_4_ = fStack_8c8;
    auVar63 = divps(auVar46,auVar2);
    fStack_904 = auVar63._0_4_;
    pfStack_900 = auVar63._4_4_;
    pfStack_8fc = auVar63._8_4_;
    pfStack_8f8 = auVar63._12_4_;
    uVar122 = (**(code **)((int)*pfVar15 + 0x28))();
    if (*(void **)((int)this + 0x3c) != (void *)0x0) {
      auStack_8b0._4_4_ = uStack_42c;
      auStack_8b0._0_4_ = fStack_430;
      pfStack_8a8 = (float *)fStack_428;
      pfStack_8a4 = (float *)uStack_424;
      auStack_920._4_4_ = uStack_42c;
      auStack_920._0_4_ = fStack_430;
      pfStack_918 = (float *)fStack_428;
      pfStack_914 = (float *)uStack_424;
      bVar29 = WorldSurface_TestLowerRegionGroundAdmission
                         (*(void **)((int)this + 0x3c),fStack_430,fStack_428);
      uVar122 = CONCAT44(extraout_EDX_07,CONCAT31(extraout_var,bVar29));
      if (bVar29) {
        bVar28 = true;
        uVar122 = CONCAT44(extraout_EDX_07,CONCAT31(extraout_var,bVar29));
      }
    }
    auVar117._4_4_ = (float)pfStack_8fc;
    auVar117._0_4_ = (float)pfStack_900;
    auVar117._8_4_ = (float)pfStack_8f8;
    auVar117._12_4_ = (float)pfStack_8f4;
  }
  pfVar15 = (float *)((ulonglong)uVar122 >> 0x20);
  uVar19 = (uint)uVar122;
  if (*(int *)((int)this + 0x3c) == 0) {
LAB_00977371:
    *(undefined1 *)((int)this + 0x8a0) = 0;
  }
  else {
    fVar60 = auVar117._0_4_;
    auVar47._0_4_ = local_8a0 * fVar60;
    fVar76 = auVar117._4_4_;
    auVar47._4_4_ = fStack_89c * fVar76;
    fVar77 = auVar117._8_4_;
    auVar47._8_4_ = fStack_898 * fVar77;
    fVar78 = auVar117._12_4_;
    auVar47._12_4_ = fStack_894 * fVar78;
    auVar63 = maxps(auVar47,auVar117);
    auVar48._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
    auVar48._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
    auVar48._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
    auVar48._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
    uVar23 = movmskps(pfVar15,auVar48);
    pfVar15 = (float *)(uVar23 & 7);
    if (((char)pfVar15 == '\a') || (bVar28)) goto LAB_00977371;
    auVar49._0_4_ = fVar60 * fVar60;
    auVar49._4_4_ = fVar76 * fVar76;
    auVar49._8_4_ = fVar77 * fVar77;
    auVar49._12_4_ = fVar78 * fVar78;
    fVar62 = auVar49._8_4_ + auVar49._4_4_ + auVar49._0_4_;
    auVar83._4_4_ = fVar62;
    auVar83._0_4_ = fVar62;
    auVar83._8_4_ = fVar62;
    auVar83._12_4_ = fVar62;
    auVar63 = rsqrtps(auVar108,auVar83);
    fVar79 = auVar63._0_4_;
    fVar86 = auVar63._4_4_;
    fVar87 = auVar63._8_4_;
    fVar88 = auVar63._12_4_;
    fVar79 = (1.0 - fVar79 * fVar79 * fVar62) * fVar79 * 0.5 + fVar79;
    fVar86 = (1.0 - fVar86 * fVar86 * fVar62) * fVar86 * 0.5 + fVar86;
    fVar87 = (1.0 - fVar87 * fVar87 * fVar62) * fVar87 * 0.5 + fVar87;
    fVar88 = (1.0 - fVar88 * fVar88 * fVar62) * fVar88 * 0.5 + fVar88;
    auVar101._0_4_ = (float *)(fVar79 * 0.5);
    auVar101._4_4_ = fVar86 * 0.5;
    auVar101._8_4_ = (float *)(fVar87 * 0.5);
    auVar101._12_4_ = fVar88 * 0.5;
    auStack_8b0._4_4_ = ((1.0 - fVar86 * fVar86 * fVar62) * auVar101._4_4_ + fVar86) * fVar76;
    auStack_8b0._0_4_ = ((1.0 - fVar79 * fVar79 * fVar62) * (float)auVar101._0_4_ + fVar79) * fVar60
    ;
    pfStack_8a8 = (float *)(((1.0 - fVar87 * fVar87 * fVar62) * (float)auVar101._8_4_ + fVar87) *
                           fVar77);
    pfStack_8a4 = (float *)(((1.0 - fVar88 * fVar88 * fVar62) * auVar101._12_4_ + fVar88) * fVar78);
    auVar73._0_4_ = auVar49._8_4_ + auVar49._4_4_ + auVar49._0_4_;
    auVar73._4_4_ = auVar73._0_4_;
    auVar73._8_4_ = auVar73._0_4_;
    auVar73._12_4_ = auVar73._0_4_;
    _auStack_920 = sqrtps(auVar49,auVar73);
    fVar60 = *(float *)((int)this + 0x998) * (float)auStack_920._0_4_ * 0.5;
    uVar19 = (int)(fVar60 - 1.0) >> 0x1f;
    pfVar15 = (float *)(uVar19 & 0x3f800000);
    pfStack_964 = (float *)(~uVar19 & (uint)fVar60 | (uint)pfVar15);
    bVar29 = false;
    fStack_970 = 1.0;
    fVar60 = 1.0;
    if (1.0 <= (float)pfStack_964) {
      do {
        pfStack_960 = (float *)(fStack_970 * (float)auStack_8b0._0_4_ + (float)pfStack_810);
        pfStack_95c = (float *)(fStack_970 * (float)auStack_8b0._4_4_ + (float)pfStack_80c);
        pfStack_958 = (float *)(fStack_970 * (float)pfStack_8a8 + (float)pfStack_808);
        pfStack_954 = (float *)(fStack_970 * (float)pfStack_8a4 + (float)pfStack_804);
        auStack_920._4_4_ = pfStack_95c;
        auStack_920._0_4_ = pfStack_960;
        pfStack_918 = pfStack_958;
        pfStack_914 = pfStack_954;
        pfStack_a0 = pfStack_960;
        pfStack_9c = pfStack_95c;
        pfStack_98 = pfStack_958;
        pfStack_94 = pfStack_954;
        bVar29 = WorldSurface_TestLowerRegionGroundAdmission
                           (*(void **)((int)this + 0x3c),(float)pfStack_960,(float)pfStack_958);
        uVar19 = CONCAT31(extraout_var_00,bVar29);
        if (!bVar29) {
          bVar29 = true;
          break;
        }
        fStack_970 = fStack_970 + 1.0;
        bVar29 = false;
      } while (fStack_970 <= (float)pfStack_964);
      auVar117._4_4_ = (float)pfStack_8fc;
      auVar117._0_4_ = (float)pfStack_900;
      auVar117._8_4_ = (float)pfStack_8f8;
      auVar117._12_4_ = (float)pfStack_8f4;
      pfVar15 = extraout_EDX_08;
      fVar60 = fStack_970;
    }
    uVar19 = CONCAT31((int3)(uVar19 >> 8),*(char *)((int)this + 0x8a0));
    if (*(char *)((int)this + 0x8a0) == '\0') {
      if (bVar29) {
        *(undefined1 (*) [16])((int)this + 0x890) = auVar117;
        fVar60 = (*(float *)((int)this + 0x998) / (float)pfStack_964) * fVar60;
        *(float *)((int)this + 0x8a4) = fVar60;
        *(float *)((int)this + 0x8a8) = fVar60;
        if (fVar60 < 1e-05) {
          auVar117._4_4_ = (float)pfStack_8bc;
          auVar117._0_4_ = (float)pfStack_8c0;
          auVar117._8_4_ = (float)pfStack_8b8;
          auVar117._12_4_ = (float)pfStack_8b4;
          goto LAB_009772e0;
        }
        *(undefined1 *)((int)this + 0x8a0) = 1;
      }
    }
    else if (!bVar29) {
LAB_009772e0:
      *(undefined1 *)((int)this + 0x8a0) = 0;
    }
    if (*(char *)((int)this + 0x8a0) != '\0') {
      fVar60 = *(float *)((int)this + 0x8a8) - deltaSeconds;
      uVar19 = (int)fVar60 >> 0x1f;
      *(float *)((int)this + 0x8a8) = fVar60;
      pfVar15 = (float *)0x0;
      *(uint *)((int)this + 0x8a8) = ~uVar19 & (uint)fVar60;
      fVar60 = (float)(~uVar19 & (uint)fVar60) / *(float *)((int)this + 0x8a4);
      auVar117._0_4_ =
           fVar60 * (*(float *)((int)this + 0x890) - (float)pfStack_8c0) + (float)pfStack_8c0;
      auVar117._4_4_ =
           fVar60 * (*(float *)((int)this + 0x894) - (float)pfStack_8bc) + (float)pfStack_8bc;
      auVar117._8_4_ =
           fVar60 * (*(float *)((int)this + 0x898) - (float)pfStack_8b8) + (float)pfStack_8b8;
      auVar117._12_4_ =
           fVar60 * (*(float *)((int)this + 0x89c) - (float)pfStack_8b4) + (float)pfStack_8b4;
    }
  }
  pfStack_940 = (float *)(local_8d0 * auVar117._0_4_ + (float)pfStack_810);
  pfStack_93c = (float *)(fStack_8cc * auVar117._4_4_ + (float)pfStack_80c);
  pfStack_938 = (float *)(fStack_8c8 * auVar117._8_4_ + (float)pfStack_808);
  pfStack_934 = (float *)(fStack_8c4 * auVar117._12_4_ + (float)pfStack_804);
  if (*(char *)((int)this + 0x830) != '\0') {
    auVar4._4_4_ = pfStack_87c;
    auVar4._0_4_ = pfStack_880;
    auVar4._8_4_ = pfStack_878;
    auVar4._12_4_ = pfStack_874;
    auVar84._0_4_ = (float)pfStack_880 * local_8a0;
    auVar84._4_4_ = (float)pfStack_87c * fStack_89c;
    auVar84._8_4_ = (float)pfStack_878 * fStack_898;
    auVar84._12_4_ = (float)pfStack_874 * fStack_894;
    auVar63 = maxps(auVar84,auVar4);
    auVar85._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
    auVar85._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
    auVar85._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
    auVar85._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
    uVar12 = movmskps(uVar19,auVar85);
    if (((byte)uVar12 & 7) != 7) {
      pfStack_940 = (float *)((float)pfStack_880 + (float)pfStack_940);
      pfStack_93c = (float *)((float)pfStack_87c + (float)pfStack_93c);
      pfStack_938 = (float *)((float)pfStack_878 + (float)pfStack_938);
      pfStack_934 = (float *)((float)pfStack_874 + (float)pfStack_934);
    }
  }
  if ((*(char *)((int)this + 0x8b7) != '\0') && (*(char *)((int)this + 0x8b1) == '\0')) {
    FUN_00975750(this,(float *)&pfStack_940,fVar61);
    pfVar15 = extraout_EDX_09;
  }
  pvVar1 = DAT_011edbc4;
  if (*(char *)((int)this + 0x8b9) != '\0') goto LAB_00977cb5;
  if (DAT_011edbc4 == (void *)0x0) {
LAB_00977c0e:
    if ((*(char *)((int)this + 0x8b7) == '\0') && (*(int *)((int)this + 0x3c) != 0)) {
      fVar30 = WorldWater_GetSeaLevel(*(int *)((int)this + 0x3c));
      fStack_590 = *(float *)((int)this + 0x774);
      iStack_7ac = (int)this + 0x770;
      fStack_5b0 = (float)fVar30;
      pfVar15 = extraout_EDX_12;
      if (fStack_590 < fStack_5b0) {
        puVar123 = (uint *)0x0;
        uVar122 = FUN_00c5f560(*(int *)((int)this + 0x3c));
        piVar13 = WorldObjects_FindLotByGuid
                            (*(void **)((int)this + 0x3c),(uint)uVar122,
                             (uint)((ulonglong)uVar122 >> 0x20),puVar123);
        pfVar15 = extraout_EDX_13;
        if (piVar13 != (int *)0x0) {
          uVar12 = FUN_00624bc0((int)piVar13);
          pfVar15 = extraout_EDX_14;
          if ((char)uVar12 != '\0') {
            FUN_00973e80(this,(float *)&pfStack_940,fVar61,piVar13);
            pfVar15 = extraout_EDX_15;
          }
        }
      }
    }
  }
  else {
    auStack_920._4_4_ = pfStack_93c;
    auStack_920._0_4_ = pfStack_940;
    pfStack_918 = pfStack_938;
    pfStack_914 = pfStack_934;
    pfStack_960 = pfStack_940;
    pfStack_95c = pfStack_93c;
    pfStack_958 = pfStack_938;
    pfStack_954 = pfStack_934;
    fVar30 = FUN_00ab0320();
    this_00 = FUN_00c68d10(pvVar1,(float)auStack_920._0_4_,(float)pfStack_958,(float)fVar30);
    pfVar15 = extraout_EDX_10;
    if (this_00 == (void *)0x0) goto LAB_00977c0e;
    pfStack_964 = *(float **)((int)this_00 + 0x4b8);
    if ((float)pfStack_964 != 0.0) {
      pfStack_8c0 = (float *)((float)*(int *)((int)this_00 + 0x174) * 0.5);
      pfStack_8b8 = (float *)((float)*(int *)((int)this_00 + 0x178) * 0.5);
      pfStack_8bc = (float *)0x0;
      uStack_53c = 0;
      pfStack_8b4 = pfStack_8c0;
      pfStack_540 = pfStack_8c0;
      pfStack_538 = pfStack_8b8;
      pfStack_534 = pfStack_8c0;
      Lot_TransformPositionByResolvedPose(this_00,(float *)&pfStack_540,&fStack_910);
      auVar101._4_4_ = (float)pfStack_93c;
      auVar101._0_4_ = (float *)fStack_910;
      auVar101._8_4_ = (float *)fStack_908;
      auVar101._12_4_ = fStack_904;
      fVar76 = fStack_910 - (float)pfStack_940;
      fVar77 = (float)pfStack_93c - (float)pfStack_93c;
      fVar78 = fStack_908 - (float)pfStack_938;
      fVar60 = fVar76 * fVar76;
      fVar61 = fVar77 * fVar77;
      auVar109._4_4_ = fVar60;
      auVar109._0_4_ = fVar61;
      auVar109._8_4_ = fVar60;
      auVar109._12_4_ = fVar60;
      auVar50._0_4_ = fVar78 * fVar78 + fVar61 + fVar60;
      auVar50._4_4_ = auVar50._0_4_;
      auVar50._8_4_ = auVar50._0_4_;
      auVar50._12_4_ = auVar50._0_4_;
      auVar63 = sqrtps(auVar50,auVar50);
      fStack_520 = auVar63._0_4_;
      pfStack_960 = pfStack_964;
      pfStack_95c = pfStack_964;
      pfStack_958 = pfStack_964;
      pfStack_954 = pfStack_964;
      pfStack_420 = pfStack_964;
      ppfStack_734 = &pfStack_940;
      pfStack_90c = pfStack_93c;
      pfVar15 = extraout_EDX_11;
      if (fStack_520 < (float)pfStack_964) {
        fVar60 = fVar78 * fVar78 + fVar61 + fVar60;
        auVar114._4_4_ = fVar60;
        auVar114._0_4_ = fVar60;
        auVar114._8_4_ = fVar60;
        auVar114._12_4_ = fVar60;
        auVar63 = rsqrtps(auVar109,auVar114);
        fVar61 = auVar63._0_4_;
        fVar62 = auVar63._4_4_;
        fVar79 = auVar63._8_4_;
        fVar86 = auVar63._12_4_;
        fVar61 = (1.0 - fVar61 * fVar61 * fVar60) * fVar61 * 0.5 + fVar61;
        fVar62 = (1.0 - fVar62 * fVar62 * fVar60) * fVar62 * 0.5 + fVar62;
        fVar79 = (1.0 - fVar79 * fVar79 * fVar60) * fVar79 * 0.5 + fVar79;
        fVar86 = (1.0 - fVar86 * fVar86 * fVar60) * fVar86 * 0.5 + fVar86;
        pfStack_880 = (float *)(fStack_910 -
                               ((1.0 - fVar61 * fVar61 * fVar60) * fVar61 * 0.5 + fVar61) * fVar76 *
                               (float)pfStack_964);
        pfStack_93c = (float *)((float)pfStack_93c -
                               ((1.0 - fVar62 * fVar62 * fVar60) * fVar62 * 0.5 + fVar62) * fVar77 *
                               (float)pfStack_964);
        pfStack_878 = (float *)(fStack_908 -
                               ((1.0 - fVar79 * fVar79 * fVar60) * fVar79 * 0.5 + fVar79) * fVar78 *
                               (float)pfStack_964);
        pfStack_934 = (float *)(fStack_904 -
                               ((1.0 - fVar86 * fVar86 * fVar60) * fVar86 * 0.5 + fVar86) *
                               (fStack_904 - (float)pfStack_934) * (float)pfStack_964);
        fVar60 = *(float *)((int)pvVar1 + 0xb8) + 50.0;
        uVar19 = (int)(fVar60 - (float)pfStack_808) >> 0x1f;
        fVar61 = *(float *)((int)pvVar1 + 0xb4) + 50.0;
        pfVar24 = (float *)(~uVar19 & (uint)pfStack_808 | (uint)fVar60 & uVar19);
        uVar19 = (int)(fVar61 - (float)pfStack_810) >> 0x1f;
        fVar60 = *(float *)((int)pvVar1 + 0xc0) - 50.0;
        pfVar25 = (float *)(~uVar19 & (uint)pfStack_810 | (uint)fVar61 & uVar19);
        auStack_920._4_4_ = pfStack_93c;
        auStack_920._0_4_ = pfStack_880;
        pfStack_918 = pfStack_878;
        pfStack_914 = pfStack_934;
        uVar19 = (int)(fVar60 - (float)pfStack_808) >> 0x1f;
        pfStack_960 = pfStack_810;
        pfStack_95c = pfStack_80c;
        pfStack_958 = pfStack_808;
        pfStack_954 = pfStack_804;
        fVar61 = *(float *)((int)pvVar1 + 0xbc) - 50.0;
        auVar59._0_4_ = (float *)(~uVar19 & (uint)fVar60 | (uint)pfStack_808 & uVar19);
        uVar19 = (int)(fVar61 - (float)pfStack_810) >> 0x1f;
        pfVar26 = (float *)(~uVar19 & (uint)fVar61 | (uint)pfStack_810 & uVar19);
        pfStack_87c = pfStack_93c;
        pfStack_874 = pfStack_934;
        if ((float)pfStack_880 < (float)pfVar25) {
LAB_009779c1:
          pfStack_960 = (float *)(fStack_910 - (float)pfVar25);
          pfStack_95c = (float *)(fStack_910 - (float)pfVar25);
          pfStack_958 = (float *)(fStack_910 - (float)pfVar25);
          pfStack_954 = (float *)(fStack_910 - (float)pfVar25);
          pfStack_730 = &fStack_910;
          pfVar15 = pfStack_730;
          pfVar26 = pfVar25;
          pfStack_650 = pfVar25;
          pfStack_64c = pfStack_93c;
          pfStack_648 = pfStack_878;
          pfStack_644 = pfStack_934;
          pfStack_90 = pfStack_960;
          pfStack_8c = pfStack_95c;
          pfStack_88 = pfStack_958;
          pfStack_84 = pfStack_954;
        }
        else {
          pfVar15 = pfVar26;
          if ((float)pfStack_880 <= (float)pfVar26) {
            if ((float)pfStack_878 < (float)pfVar24) {
LAB_00977768:
              pfStack_960 = (float *)(fStack_908 - (float)pfVar24);
              pfStack_95c = (float *)(fStack_908 - (float)pfVar24);
              pfStack_958 = (float *)(fStack_908 - (float)pfVar24);
              pfStack_954 = (float *)(fStack_908 - (float)pfVar24);
              pfStack_70c = &fStack_910;
              pfVar15 = pfStack_70c;
              auVar59._0_4_ = pfVar24;
              pfStack_690 = pfStack_880;
              pfStack_68c = pfStack_93c;
              pfStack_688 = pfVar24;
              pfStack_684 = pfStack_934;
              pfStack_80 = pfStack_960;
              pfStack_7c = pfStack_95c;
              pfStack_78 = pfStack_958;
              pfStack_74 = pfStack_954;
            }
            else {
              pfStack_940 = pfStack_880;
              pfStack_938 = pfStack_878;
              if ((float)pfStack_878 <= (float)auVar59._0_4_) goto LAB_00977cb5;
              if ((float)pfStack_878 < (float)pfVar24) goto LAB_00977768;
              pfStack_960 = (float *)(fStack_908 - (float)auVar59._0_4_);
              pfStack_95c = (float *)(fStack_908 - (float)auVar59._0_4_);
              pfStack_958 = (float *)(fStack_908 - (float)auVar59._0_4_);
              pfStack_954 = (float *)(fStack_908 - (float)auVar59._0_4_);
              pfStack_72c = &fStack_910;
              pfStack_670 = pfStack_880;
              pfStack_66c = pfStack_93c;
              pfStack_668 = auVar59._0_4_;
              pfStack_664 = pfStack_934;
              pfStack_60 = pfStack_960;
              pfStack_5c = pfStack_95c;
              pfStack_58 = pfStack_958;
              pfStack_54 = pfStack_954;
            }
            pfStack_6d8 = &fStack_910;
            auVar101._4_4_ = fStack_910;
            auVar101._8_4_ = (float *)fStack_910;
            auVar101._12_4_ = fStack_910;
            fVar60 = SQRT((float)pfStack_964 * (float)pfStack_964 -
                          (float)pfStack_960 * (float)pfStack_960);
            pfStack_380 = (float *)(fStack_910 + fVar60);
            fStack_3c = fStack_910 + fVar60;
            fStack_38 = fStack_910 + fVar60;
            fStack_34 = fStack_910 + fVar60;
            pfStack_938 = auVar59._0_4_;
            pfStack_500 = pfVar26;
            pfStack_40 = pfStack_380;
            if ((float)pfStack_380 <= (float)pfVar26) {
              pfStack_4e0 = (float *)(fStack_910 - fVar60);
              fStack_2c = fStack_910 - fVar60;
              fStack_28 = fStack_910 - fVar60;
              fStack_24 = fStack_910 - fVar60;
              pfStack_760 = &fStack_910;
              pfStack_940 = pfStack_4e0;
              pfStack_400 = pfVar25;
              pfStack_30 = pfStack_4e0;
              if ((float)pfVar25 <= (float)pfStack_4e0) {
                fStack_3a0 = fStack_910;
                pfStack_7b0 = &fStack_910;
                pfVar15 = pfStack_7b0;
                pfStack_4c0 = pfStack_880;
                if (fStack_910 <= (float)pfStack_880) {
                  pfStack_788 = &fStack_910;
                  pfStack_940 = pfStack_380;
                  pfStack_210 = pfStack_380;
                  fStack_20c = fStack_3c;
                  fStack_208 = fStack_38;
                  fStack_204 = fStack_34;
                }
                else {
                  pfStack_7a8 = pfStack_7b0;
                  pfStack_130 = pfStack_4e0;
                  fStack_12c = fStack_2c;
                  fStack_128 = fStack_28;
                  fStack_124 = fStack_24;
                }
              }
              else {
                pfStack_758 = pfStack_760;
                pfStack_230 = pfStack_4e0;
                fStack_22c = fStack_2c;
                fStack_228 = fStack_28;
                fStack_224 = fStack_24;
              }
            }
            else {
              auVar101._0_4_ = (float *)(fStack_910 - fVar60);
              auVar101._4_4_ = fStack_910 - fVar60;
              auVar101._8_4_ = (float *)(fStack_910 - fVar60);
              auVar101._12_4_ = fStack_910 - fVar60;
              pfVar15 = pfStack_6d8;
              pfStack_940 = auVar101._0_4_;
              pfStack_784 = pfStack_6d8;
              auStack_20 = auVar101;
            }
            goto LAB_00977cb5;
          }
          if ((float)pfStack_880 < (float)pfVar25) goto LAB_009779c1;
          pfStack_960 = (float *)(fStack_910 - (float)pfVar26);
          pfStack_95c = (float *)(fStack_910 - (float)pfVar26);
          pfStack_958 = (float *)(fStack_910 - (float)pfVar26);
          pfStack_954 = (float *)(fStack_910 - (float)pfVar26);
          pfStack_728 = &fStack_910;
          pfStack_630 = pfVar26;
          pfStack_62c = pfStack_93c;
          pfStack_628 = pfStack_878;
          pfStack_624 = pfStack_934;
          pfStack_1f0 = pfStack_960;
          pfStack_1ec = pfStack_95c;
          pfStack_1e8 = pfStack_958;
          pfStack_1e4 = pfStack_954;
        }
        pfStack_720 = &fStack_910;
        auVar101._4_4_ = fStack_908;
        auVar101._0_4_ = (float *)fStack_908;
        auVar101._12_4_ = fStack_908;
        fVar60 = SQRT((float)pfStack_964 * (float)pfStack_964 -
                      (float)pfStack_960 * (float)pfStack_960);
        fStack_3e0 = fStack_908 + fVar60;
        fStack_10c = fStack_908 + fVar60;
        pfStack_108 = (float *)(fStack_908 + fVar60);
        fStack_104 = fStack_908 + fVar60;
        pfStack_940 = pfVar26;
        pfStack_4a0 = auVar59._0_4_;
        fStack_110 = fStack_3e0;
        if (fStack_3e0 <= (float)auVar59._0_4_) {
          fStack_480 = fStack_908 - fVar60;
          fStack_4c = fStack_908 - fVar60;
          pfStack_48 = (float *)(fStack_908 - fVar60);
          fStack_44 = fStack_908 - fVar60;
          pfStack_710 = &fStack_910;
          pfStack_360 = pfVar24;
          fStack_50 = fStack_480;
          if ((float)pfVar24 <= fStack_480) {
            fStack_450 = fStack_908;
            pfVar15 = &fStack_910;
            pfStack_700 = pfVar15;
            pfStack_5c0 = pfStack_878;
            if (fStack_908 <= (float)pfStack_878) {
              pfStack_6d4 = &fStack_910;
              pfStack_938 = pfStack_108;
              fStack_190 = fStack_3e0;
              fStack_18c = fStack_10c;
              pfStack_188 = pfStack_108;
              fStack_184 = fStack_104;
              goto LAB_00977cb5;
            }
            pfStack_6f8 = pfVar15;
            fStack_e0 = fStack_480;
            fStack_dc = fStack_4c;
            pfStack_d8 = pfStack_48;
            fStack_d4 = fStack_44;
          }
          else {
            pfStack_708 = pfStack_710;
            fStack_1b0 = fStack_480;
            fStack_1ac = fStack_4c;
            pfStack_1a8 = pfStack_48;
            fStack_1a4 = fStack_44;
          }
          pfStack_938 = pfStack_48;
        }
        else {
          auVar101._0_4_ = (float *)(fStack_908 - fVar60);
          auVar101._4_4_ = fStack_908 - fVar60;
          auVar101._8_4_ = (float *)(fStack_908 - fVar60);
          auVar101._12_4_ = fStack_908 - fVar60;
          pfVar15 = pfStack_720;
          pfStack_938 = auVar101._8_4_;
          pfStack_718 = pfStack_720;
          auStack_1d0 = auVar101;
        }
      }
    }
  }
LAB_00977cb5:
                    /* Ordinary-follow state block, after the map-threshold update. Reads
                       follow-enable/policy bytes at camera +8B1, +818, +8B6 and +819, then adjusts
                       the candidate target vector's height using +8F4 on one branch. This address
                       is a conditional block, not a CALL instruction. Subsequent ground preparation
                       is at 0097836F. */
  if ((*(char *)((int)this + 0x8b1) == '\0') && (*(char *)((int)this + 0x818) != '\0')) {
    if (*(char *)((int)this + 0x8b6) == '\0') {
      if (*(char *)((int)this + 0x819) == '\0') {
        ppfStack_750 = &pfStack_940;
        pfStack_85c = pfStack_93c;
      }
      else {
        pfStack_85c = (float *)(*(float *)((int)this + 0x8f4) + (float)pfStack_85c);
      }
    }
    pfStack_940 = pfStack_860;
    pfStack_93c = pfStack_85c;
    pfStack_938 = pfStack_858;
    pfStack_934 = pfStack_854;
  }
  if ((bVar28) || (*(void **)((int)this + 0x3c) == (void *)0x0)) {
LAB_00977d69:
    *(float **)((int)this + 0x780) = pfStack_940;
    *(float **)((int)this + 0x784) = pfStack_93c;
    *(float **)((int)this + 0x788) = pfStack_938;
    *(float **)((int)this + 0x78c) = pfStack_934;
    if (!bVar28) {
      *(undefined4 *)((int)this + 0x7a0) = *(undefined4 *)((int)this + 0x780);
      *(undefined4 *)((int)this + 0x7a4) = *(undefined4 *)((int)this + 0x784);
      *(undefined4 *)((int)this + 0x7a8) = *(undefined4 *)((int)this + 0x788);
      *(undefined4 *)((int)this + 0x7ac) = *(undefined4 *)((int)this + 0x78c);
    }
  }
  else {
    auStack_920._4_4_ = pfStack_93c;
    auStack_920._0_4_ = pfStack_940;
    pfStack_918 = pfStack_938;
    pfStack_914 = pfStack_934;
    pfStack_960 = pfStack_940;
    pfStack_95c = pfStack_93c;
    pfStack_958 = pfStack_938;
    pfStack_954 = pfStack_934;
    bVar29 = WorldSurface_TestLowerRegionGroundAdmission
                       (*(void **)((int)this + 0x3c),(float)pfStack_940,(float)pfStack_938);
    pfVar15 = extraout_EDX_16;
    if (bVar29) goto LAB_00977d69;
  }
  auVar59._0_4_ = pfStack_944;
  if (*(char *)((int)this + 0x8b2) == '\0') {
    if (*(char *)((int)this + 0x8b3) == '\0') {
                    /* Ordinary rotation: load retained pitch/yaw velocity+7F0, multiply by frame
                       deltaSeconds, add to angle+7D0. Pitch is lane0; yaw lane1. No shortest-angle
                       interpolation, wrap or yaw clamp. */
      *(float *)((int)this + 2000) =
           *(float *)((int)this + 2000) + *(float *)((int)this + 0x7f0) * local_8d0;
      *(float *)((int)this + 0x7d4) =
           *(float *)((int)this + 0x7d4) + *(float *)((int)this + 0x7f4) * fStack_8cc;
      *(float *)((int)this + 0x7d8) =
           *(float *)((int)this + 0x7d8) + *(float *)((int)this + 0x7f8) * fStack_8c8;
      *(float *)((int)this + 0x7dc) =
           *(float *)((int)this + 0x7dc) + *(float *)((int)this + 0x7fc) * fStack_8c4;
      if (*(char *)((int)this + 0x830) != '\0') {
        auVar53._4_4_ = pfStack_7dc;
        auVar53._0_4_ = pfStack_7dc;
        auVar53._8_4_ = pfStack_7dc;
        auVar53._12_4_ = pfStack_7dc;
        auVar74._0_4_ = local_8a0 * (float)pfStack_7dc;
        auVar74._4_4_ = fStack_89c * (float)pfStack_7dc;
        auVar74._8_4_ = fStack_898 * (float)pfStack_7dc;
        auVar74._12_4_ = fStack_894 * (float)pfStack_7dc;
        auVar63 = maxps(auVar74,auVar53);
        auVar75._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
        auVar75._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
        auVar75._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
        auVar75._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
        ppfStack_7a4 = &pfStack_7e0;
        iVar20 = movmskps(pfVar15,auVar75);
        if (iVar20 != 0xf) {
          *(undefined4 *)((int)this + 2000) = *(undefined4 *)((int)this + 2000);
          *(float *)((int)this + 0x7d4) = *(float *)((int)this + 0x7d4) - (float)pfStack_7dc;
          *(undefined4 *)((int)this + 0x7d8) = *(undefined4 *)((int)this + 0x7d8);
          *(undefined4 *)((int)this + 0x7dc) = *(undefined4 *)((int)this + 0x7dc);
          ppfStack_748 = ppfStack_7a4;
        }
      }
      if (iVar22 == 0xf) goto LAB_00977f54;
    }
    else {
      puVar21 = (undefined4 *)(**(code **)(*(int *)((int)this + 0x6b0) + 0x30))(auStack_150);
      uVar12 = puVar21[1];
      uVar16 = puVar21[2];
      uVar17 = puVar21[3];
      *(undefined4 *)((int)this + 2000) = *puVar21;
      *(undefined4 *)((int)this + 0x7d4) = uVar12;
      *(undefined4 *)((int)this + 0x7d8) = uVar16;
      *(undefined4 *)((int)this + 0x7dc) = uVar17;
    }
LAB_00977f4d:
    *(undefined1 *)((int)this + 0x808) = 0;
  }
  else {
    pfVar15 = (float *)(**(code **)((int)*pfStack_944 + 0x1c))(auStack_70);
    auVar59._0_4_ = (float *)(**(code **)((int)*auVar59._0_4_ + 0x20))();
    auStack_610._0_4_ = *auVar59._0_4_ - *pfVar15;
    auStack_610._4_4_ = auVar59._0_4_[1] - pfVar15[1];
    fStack_608 = auVar59._0_4_[2] - pfVar15[2];
    fStack_604 = auVar59._0_4_[3] - pfVar15[3];
    auVar51._0_4_ = local_8a0 * (float)auStack_610._0_4_;
    auVar51._4_4_ = fStack_89c * (float)auStack_610._4_4_;
    auVar51._8_4_ = fStack_898 * fStack_608;
    auVar51._12_4_ = fStack_894 * fStack_604;
    auVar63 = maxps(auVar51,_auStack_610);
    auVar52._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
    auVar52._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
    auVar52._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
    auVar52._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
    uVar12 = movmskps(auVar59._0_4_,auVar52);
    if (((byte)uVar12 & 7) != 7) {
      fVar60 = fStack_608 * fStack_608 + (float)auStack_610._4_4_ * (float)auStack_610._4_4_ +
               (float)auStack_610._0_4_ * (float)auStack_610._0_4_;
      auVar115._4_4_ = fVar60;
      auVar115._0_4_ = fVar60;
      auVar115._8_4_ = fVar60;
      auVar115._12_4_ = fVar60;
      auVar63 = rsqrtps(auVar101,auVar115);
      fVar61 = auVar63._0_4_;
      fVar76 = auVar63._4_4_;
      fVar77 = auVar63._8_4_;
      fVar78 = auVar63._12_4_;
      fVar61 = (1.0 - fVar61 * fVar61 * fVar60) * fVar61 * 0.5 + fVar61;
      fVar76 = (1.0 - fVar76 * fVar76 * fVar60) * fVar76 * 0.5 + fVar76;
      fVar77 = (1.0 - fVar77 * fVar77 * fVar60) * fVar77 * 0.5 + fVar77;
      fVar78 = (1.0 - fVar78 * fVar78 * fVar60) * fVar78 * 0.5 + fVar78;
      auStack_610._4_4_ =
           ((1.0 - fVar76 * fVar76 * fVar60) * fVar76 * 0.5 + fVar76) * (float)auStack_610._4_4_;
      auStack_610._0_4_ =
           ((1.0 - fVar61 * fVar61 * fVar60) * fVar61 * 0.5 + fVar61) * (float)auStack_610._0_4_;
      fStack_608 = ((1.0 - fVar77 * fVar77 * fVar60) * fVar77 * 0.5 + fVar77) * fStack_608;
      fStack_604 = ((1.0 - fVar78 * fVar78 * fVar60) * fVar78 * 0.5 + fVar78) * fStack_604;
      puVar21 = (undefined4 *)FUN_0097d710(afStack_b0,(float *)auStack_610);
      uVar12 = puVar21[1];
      uVar16 = puVar21[2];
      uVar17 = puVar21[3];
      *(undefined4 *)((int)this + 2000) = *puVar21;
      *(undefined4 *)((int)this + 0x7d4) = uVar12;
      *(undefined4 *)((int)this + 0x7d8) = uVar16;
      *(undefined4 *)((int)this + 0x7dc) = uVar17;
      goto LAB_00977f4d;
    }
  }
LAB_00977f54:
  pauVar27 = (undefined1 (*) [16])((int)this + 2000);
  MainCamera_EvaluatePitchLimitsAtZoom(this,&fStack_834,&fStack_838,&local_924,fStack_96c);
  uVar12 = *(undefined4 *)((int)this + 0x7d4);
  uVar16 = *(undefined4 *)((int)this + 0x7d8);
  uVar17 = *(undefined4 *)((int)this + 0x7dc);
  uVar19 = (int)(fStack_834 - *(float *)*pauVar27) >> 0x1f;
  fVar60 = (float)(~uVar19 & (uint)fStack_834 | (uint)*(float *)*pauVar27 & uVar19);
  fVar61 = fStack_838 - fVar60;
  auVar63 = ZEXT416((uint)fVar61);
  uVar19 = (int)fVar61 >> 0x1f;
                    /* These shuffles replace pitch lane0 with zoom-dependent clamped pitch. Yaw
                       lane1 is preserved. */
  *(uint *)*pauVar27 = ~uVar19 & (uint)fVar60 | (uint)fStack_838 & uVar19;
  *(undefined4 *)((int)this + 0x7d4) = uVar12;
  *(undefined4 *)((int)this + 0x7d8) = uVar16;
  *(undefined4 *)((int)this + 0x7dc) = uVar17;
  if ((((iVar11 != 0xf) && (iVar22 == 0xf)) || (*(char *)((int)this + 0x95c) == '\0')) ||
     (*(char *)((int)this + 0x810) != '\0')) {
    if (*(char *)((int)this + 0x809) != '\0') {
      *(undefined1 *)((int)this + 0x809) = 0;
      *(undefined1 *)((int)this + 0x810) = 1;
      *(undefined4 *)((int)this + 0x814) = 0;
    }
    if (*(char *)((int)this + 0x808) == '\0') {
      fStack_530 = *(float *)*pauVar27;
      fStack_510 = local_924;
      pauStack_740 = pauVar27;
      if (local_924 < fStack_530) goto LAB_00978151;
    }
    else {
LAB_00978151:
      uVar12 = *(undefined4 *)((int)this + 0x7d4);
      uVar16 = *(undefined4 *)((int)this + 0x7d8);
      uVar17 = *(undefined4 *)((int)this + 0x7dc);
      *(float *)*pauVar27 = local_924;
      *(undefined4 *)((int)this + 0x7d4) = uVar12;
      *(undefined4 *)((int)this + 0x7d8) = uVar16;
      *(undefined4 *)((int)this + 0x7dc) = uVar17;
    }
    fVar60 = *(float *)*pauVar27;
    auStack_240._0_4_ = fVar60 - local_924;
    auStack_240._4_4_ = fVar60 - local_924;
    auStack_240._8_4_ = fVar60 - local_924;
    auStack_240._12_4_ = fVar60 - local_924;
    auVar54._0_4_ = local_8a0 * auStack_240._0_4_;
    auVar54._4_4_ = fStack_89c * auStack_240._4_4_;
    auVar54._8_4_ = fStack_898 * auStack_240._8_4_;
    auVar54._12_4_ = fStack_894 * auStack_240._12_4_;
    auVar96 = maxps(auVar54,auStack_240);
    auVar55._4_4_ = -(uint)(auVar96._4_4_ <= 0.001);
    auVar55._0_4_ = -(uint)(auVar96._0_4_ <= 0.001);
    auVar55._8_4_ = -(uint)(auVar96._8_4_ <= 0.001);
    auVar55._12_4_ = -(uint)(auVar96._12_4_ <= 0.001);
    iVar11 = movmskps(uVar19,auVar55);
    *(bool *)((int)this + 0x808) = iVar11 == 0xf;
    pauStack_7b4 = pauVar27;
    pauStack_738 = pauVar27;
  }
  else {
    fStack_244 = *(float *)*pauVar27;
    uStack_550 = 0x3a83126f;
    fStack_570 = fStack_244 - local_924;
    fStack_24c = fStack_244 - local_924;
    fStack_248 = fStack_244 - local_924;
    fStack_244 = fStack_244 - local_924;
    pauStack_78c = pauVar27;
    fStack_250 = fStack_570;
    if (fStack_570 <= 0.001) {
      *(undefined1 *)((int)this + 0x809) = 0;
    }
    else {
      *(undefined1 *)((int)this + 0x809) = 1;
      *(undefined4 *)((int)this + 0x80c) = *(undefined4 *)*pauVar27;
      uVar12 = *(undefined4 *)((int)this + 0x7d4);
      uVar16 = *(undefined4 *)((int)this + 0x7d8);
      uVar17 = *(undefined4 *)((int)this + 0x7dc);
      *(float *)*pauVar27 = local_924;
      *(undefined4 *)((int)this + 0x7d4) = uVar12;
      *(undefined4 *)((int)this + 0x7d8) = uVar16;
      *(undefined4 *)((int)this + 0x7dc) = uVar17;
    }
  }
  fStack_4d0 = *(float *)((int)this + 0x7d4);
  uStack_4f0 = 0;
  if (fStack_4d0 < 0.0) {
    fVar60 = *(float *)((int)this + 0x7d4);
    uVar12 = *(undefined4 *)((int)this + 0x7d8);
    uVar16 = *(undefined4 *)((int)this + 0x7dc);
    *(undefined4 *)*pauVar27 = *(undefined4 *)*pauVar27;
    *(float *)((int)this + 0x7d4) = fVar60 + 6.2831855;
    *(undefined4 *)((int)this + 0x7d8) = uVar12;
    *(undefined4 *)((int)this + 0x7dc) = uVar16;
  }
  fStack_4b0 = *(float *)((int)this + 0x7d4);
  uStack_490 = 0x40c90fdb;
  if (6.2831855 <= fStack_4b0) {
    fVar60 = *(float *)((int)this + 0x7d4);
    uVar12 = *(undefined4 *)((int)this + 0x7d8);
    uVar16 = *(undefined4 *)((int)this + 0x7dc);
    *(undefined4 *)*pauVar27 = *(undefined4 *)*pauVar27;
    *(float *)((int)this + 0x7d4) = fVar60 - 6.2831855;
    *(undefined4 *)((int)this + 0x7d8) = uVar12;
    *(undefined4 *)((int)this + 0x7dc) = uVar16;
  }
  pfStack_960 = *(float **)*pauVar27;
  pfStack_95c = *(float **)((int)this + 0x7d4);
  pfStack_958 = *(float **)((int)this + 0x7d8);
  pfStack_954 = *(float **)((int)this + 0x7dc);
  _auStack_920 = *pauVar27;
  pauStack_75c = pauVar27;
  pauStack_724 = pauVar27;
  GameplayCamera_DirectionFromPitchYaw
            ((float *)local_820,(float)auStack_920._0_4_,(float)pfStack_95c);
  *(float *)((int)this + 0x770) =
       *(float *)((int)this + 0x780) - fStack_96c * (float)local_820._0_4_;
  *(float *)((int)this + 0x774) =
       *(float *)((int)this + 0x784) - fStack_96c * (float)local_820._4_4_;
  *(float *)((int)this + 0x778) = *(float *)((int)this + 0x788) - fStack_96c * fStack_818;
  *(float *)((int)this + 0x77c) = *(float *)((int)this + 0x78c) - fStack_96c * fStack_814;
  pfStack_7a0 = *(float **)((int)this + 0x780);
  pfStack_79c = *(float **)((int)this + 0x784);
  pfStack_798 = *(float **)((int)this + 0x788);
  pfStack_794 = *(float **)((int)this + 0x78c);
  fStack_620 = *(float *)((int)this + 0x770);
  uStack_61c = *(undefined4 *)((int)this + 0x774);
  uStack_618 = *(undefined4 *)((int)this + 0x778);
  uStack_614 = *(undefined4 *)((int)this + 0x77c);
  puVar123 = (uint *)0x0;
  uVar122 = FUN_00c5f560(*(int *)((int)this + 0x3c));
  piVar13 = WorldObjects_FindLotByGuid
                      (*(void **)((int)this + 0x3c),(uint)uVar122,(uint)((ulonglong)uVar122 >> 0x20)
                       ,puVar123);
  if (piVar13 == (int *)0x0) {
    cVar9 = '\0';
  }
  else {
    cVar9 = (char)piVar13[0xd6];
  }
  if (((((*(char *)((int)this + 0x8b1) != '\0') || (*(char *)((int)this + 0x8b2) != '\0')) ||
       ((*(char *)((int)this + 0x8b4) != '\0' ||
        ((*(char *)((int)this + 0x8b3) != '\0' || (*(char *)((int)this + 0x8b6) != '\0')))))) ||
      (cVar9 != '\0')) || (fStack_974._0_1_ = '\x01', *(char *)((int)this + 0x819) != '\0')) {
    fStack_974._0_1_ = '\0';
  }
                    /* Ground-follow preparation call 00972CD0 executes after earlier map/follow
                       blocks. The returned x87 float is stored at stack +20; subsequent main-frame
                       code performs four offset samples and descent damping. This helper is not the
                       owner of the 2m/.4 constants. */
  fVar30 = FUN_00972cd0(this,(float *)&pfStack_7a0,&fStack_620,fStack_974._0_1_);
  fVar60 = (float)fVar30;
  bVar29 = false;
  bVar28 = false;
  if ((*(char *)((int)this + 0x819) == '\0') &&
     ((*(char *)((int)this + 0x8bd) == '\0' || (fStack_974._0_1_ == '\0')))) {
    pfStack_880 = pfStack_7a0;
    pfStack_87c = pfStack_79c;
    pfStack_878 = pfStack_798;
    pfStack_874 = pfStack_794;
    pfStack_944 = (float *)((float)pfStack_79c - *(float *)((int)this + 0x784));
    iStack_704 = (int)this + 0x780;
    pfStack_864 = (float *)((int)this + 0x770);
    auStack_8b0._4_4_ = pfStack_944;
    auStack_8b0._0_4_ = pfStack_944;
    pfStack_8a8 = pfStack_944;
    pfStack_8a4 = pfStack_944;
    fVar61 = fStack_818 * fStack_818 + 0.0 + (float)local_820._0_4_ * (float)local_820._0_4_;
    auVar116._4_4_ = fVar61;
    auVar116._0_4_ = fVar61;
    auVar116._8_4_ = fVar61;
    auVar116._12_4_ = fVar61;
    auVar63 = rsqrtps(auVar63,auVar116);
    fVar76 = auVar63._0_4_;
    fVar77 = auVar63._4_4_;
    fVar78 = auVar63._8_4_;
    fVar62 = auVar63._12_4_;
    fVar76 = (1.0 - fVar76 * fVar76 * fVar61) * fVar76 * 0.5 + fVar76;
    fVar77 = (1.0 - fVar77 * fVar77 * fVar61) * fVar77 * 0.5 + fVar77;
    fVar78 = (1.0 - fVar78 * fVar78 * fVar61) * fVar78 * 0.5 + fVar78;
    fVar62 = (1.0 - fVar62 * fVar62 * fVar61) * fVar62 * 0.5 + fVar62;
    pfStack_960 = (float *)(((1.0 - fVar76 * fVar76 * fVar61) * fVar76 * 0.5 + fVar76) *
                           (float)local_820._0_4_);
    pfStack_95c = (float *)(((1.0 - fVar77 * fVar77 * fVar61) * fVar77 * 0.5 + fVar77) * 0.0);
    pfStack_958 = (float *)(((1.0 - fVar78 * fVar78 * fVar61) * fVar78 * 0.5 + fVar78) * fStack_818)
    ;
    pfStack_954 = (float *)(((1.0 - fVar62 * fVar62 * fVar61) * fVar62 * 0.5 + fVar62) *
                           (float)local_820._0_4_);
    auStack_920._4_4_ = pfStack_95c;
    auStack_920._0_4_ = pfStack_960;
                    /* Read [0103FD88] = 2.0f from original PE bytes. Normalized horizontal
                       direction and its perpendicular are multiplied by 2 and added/subtracted from
                       eye +770: eye +/-2*forward and eye +/-2*perpendicular. Loop count 4 at
                       0097856D; ground query 00971480 at 0097857C; loop back at 009785FB. */
    pfStack_918 = pfStack_958;
    pfStack_914 = pfStack_954;
    fStack_8c8 = -0.0 - (float)pfStack_960;
    fStack_270 = *pfStack_864;
    fStack_26c = *(float *)((int)this + 0x774);
    fStack_268 = *(float *)((int)this + 0x778);
    fStack_264 = *(float *)((int)this + 0x77c);
    fStack_2a0 = fStack_270 + (float)pfStack_960 * 2.0;
    fStack_29c = fStack_26c + (float)pfStack_95c * 2.0;
    fStack_298 = fStack_268 + (float)pfStack_958 * 2.0;
    fStack_294 = fStack_264 + (float)pfStack_954 * 2.0;
    fStack_8cc = 0.0;
    fStack_290 = fStack_270 - (float)pfStack_960 * 2.0;
    fStack_28c = fStack_26c - (float)pfStack_95c * 2.0;
    fStack_288 = fStack_268 - (float)pfStack_958 * 2.0;
    fStack_284 = fStack_264 - (float)pfStack_954 * 2.0;
    fStack_280 = fStack_270 + (float)pfStack_958 * 2.0;
    fStack_27c = fStack_26c + 0.0;
    fStack_278 = fStack_268 + fStack_8c8 * 2.0;
    fStack_274 = fStack_264 + (float)pfStack_958 * 2.0;
    fStack_270 = fStack_270 - (float)pfStack_958 * 2.0;
    fStack_26c = fStack_26c - 0.0;
    fStack_268 = fStack_268 - fStack_8c8 * 2.0;
    fStack_264 = fStack_264 - (float)pfStack_958 * 2.0;
    pfVar15 = &fStack_2a0;
    iVar11 = 4;
    local_8d0 = (float)pfStack_958;
    fStack_8c4 = (float)pfStack_958;
    pfStack_220 = pfStack_944;
    pfStack_21c = pfStack_944;
    pfStack_218 = pfStack_944;
    pfStack_214 = pfStack_944;
    fStack_200 = (float)pfStack_960;
    fStack_1fc = (float)pfStack_95c;
    fStack_1f8 = (float)pfStack_958;
    fStack_1f4 = (float)pfStack_954;
    do {
      GameplayCamera_QueryGroundHeight(this,pfVar15,'\0',(float *)&cStack_965);
      pfStack_960 = (float *)*pfStack_864;
      pfStack_95c = (float *)pfStack_864[1];
      pfStack_958 = (float *)pfStack_864[2];
      pfStack_954 = (float *)pfStack_864[3];
      pfVar15 = pfVar15 + 4;
      pfStack_964 = (float *)(float)((extraout_ST0 + (float10)*(float *)((int)this + 0x8f8)) -
                                    (float10)(float)pfStack_95c);
      auStack_920._4_4_ = pfStack_964;
      auStack_920._0_4_ = pfStack_964;
      pfStack_918 = pfStack_964;
      pfStack_914 = pfStack_964;
      uVar19 = (int)((float)pfStack_944 - (float)pfStack_964) >> 0x1f;
      pfStack_944 = (float *)(~uVar19 & (uint)pfStack_944 | (uint)pfStack_964 & uVar19);
      iVar11 = iVar11 + -1;
      pfStack_1e0 = pfStack_964;
      pfStack_1dc = pfStack_964;
      pfStack_1d8 = pfStack_964;
      pfStack_1d4 = pfStack_964;
    } while (iVar11 != 0);
    pfStack_754 = (float *)((int)this + 0x7b0);
    fVar61 = *(float *)((int)this + 0x7b4);
    pfStack_1c0 = (float *)(fVar61 - (float)pfStack_87c);
    pfStack_1bc = (float *)(fVar61 - (float)pfStack_87c);
    pfStack_1b8 = (float *)(fVar61 - (float)pfStack_87c);
    pfStack_1b4 = (float *)(fVar61 - (float)pfStack_87c);
    pfVar15 = (float *)((int)this + 0x780);
    if (0.0 <= (float)pfStack_1c0) {
      fStack_7d0 = *pfStack_754 - *pfVar15;
      fStack_7c8 = *(float *)((int)this + 0x7b8) - *(float *)((int)this + 0x788);
      fStack_7c4 = *(float *)((int)this + 0x7bc) - *(float *)((int)this + 0x78c);
      fStack_7cc = 0.0;
      fVar61 = fStack_7d0 * fStack_7d0;
      auVar7._4_4_ = fVar61;
      auVar7._0_4_ = fVar61;
      auVar7._8_4_ = fVar61;
      auVar7._12_4_ = 0;
      auVar56._0_4_ = fStack_7c8 * fStack_7c8 + 0.0 + fVar61;
      auVar56._4_4_ = auVar56._0_4_;
      auVar56._8_4_ = auVar56._0_4_;
      auVar56._12_4_ = auVar56._0_4_;
                    /* Descent gate: sqrt(horizontal reference-target distance squared) divided by
                       vertical drop, then multiplied by 1/[0117EFA4], whose original float value is
                       0.4f. If scaled ratio <1 (horizontal travel <.4*drop), 009786E7 selects 0 to
                       hold downward movement; otherwise the candidate proceeds. Reference/target
                       field names are analyst interpretation; instructions determine comparisons.
                        */
      auVar63 = sqrtps(auVar7 << 0x20,auVar56);
      fVar61 = 1.0 / (float)pfStack_1c0;
      fVar76 = 1.0 / _DAT_0117efa4;
      pfStack_960 = (float *)(auVar63._0_4_ * fVar61 * fVar76);
      pfStack_95c = (float *)(auVar63._4_4_ * fVar61 * fVar76);
      pfStack_958 = (float *)(auVar63._8_4_ * fVar61 * fVar76);
      pfStack_954 = (float *)(auVar63._12_4_ * fVar61 * fVar76);
      if (1.0 <= (float)pfStack_960) {
        *pfStack_754 = *pfVar15;
        *(undefined4 *)((int)this + 0x7b4) = *(undefined4 *)((int)this + 0x784);
        *(float *)((int)this + 0x7b8) = *(float *)((int)this + 0x788);
        *(float *)((int)this + 0x7bc) = *(float *)((int)this + 0x78c);
        auVar59._0_4_ = (float *)*pfStack_754;
        pfVar26 = *(float **)((int)this + 0x7b8);
        pfVar24 = *(float **)((int)this + 0x7bc);
        pfStack_82c = pfStack_87c;
        pfStack_830 = auVar59._0_4_;
        pfStack_828 = pfVar26;
        pfStack_824 = pfVar24;
        goto LAB_0097870b;
      }
      auVar59._0_4_ = (float *)0x0;
    }
    else {
      *pfStack_754 = *pfVar15;
      *(undefined4 *)((int)this + 0x7b4) = *(undefined4 *)((int)this + 0x784);
      *(undefined4 *)((int)this + 0x7b8) = *(undefined4 *)((int)this + 0x788);
      *(undefined4 *)((int)this + 0x7bc) = *(undefined4 *)((int)this + 0x78c);
      auVar59._0_4_ = (float *)*pfStack_754;
      pfVar26 = *(float **)((int)this + 0x7b8);
      pfVar24 = *(float **)((int)this + 0x7bc);
      pfStack_63c = pfStack_87c;
      pfStack_960 = pfStack_1c0;
      pfStack_95c = pfStack_1bc;
      pfStack_958 = pfStack_1b8;
      pfStack_954 = pfStack_1b4;
      pfStack_640 = auVar59._0_4_;
      pfStack_638 = pfVar26;
      pfStack_634 = pfVar24;
LAB_0097870b:
      *pfStack_754 = (float)auVar59._0_4_;
      *(float **)((int)this + 0x7b4) = pfStack_87c;
      *(float **)((int)this + 0x7b8) = pfVar26;
      *(float **)((int)this + 0x7bc) = pfVar24;
      auVar59._0_4_ = pfStack_944;
    }
    if (fStack_974._0_1_ == '\0') {
LAB_0097884d:
      bVar29 = true;
    }
    else {
      auVar57._0_4_ = (float)pfStack_810 - (float)pfStack_940;
      auVar57._4_4_ = (float)pfStack_80c - (float)pfStack_93c;
      auVar57._8_4_ = (float)pfStack_808 - (float)pfStack_938;
      auVar57._12_4_ = (float)pfStack_804 - (float)pfStack_934;
      auVar110._0_4_ = auVar57._0_4_ * local_8a0;
      auVar110._4_4_ = auVar57._4_4_ * fStack_89c;
      auVar110._8_4_ = auVar57._8_4_ * fStack_898;
      auVar110._12_4_ = auVar57._12_4_ * fStack_894;
      auVar63 = maxps(auVar110,auVar57);
      auVar111._4_4_ = -(uint)(auVar63._4_4_ <= 1.5258789e-05);
      auVar111._0_4_ = -(uint)(auVar63._0_4_ <= 1.5258789e-05);
      auVar111._8_4_ = -(uint)(auVar63._8_4_ <= 1.5258789e-05);
      auVar111._12_4_ = -(uint)(auVar63._12_4_ <= 1.5258789e-05);
      uVar19 = movmskps(pfStack_754,auVar111);
      if ((char)(uVar19 & 7) != '\a') goto LAB_0097884d;
      auVar58._4_4_ = auVar59._0_4_;
      auVar58._0_4_ = auVar59._0_4_;
      auVar58._8_4_ = auVar59._0_4_;
      auVar58._12_4_ = auVar59._0_4_;
      auVar118._0_4_ = (float)auVar59._0_4_ * local_8a0;
      auVar118._4_4_ = (float)auVar59._0_4_ * fStack_89c;
      auVar118._8_4_ = (float)auVar59._0_4_ * fStack_898;
      auVar118._12_4_ = (float)auVar59._0_4_ * fStack_894;
      auVar63 = maxps(auVar118,auVar58);
      auVar119._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
      auVar119._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
      auVar119._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
      auVar119._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
      iVar11 = movmskps(uVar19 & 7,auVar119);
      if (iVar11 == 0xf) {
        uVar19 = (int)(*(float *)((int)this + 0x7c0) - (float)pfStack_87c) >> 0x1f;
        pfVar26 = (float *)(~uVar19 & (uint)*(float *)((int)this + 0x7c0) |
                           (uint)pfStack_87c & uVar19);
        auVar59._0_4_ = (float *)((float)pfVar26 - *(float *)((int)this + 0x784));
        auVar59._4_4_ = auVar59._0_4_;
        auVar59._8_4_ = auVar59._0_4_;
        auVar59._12_4_ = auVar59._0_4_;
        auVar120._0_4_ = (float)auVar59._0_4_ * local_8a0;
        auVar120._4_4_ = (float)auVar59._0_4_ * fStack_89c;
        auVar120._8_4_ = (float)auVar59._0_4_ * fStack_898;
        auVar120._12_4_ = (float)auVar59._0_4_ * fStack_894;
        auVar63 = maxps(auVar120,auVar59);
        auVar121._4_4_ = -(uint)(auVar63._4_4_ <= fStack_84c);
        auVar121._0_4_ = -(uint)(auVar63._0_4_ <= local_850);
        auVar121._8_4_ = -(uint)(auVar63._8_4_ <= fStack_848);
        auVar121._12_4_ = -(uint)(auVar63._12_4_ <= fStack_844);
        iVar11 = movmskps(pfVar15,auVar121);
        pfStack_960 = auVar59._0_4_;
        pfStack_95c = auVar59._0_4_;
        pfStack_958 = auVar59._0_4_;
        pfStack_954 = auVar59._0_4_;
        pfStack_71c = pfVar15;
        pfStack_1a0 = auVar59._0_4_;
        pfStack_19c = auVar59._0_4_;
        pfStack_198 = auVar59._0_4_;
        pfStack_194 = auVar59._0_4_;
        if (iVar11 != 0xf) {
          *pfStack_754 = *pfVar15;
          *(undefined4 *)((int)this + 0x7b4) = *(undefined4 *)((int)this + 0x784);
          *(undefined4 *)((int)this + 0x7b8) = *(undefined4 *)((int)this + 0x788);
          *(undefined4 *)((int)this + 0x7bc) = *(undefined4 *)((int)this + 0x78c);
          pfStack_8e0 = (float *)*pfStack_754;
          pfStack_8d8 = *(float **)((int)this + 0x7b8);
          pfStack_8d4 = *(float **)((int)this + 0x7bc);
          *pfStack_754 = (float)pfStack_8e0;
          *(float **)((int)this + 0x7b4) = pfVar26;
          *(float **)((int)this + 0x7b8) = pfStack_8d8;
          *(float **)((int)this + 0x7bc) = pfStack_8d4;
          pfStack_8dc = pfVar26;
        }
      }
      else if ((float)auVar59._0_4_ < 0.0) {
        bVar28 = true;
      }
    }
    if ((*(char *)((int)this + 0x809) == '\0') || (0.0 < (float)auVar59._0_4_)) {
      if (0.1 <= deltaSeconds) goto LAB_0097895a;
      if (*(char *)((int)this + 0x818) == '\0') {
        fVar61 = *(float *)((int)this + 0x97c);
        fVar76 = *(float *)((int)this + 0x984);
      }
      else {
        fVar61 = *(float *)((int)this + 0x988);
        fVar76 = *(float *)((int)this + 0x98c);
      }
      fVar77 = *(float *)((int)this + 0x980);
      fVar76 = (-0.0 - fVar76 * *(float *)((int)this + 0x804)) + fVar61 * (float)auVar59._0_4_;
      fVar61 = fVar76 * deltaSeconds + *(float *)((int)this + 0x804);
      bVar5 = false;
      *(float *)((int)this + 0x804) = fVar61;
      if (ABS(fVar61) < fVar77) {
        if (0.0 <= fVar76) {
          if ((fVar61 <= 0.0) && ((float)auVar59._0_4_ < 0.0)) {
            fVar77 = -0.0 - fVar77;
            goto LAB_0097891a;
          }
        }
        else if ((0.0 <= fVar61) && (0.0 < (float)auVar59._0_4_)) {
LAB_0097891a:
          *(float *)((int)this + 0x804) = fVar77;
          bVar5 = true;
        }
      }
      pfVar26 = (float *)(*(float *)((int)this + 0x804) * deltaSeconds);
      if (bVar5) {
        if (0.0 <= (float)pfVar26) {
          if ((float)auVar59._0_4_ <= (float)pfVar26) goto LAB_0097895a;
        }
        else if ((float)pfVar26 <= (float)auVar59._0_4_) {
LAB_0097895a:
          *(undefined4 *)((int)this + 0x804) = 0;
          pfVar26 = auVar59._0_4_;
        }
      }
      *(undefined4 *)((int)this + 0x770) = *(undefined4 *)((int)this + 0x770);
      *(float *)((int)this + 0x774) = (float)pfVar26 + *(float *)((int)this + 0x774);
      *(undefined4 *)((int)this + 0x778) = *(undefined4 *)((int)this + 0x778);
      *(undefined4 *)((int)this + 0x77c) = *(undefined4 *)((int)this + 0x77c);
      *pfVar15 = *pfVar15;
      *(float *)((int)this + 0x784) = (float)pfVar26 + *(float *)((int)this + 0x784);
      *(undefined4 *)((int)this + 0x788) = *(undefined4 *)((int)this + 0x788);
      *(undefined4 *)((int)this + 0x78c) = *(undefined4 *)((int)this + 0x78c);
    }
    fStack_6f0 = *(float *)((int)this + 0x774);
    puStack_74c = (undefined4 *)((int)this + 0x770);
    if (fStack_6f0 < fVar60) {
      pfStack_960 = (float *)(fVar60 - *(float *)((int)this + 0x774));
      *puStack_74c = *puStack_74c;
      *(float *)((int)this + 0x774) = (float)pfStack_960 + *(float *)((int)this + 0x774);
      *(undefined4 *)((int)this + 0x778) = *(undefined4 *)((int)this + 0x778);
      *(undefined4 *)((int)this + 0x77c) = *(undefined4 *)((int)this + 0x77c);
      *pfVar15 = *pfVar15;
      *(float *)((int)this + 0x784) = (float)pfStack_960 + *(float *)((int)this + 0x784);
      *(undefined4 *)((int)this + 0x788) = *(undefined4 *)((int)this + 0x788);
      *(undefined4 *)((int)this + 0x78c) = *(undefined4 *)((int)this + 0x78c);
      pfStack_95c = pfStack_960;
      pfStack_958 = pfStack_960;
      pfStack_954 = pfStack_960;
      puStack_6f4 = puStack_74c;
      pfStack_180 = pfStack_960;
      pfStack_17c = pfStack_960;
      pfStack_178 = pfStack_960;
      pfStack_174 = pfStack_960;
    }
    fStack_470 = fVar60;
    if (bVar28) {
      fStack_3f0 = *(float *)((int)this + 0x7c0);
      fStack_7f0 = *(float *)((int)this + 0x784);
      pfStack_744 = pfVar15;
      if (fStack_7f0 < fStack_3f0) goto LAB_00978adb;
    }
    else if (bVar29) {
LAB_00978adb:
      fStack_7f0 = *pfVar15;
      uVar12 = *(undefined4 *)((int)this + 0x784);
      uStack_7e8 = *(undefined4 *)((int)this + 0x788);
      uStack_7e4 = *(undefined4 *)((int)this + 0x78c);
      uStack_7ec = uVar12;
      goto LAB_00978aef;
    }
  }
  else {
    *(float **)((int)this + 0x780) = pfStack_7a0;
    *(float **)((int)this + 0x784) = pfStack_79c;
    *(float **)((int)this + 0x788) = pfStack_798;
    *(float **)((int)this + 0x78c) = pfStack_794;
    *(float *)((int)this + 0x770) = fStack_620;
    *(undefined4 *)((int)this + 0x774) = uStack_61c;
    *(undefined4 *)((int)this + 0x778) = uStack_618;
    *(undefined4 *)((int)this + 0x77c) = uStack_614;
    *(undefined1 *)((int)this + 0x8bd) = 0;
    fStack_6f0 = *(float *)((int)this + 0x780);
    uVar12 = *(undefined4 *)((int)this + 0x784);
    uStack_6e8 = *(undefined4 *)((int)this + 0x788);
    uStack_6e4 = *(undefined4 *)((int)this + 0x78c);
    uStack_6ec = uVar12;
LAB_00978aef:
    *(undefined4 *)((int)this + 0x7c0) = uVar12;
  }
  pfVar15 = (float *)local_820;
LAB_00978b07:
                    /* Commit eye/target/orientation to camera object after ground and pitch
                       processing. Camera sky/base transition operates on pitch; ordinary MMB yaw is
                       not tracked towards a separate intent here. */
  GameplayCamera_CommitFramePose(this,deltaSeconds,pfVar15,fStack_96c);
  return;
}

