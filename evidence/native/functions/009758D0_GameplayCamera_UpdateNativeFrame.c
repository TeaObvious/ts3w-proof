/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  float *pfVar8;
  float *pfVar9;
  float *pfVar10;
  float *pfVar11;
  float fVar12;
  float fVar13;
  float *pfVar14;
  float fVar15;
  byte bVar16;
  char cVar17;
  bool bVar18;
  undefined4 in_EAX;
  int iVar19;
  undefined4 uVar20;
  int *piVar21;
  int *piVar22;
  float *pfVar23;
  undefined4 uVar24;
  undefined4 uVar25;
  undefined4 uVar26;
  uint uVar27;
  int iVar28;
  undefined4 *puVar29;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  void *this_00;
  undefined4 extraout_ECX;
  float extraout_ECX_00;
  float extraout_ECX_01;
  int iVar30;
  float extraout_ECX_02;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  undefined4 extraout_EDX_01;
  undefined4 extraout_EDX_02;
  undefined4 extraout_EDX_03;
  undefined4 extraout_EDX_04;
  undefined4 extraout_EDX_05;
  uint uVar31;
  undefined4 extraout_EDX_06;
  undefined4 extraout_EDX_07;
  float *extraout_EDX_08;
  float *extraout_EDX_09;
  float *extraout_EDX_10;
  float *extraout_EDX_11;
  float *pfVar32;
  float *pfVar33;
  float *pfVar34;
  float *pfVar35;
  float *extraout_EDX_12;
  float *extraout_EDX_13;
  float *extraout_EDX_14;
  float *extraout_EDX_15;
  float *extraout_EDX_16;
  undefined1 (*pauVar36) [16];
  float *pfVar37;
  bool bVar38;
  bool bVar39;
  float10 fVar40;
  float10 extraout_ST0;
  float fVar41;
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
  undefined1 auVar60 [16];
  undefined1 auVar61 [16];
  undefined1 auVar62 [16];
  undefined1 auVar63 [16];
  undefined1 auVar64 [16];
  undefined1 auVar65 [16];
  undefined1 auVar66 [16];
  undefined1 auVar67 [16];
  float *pfVar71;
  undefined1 auVar68 [16];
  undefined1 auVar69 [16];
  undefined1 auVar70 [16];
  float fVar72;
  float fVar73;
  float fVar87;
  float fVar89;
  undefined1 auVar74 [16];
  undefined1 auVar75 [16];
  undefined1 auVar76 [16];
  undefined1 auVar77 [16];
  float fVar91;
  undefined1 auVar78 [16];
  undefined1 auVar79 [16];
  undefined1 auVar80 [16];
  undefined1 auVar81 [16];
  undefined1 auVar82 [16];
  undefined1 auVar83 [16];
  undefined1 auVar84 [16];
  float fVar88;
  float fVar90;
  float fVar92;
  undefined1 auVar85 [16];
  undefined1 auVar86 [16];
  float fVar93;
  float fVar100;
  float fVar101;
  float fVar102;
  undefined1 auVar94 [16];
  undefined1 auVar95 [16];
  undefined1 auVar96 [16];
  undefined1 auVar97 [16];
  float fVar103;
  undefined1 auVar98 [16];
  undefined1 auVar99 [16];
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
  undefined1 auVar122 [16];
  undefined1 auVar123 [16];
  undefined1 auVar124 [16];
  undefined1 auVar125 [16];
  undefined1 auVar126 [16];
  undefined1 auVar127 [16];
  undefined1 auVar128 [16];
  undefined1 auVar129 [16];
  undefined1 auVar130 [16];
  undefined1 auVar131 [16];
  float fVar132;
  float fVar138;
  float fVar139;
  undefined1 auVar133 [16];
  undefined1 auVar134 [16];
  undefined1 auVar135 [16];
  undefined1 auVar136 [16];
  undefined1 auVar137 [16];
  undefined8 uVar140;
  float fStack_984;
  float fStack_97c;
  float fStack_978;
  float fStack_974;
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
  float fStack_5a0;
  float fStack_590;
  float fStack_580;
  float fStack_570;
  float fStack_560;
  float fStack_55c;
  float fStack_558;
  float fStack_554;
  float fStack_550;
  float *pfStack_540;
  undefined4 uStack_53c;
  float *pfStack_538;
  float *pfStack_534;
  float fStack_530;
  float fStack_520;
  float fStack_510;
  float *pfStack_500;
  float fStack_4f0;
  float *pfStack_4e0;
  float fStack_4d0;
  float *pfStack_4c0;
  float fStack_4b0;
  float *pfStack_4a0;
  float fStack_490;
  float fStack_480;
  float fStack_470;
  float fStack_460;
  float fStack_450;
  float fStack_440;
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
  float fStack_390;
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

  auVar74._4_4_ = deltaSeconds;
  auVar74._0_4_ = deltaSeconds;
  auVar74._8_4_ = deltaSeconds;
  auVar74._12_4_ = deltaSeconds;
  auVar111._0_4_ = DAT_00fab218 * deltaSeconds;
  auVar111._4_4_ = DAT_00fab218 * deltaSeconds;
  auVar111._8_4_ = DAT_00fab218 * deltaSeconds;
  auVar111._12_4_ = DAT_00fab218 * deltaSeconds;
  auVar74 = maxps(auVar111,auVar74);
  auVar75._4_4_ = -(uint)(auVar74._4_4_ <= DAT_01046cc8);
  auVar75._0_4_ = -(uint)(auVar74._0_4_ <= DAT_01046cc8);
  auVar75._8_4_ = -(uint)(auVar74._8_4_ <= DAT_01046cc8);
  auVar75._12_4_ = -(uint)(auVar74._12_4_ <= DAT_01046cc8);
  iVar19 = movmskps(in_EAX,auVar75);
  local_8d0 = deltaSeconds;
  fStack_8cc = deltaSeconds;
  fStack_8c8 = deltaSeconds;
  fStack_8c4 = deltaSeconds;
  local_8a0 = DAT_00fab218;
  fStack_89c = DAT_00fab218;
  fStack_898 = DAT_00fab218;
  fStack_894 = DAT_00fab218;
  local_850 = DAT_01046cc8;
  fStack_84c = DAT_01046cc8;
  fStack_848 = DAT_01046cc8;
  fStack_844 = DAT_01046cc8;
  if (iVar19 == 0xf) {
    local_600._0_4_ = *(float *)((int)this + 0x780) - *(float *)((int)this + 0x770);
    local_600._4_4_ = *(float *)((int)this + 0x784) - *(float *)((int)this + 0x774);
    local_600._8_4_ = *(float *)((int)this + 0x788) - *(float *)((int)this + 0x778);
    local_600._12_4_ = *(float *)((int)this + 0x78c) - *(float *)((int)this + 0x77c);
    auVar42._0_4_ =
         local_600._8_4_ * local_600._8_4_ + local_600._4_4_ * local_600._4_4_ +
         local_600._0_4_ * local_600._0_4_;
    auVar42._4_4_ = auVar42._0_4_;
    auVar42._8_4_ = auVar42._0_4_;
    auVar42._12_4_ = auVar42._0_4_;
    _local_820 = sqrtps(auVar42,auVar42);
    auVar43._4_4_ = local_820._0_4_;
    auVar43._0_4_ = local_820._0_4_;
    auVar43._8_4_ = local_820._0_4_;
    auVar43._12_4_ = local_820._0_4_;
    auVar94._0_4_ = DAT_00fab218 * (float)local_820._0_4_;
    auVar94._4_4_ = DAT_00fab218 * (float)local_820._0_4_;
    auVar94._8_4_ = DAT_00fab218 * (float)local_820._0_4_;
    auVar94._12_4_ = DAT_00fab218 * (float)local_820._0_4_;
    auVar74 = maxps(auVar94,auVar43);
    auVar95._4_4_ = -(uint)(auVar74._4_4_ <= DAT_01046cc8);
    auVar95._0_4_ = -(uint)(auVar74._0_4_ <= DAT_01046cc8);
    auVar95._8_4_ = -(uint)(auVar74._8_4_ <= DAT_01046cc8);
    auVar95._12_4_ = -(uint)(auVar74._12_4_ <= DAT_01046cc8);
    iVar19 = movmskps(this,auVar95);
    if (iVar19 != 0xf) {
      local_600 = divps(local_600,auVar43);
    }
    pfVar23 = (float *)local_600;
    fStack_96c = (float)local_820._0_4_;
    goto LAB_00978b07;
  }
  if ((((*(char *)((int)this + 0x14) == '\0') && (param_2 == '\0')) &&
      (uVar20 = FUN_00970040((int)this), (char)uVar20 == '\0')) &&
     (*(char *)((int)this + 0x818) == '\0')) {
    return;
  }
  fVar41 = DAT_00fab218;
  pfVar23 = DAT_00f998f8;
  auVar127 = ZEXT416(DAT_00f998f8);
  auVar70._0_4_ = DAT_00f998f8;
  if ((*(byte *)((int)this + 0x880) & 1) == 0) {
    auVar70._0_4_ = (float *)0x0;
  }
  *(float **)((int)this + 0x3d0) = auVar70._0_4_;
  fVar72 = fVar41;
  if ((*(byte *)((int)this + 0x880) & 2) == 0) {
    fVar72 = 0.0;
  }
  *(float *)((int)this + 0x3a0) = fVar72;
  auVar70._0_4_ = pfVar23;
  if ((*(byte *)((int)this + 0x880) & 0x10) == 0) {
    auVar70._0_4_ = (float *)0x0;
  }
  *(float **)((int)this + 0x390) = auVar70._0_4_;
  *(undefined4 *)((int)this + 0x394) = *(undefined4 *)((int)this + 0x394);
  *(undefined4 *)((int)this + 0x398) = *(undefined4 *)((int)this + 0x398);
  *(undefined4 *)((int)this + 0x39c) = *(undefined4 *)((int)this + 0x39c);
  fVar72 = fVar41;
  if ((*(byte *)((int)this + 0x880) & 0x20) == 0) {
    fVar72 = 0.0;
  }
  *(float *)((int)this + 0x3c0) = fVar72;
  *(undefined4 *)((int)this + 0x3c4) = *(undefined4 *)((int)this + 0x3c4);
  *(undefined4 *)((int)this + 0x3c8) = *(undefined4 *)((int)this + 0x3c8);
  *(undefined4 *)((int)this + 0x3cc) = *(undefined4 *)((int)this + 0x3cc);
  if ((*(byte *)((int)this + 0x880) & 4) == 0) {
    fVar41 = 0.0;
  }
  *(undefined4 *)((int)this + 0x390) = *(undefined4 *)((int)this + 0x390);
  *(float *)((int)this + 0x394) = fVar41;
  *(undefined4 *)((int)this + 0x398) = *(undefined4 *)((int)this + 0x398);
  *(undefined4 *)((int)this + 0x39c) = *(undefined4 *)((int)this + 0x39c);
  if ((*(byte *)((int)this + 0x880) & 8) == 0) {
    pfVar23 = (float *)0x0;
  }
  *(undefined4 *)((int)this + 0x3c0) = *(undefined4 *)((int)this + 0x3c0);
  *(float **)((int)this + 0x3c4) = pfVar23;
  *(undefined4 *)((int)this + 0x3c8) = *(undefined4 *)((int)this + 0x3c8);
  *(undefined4 *)((int)this + 0x3cc) = *(undefined4 *)((int)this + 0x3cc);
  piVar21 = (int *)FUN_0050af90();
  local_924 = (float)FUN_0060e910();
  if (((piVar21 != (int *)0x0) && (local_924 != 0.0)) &&
     (piVar22 = (int *)(**(code **)(*piVar21 + 4))(), piVar22 != (int *)0x0)) {
    pfVar23 = (float *)(**(code **)(*piVar22 + 0x38))();
    uVar20 = FUN_0060ee50((int)local_924);
    if ((((char)uVar20 == '\0') && (*(char *)((int)this + 0x8cc) != '\0')) &&
       (bVar16 = CameraInput_IsPanDragActive((int)this + 0x40), bVar16 == 0)) {
      (**(code **)(*piVar21 + 0x48))(&fStack_888);
      uVar20 = FUN_00513d60(fStack_884,1.0);
      uVar24 = FUN_00624be0(fStack_888,(pfVar23[2] - *pfVar23) - (float)DAT_00f998f8,1.0);
      uVar25 = FUN_00624be0(fStack_884,(pfVar23[3] - pfVar23[1]) - (float)DAT_00f998f8,1.0);
      uVar26 = FUN_00513d60(fStack_888,1.0);
      fVar41 = DAT_00fab218;
      if ((char)uVar26 == '\0') {
        fVar41 = 0.0;
      }
      *(float *)((int)this + 0x380) = fVar41;
      *(undefined4 *)((int)this + 900) = *(undefined4 *)((int)this + 900);
      *(undefined4 *)((int)this + 0x388) = *(undefined4 *)((int)this + 0x388);
      *(undefined4 *)((int)this + 0x38c) = *(undefined4 *)((int)this + 0x38c);
      fVar41 = DAT_00fab218;
      if ((char)uVar25 == '\0') {
        fVar41 = 0.0;
      }
      *(undefined4 *)((int)this + 0x380) = *(undefined4 *)((int)this + 0x380);
      *(undefined4 *)((int)this + 900) = *(undefined4 *)((int)this + 900);
      *(float *)((int)this + 0x388) = fVar41;
      *(undefined4 *)((int)this + 0x38c) = *(undefined4 *)((int)this + 0x38c);
      pfVar23 = DAT_00f998f8;
      if ((char)uVar24 == '\0') {
        pfVar23 = (float *)0x0;
      }
      *(float **)((int)this + 0x3b0) = pfVar23;
      *(undefined4 *)((int)this + 0x3b4) = *(undefined4 *)((int)this + 0x3b4);
      *(undefined4 *)((int)this + 0x3b8) = *(undefined4 *)((int)this + 0x3b8);
      *(undefined4 *)((int)this + 0x3bc) = *(undefined4 *)((int)this + 0x3bc);
      pfVar23 = DAT_00f998f8;
      if ((char)uVar20 == '\0') {
        pfVar23 = (float *)0x0;
      }
      uVar20 = *(undefined4 *)((int)this + 0x3b0);
      uVar24 = *(undefined4 *)((int)this + 0x3b4);
      uVar25 = *(undefined4 *)((int)this + 0x3bc);
    }
    else {
      uVar20 = 0;
      uVar24 = 0;
      pfVar23 = (float *)0x0;
      uVar25 = 0;
      *(undefined4 *)((int)this + 0x380) = 0;
      *(undefined4 *)((int)this + 900) = 0;
      *(undefined4 *)((int)this + 0x388) = 0;
      *(undefined4 *)((int)this + 0x38c) = 0;
    }
    *(undefined4 *)((int)this + 0x3b0) = uVar20;
    *(undefined4 *)((int)this + 0x3b4) = uVar24;
    *(float **)((int)this + 0x3b8) = pfVar23;
    *(undefined4 *)((int)this + 0x3bc) = uVar25;
  }
                    /* Input drain: ECX=controller+40; first output contains continuous rates,
                       second impulses. Input-bank rotation pitch/yaw feed their respective angular
                       channels; transformed XYZ outputs below are translation only. */
  CameraInput_CollectRateAndImpulse((void *)((int)this + 0x40),local_2d0,local_300);
  CameraInput_TranslationToHorizontalWorld
            (local_2d0,&fStack_560,&fStack_560,local_2d0,(float *)(*(int *)((int)this + 0xc) + 0x30)
            );
  uVar140 = CameraInput_TranslationToHorizontalWorld
                      (local_300,auStack_5d0,(float *)auStack_5d0,local_300,
                       (float *)(*(int *)((int)this + 0xc) + 0x30));
  auVar3._4_4_ = fStack_8cc;
  auVar3._0_4_ = local_8d0;
  auVar3._8_4_ = fStack_8c8;
  auVar3._12_4_ = fStack_8c4;
  auVar74 = divps(auStack_5d0,auVar3);
  auStack_6d0._0_4_ = auVar74._0_4_ + fStack_560;
  auStack_6d0._4_4_ = auVar74._4_4_ + fStack_55c;
  fStack_6c8 = auVar74._8_4_ + fStack_558;
  fStack_6c4 = auVar74._12_4_ + fStack_554;
                    /* Angular speed combines continuous block and impulse block divided by frame
                       seconds. The Ghidra SIMD stack propagation obscures channels; instructions
                       preserve pitch/yaw in the first two lanes of the angular block. */
                    /* Angular lanes combine here. First 9-float output is continuous rate; second
                       is impulse. 00975D56 divides impulse.angular by frame seconds and00975D61
                       adds rate.angular;00975D71 multiplies angular result by -1 replicated
                       from00FAB218 (bytes00 00 80 BF). XYZ at00975D48..00975D4B is separate
                       translation, with no sign change in its stored output. Pitch angular lane0,
                       yaw lane1. */
  auVar74 = divps(auStack_2f0,auVar3);
  fVar41 = (float)DAT_00f998f8 / deltaSeconds;
  auStack_6c0._0_4_ = (auVar74._0_4_ + fStack_2c0) * local_8a0;
  auStack_6c0._4_4_ = (auVar74._4_4_ + fStack_2bc) * fStack_89c;
  fStack_6b8 = (auVar74._8_4_ + fStack_2b8) * fStack_898;
  fStack_6b4 = (auVar74._12_4_ + fStack_2b4) * fStack_894;
  auVar117._0_4_ = (float)auStack_6d0._0_4_ * local_8a0;
  auVar117._4_4_ = (float)auStack_6d0._4_4_ * fStack_89c;
  auVar117._8_4_ = fStack_6c8 * fStack_898;
  auVar117._12_4_ = fStack_6c4 * fStack_894;
  auVar74 = maxps(auVar117,_auStack_6d0);
  auVar44._0_4_ = (fVar41 * fStack_2e0 + fStack_2b0) * DAT_00fab218;
  auVar118._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
  auVar118._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
  auVar118._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
  auVar118._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
  uVar20 = movmskps((int)uVar140,auVar118);
  cStack_965 = ((byte)uVar20 & 7) != 7;
  auVar119._0_4_ = (float)auStack_6c0._0_4_ * local_8a0;
  auVar119._4_4_ = (float)auStack_6c0._4_4_ * fStack_89c;
  auVar119._8_4_ = fStack_6b8 * fStack_898;
  auVar119._12_4_ = fStack_6b4 * fStack_894;
  auVar74 = maxps(auVar119,_auStack_6c0);
  auVar120._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
  auVar120._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
  auVar120._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
  auVar120._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
  auVar44._4_4_ = auVar44._0_4_;
  auVar44._8_4_ = auVar44._0_4_;
  auVar44._12_4_ = auVar44._0_4_;
  uVar20 = movmskps(extraout_ECX,auVar120);
  bVar38 = ((byte)uVar20 & 7) != 7;
  auVar76._0_4_ = auVar44._0_4_ * local_8a0;
  auVar76._4_4_ = auVar44._0_4_ * fStack_89c;
  auVar76._8_4_ = auVar44._0_4_ * fStack_898;
  auVar76._12_4_ = auVar44._0_4_ * fStack_894;
  auVar74 = maxps(auVar76,auVar44);
  auVar77._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
  auVar77._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
  auVar77._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
  auVar77._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
  iVar19 = movmskps((int)((ulonglong)uVar140 >> 0x20),auVar77);
  bVar39 = iVar19 != 0xf;
  fStack_6b0 = auVar44._0_4_;
  uVar20 = FUN_00971030(this,(float *)&pfStack_860);
  if ((char)uVar20 != '\0') {
    uVar20 = FUN_00971120((int)this);
    if ((((char)uVar20 != *(char *)((int)this + 0x819)) && (*(char *)((int)this + 0x8b1) == '\0'))
       || (*(char *)((int)this + 0x8b5) != '\0')) {
      FUN_009746e0(this,(float *)&pfStack_860,*(float *)((int)this + 0x9ac),'\x01','\0','\0','\x01')
      ;
    }
    *(char *)((int)this + 0x819) = (char)uVar20;
    uVar27 = FUN_00971180(this,&iStack_7f8);
    if ((char)uVar27 != *(char *)((int)this + 0x830)) {
      if ((char)uVar27 == '\0') {
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
  _auStack_8b0 = ZEXT812(0);
  pfStack_8a4 = (float *)0x0;
  if ((*(char *)((int)this + 0x830) != '\0') &&
     (pvVar1 = *(void **)((int)this + 0x834), pvVar1 != (void *)0x0)) {
    if ((*(char *)((int)this + 0x8b9) == '\0') &&
       ((*(int *)((int)this + 0x3c) == 0 ||
        (uVar20 = FUN_0096fe00(*(int *)((int)this + 0x3c)), (char)uVar20 == '\0')))) {
      if ((*(char *)((int)this + 0x8b1) == '\0') &&
         (((*(char *)((int)this + 0x8b2) == '\0' && (*(char *)((int)this + 0x8b3) == '\0')) &&
          (*(char *)((int)this + 0x8b4) == '\0')))) {
        fStack_6a0 = *(float *)((int)this + 0x780) - *(float *)((int)this + 0x770);
        fStack_698 = *(float *)((int)this + 0x788) - *(float *)((int)this + 0x778);
        fStack_694 = *(float *)((int)this + 0x78c) - *(float *)((int)this + 0x77c);
        uStack_69c = 0;
        fVar72 = fStack_6a0 * fStack_6a0;
        auVar6._4_4_ = fVar72;
        auVar6._0_4_ = fVar72;
        auVar6._8_4_ = fVar72;
        auVar6._12_4_ = 0;
        fVar72 = fStack_698 * fStack_698 + 0.0 + fVar72;
        auVar121._4_4_ = fVar72;
        auVar121._0_4_ = fVar72;
        auVar121._8_4_ = fVar72;
        auVar121._12_4_ = fVar72;
        auVar74 = rsqrtps(auVar6 << 0x20,auVar121);
        fVar73 = auVar74._0_4_;
        fVar87 = auVar74._4_4_;
        fVar89 = auVar74._8_4_;
        fVar91 = auVar74._12_4_;
        fVar73 = ((float)DAT_00f998f8 - fVar73 * fVar73 * fVar72) * _DAT_00f9b5b4 * fVar73 + fVar73;
        fVar87 = ((float)DAT_00f998f8 - fVar87 * fVar87 * fVar72) * _DAT_00f9b5b4 * fVar87 + fVar87;
        fVar89 = ((float)DAT_00f998f8 - fVar89 * fVar89 * fVar72) * _DAT_00f9b5b4 * fVar89 + fVar89;
        fVar91 = ((float)DAT_00f998f8 - fVar91 * fVar91 * fVar72) * _DAT_00f9b5b4 * fVar91 + fVar91;
        pfStack_830 = DAT_00f998f8;
        pfStack_82c = DAT_00f998f8;
        pfStack_828 = DAT_00f998f8;
        pfStack_824 = DAT_00f998f8;
        fStack_7d0 = _DAT_00f9b5b4;
        fStack_7cc = _DAT_00f9b5b4;
        fStack_7c8 = _DAT_00f9b5b4;
        fStack_7c4 = _DAT_00f9b5b4;
        pfStack_8e0 = (float *)((((float)DAT_00f998f8 - fVar73 * fVar73 * fVar72) *
                                 _DAT_00f9b5b4 * fVar73 + fVar73) * fStack_6a0);
        pfStack_8dc = (float *)((((float)DAT_00f998f8 - fVar87 * fVar87 * fVar72) *
                                 _DAT_00f9b5b4 * fVar87 + fVar87) * 0.0);
        pfStack_8d8 = (float *)((((float)DAT_00f998f8 - fVar89 * fVar89 * fVar72) *
                                 _DAT_00f9b5b4 * fVar89 + fVar89) * fStack_698);
        pfStack_8d4 = (float *)((((float)DAT_00f998f8 - fVar91 * fVar91 * fVar72) *
                                 _DAT_00f9b5b4 * fVar91 + fVar91) * fStack_694);
        FUN_00ab2750(pvVar1,afStack_100,'\x01');
        fStack_680 = fStack_f0 - *(float *)((int)this + 0x770);
        fStack_678 = fStack_e8 - *(float *)((int)this + 0x778);
        fStack_674 = fStack_e4 - *(float *)((int)this + 0x77c);
        uStack_67c = 0;
        fVar72 = fStack_678 * (float)pfStack_8d8 + (float)pfStack_8dc * 0.0 +
                 fStack_680 * (float)pfStack_8e0;
        if (fVar72 <= 0.0) {
          fVar73 = *(float *)((int)this + 0x9d0);
        }
        else {
          fVar73 = *(float *)((int)this + 0x9d4);
        }
        fVar87 = fStack_680 - fVar72 * (float)pfStack_8e0;
        fVar89 = 0.0 - fVar72 * (float)pfStack_8dc;
        fVar91 = fStack_678 - fVar72 * (float)pfStack_8d8;
        fVar87 = fVar87 * fVar87;
        fVar89 = fVar89 * fVar89;
        auVar127._4_4_ = fVar87;
        auVar127._0_4_ = fVar89;
        auVar127._8_4_ = fVar87;
        auVar127._12_4_ = fVar87;
        auVar45._0_4_ = fVar91 * fVar91 + fVar89 + fVar87;
        auVar45._4_4_ = auVar45._0_4_;
        auVar45._8_4_ = auVar45._0_4_;
        auVar45._12_4_ = auVar45._0_4_;
        auVar74 = sqrtps(auVar45,auVar45);
        pfStack_8e0 = auVar74._0_4_;
        pfStack_8dc = auVar74._4_4_;
        pfStack_8d8 = auVar74._8_4_;
        pfStack_8d4 = auVar74._12_4_;
        fVar87 = (float)pfStack_8e0 / *(float *)((int)this + 0x9d8);
        fVar73 = (fVar72 / fVar73) * (fVar72 / fVar73);
        fVar72 = fVar87 * fVar87 + fVar73;
        if ((float)DAT_00f998f8 < fVar72) {
          fVar72 = (fVar72 - (float)DAT_00f998f8) * *(float *)((int)this + 0x9d8);
          if (*(float *)((int)this + 0x9dc) < fVar72) goto LAB_00976296;
          auVar46._0_4_ = fStack_678 * fStack_678 + 0.0 + fStack_680 * fStack_680;
          auVar46._4_4_ = auVar46._0_4_;
          auVar46._8_4_ = auVar46._0_4_;
          auVar46._12_4_ = auVar46._0_4_;
          auVar74 = rsqrtps(ZEXT416((uint)fVar73),auVar46);
          fVar73 = auVar74._0_4_;
          fVar87 = auVar74._4_4_;
          fVar89 = auVar74._8_4_;
          fVar91 = auVar74._12_4_;
          auVar127._4_4_ = fStack_7cc;
          auVar127._0_4_ = fStack_7d0;
          auVar127._8_4_ = fStack_7c8;
          auVar127._12_4_ = fStack_7c4;
          fVar73 = ((float)pfStack_830 - fVar73 * fVar73 * auVar46._0_4_) * fVar73 * fStack_7d0 +
                   fVar73;
          fVar87 = ((float)pfStack_82c - fVar87 * fVar87 * auVar46._0_4_) * fVar87 * fStack_7cc +
                   fVar87;
          fVar89 = ((float)pfStack_828 - fVar89 * fVar89 * auVar46._0_4_) * fVar89 * fStack_7c8 +
                   fVar89;
          fVar91 = ((float)pfStack_824 - fVar91 * fVar91 * auVar46._0_4_) * fVar91 * fStack_7c4 +
                   fVar91;
          bVar5 = true;
          pfVar23 = (float *)((*(float *)((int)this + 0x9e0) / *(float *)((int)this + 0x9dc)) *
                             fVar72);
          if (cStack_965 != '\0') {
            auVar104._0_4_ = (float)auStack_6d0._0_4_ * (float)auStack_6d0._0_4_;
            auVar104._4_4_ = (float)auStack_6d0._4_4_ * (float)auStack_6d0._4_4_;
            auVar104._8_4_ = fStack_6c8 * fStack_6c8;
            auVar104._12_4_ = fStack_6c4 * fStack_6c4;
            auVar78._0_4_ = auVar104._8_4_ + auVar104._4_4_ + auVar104._0_4_;
            auVar78._4_4_ = auVar78._0_4_;
            auVar78._8_4_ = auVar78._0_4_;
            auVar78._12_4_ = auVar78._0_4_;
            auVar74 = sqrtps(auVar104,auVar78);
            fVar72 = *(float *)((int)this + 0x9e4);
            pfStack_8e0 = (float *)(auVar74._0_4_ * fVar72);
            pfStack_8dc = (float *)(auVar74._4_4_ * fVar72);
            pfStack_8d8 = (float *)(auVar74._8_4_ * fVar72);
            pfStack_8d4 = (float *)(auVar74._12_4_ * fVar72);
            if ((float)pfStack_8e0 < (float)pfVar23) {
              pfVar23 = pfStack_8e0;
            }
          }
          auStack_8b0._4_4_ =
               (float)pfVar23 *
               (((float)pfStack_82c - fVar87 * fVar87 * auVar46._0_4_) * fVar87 * fStack_7cc +
               fVar87) * 0.0;
          auStack_8b0._0_4_ =
               (float)pfVar23 *
               (((float)pfStack_830 - fVar73 * fVar73 * auVar46._0_4_) * fVar73 * fStack_7d0 +
               fVar73) * fStack_680;
          pfStack_8a8 = (float *)((float)pfVar23 *
                                 (((float)pfStack_828 - fVar89 * fVar89 * auVar46._0_4_) *
                                  fVar89 * fStack_7c8 + fVar89) * fStack_678);
          pfStack_8a4 = (float *)((float)pfVar23 *
                                 (((float)pfStack_824 - fVar91 * fVar91 * auVar46._0_4_) *
                                  fVar91 * fStack_7c4 + fVar91) * fStack_674);
        }
      }
      FUN_00ab2750(*(void **)((int)this + 0x834),&fStack_5f0,'\x01');
      uVar140 = FUN_0095fe40(*(void **)((int)this + 0xc),&fStack_5f0);
      auVar47._0_4_ = fStack_5f0 - *(float *)((int)this + 0x840);
      auVar47._4_4_ = fStack_5ec - *(float *)((int)this + 0x844);
      auVar47._8_4_ = fStack_5e8 - *(float *)((int)this + 0x848);
      auVar47._12_4_ = fStack_5e4 - *(float *)((int)this + 0x84c);
      auVar105._0_4_ = auVar47._0_4_ * local_8a0;
      auVar105._4_4_ = auVar47._4_4_ * fStack_89c;
      auVar105._8_4_ = auVar47._8_4_ * fStack_898;
      auVar105._12_4_ = auVar47._12_4_ * fStack_894;
      auVar74 = maxps(auVar105,auVar47);
      auVar106._4_4_ = -(uint)(auVar74._4_4_ <= _DAT_00fb35b4);
      auVar106._0_4_ = -(uint)(auVar74._0_4_ <= _DAT_00fb35b4);
      auVar106._8_4_ = -(uint)(auVar74._8_4_ <= _DAT_00fb35b4);
      auVar106._12_4_ = -(uint)(auVar74._12_4_ <= _DAT_00fb35b4);
      iVar19 = movmskps((int)((ulonglong)uVar140 >> 0x20),auVar106);
      if (iVar19 == 0xf) {
        auVar107._0_4_ = fStack_5e0 - *(float *)((int)this + 0x850);
        auVar107._4_4_ = fStack_5dc - *(float *)((int)this + 0x854);
        auVar107._8_4_ = fStack_5d8 - *(float *)((int)this + 0x858);
        auVar107._12_4_ = fStack_5d4 - *(float *)((int)this + 0x85c);
        auVar128._0_4_ = auVar107._0_4_ * local_8a0;
        auVar128._4_4_ = auVar107._4_4_ * fStack_89c;
        auVar128._8_4_ = auVar107._8_4_ * fStack_898;
        auVar128._12_4_ = auVar107._12_4_ * fStack_894;
        auVar74 = maxps(auVar128,auVar107);
        auVar127._4_4_ = -(uint)(auVar74._4_4_ <= _DAT_00fb35b4);
        auVar127._0_4_ = -(uint)(auVar74._0_4_ <= _DAT_00fb35b4);
        auVar127._8_4_ = -(uint)(auVar74._8_4_ <= _DAT_00fb35b4);
        auVar127._12_4_ = -(uint)(auVar74._12_4_ <= _DAT_00fb35b4);
        uVar20 = movmskps((int)uVar140,auVar127);
        if (((byte)uVar20 & 7) == 7) {
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
      fVar72 = *(float *)((int)this + 0x840);
      fVar73 = *(float *)((int)this + 0x844);
      fVar87 = *(float *)((int)this + 0x848);
      fVar89 = *(float *)((int)this + 0x84c);
      auVar48._0_4_ = fVar89 * fVar89 + fVar73 * fVar73 + fVar87 * fVar87 + fVar72 * fVar72;
      auVar48._4_4_ = auVar48._0_4_;
      auVar48._8_4_ = auVar48._0_4_;
      auVar48._12_4_ = auVar48._0_4_;
      auVar74 = rcpps(auVar127,auVar48);
      fVar91 = (DAT_0103fd88 - auVar74._0_4_ * auVar48._0_4_) * auVar74._0_4_;
      fVar93 = (DAT_0103fd88 - auVar74._4_4_ * auVar48._0_4_) * auVar74._4_4_;
      fVar100 = (DAT_0103fd88 - auVar74._8_4_ * auVar48._0_4_) * auVar74._8_4_;
      fVar102 = (DAT_0103fd88 - auVar74._12_4_ * auVar48._0_4_) * auVar74._12_4_;
      pfStack_8f4 = (float *)0x0;
      pfStack_8f8 = (float *)0x80000000;
      pfStack_8fc = (float *)0x80000000;
      pfStack_900 = (float *)0x80000000;
      fVar72 = (DAT_0103fd88 - fVar91 * auVar48._0_4_) * fVar91 * -fVar72;
      fVar73 = (DAT_0103fd88 - fVar93 * auVar48._0_4_) * fVar93 * -fVar73;
      fVar87 = (DAT_0103fd88 - fVar100 * auVar48._0_4_) * fVar100 * -fVar87;
      fVar89 = (DAT_0103fd88 - fVar102 * auVar48._0_4_) * fVar102 * fVar89;
      fStack_d0 = (fVar87 * fStack_5ec - fVar73 * fStack_5e8) + fStack_5e4 * fVar72 +
                  fVar89 * fStack_5f0;
      fStack_cc = (fVar72 * fStack_5e8 - fVar87 * fStack_5f0) + fStack_5e4 * fVar73 +
                  fVar89 * fStack_5ec;
      fStack_c8 = (fVar73 * fStack_5f0 - fVar72 * fStack_5ec) + fStack_5e4 * fVar87 +
                  fVar89 * fStack_5e8;
      fStack_c4 = fVar89 * fStack_5e4 -
                  (fVar87 * fStack_5e8 + fVar73 * fStack_5ec + fVar72 * fStack_5f0);
      fVar72 = *(float *)((int)this + 0x780) - *(float *)((int)this + 0x850);
      fVar73 = *(float *)((int)this + 0x784) - *(float *)((int)this + 0x854);
      fVar87 = *(float *)((int)this + 0x788) - *(float *)((int)this + 0x858);
      fVar89 = *(float *)((int)this + 0x78c) - *(float *)((int)this + 0x85c);
      fVar91 = (fVar87 * fStack_cc - fVar73 * fStack_c8) + fStack_c4 * fVar72;
      fVar93 = (fVar72 * fStack_c8 - fVar87 * fStack_d0) + fStack_c4 * fVar73;
      fVar100 = (fVar73 * fStack_d0 - fVar72 * fStack_cc) + fStack_c4 * fVar87;
      pfStack_880 = (float *)(((fVar100 * fStack_cc - fVar93 * fStack_c8) * DAT_0103fd88 + fVar72 +
                              (float)pfStack_8e0) - fVar72);
      pfStack_87c = (float *)(((fVar91 * fStack_c8 - fVar100 * fStack_d0) * DAT_0103fd88 + fVar73 +
                              (float)pfStack_8dc) - fVar73);
      pfStack_878 = (float *)(((fVar93 * fStack_d0 - fVar91 * fStack_cc) * DAT_0103fd88 + fVar87 +
                              (float)pfStack_8d8) - fVar87);
      pfStack_874 = (float *)(((fVar91 * fStack_d0 - fVar91 * fStack_d0) * DAT_0103fd88 + fVar89 +
                              (float)pfStack_8d4) - fVar89);
      fVar72 = DAT_01046cc0 * fStack_d0;
      fVar73 = DAT_01046cc0 * fStack_cc;
      fVar87 = DAT_01046cc0 * fStack_c8;
      fVar89 = DAT_01046cc0 * fStack_c4;
      fStack_31c = ((float)pfStack_8c0 - fVar72) * fVar72 + _DAT_00f9b5b4;
      fStack_330 = ((float)pfStack_8bc - fVar73) * fVar73 + _DAT_00f9b5b4;
      fVar91 = ((float)pfStack_8b8 - fVar87) * fVar87 + _DAT_00f9b5b4;
      fStack_32c = fVar89 * fVar87 + fVar73 * fVar72;
      fStack_318 = fVar89 * fVar72 + fVar87 * fVar73;
      fStack_310 = fVar89 * fVar73 + fVar72 * fVar87;
      fStack_324 = fVar73 * fVar72 - fVar89 * fVar87;
      fStack_30c = fVar87 * fVar73 - fVar89 * fVar72;
      fStack_328 = fVar72 * fVar87 - fVar89 * fVar73;
      fStack_308 = fStack_330 + fStack_31c;
      fStack_330 = fVar91 + fStack_330;
      fStack_31c = fStack_31c + fVar91;
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
  pfVar23 = (float *)((int)this + 0x5f0);
  cVar17 = (**(code **)(*(int *)((int)this + 0x5f0) + 4))();
  auVar70._0_4_ = pfVar23;
  if (cVar17 == '\0') {
    auVar70._0_4_ = (float *)((int)this + 0x570);
  }
  pfStack_944 = auVar70._0_4_;
  if ((*(char *)((int)this + 0x8b6) == '\0') && (*(int *)((int)this + 0x8c0) == 0)) {
    if (cStack_965 != '\0') {
      cVar17 = (**(code **)((int)*auVar70._0_4_ + 4))();
      if (cVar17 != '\0') {
        (**(code **)((int)*auVar70._0_4_ + 0x20))(&pfStack_410);
        if (*(void **)((int)this + 0x3c) != (void *)0x0) {
          pfStack_8e0 = pfStack_410;
          pfStack_8dc = pfStack_40c;
          pfStack_8d8 = pfStack_408;
          pfStack_8d4 = pfStack_404;
          pfStack_830 = pfStack_410;
          pfStack_82c = pfStack_40c;
          pfStack_828 = pfStack_408;
          pfStack_824 = pfStack_404;
          bVar18 = FUN_00c6ba00(*(void **)((int)this + 0x3c),(float)pfStack_410,(float)pfStack_408);
          if (!bVar18) goto LAB_009765d0;
        }
      }
      *(undefined1 *)((int)this + 0x8b1) = 0;
      *(undefined1 *)((int)this + 0x8b2) = 0;
      FUN_00973db0((int)this);
    }
LAB_009765d0:
    if (bVar38) {
      *(undefined1 *)((int)this + 0x8b3) = 0;
      *(undefined1 *)((int)this + 0x8b2) = 0;
    }
    if (bVar39) {
      *(undefined1 *)((int)this + 0x8b4) = 0;
      *(undefined1 *)((int)this + 0x8b2) = 0;
    }
  }
  if (*(char *)((int)this + 0x8b2) == '\0') {
    cVar17 = (**(code **)((int)*pfVar23 + 4))();
                    /* Verified map-threshold call 00973D00. In this function's CFG this block
                       reaches subsequent follow/ground blocks; the ground block cannot reach this
                       block. Map-mode changes therefore precede later ground calculations on a
                       frame that runs both. */
    if (((cVar17 != '\0') && (cVar17 = FUN_00973d00(this), cVar17 != '\0')) && (bVar38)) {
      *(undefined1 *)((int)this + 0x8b3) = 0;
    }
    if (*(char *)((int)this + 0x8b1) == '\0') {
      (**(code **)((int)*pfVar23 + 0xc))();
      (**(code **)(*(int *)((int)this + 0x570) + 0xc))();
    }
  }
  if ((*(char *)((int)this + 0x8b3) == '\0') && (*(char *)((int)this + 0x8b4) == '\0')) {
    (**(code **)(*(int *)((int)this + 0x6b0) + 0xc))();
  }
  cVar17 = (**(code **)((int)*auVar70._0_4_ + 4))();
  if (cVar17 == '\0') {
    *(undefined1 *)((int)this + 0x8b1) = 0;
    *(undefined1 *)((int)this + 0x8b2) = 0;
  }
  else {
    if (*(char *)((int)this + 0x818) != '\0') {
      FUN_00973830(this,(float *)&pfStack_860);
    }
    (**(code **)*auVar70._0_4_)(deltaSeconds);
  }
  piVar21 = (int *)((int)this + 0x6b0);
  cVar17 = (**(code **)(*(int *)((int)this + 0x6b0) + 4))();
  if (cVar17 == '\0') {
    *(undefined1 *)((int)this + 0x8b3) = 0;
    *(undefined1 *)((int)this + 0x8b4) = 0;
    *(undefined4 *)((int)this + 0x8c0) = 0;
    uVar20 = extraout_EDX;
  }
  else {
    (**(code **)*piVar21)(deltaSeconds);
    uVar20 = extraout_EDX_00;
  }
  if ((((*(char *)((int)this + 0x8b1) == '\0') && (*(char *)((int)this + 0x8b2) == '\0')) &&
      (*(char *)((int)this + 0x8b3) == '\0')) && (*(char *)((int)this + 0x8b4) == '\0')) {
    FUN_0095fe10(*(int *)((int)this + 0xc));
    uVar20 = extraout_EDX_01;
  }
  if (cStack_965 == '\0') {
    auVar49._0_4_ =
         *(float *)((int)this + 0x7e8) * *(float *)((int)this + 0x7e8) +
         *(float *)((int)this + 0x7e4) * *(float *)((int)this + 0x7e4) +
         *(float *)((int)this + 0x7e0) * *(float *)((int)this + 0x7e0);
    auVar49._4_4_ = auVar49._0_4_;
    auVar49._8_4_ = auVar49._0_4_;
    auVar49._12_4_ = auVar49._0_4_;
    auVar74 = sqrtps(auVar49,auVar49);
    fStack_3d0 = auVar74._0_4_;
    fStack_390 = _DAT_0104487c;
    if (fStack_3d0 <= _DAT_0104487c) goto LAB_009767a4;
    fVar40 = (float10)_CIpow();
    fVar89 = (float)fVar40;
    uVar20 = extraout_EDX_02;
    fVar72 = fVar89 * *(float *)((int)this + 0x7e0);
    fVar73 = fVar89 * *(float *)((int)this + 0x7e4);
    fVar87 = fVar89 * *(float *)((int)this + 0x7e8);
    fVar89 = fVar89 * *(float *)((int)this + 0x7ec);
  }
  else {
LAB_009767a4:
    fVar72 = (float)auStack_6d0._0_4_;
    fVar73 = (float)auStack_6d0._4_4_;
    fVar87 = fStack_6c8;
    fVar89 = fStack_6c4;
  }
  *(float *)((int)this + 0x7e0) = fVar72;
  *(float *)((int)this + 0x7e4) = fVar73;
  *(float *)((int)this + 0x7e8) = fVar87;
  *(float *)((int)this + 0x7ec) = fVar89;
  if (bVar38) {
LAB_00976830:
    fVar72 = (float)auStack_6c0._0_4_;
    fVar73 = (float)auStack_6c0._4_4_;
    fVar87 = fStack_6b8;
    fVar89 = fStack_6b4;
  }
  else {
    auVar50._0_4_ = *(float *)((int)this + 0x7f0) * *(float *)((int)this + 0x7f0);
    fVar72 = *(float *)((int)this + 0x7f4) * *(float *)((int)this + 0x7f4);
    auVar50._4_4_ = auVar50._0_4_;
    auVar50._8_4_ = auVar50._0_4_;
    auVar50._12_4_ = auVar50._0_4_;
    auVar79._0_4_ = fVar72 + auVar50._0_4_;
    auVar79._4_4_ = fVar72 + auVar50._0_4_;
    auVar79._8_4_ = fVar72 + auVar50._0_4_;
    auVar79._12_4_ = fVar72 + auVar50._0_4_;
    auVar74 = sqrtps(auVar50,auVar79);
    fStack_370 = auVar74._0_4_;
    fStack_440 = _DAT_0104487c;
    if (fStack_370 <= _DAT_0104487c) goto LAB_00976830;
                    /* x87 _CIpow ABI: fld(controller+8D4) then fld(deltaSeconds), yielding
                       pow(rotationRetention,deltaSeconds). This decays retained angular speed, not
                       distance to a yaw intent. */
    fVar40 = (float10)_CIpow();
    fVar89 = (float)fVar40;
    uVar20 = extraout_EDX_03;
    fVar72 = fVar89 * *(float *)((int)this + 0x7f0);
    fVar73 = fVar89 * *(float *)((int)this + 0x7f4);
    fVar87 = fVar89 * *(float *)((int)this + 0x7f8);
    fVar89 = fVar89 * *(float *)((int)this + 0x7fc);
  }
  pauVar36 = (undefined1 (*) [16])((int)this + 0x7f0);
  *(float *)*pauVar36 = fVar72;
  *(float *)((int)this + 0x7f4) = fVar73;
  *(float *)((int)this + 0x7f8) = fVar87;
  *(float *)((int)this + 0x7fc) = fVar89;
  fVar72 = ABS(*(float *)((int)this + 0x800));
  fVar73 = fStack_6b0;
  if ((bVar39) || (fVar72 <= _DAT_0104487c)) {
LAB_009768d9:
    *(float *)((int)this + 0x800) = fVar73;
  }
  else {
    iVar19 = 2;
    if (0.0 <= *(float *)((int)this + 0x800)) {
      iVar19 = 3;
    }
                    /* Input bank1 scalar2 (negative zoom velocity) or scalar3 (positive). This is a
                       zoom-speed cap; it does not cap yaw. */
    fVar40 = CameraInput_GetBankScalar((void *)((int)this + 0x40),1,iVar19);
    if (fVar40 < (float10)fVar72) {
      fVar73 = *(float *)((int)this + 0x800) / fVar72;
      fVar72 = extraout_ECX_00;
      uVar20 = extraout_EDX_04;
      fVar73 = fVar73 * (float)fVar40;
      goto LAB_009768d9;
    }
    fVar40 = (float10)_CIpow();
    *(float *)((int)this + 0x800) = (float)(fVar40 * (float10)*(float *)((int)this + 0x800));
    fVar72 = extraout_ECX_01;
    uVar20 = extraout_EDX_05;
  }
  pfVar23 = pfStack_944;
  if (bVar5) {
    auVar51._0_4_ =
         *(float *)((int)this + 0x7e8) * *(float *)((int)this + 0x7e8) +
         *(float *)((int)this + 0x7e4) * *(float *)((int)this + 0x7e4) +
         *(float *)((int)this + 0x7e0) * *(float *)((int)this + 0x7e0);
    auVar51._4_4_ = auVar51._0_4_;
    auVar51._8_4_ = auVar51._0_4_;
    auVar51._12_4_ = auVar51._0_4_;
    auVar74 = sqrtps(auVar51,auVar51);
    fStack_3b0 = auVar74._0_4_;
    fStack_5a0 = _DAT_0104487c;
    if ((_DAT_0104487c < fStack_3b0) && (ABS(*(float *)((int)this + 0x800)) < _DAT_0104487c)) {
      auVar80._0_4_ = *(float *)*pauVar36 * *(float *)*pauVar36;
      fVar73 = *(float *)((int)this + 0x7f4) * *(float *)((int)this + 0x7f4);
      auVar80._4_4_ = auVar80._0_4_;
      auVar80._8_4_ = auVar80._0_4_;
      auVar80._12_4_ = auVar80._0_4_;
      auVar96._0_4_ = fVar73 + auVar80._0_4_;
      auVar96._4_4_ = fVar73 + auVar80._0_4_;
      auVar96._8_4_ = fVar73 + auVar80._0_4_;
      auVar96._12_4_ = fVar73 + auVar80._0_4_;
      auVar74 = sqrtps(auVar80,auVar96);
      fStack_460 = _DAT_0104487c;
      fStack_580 = auVar74._0_4_;
      if (fStack_580 < _DAT_0104487c) {
        *(float *)((int)this + 0x7e0) = *(float *)((int)this + 0x7e0) + (float)auStack_8b0._0_4_;
        *(float *)((int)this + 0x7e4) = *(float *)((int)this + 0x7e4) + (float)auStack_8b0._4_4_;
        *(float *)((int)this + 0x7e8) = *(float *)((int)this + 0x7e8) + (float)pfStack_8a8;
        *(float *)((int)this + 0x7ec) = *(float *)((int)this + 0x7ec) + (float)pfStack_8a4;
      }
    }
  }
  uVar24 = DAT_01046c9c;
  auVar74 = *(undefined1 (*) [16])((int)this + 0x7e0);
  auVar108._0_4_ = local_8a0 * auVar74._0_4_;
  auVar108._4_4_ = fStack_89c * auVar74._4_4_;
  auVar108._8_4_ = fStack_898 * auVar74._8_4_;
  auVar108._12_4_ = fStack_894 * auVar74._12_4_;
  auVar74 = maxps(auVar108,auVar74);
  fVar73 = *(float *)((int)this + 0x800);
  auVar109._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
  auVar109._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
  auVar109._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
  auVar109._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
  uVar27 = movmskps(uVar20,auVar109);
  auVar52._4_4_ = fVar73;
  auVar52._0_4_ = fVar73;
  auVar52._8_4_ = fVar73;
  auVar52._12_4_ = fVar73;
  auVar110._0_4_ = local_8a0 * fVar73;
  auVar110._4_4_ = fStack_89c * fVar73;
  auVar110._8_4_ = fStack_898 * fVar73;
  auVar110._12_4_ = fStack_894 * fVar73;
  auVar111 = maxps(auVar110,auVar52);
  auVar74 = *pauVar36;
  auVar112._4_4_ = -(uint)(auVar111._4_4_ <= fStack_84c);
  auVar112._0_4_ = -(uint)(auVar111._0_4_ <= local_850);
  auVar112._8_4_ = -(uint)(auVar111._8_4_ <= fStack_848);
  auVar112._12_4_ = -(uint)(auVar111._12_4_ <= fStack_844);
  iVar19 = movmskps(fVar72,auVar112);
  auVar113._0_4_ = auVar74._0_4_ * local_8a0;
  auVar113._4_4_ = auVar74._4_4_ * fStack_89c;
  auVar113._8_4_ = auVar74._8_4_ * fStack_898;
  auVar113._12_4_ = auVar74._12_4_ * fStack_894;
  auVar74 = maxps(auVar113,auVar74);
  auVar114._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
  auVar114._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
  auVar114._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
  auVar114._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
  uVar31 = movmskps(uVar27 & 7,auVar114);
  if ((uVar31 & 1) != 0) {
    pauStack_73c = pauVar36;
  }
  fVar72 = *(float *)*pauVar36;
  auVar53._4_4_ = fVar72;
  auVar53._0_4_ = fVar72;
  auVar53._8_4_ = fVar72;
  auVar53._12_4_ = fVar72;
  auVar81._0_4_ = local_8a0 * fVar72;
  auVar81._4_4_ = fStack_89c * fVar72;
  auVar81._8_4_ = fStack_898 * fVar72;
  auVar81._12_4_ = fStack_894 * fVar72;
  auVar74 = maxps(auVar81,auVar53);
  auVar82._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
  auVar82._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
  auVar82._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
  auVar82._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
  iVar30 = movmskps(pauVar36,auVar82);
  if ((((char)(uVar27 & 7) != '\a') && (*(char *)((int)this + 0x8b9) != '\0')) &&
     (*(char *)((int)this + 0x8ba) == '\0')) {
    *(undefined4 *)((int)this + 0x8c4) = DAT_01046c9c;
    *(undefined4 *)((int)this + 0x8c8) = uVar24;
  }
  fVar72 = *(float *)((int)this + 0x770) - *(float *)((int)this + 0x780);
  fVar73 = *(float *)((int)this + 0x774) - *(float *)((int)this + 0x784);
  fVar87 = *(float *)((int)this + 0x778) - *(float *)((int)this + 0x788);
  auVar54._0_4_ = fVar87 * fVar87 + fVar73 * fVar73 + fVar72 * fVar72;
  auVar54._4_4_ = auVar54._0_4_;
  auVar54._8_4_ = auVar54._0_4_;
  auVar54._12_4_ = auVar54._0_4_;
  auVar74 = sqrtps(auVar54,auVar54);
  pfStack_900 = auVar74._0_4_;
  pfStack_8fc = auVar74._4_4_;
  pfStack_8f8 = auVar74._8_4_;
  pfStack_8f4 = auVar74._12_4_;
  fStack_974 = *(float *)((int)this + 0x8e4);
  pfStack_964 = (float *)(((float)pfStack_900 - fStack_974) * *(float *)((int)this + 0x8f0));
  fVar72 = DAT_01046ca8;
  if (*(int *)((int)this + 0x8c0) == 0) {
    if ((*(char *)((int)this + 0x8b9) == '\0') || (*(char *)((int)this + 0x8b8) != '\0')) {
      fVar72 = *(float *)((int)this + 0x8ec);
      if (*(char *)((int)this + 0x8ba) != '\0') goto LAB_00976b38;
    }
    else if (*(char *)((int)this + 0x8ba) == '\0') {
      fStack_974 = *(float *)((int)this + 0x8e8);
      fVar72 = fStack_974;
    }
    else {
LAB_00976b38:
      fVar72 = *(float *)((int)this + 0x8e8);
    }
  }
  pauStack_714 = pauVar36;
  pauStack_6fc = pauVar36;
  if (*(char *)((int)this + 0x8b2) == '\0') {
    if (*(int *)((int)this + 0x8c0) == 2) {
      fVar40 = (float10)(**(code **)(*piVar21 + 0x2c))();
      uVar27 = (int)(float)((float10)fStack_974 - fVar40) >> 0x1f;
      fVar73 = (float)(~uVar27 & (uint)fStack_974 | (uint)(float)fVar40 & uVar27);
      uVar27 = (int)(fVar72 - fVar73) >> 0x1f;
      fVar41 = ((float)(~uVar27 & (uint)fVar73 | (uint)fVar72 & uVar27) - (float)pfStack_900) *
               fVar41;
      fVar40 = GameplayCamera_AdjustZoomRateNearBounds
                         (this,fStack_6b0,(float)pfStack_900,(float)pfStack_964,fStack_974,fVar72);
      uVar27 = (int)((float)fVar40 - fVar41) >> 0x1f;
      fStack_97c = (float)(~uVar27 & (uint)fVar41 | (uint)(float)fVar40 & uVar27) * deltaSeconds +
                   (float)pfStack_900;
      fVar41 = fStack_974 - fStack_97c;
LAB_00976d03:
      fStack_984 = (float)(~((int)fVar41 >> 0x1f) & (uint)fStack_974 |
                          (uint)fStack_97c & (int)fVar41 >> 0x1f);
      fVar41 = fVar72 - fStack_984;
      fStack_97c = fVar72;
    }
    else {
      if (*(char *)((int)this + 0x8b4) != '\0') {
        fVar40 = (float10)(**(code **)(*piVar21 + 0x2c))();
        fVar41 = (float)((float10)fStack_974 - fVar40);
        fStack_97c = (float)fVar40;
        goto LAB_00976d03;
      }
      fVar40 = GameplayCamera_AdjustZoomRateNearBounds
                         (this,fStack_6b0,(float)pfStack_900,(float)pfStack_964,fStack_974,fVar72);
      fVar40 = fVar40 * (float10)deltaSeconds + (float10)(float)pfStack_900;
      uVar27 = (int)(float)((float10)fStack_974 - fVar40) >> 0x1f;
      fStack_984 = (float)(~uVar27 & (uint)fStack_974 | (uint)(float)fVar40 & uVar27);
      fVar41 = fVar72 - fStack_984;
      fStack_97c = fVar72;
    }
    uVar27 = (int)fVar41 >> 0x1f;
    uVar140 = CONCAT44((uint)fStack_97c & uVar27,uVar27);
    fVar41 = (float)(~uVar27 & (uint)fStack_984 | (uint)fStack_97c & uVar27);
    fStack_96c = fVar41;
  }
  else {
    auVar70._0_4_ = (float *)(**(code **)((int)*pfStack_944 + 0x1c))(auStack_120);
    uVar140 = (**(code **)((int)*pfVar23 + 0x20))();
    pfVar23 = (float *)uVar140;
    auVar55._0_4_ =
         (pfVar23[2] - auVar70._0_4_[2]) * (pfVar23[2] - auVar70._0_4_[2]) +
         (pfVar23[1] - auVar70._0_4_[1]) * (pfVar23[1] - auVar70._0_4_[1]) +
         (*pfVar23 - *auVar70._0_4_) * (*pfVar23 - *auVar70._0_4_);
    auVar55._4_4_ = auVar55._0_4_;
    auVar55._8_4_ = auVar55._0_4_;
    auVar55._12_4_ = auVar55._0_4_;
    _auStack_8b0 = sqrtps(auVar55,auVar55);
    fStack_96c = (float)auStack_8b0._0_4_;
    fVar41 = extraout_ECX_02;
  }
  fVar72 = (fStack_96c - *(float *)((int)this + 0x8e4)) * *(float *)((int)this + 0x8f0);
  auVar56._0_4_ = fStack_96c - *(float *)((int)this + 0x8ec);
  auVar83._0_4_ = (float)pfStack_900 - *(float *)((int)this + 0x8ec);
  auVar56._4_4_ = auVar56._0_4_;
  auVar56._8_4_ = auVar56._0_4_;
  auVar56._12_4_ = auVar56._0_4_;
  auVar122._0_4_ = local_8a0 * auVar56._0_4_;
  auVar122._4_4_ = fStack_89c * auVar56._0_4_;
  auVar122._8_4_ = fStack_898 * auVar56._0_4_;
  auVar122._12_4_ = fStack_894 * auVar56._0_4_;
  auVar83._4_4_ = auVar83._0_4_;
  auVar83._8_4_ = auVar83._0_4_;
  auVar83._12_4_ = auVar83._0_4_;
  auVar74 = maxps(auVar122,auVar56);
  auVar123._4_4_ = -(uint)(auVar74._4_4_ <= _DAT_0106e6ec);
  auVar123._0_4_ = -(uint)(auVar74._0_4_ <= _DAT_0106e6ec);
  auVar123._8_4_ = -(uint)(auVar74._8_4_ <= _DAT_0106e6ec);
  auVar123._12_4_ = -(uint)(auVar74._12_4_ <= _DAT_0106e6ec);
  iVar28 = movmskps((int)uVar140,auVar123);
  uStack_8e1 = iVar28 == 0xf;
  auVar115._0_4_ = local_8a0 * auVar83._0_4_;
  auVar115._4_4_ = fStack_89c * auVar83._0_4_;
  auVar115._8_4_ = fStack_898 * auVar83._0_4_;
  auVar115._12_4_ = fStack_894 * auVar83._0_4_;
  uVar20 = CONCAT31((int3)((uint)iVar28 >> 8),uStack_8e1);
  auVar74 = maxps(auVar115,auVar83);
  auVar116._4_4_ = (float)-(uint)(auVar74._4_4_ <= _DAT_0106e6ec);
  auVar116._0_4_ = (float *)-(uint)(auVar74._0_4_ <= _DAT_0106e6ec);
  auVar116._8_4_ = (float *)-(uint)(auVar74._8_4_ <= _DAT_0106e6ec);
  auVar116._12_4_ = (float)-(uint)(auVar74._12_4_ <= _DAT_0106e6ec);
  iVar28 = movmskps(fVar41,auVar116);
  uVar24 = CONCAT31((int3)((ulonglong)uVar140 >> 0x28),iVar28 == 0xf);
  if ((((iVar28 == 0xf) != (bool)uStack_8e1) ||
      ((uVar140 = CONCAT44(uVar24,uVar20), (bool)uStack_8e1 &&
       (uVar140 = CONCAT44(uVar24,uVar20), bVar39)))) &&
     (uVar140 = CONCAT44(uVar24,uVar20), *(char *)((int)this + 0x8b8) == '\0')) {
    appuStack_780[0] = &PTR_FUN_00fba6f4;
    uStack_776 = 1;
    uStack_778 = 0;
    uStack_770 = uStack_8e1;
    puVar29 = Camera_DispatchRegisteredEventCallback(appuStack_350,4,appuStack_780,1);
    uVar140 = CONCAT44(extraout_EDX_06,puVar29);
    appuStack_350[0] = &PTR_FUN_00fba6f4;
    if ((bStack_348 & 4) != 0) {
      uVar140 = FUN_004f5760(appuStack_350,'\0');
    }
    appuStack_780[0] = &PTR_FUN_00fba6f4;
    if ((uStack_778 & 4) != 0) {
      uVar140 = FUN_004f5760(appuStack_780,'\0');
    }
  }
  pfVar23 = pfStack_944;
  pfStack_810 = *(float **)((int)this + 0x780);
  pfStack_80c = *(float **)((int)this + 0x784);
  pfStack_808 = *(float **)((int)this + 0x788);
  pfStack_804 = *(float **)((int)this + 0x78c);
  bVar38 = false;
  if (*(char *)((int)this + 0x8b1) == '\0') {
    if (*(char *)((int)this + 0x8b6) == '\0') {
      if (*(char *)((int)this + 0x8b7) != '\0') {
        FUN_00975510(this,(float *)((int)this + 0x7e0),(float *)&pfStack_810,fVar72);
      }
      uVar140 = FUN_00970fe0(this,afStack_260,(float *)((int)this + 0x7e0),fVar72);
      auVar133 = *(undefined1 (*) [16])uVar140;
      pfStack_900 = auVar133._0_4_;
      pfStack_8fc = auVar133._4_4_;
      pfStack_8f8 = auVar133._8_4_;
      pfStack_8f4 = auVar133._12_4_;
    }
    else {
      auVar133._4_4_ = (float)pfStack_8bc;
      auVar133._0_4_ = (float)pfStack_8c0;
      auVar133._8_4_ = (float)pfStack_8b8;
      auVar133._12_4_ = (float)pfStack_8b4;
      pfStack_900 = pfStack_8c0;
      pfStack_8fc = pfStack_8bc;
      pfStack_8f8 = pfStack_8b8;
      pfStack_8f4 = pfStack_8b4;
    }
  }
  else {
    (**(code **)((int)*pfStack_944 + 0x20))(&fStack_660);
    if (*(char *)((int)this + 0x8b7) != '\0') {
      fVar41 = fStack_978;
      auVar70._0_4_ = (float *)(**(code **)((int)*pfVar23 + 0x28))(auStack_144);
      uVar20 = FUN_009723b0(this,auVar70._0_4_,fVar41);
      if ((char)uVar20 == '\0') {
        FUN_00975750(this,(float *)&pfStack_664,fStack_978);
      }
    }
    auVar57._0_4_ = (float)pfStack_664 - fStack_814;
    auVar57._4_4_ = fStack_660 - (float)pfStack_810;
    auVar57._8_4_ = fStack_65c - (float)pfStack_80c;
    auVar57._12_4_ = fStack_658 - (float)pfStack_808;
    auVar2._4_4_ = local_8d0;
    auVar2._0_4_ = pfStack_8d4;
    auVar2._8_4_ = fStack_8cc;
    auVar2._12_4_ = fStack_8c8;
    auVar74 = divps(auVar57,auVar2);
    fStack_904 = auVar74._0_4_;
    pfStack_900 = auVar74._4_4_;
    pfStack_8fc = auVar74._8_4_;
    pfStack_8f8 = auVar74._12_4_;
    uVar140 = (**(code **)((int)*pfVar23 + 0x28))();
    if (*(void **)((int)this + 0x3c) != (void *)0x0) {
      auStack_8b0._4_4_ = uStack_42c;
      auStack_8b0._0_4_ = fStack_430;
      pfStack_8a8 = (float *)fStack_428;
      pfStack_8a4 = (float *)uStack_424;
      auStack_920._4_4_ = uStack_42c;
      auStack_920._0_4_ = fStack_430;
      pfStack_918 = (float *)fStack_428;
      pfStack_914 = (float *)uStack_424;
      bVar39 = FUN_00c6ba00(*(void **)((int)this + 0x3c),fStack_430,fStack_428);
      uVar140 = CONCAT44(extraout_EDX_07,CONCAT31(extraout_var,bVar39));
      if (bVar39) {
        bVar38 = true;
        uVar140 = CONCAT44(extraout_EDX_07,CONCAT31(extraout_var,bVar39));
      }
    }
    auVar133._4_4_ = (float)pfStack_8fc;
    auVar133._0_4_ = (float)pfStack_900;
    auVar133._8_4_ = (float)pfStack_8f8;
    auVar133._12_4_ = (float)pfStack_8f4;
  }
  pfVar23 = (float *)((ulonglong)uVar140 >> 0x20);
  uVar27 = (uint)uVar140;
  if (*(int *)((int)this + 0x3c) == 0) {
LAB_00977371:
    *(undefined1 *)((int)this + 0x8a0) = 0;
  }
  else {
    fVar41 = auVar133._0_4_;
    auVar58._0_4_ = local_8a0 * fVar41;
    fVar73 = auVar133._4_4_;
    auVar58._4_4_ = fStack_89c * fVar73;
    fVar87 = auVar133._8_4_;
    auVar58._8_4_ = fStack_898 * fVar87;
    fVar89 = auVar133._12_4_;
    auVar58._12_4_ = fStack_894 * fVar89;
    auVar74 = maxps(auVar58,auVar133);
    auVar59._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
    auVar59._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
    auVar59._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
    auVar59._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
    uVar31 = movmskps(pfVar23,auVar59);
    pfVar23 = (float *)(uVar31 & 7);
    if (((char)pfVar23 == '\a') || (bVar38)) goto LAB_00977371;
    auVar60._0_4_ = fVar41 * fVar41;
    auVar60._4_4_ = fVar73 * fVar73;
    auVar60._8_4_ = fVar87 * fVar87;
    auVar60._12_4_ = fVar89 * fVar89;
    fVar91 = auVar60._8_4_ + auVar60._4_4_ + auVar60._0_4_;
    auVar97._4_4_ = fVar91;
    auVar97._0_4_ = fVar91;
    auVar97._8_4_ = fVar91;
    auVar97._12_4_ = fVar91;
    auVar74 = rsqrtps(auVar123,auVar97);
    fVar93 = auVar74._0_4_;
    fVar100 = auVar74._4_4_;
    fVar102 = auVar74._8_4_;
    fVar103 = auVar74._12_4_;
    fVar93 = ((float)DAT_00f998f8 - fVar93 * fVar93 * fVar91) * _DAT_00f9b5b4 * fVar93 + fVar93;
    fVar100 = ((float)DAT_00f998f8 - fVar100 * fVar100 * fVar91) * _DAT_00f9b5b4 * fVar100 + fVar100
    ;
    fVar102 = ((float)DAT_00f998f8 - fVar102 * fVar102 * fVar91) * _DAT_00f9b5b4 * fVar102 + fVar102
    ;
    fVar103 = ((float)DAT_00f998f8 - fVar103 * fVar103 * fVar91) * _DAT_00f9b5b4 * fVar103 + fVar103
    ;
    auVar116._0_4_ = (float *)(_DAT_00f9b5b4 * fVar93);
    auVar116._4_4_ = _DAT_00f9b5b4 * fVar100;
    auVar116._8_4_ = (float *)(_DAT_00f9b5b4 * fVar102);
    auVar116._12_4_ = _DAT_00f9b5b4 * fVar103;
    auStack_8b0._4_4_ =
         (((float)DAT_00f998f8 - fVar100 * fVar100 * fVar91) * auVar116._4_4_ + fVar100) * fVar73;
    auStack_8b0._0_4_ =
         (((float)DAT_00f998f8 - fVar93 * fVar93 * fVar91) * (float)auVar116._0_4_ + fVar93) *
         fVar41;
    pfStack_8a8 = (float *)((((float)DAT_00f998f8 - fVar102 * fVar102 * fVar91) *
                             (float)auVar116._8_4_ + fVar102) * fVar87);
    pfStack_8a4 = (float *)((((float)DAT_00f998f8 - fVar103 * fVar103 * fVar91) * auVar116._12_4_ +
                            fVar103) * fVar89);
    auVar84._0_4_ = auVar60._8_4_ + auVar60._4_4_ + auVar60._0_4_;
    auVar84._4_4_ = auVar84._0_4_;
    auVar84._8_4_ = auVar84._0_4_;
    auVar84._12_4_ = auVar84._0_4_;
    _auStack_920 = sqrtps(auVar60,auVar84);
    fVar41 = *(float *)((int)this + 0x998) * (float)auStack_920._0_4_ * _DAT_00f9b5b4;
    uVar27 = (int)(fVar41 - (float)DAT_00f998f8) >> 0x1f;
    pfVar23 = (float *)((uint)DAT_00f998f8 & uVar27);
    pfStack_964 = (float *)(~uVar27 & (uint)fVar41 | (uint)pfVar23);
    bVar39 = false;
    auVar70._0_4_ = DAT_00f998f8;
    if ((float)DAT_00f998f8 <= (float)pfStack_964) {
      do {
        pfStack_960 = (float *)((float)auVar70._0_4_ * (float)auStack_8b0._0_4_ + (float)pfStack_810
                               );
        pfStack_95c = (float *)((float)auVar70._0_4_ * (float)auStack_8b0._4_4_ + (float)pfStack_80c
                               );
        pfStack_958 = (float *)((float)auVar70._0_4_ * (float)pfStack_8a8 + (float)pfStack_808);
        pfStack_954 = (float *)((float)auVar70._0_4_ * (float)pfStack_8a4 + (float)pfStack_804);
        auStack_920._4_4_ = pfStack_95c;
        auStack_920._0_4_ = pfStack_960;
        pfStack_918 = pfStack_958;
        pfStack_914 = pfStack_954;
        pfStack_a0 = pfStack_960;
        pfStack_9c = pfStack_95c;
        pfStack_98 = pfStack_958;
        pfStack_94 = pfStack_954;
        bVar39 = FUN_00c6ba00(*(void **)((int)this + 0x3c),(float)pfStack_960,(float)pfStack_958);
        uVar27 = CONCAT31(extraout_var_00,bVar39);
        if (!bVar39) {
          bVar39 = true;
          break;
        }
        auVar70._0_4_ = (float *)((float)auVar70._0_4_ + (float)DAT_00f998f8);
        bVar39 = false;
      } while ((float)auVar70._0_4_ <= (float)pfStack_964);
      auVar133._4_4_ = (float)pfStack_8fc;
      auVar133._0_4_ = (float)pfStack_900;
      auVar133._8_4_ = (float)pfStack_8f8;
      auVar133._12_4_ = (float)pfStack_8f4;
      pfVar23 = extraout_EDX_08;
    }
    uVar27 = CONCAT31((int3)(uVar27 >> 8),*(char *)((int)this + 0x8a0));
    if (*(char *)((int)this + 0x8a0) == '\0') {
      if (bVar39) {
        *(undefined1 (*) [16])((int)this + 0x890) = auVar133;
        fVar73 = (*(float *)((int)this + 0x998) / (float)pfStack_964) * (float)auVar70._0_4_;
        *(float *)((int)this + 0x8a4) = fVar73;
        fVar41 = (float)_DAT_00ff1120;
        *(float *)((int)this + 0x8a8) = fVar73;
        if (fVar73 < fVar41) {
          auVar133._4_4_ = (float)pfStack_8bc;
          auVar133._0_4_ = (float)pfStack_8c0;
          auVar133._8_4_ = (float)pfStack_8b8;
          auVar133._12_4_ = (float)pfStack_8b4;
          goto LAB_009772e0;
        }
        *(undefined1 *)((int)this + 0x8a0) = 1;
      }
    }
    else if (!bVar39) {
LAB_009772e0:
      *(undefined1 *)((int)this + 0x8a0) = 0;
    }
    if (*(char *)((int)this + 0x8a0) != '\0') {
      fVar41 = *(float *)((int)this + 0x8a8) - deltaSeconds;
      uVar27 = (int)fVar41 >> 0x1f;
      *(float *)((int)this + 0x8a8) = fVar41;
      pfVar23 = (float *)0x0;
      *(uint *)((int)this + 0x8a8) = ~uVar27 & (uint)fVar41;
      fVar41 = (float)(~uVar27 & (uint)fVar41) / *(float *)((int)this + 0x8a4);
      auVar133._0_4_ =
           fVar41 * (*(float *)((int)this + 0x890) - (float)pfStack_8c0) + (float)pfStack_8c0;
      auVar133._4_4_ =
           fVar41 * (*(float *)((int)this + 0x894) - (float)pfStack_8bc) + (float)pfStack_8bc;
      auVar133._8_4_ =
           fVar41 * (*(float *)((int)this + 0x898) - (float)pfStack_8b8) + (float)pfStack_8b8;
      auVar133._12_4_ =
           fVar41 * (*(float *)((int)this + 0x89c) - (float)pfStack_8b4) + (float)pfStack_8b4;
    }
  }
  pfStack_940 = (float *)(local_8d0 * auVar133._0_4_ + (float)pfStack_810);
  pfStack_93c = (float *)(fStack_8cc * auVar133._4_4_ + (float)pfStack_80c);
  pfStack_938 = (float *)(fStack_8c8 * auVar133._8_4_ + (float)pfStack_808);
  pfStack_934 = (float *)(fStack_8c4 * auVar133._12_4_ + (float)pfStack_804);
  if (*(char *)((int)this + 0x830) != '\0') {
    auVar4._4_4_ = pfStack_87c;
    auVar4._0_4_ = pfStack_880;
    auVar4._8_4_ = pfStack_878;
    auVar4._12_4_ = pfStack_874;
    auVar98._0_4_ = (float)pfStack_880 * local_8a0;
    auVar98._4_4_ = (float)pfStack_87c * fStack_89c;
    auVar98._8_4_ = (float)pfStack_878 * fStack_898;
    auVar98._12_4_ = (float)pfStack_874 * fStack_894;
    auVar74 = maxps(auVar98,auVar4);
    auVar99._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
    auVar99._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
    auVar99._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
    auVar99._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
    uVar20 = movmskps(uVar27,auVar99);
    if (((byte)uVar20 & 7) != 7) {
      pfStack_940 = (float *)((float)pfStack_880 + (float)pfStack_940);
      pfStack_93c = (float *)((float)pfStack_87c + (float)pfStack_93c);
      pfStack_938 = (float *)((float)pfStack_878 + (float)pfStack_938);
      pfStack_934 = (float *)((float)pfStack_874 + (float)pfStack_934);
    }
  }
  if ((*(char *)((int)this + 0x8b7) != '\0') && (*(char *)((int)this + 0x8b1) == '\0')) {
    FUN_00975750(this,(float *)&pfStack_940,fVar72);
    pfVar23 = extraout_EDX_09;
  }
  pvVar1 = DAT_011edbc4;
  auVar70._0_4_ = pfStack_7a8;
  pfVar37 = pfStack_758;
  pfVar71 = pfStack_708;
  pfVar8 = pfStack_6f8;
  pfVar9 = pfStack_230;
  fVar41 = fStack_22c;
  fVar73 = fStack_228;
  fVar87 = fStack_224;
  fVar89 = fStack_1b0;
  fVar91 = fStack_1ac;
  pfVar10 = pfStack_1a8;
  fVar93 = fStack_1a4;
  pfVar11 = pfStack_130;
  fVar100 = fStack_12c;
  fVar102 = fStack_128;
  fVar103 = fStack_124;
  fVar12 = fStack_e0;
  fVar13 = fStack_dc;
  pfVar14 = pfStack_d8;
  fVar15 = fStack_d4;
  if (*(char *)((int)this + 0x8b9) != '\0') goto LAB_00977cb5;
  if (DAT_011edbc4 == (void *)0x0) {
LAB_00977c0e:
    auVar70._0_4_ = pfStack_7a8;
    pfVar37 = pfStack_758;
    pfVar71 = pfStack_708;
    pfVar8 = pfStack_6f8;
    pfVar9 = pfStack_230;
    fVar41 = fStack_22c;
    fVar73 = fStack_228;
    fVar87 = fStack_224;
    fVar89 = fStack_1b0;
    fVar91 = fStack_1ac;
    pfVar10 = pfStack_1a8;
    fVar93 = fStack_1a4;
    pfVar11 = pfStack_130;
    fVar100 = fStack_12c;
    fVar102 = fStack_128;
    fVar103 = fStack_124;
    fVar12 = fStack_e0;
    fVar13 = fStack_dc;
    pfVar14 = pfStack_d8;
    fVar15 = fStack_d4;
    if ((*(char *)((int)this + 0x8b7) == '\0') && (*(int *)((int)this + 0x3c) != 0)) {
      fVar40 = FUN_00c61090(*(int *)((int)this + 0x3c));
      fStack_590 = *(float *)((int)this + 0x774);
      iStack_7ac = (int)this + 0x770;
      fStack_5b0 = (float)fVar40;
      pfVar23 = extraout_EDX_12;
      auVar70._0_4_ = pfStack_7a8;
      pfVar37 = pfStack_758;
      pfVar71 = pfStack_708;
      pfVar8 = pfStack_6f8;
      pfVar9 = pfStack_230;
      fVar41 = fStack_22c;
      fVar73 = fStack_228;
      fVar87 = fStack_224;
      fVar89 = fStack_1b0;
      fVar91 = fStack_1ac;
      pfVar10 = pfStack_1a8;
      fVar93 = fStack_1a4;
      pfVar11 = pfStack_130;
      fVar100 = fStack_12c;
      fVar102 = fStack_128;
      fVar103 = fStack_124;
      fVar12 = fStack_e0;
      fVar13 = fStack_dc;
      pfVar14 = pfStack_d8;
      fVar15 = fStack_d4;
      if (fStack_590 < fStack_5b0) {
        piVar21 = (int *)0x0;
        uVar140 = FUN_00c5f560(*(int *)((int)this + 0x3c));
        piVar21 = FUN_00c62810(*(void **)((int)this + 0x3c),(int)uVar140,
                               (int)((ulonglong)uVar140 >> 0x20),piVar21);
        pfVar23 = extraout_EDX_13;
        auVar70._0_4_ = pfStack_7a8;
        pfVar37 = pfStack_758;
        pfVar71 = pfStack_708;
        pfVar8 = pfStack_6f8;
        pfVar9 = pfStack_230;
        fVar41 = fStack_22c;
        fVar73 = fStack_228;
        fVar87 = fStack_224;
        fVar89 = fStack_1b0;
        fVar91 = fStack_1ac;
        pfVar10 = pfStack_1a8;
        fVar93 = fStack_1a4;
        pfVar11 = pfStack_130;
        fVar100 = fStack_12c;
        fVar102 = fStack_128;
        fVar103 = fStack_124;
        fVar12 = fStack_e0;
        fVar13 = fStack_dc;
        pfVar14 = pfStack_d8;
        fVar15 = fStack_d4;
        if ((piVar21 != (int *)0x0) &&
           (uVar20 = FUN_00624bc0((int)piVar21), pfVar23 = extraout_EDX_14,
           auVar70._0_4_ = pfStack_7a8, pfVar37 = pfStack_758, pfVar71 = pfStack_708,
           pfVar8 = pfStack_6f8, pfVar9 = pfStack_230, fVar41 = fStack_22c, fVar73 = fStack_228,
           fVar87 = fStack_224, fVar89 = fStack_1b0, fVar91 = fStack_1ac, pfVar10 = pfStack_1a8,
           fVar93 = fStack_1a4, pfVar11 = pfStack_130, fVar100 = fStack_12c, fVar102 = fStack_128,
           fVar103 = fStack_124, fVar12 = fStack_e0, fVar13 = fStack_dc, pfVar14 = pfStack_d8,
           fVar15 = fStack_d4, (char)uVar20 != '\0')) {
          FUN_00973e80(this,(float *)&pfStack_940,fVar72,piVar21);
          pfVar23 = extraout_EDX_15;
          auVar70._0_4_ = pfStack_7a8;
          pfVar37 = pfStack_758;
          pfVar71 = pfStack_708;
          pfVar8 = pfStack_6f8;
          pfVar9 = pfStack_230;
          fVar41 = fStack_22c;
          fVar73 = fStack_228;
          fVar87 = fStack_224;
          fVar89 = fStack_1b0;
          fVar91 = fStack_1ac;
          pfVar10 = pfStack_1a8;
          fVar93 = fStack_1a4;
          pfVar11 = pfStack_130;
          fVar100 = fStack_12c;
          fVar102 = fStack_128;
          fVar103 = fStack_124;
          fVar12 = fStack_e0;
          fVar13 = fStack_dc;
          pfVar14 = pfStack_d8;
          fVar15 = fStack_d4;
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
    fVar40 = FUN_00ab0320();
    this_00 = FUN_00c68d10(pvVar1,(float)auStack_920._0_4_,(float)pfStack_958,(float)fVar40);
    pfVar23 = extraout_EDX_10;
    if (this_00 == (void *)0x0) goto LAB_00977c0e;
    pfStack_964 = *(float **)((int)this_00 + 0x4b8);
    auVar70._0_4_ = pfStack_7a8;
    pfVar37 = pfStack_758;
    pfVar71 = pfStack_708;
    pfVar8 = pfStack_6f8;
    pfVar9 = pfStack_230;
    fVar41 = fStack_22c;
    fVar73 = fStack_228;
    fVar87 = fStack_224;
    fVar89 = fStack_1b0;
    fVar91 = fStack_1ac;
    pfVar10 = pfStack_1a8;
    fVar93 = fStack_1a4;
    pfVar11 = pfStack_130;
    fVar100 = fStack_12c;
    fVar102 = fStack_128;
    fVar103 = fStack_124;
    fVar12 = fStack_e0;
    fVar13 = fStack_dc;
    pfVar14 = pfStack_d8;
    fVar15 = fStack_d4;
    if ((float)pfStack_964 != 0.0) {
      pfStack_8c0 = (float *)((float)*(int *)((int)this_00 + 0x174) * _DAT_00f9b5b4);
      pfStack_8b8 = (float *)((float)*(int *)((int)this_00 + 0x178) * _DAT_00f9b5b4);
      pfStack_8bc = (float *)0x0;
      uStack_53c = 0;
      pfStack_8b4 = pfStack_8c0;
      pfStack_540 = pfStack_8c0;
      pfStack_538 = pfStack_8b8;
      pfStack_534 = pfStack_8c0;
      FUN_00ab7110(this_00,(float *)&pfStack_540,&fStack_910);
      auVar116._4_4_ = (float)pfStack_93c;
      auVar116._0_4_ = (float *)fStack_910;
      auVar116._8_4_ = (float *)fStack_908;
      auVar116._12_4_ = fStack_904;
      fVar132 = fStack_910 - (float)pfStack_940;
      fVar138 = (float)pfStack_93c - (float)pfStack_93c;
      fVar139 = fStack_908 - (float)pfStack_938;
      fVar72 = fVar132 * fVar132;
      fVar101 = fVar138 * fVar138;
      auVar124._4_4_ = fVar72;
      auVar124._0_4_ = fVar101;
      auVar124._8_4_ = fVar72;
      auVar124._12_4_ = fVar72;
      auVar61._0_4_ = fVar139 * fVar139 + fVar101 + fVar72;
      auVar61._4_4_ = auVar61._0_4_;
      auVar61._8_4_ = auVar61._0_4_;
      auVar61._12_4_ = auVar61._0_4_;
      auVar74 = sqrtps(auVar61,auVar61);
      fStack_520 = auVar74._0_4_;
      pfStack_960 = pfStack_964;
      pfStack_95c = pfStack_964;
      pfStack_958 = pfStack_964;
      pfStack_954 = pfStack_964;
      pfStack_420 = pfStack_964;
      ppfStack_734 = &pfStack_940;
      pfStack_90c = pfStack_93c;
      pfVar23 = extraout_EDX_11;
      auVar70._0_4_ = pfStack_7a8;
      pfVar37 = pfStack_758;
      pfVar71 = pfStack_708;
      pfVar8 = pfStack_6f8;
      pfVar9 = pfStack_230;
      fVar41 = fStack_22c;
      fVar73 = fStack_228;
      fVar87 = fStack_224;
      fVar89 = fStack_1b0;
      fVar91 = fStack_1ac;
      pfVar10 = pfStack_1a8;
      fVar93 = fStack_1a4;
      pfVar11 = pfStack_130;
      fVar100 = fStack_12c;
      fVar102 = fStack_128;
      fVar103 = fStack_124;
      fVar12 = fStack_e0;
      fVar13 = fStack_dc;
      pfVar14 = pfStack_d8;
      fVar15 = fStack_d4;
      if (fStack_520 < (float)pfStack_964) {
        fVar72 = fVar139 * fVar139 + fVar101 + fVar72;
        auVar129._4_4_ = fVar72;
        auVar129._0_4_ = fVar72;
        auVar129._8_4_ = fVar72;
        auVar129._12_4_ = fVar72;
        auVar74 = rsqrtps(auVar124,auVar129);
        fVar101 = auVar74._0_4_;
        fVar88 = auVar74._4_4_;
        fVar90 = auVar74._8_4_;
        fVar92 = auVar74._12_4_;
        fVar101 = ((float)DAT_00f998f8 - fVar101 * fVar101 * fVar72) * _DAT_00f9b5b4 * fVar101 +
                  fVar101;
        fVar88 = ((float)DAT_00f998f8 - fVar88 * fVar88 * fVar72) * _DAT_00f9b5b4 * fVar88 + fVar88;
        fVar90 = ((float)DAT_00f998f8 - fVar90 * fVar90 * fVar72) * _DAT_00f9b5b4 * fVar90 + fVar90;
        fVar92 = ((float)DAT_00f998f8 - fVar92 * fVar92 * fVar72) * _DAT_00f9b5b4 * fVar92 + fVar92;
        pfStack_880 = (float *)(fStack_910 -
                               (((float)DAT_00f998f8 - fVar101 * fVar101 * fVar72) *
                                _DAT_00f9b5b4 * fVar101 + fVar101) * fVar132 * (float)pfStack_964);
        pfStack_93c = (float *)((float)pfStack_93c -
                               (((float)DAT_00f998f8 - fVar88 * fVar88 * fVar72) *
                                _DAT_00f9b5b4 * fVar88 + fVar88) * fVar138 * (float)pfStack_964);
        pfStack_878 = (float *)(fStack_908 -
                               (((float)DAT_00f998f8 - fVar90 * fVar90 * fVar72) *
                                _DAT_00f9b5b4 * fVar90 + fVar90) * fVar139 * (float)pfStack_964);
        pfStack_934 = (float *)(fStack_904 -
                               (((float)DAT_00f998f8 - fVar92 * fVar92 * fVar72) *
                                _DAT_00f9b5b4 * fVar92 + fVar92) * (fStack_904 - (float)pfStack_934)
                               * (float)pfStack_964);
        fVar72 = *(float *)((int)pvVar1 + 0xb8) + _DAT_00fee3a8;
        uVar27 = (int)(fVar72 - (float)pfStack_808) >> 0x1f;
        fVar101 = *(float *)((int)pvVar1 + 0xb4) + _DAT_00fee3a8;
        pfVar32 = (float *)(~uVar27 & (uint)pfStack_808 | (uint)fVar72 & uVar27);
        uVar27 = (int)(fVar101 - (float)pfStack_810) >> 0x1f;
        fVar72 = *(float *)((int)pvVar1 + 0xc0) - _DAT_00fee3a8;
        pfVar33 = (float *)(~uVar27 & (uint)pfStack_810 | (uint)fVar101 & uVar27);
        auStack_920._4_4_ = pfStack_93c;
        auStack_920._0_4_ = pfStack_880;
        pfStack_918 = pfStack_878;
        pfStack_914 = pfStack_934;
        uVar27 = (int)(fVar72 - (float)pfStack_808) >> 0x1f;
        pfStack_960 = pfStack_810;
        pfStack_95c = pfStack_80c;
        pfStack_958 = pfStack_808;
        pfStack_954 = pfStack_804;
        fVar101 = *(float *)((int)pvVar1 + 0xbc) - _DAT_00fee3a8;
        pfVar34 = (float *)(~uVar27 & (uint)fVar72 | (uint)pfStack_808 & uVar27);
        uVar27 = (int)(fVar101 - (float)pfStack_810) >> 0x1f;
        pfVar35 = (float *)(~uVar27 & (uint)fVar101 | (uint)pfStack_810 & uVar27);
        pfStack_87c = pfStack_93c;
        pfStack_874 = pfStack_934;
        if ((float)pfStack_880 < (float)pfVar33) {
LAB_009779c1:
          pfStack_960 = (float *)(fStack_910 - (float)pfVar33);
          pfStack_95c = (float *)(fStack_910 - (float)pfVar33);
          pfStack_958 = (float *)(fStack_910 - (float)pfVar33);
          pfStack_954 = (float *)(fStack_910 - (float)pfVar33);
          pfStack_730 = &fStack_910;
          pfVar23 = pfStack_730;
          pfVar35 = pfVar33;
          pfStack_650 = pfVar33;
          pfStack_64c = pfStack_93c;
          pfStack_648 = pfStack_878;
          pfStack_644 = pfStack_934;
          pfStack_90 = pfStack_960;
          pfStack_8c = pfStack_95c;
          pfStack_88 = pfStack_958;
          pfStack_84 = pfStack_954;
        }
        else {
          pfVar23 = pfVar35;
          if ((float)pfStack_880 <= (float)pfVar35) {
            if ((float)pfStack_878 < (float)pfVar32) {
LAB_00977768:
              pfStack_960 = (float *)(fStack_908 - (float)pfVar32);
              pfStack_95c = (float *)(fStack_908 - (float)pfVar32);
              pfStack_958 = (float *)(fStack_908 - (float)pfVar32);
              pfStack_954 = (float *)(fStack_908 - (float)pfVar32);
              pfStack_70c = &fStack_910;
              pfVar23 = pfStack_70c;
              pfVar34 = pfVar32;
              pfStack_690 = pfStack_880;
              pfStack_68c = pfStack_93c;
              pfStack_688 = pfVar32;
              pfStack_684 = pfStack_934;
              pfStack_80 = pfStack_960;
              pfStack_7c = pfStack_95c;
              pfStack_78 = pfStack_958;
              pfStack_74 = pfStack_954;
            }
            else {
              pfStack_940 = pfStack_880;
              pfStack_938 = pfStack_878;
              if ((float)pfStack_878 <= (float)pfVar34) goto LAB_00977cb5;
              if ((float)pfStack_878 < (float)pfVar32) goto LAB_00977768;
              pfStack_960 = (float *)(fStack_908 - (float)pfVar34);
              pfStack_95c = (float *)(fStack_908 - (float)pfVar34);
              pfStack_958 = (float *)(fStack_908 - (float)pfVar34);
              pfStack_954 = (float *)(fStack_908 - (float)pfVar34);
              pfStack_72c = &fStack_910;
              pfStack_670 = pfStack_880;
              pfStack_66c = pfStack_93c;
              pfStack_668 = pfVar34;
              pfStack_664 = pfStack_934;
              pfStack_60 = pfStack_960;
              pfStack_5c = pfStack_95c;
              pfStack_58 = pfStack_958;
              pfStack_54 = pfStack_954;
            }
            pfStack_6d8 = &fStack_910;
            auVar116._4_4_ = fStack_910;
            auVar116._8_4_ = (float *)fStack_910;
            auVar116._12_4_ = fStack_910;
            fVar72 = SQRT((float)pfStack_964 * (float)pfStack_964 -
                          (float)pfStack_960 * (float)pfStack_960);
            pfStack_380 = (float *)(fStack_910 + fVar72);
            fStack_3c = fStack_910 + fVar72;
            fStack_38 = fStack_910 + fVar72;
            fStack_34 = fStack_910 + fVar72;
            pfStack_938 = pfVar34;
            pfStack_500 = pfVar35;
            pfStack_40 = pfStack_380;
            if ((float)pfStack_380 <= (float)pfVar35) {
              pfStack_4e0 = (float *)(fStack_910 - fVar72);
              fStack_2c = fStack_910 - fVar72;
              fStack_28 = fStack_910 - fVar72;
              fStack_24 = fStack_910 - fVar72;
              pfStack_760 = &fStack_910;
              pfStack_940 = pfStack_4e0;
              pfVar37 = pfStack_760;
              pfStack_400 = pfVar33;
              pfVar9 = pfStack_4e0;
              fVar41 = fStack_2c;
              fVar73 = fStack_28;
              fVar87 = fStack_24;
              pfStack_30 = pfStack_4e0;
              if ((float)pfVar33 <= (float)pfStack_4e0) {
                fStack_3a0 = fStack_910;
                pfVar23 = &fStack_910;
                pfStack_7b0 = pfVar23;
                auVar70._0_4_ = pfVar23;
                pfVar37 = pfStack_758;
                pfStack_4c0 = pfStack_880;
                pfVar9 = pfStack_230;
                fVar41 = fStack_22c;
                fVar73 = fStack_228;
                fVar87 = fStack_224;
                pfVar11 = pfStack_4e0;
                fVar100 = fStack_2c;
                fVar102 = fStack_28;
                fVar103 = fStack_24;
                if (fStack_910 <= (float)pfStack_880) {
                  pfStack_788 = &fStack_910;
                  pfStack_940 = pfStack_380;
                  auVar70._0_4_ = pfStack_7a8;
                  pfStack_210 = pfStack_380;
                  fStack_20c = fStack_3c;
                  fStack_208 = fStack_38;
                  fStack_204 = fStack_34;
                  pfVar11 = pfStack_130;
                  fVar100 = fStack_12c;
                  fVar102 = fStack_128;
                  fVar103 = fStack_124;
                }
              }
            }
            else {
              auVar116._0_4_ = (float *)(fStack_910 - fVar72);
              auVar116._4_4_ = fStack_910 - fVar72;
              auVar116._8_4_ = (float *)(fStack_910 - fVar72);
              auVar116._12_4_ = fStack_910 - fVar72;
              pfVar23 = pfStack_6d8;
              pfStack_940 = auVar116._0_4_;
              pfStack_784 = pfStack_6d8;
              auStack_20 = auVar116;
            }
            goto LAB_00977cb5;
          }
          if ((float)pfStack_880 < (float)pfVar33) goto LAB_009779c1;
          pfStack_960 = (float *)(fStack_910 - (float)pfVar35);
          pfStack_95c = (float *)(fStack_910 - (float)pfVar35);
          pfStack_958 = (float *)(fStack_910 - (float)pfVar35);
          pfStack_954 = (float *)(fStack_910 - (float)pfVar35);
          pfStack_728 = &fStack_910;
          pfStack_630 = pfVar35;
          pfStack_62c = pfStack_93c;
          pfStack_628 = pfStack_878;
          pfStack_624 = pfStack_934;
          pfStack_1f0 = pfStack_960;
          pfStack_1ec = pfStack_95c;
          pfStack_1e8 = pfStack_958;
          pfStack_1e4 = pfStack_954;
        }
        pfStack_720 = &fStack_910;
        auVar116._4_4_ = fStack_908;
        auVar116._0_4_ = (float *)fStack_908;
        auVar116._12_4_ = fStack_908;
        fVar72 = SQRT((float)pfStack_964 * (float)pfStack_964 -
                      (float)pfStack_960 * (float)pfStack_960);
        fStack_3e0 = fStack_908 + fVar72;
        fStack_10c = fStack_908 + fVar72;
        pfStack_108 = (float *)(fStack_908 + fVar72);
        fStack_104 = fStack_908 + fVar72;
        pfStack_940 = pfVar35;
        pfStack_4a0 = pfVar34;
        fStack_110 = fStack_3e0;
        if (fStack_3e0 <= (float)pfVar34) {
          fStack_480 = fStack_908 - fVar72;
          fStack_4c = fStack_908 - fVar72;
          pfStack_48 = (float *)(fStack_908 - fVar72);
          fStack_44 = fStack_908 - fVar72;
          pfStack_710 = &fStack_910;
          pfStack_938 = pfStack_48;
          pfVar71 = pfStack_710;
          pfStack_360 = pfVar32;
          fVar89 = fStack_480;
          fVar91 = fStack_4c;
          pfVar10 = pfStack_48;
          fVar93 = fStack_44;
          fStack_50 = fStack_480;
          if ((float)pfVar32 <= fStack_480) {
            fStack_450 = fStack_908;
            pfVar23 = &fStack_910;
            pfVar71 = pfStack_708;
            pfStack_700 = pfVar23;
            pfVar8 = pfVar23;
            pfStack_5c0 = pfStack_878;
            fVar89 = fStack_1b0;
            fVar91 = fStack_1ac;
            pfVar10 = pfStack_1a8;
            fVar93 = fStack_1a4;
            fVar12 = fStack_480;
            fVar13 = fStack_4c;
            pfVar14 = pfStack_48;
            fVar15 = fStack_44;
            if (fStack_908 <= (float)pfStack_878) {
              pfStack_6d4 = &fStack_910;
              pfStack_938 = pfStack_108;
              pfVar8 = pfStack_6f8;
              fStack_190 = fStack_3e0;
              fStack_18c = fStack_10c;
              pfStack_188 = pfStack_108;
              fStack_184 = fStack_104;
              fVar12 = fStack_e0;
              fVar13 = fStack_dc;
              pfVar14 = pfStack_d8;
              fVar15 = fStack_d4;
            }
          }
        }
        else {
          auVar116._0_4_ = (float *)(fStack_908 - fVar72);
          auVar116._4_4_ = fStack_908 - fVar72;
          auVar116._8_4_ = (float *)(fStack_908 - fVar72);
          auVar116._12_4_ = fStack_908 - fVar72;
          pfVar23 = pfStack_720;
          pfStack_938 = auVar116._8_4_;
          pfStack_718 = pfStack_720;
          auStack_1d0 = auVar116;
        }
      }
    }
  }
LAB_00977cb5:
  fStack_d4 = fVar15;
  pfStack_d8 = pfVar14;
  fStack_dc = fVar13;
  fStack_e0 = fVar12;
  fStack_124 = fVar103;
  fStack_128 = fVar102;
  fStack_12c = fVar100;
  pfStack_130 = pfVar11;
  fStack_1a4 = fVar93;
  pfStack_1a8 = pfVar10;
  fStack_1ac = fVar91;
  fStack_1b0 = fVar89;
  fStack_224 = fVar87;
  fStack_228 = fVar73;
  fStack_22c = fVar41;
  pfStack_230 = pfVar9;
  pfStack_6f8 = pfVar8;
  pfStack_708 = pfVar71;
  pfStack_758 = pfVar37;
  pfStack_7a8 = auVar70._0_4_;
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
  if ((bVar38) || (*(void **)((int)this + 0x3c) == (void *)0x0)) {
LAB_00977d69:
    *(float **)((int)this + 0x780) = pfStack_940;
    *(float **)((int)this + 0x784) = pfStack_93c;
    *(float **)((int)this + 0x788) = pfStack_938;
    *(float **)((int)this + 0x78c) = pfStack_934;
    if (!bVar38) {
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
    bVar39 = FUN_00c6ba00(*(void **)((int)this + 0x3c),(float)pfStack_940,(float)pfStack_938);
    pfVar23 = extraout_EDX_16;
    if (bVar39) goto LAB_00977d69;
  }
  auVar70._0_4_ = pfStack_944;
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
        auVar64._4_4_ = pfStack_7dc;
        auVar64._0_4_ = pfStack_7dc;
        auVar64._8_4_ = pfStack_7dc;
        auVar64._12_4_ = pfStack_7dc;
        auVar85._0_4_ = local_8a0 * (float)pfStack_7dc;
        auVar85._4_4_ = fStack_89c * (float)pfStack_7dc;
        auVar85._8_4_ = fStack_898 * (float)pfStack_7dc;
        auVar85._12_4_ = fStack_894 * (float)pfStack_7dc;
        auVar74 = maxps(auVar85,auVar64);
        auVar86._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
        auVar86._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
        auVar86._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
        auVar86._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
        ppfStack_7a4 = &pfStack_7e0;
        iVar28 = movmskps(pfVar23,auVar86);
        if (iVar28 != 0xf) {
          *(undefined4 *)((int)this + 2000) = *(undefined4 *)((int)this + 2000);
          *(float *)((int)this + 0x7d4) = *(float *)((int)this + 0x7d4) - (float)pfStack_7dc;
          *(undefined4 *)((int)this + 0x7d8) = *(undefined4 *)((int)this + 0x7d8);
          *(undefined4 *)((int)this + 0x7dc) = *(undefined4 *)((int)this + 0x7dc);
          ppfStack_748 = ppfStack_7a4;
        }
      }
      if (iVar30 == 0xf) goto LAB_00977f54;
    }
    else {
      puVar29 = (undefined4 *)(**(code **)(*(int *)((int)this + 0x6b0) + 0x30))(auStack_150);
      uVar20 = puVar29[1];
      uVar24 = puVar29[2];
      uVar25 = puVar29[3];
      *(undefined4 *)((int)this + 2000) = *puVar29;
      *(undefined4 *)((int)this + 0x7d4) = uVar20;
      *(undefined4 *)((int)this + 0x7d8) = uVar24;
      *(undefined4 *)((int)this + 0x7dc) = uVar25;
    }
LAB_00977f4d:
    *(undefined1 *)((int)this + 0x808) = 0;
  }
  else {
    pfVar23 = (float *)(**(code **)((int)*pfStack_944 + 0x1c))(auStack_70);
    auVar70._0_4_ = (float *)(**(code **)((int)*auVar70._0_4_ + 0x20))();
    auStack_610._0_4_ = *auVar70._0_4_ - *pfVar23;
    auStack_610._4_4_ = auVar70._0_4_[1] - pfVar23[1];
    fStack_608 = auVar70._0_4_[2] - pfVar23[2];
    fStack_604 = auVar70._0_4_[3] - pfVar23[3];
    auVar62._0_4_ = local_8a0 * (float)auStack_610._0_4_;
    auVar62._4_4_ = fStack_89c * (float)auStack_610._4_4_;
    auVar62._8_4_ = fStack_898 * fStack_608;
    auVar62._12_4_ = fStack_894 * fStack_604;
    auVar74 = maxps(auVar62,_auStack_610);
    auVar63._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
    auVar63._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
    auVar63._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
    auVar63._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
    uVar20 = movmskps(auVar70._0_4_,auVar63);
    if (((byte)uVar20 & 7) != 7) {
      fVar41 = fStack_608 * fStack_608 + (float)auStack_610._4_4_ * (float)auStack_610._4_4_ +
               (float)auStack_610._0_4_ * (float)auStack_610._0_4_;
      auVar130._4_4_ = fVar41;
      auVar130._0_4_ = fVar41;
      auVar130._8_4_ = fVar41;
      auVar130._12_4_ = fVar41;
      auVar74 = rsqrtps(auVar116,auVar130);
      fVar72 = auVar74._0_4_;
      fVar73 = auVar74._4_4_;
      fVar87 = auVar74._8_4_;
      fVar89 = auVar74._12_4_;
      fVar72 = ((float)DAT_00f998f8 - fVar72 * fVar72 * fVar41) * _DAT_00f9b5b4 * fVar72 + fVar72;
      fVar73 = ((float)DAT_00f998f8 - fVar73 * fVar73 * fVar41) * _DAT_00f9b5b4 * fVar73 + fVar73;
      fVar87 = ((float)DAT_00f998f8 - fVar87 * fVar87 * fVar41) * _DAT_00f9b5b4 * fVar87 + fVar87;
      fVar89 = ((float)DAT_00f998f8 - fVar89 * fVar89 * fVar41) * _DAT_00f9b5b4 * fVar89 + fVar89;
      auStack_610._4_4_ =
           (((float)DAT_00f998f8 - fVar73 * fVar73 * fVar41) * _DAT_00f9b5b4 * fVar73 + fVar73) *
           (float)auStack_610._4_4_;
      auStack_610._0_4_ =
           (((float)DAT_00f998f8 - fVar72 * fVar72 * fVar41) * _DAT_00f9b5b4 * fVar72 + fVar72) *
           (float)auStack_610._0_4_;
      fStack_608 = (((float)DAT_00f998f8 - fVar87 * fVar87 * fVar41) * _DAT_00f9b5b4 * fVar87 +
                   fVar87) * fStack_608;
      fStack_604 = (((float)DAT_00f998f8 - fVar89 * fVar89 * fVar41) * _DAT_00f9b5b4 * fVar89 +
                   fVar89) * fStack_604;
      puVar29 = (undefined4 *)FUN_0097d710(afStack_b0,(float *)auStack_610);
      uVar20 = puVar29[1];
      uVar24 = puVar29[2];
      uVar25 = puVar29[3];
      *(undefined4 *)((int)this + 2000) = *puVar29;
      *(undefined4 *)((int)this + 0x7d4) = uVar20;
      *(undefined4 *)((int)this + 0x7d8) = uVar24;
      *(undefined4 *)((int)this + 0x7dc) = uVar25;
      goto LAB_00977f4d;
    }
  }
LAB_00977f54:
  pauVar36 = (undefined1 (*) [16])((int)this + 2000);
  MainCamera_EvaluatePitchLimitsAtZoom(this,&fStack_834,&fStack_838,&local_924,fStack_96c);
  uVar20 = *(undefined4 *)((int)this + 0x7d4);
  uVar24 = *(undefined4 *)((int)this + 0x7d8);
  uVar25 = *(undefined4 *)((int)this + 0x7dc);
  uVar27 = (int)(fStack_834 - *(float *)*pauVar36) >> 0x1f;
  fVar41 = (float)(~uVar27 & (uint)fStack_834 | (uint)*(float *)*pauVar36 & uVar27);
  fVar72 = fStack_838 - fVar41;
  auVar74 = ZEXT416((uint)fVar72);
  uVar27 = (int)fVar72 >> 0x1f;
                    /* These shuffles replace pitch lane0 with zoom-dependent clamped pitch. Yaw
                       lane1 is preserved. */
  *(uint *)*pauVar36 = ~uVar27 & (uint)fVar41 | (uint)fStack_838 & uVar27;
  *(undefined4 *)((int)this + 0x7d4) = uVar20;
  *(undefined4 *)((int)this + 0x7d8) = uVar24;
  *(undefined4 *)((int)this + 0x7dc) = uVar25;
  if ((((iVar19 != 0xf) && (iVar30 == 0xf)) || (*(char *)((int)this + 0x95c) == '\0')) ||
     (*(char *)((int)this + 0x810) != '\0')) {
    if (*(char *)((int)this + 0x809) != '\0') {
      *(undefined1 *)((int)this + 0x809) = 0;
      *(undefined1 *)((int)this + 0x810) = 1;
      *(undefined4 *)((int)this + 0x814) = 0;
    }
    if (*(char *)((int)this + 0x808) == '\0') {
      fStack_530 = *(float *)*pauVar36;
      fStack_510 = local_924;
      pauStack_740 = pauVar36;
      if (local_924 < fStack_530) goto LAB_00978151;
    }
    else {
LAB_00978151:
      uVar20 = *(undefined4 *)((int)this + 0x7d4);
      uVar24 = *(undefined4 *)((int)this + 0x7d8);
      uVar25 = *(undefined4 *)((int)this + 0x7dc);
      *(float *)*pauVar36 = local_924;
      *(undefined4 *)((int)this + 0x7d4) = uVar20;
      *(undefined4 *)((int)this + 0x7d8) = uVar24;
      *(undefined4 *)((int)this + 0x7dc) = uVar25;
    }
    fVar41 = *(float *)*pauVar36;
    auStack_240._0_4_ = fVar41 - local_924;
    auStack_240._4_4_ = fVar41 - local_924;
    auStack_240._8_4_ = fVar41 - local_924;
    auStack_240._12_4_ = fVar41 - local_924;
    auVar65._0_4_ = local_8a0 * auStack_240._0_4_;
    auVar65._4_4_ = fStack_89c * auStack_240._4_4_;
    auVar65._8_4_ = fStack_898 * auStack_240._8_4_;
    auVar65._12_4_ = fStack_894 * auStack_240._12_4_;
    auVar111 = maxps(auVar65,auStack_240);
    auVar66._4_4_ = -(uint)(auVar111._4_4_ <= _DAT_00fb35b4);
    auVar66._0_4_ = -(uint)(auVar111._0_4_ <= _DAT_00fb35b4);
    auVar66._8_4_ = -(uint)(auVar111._8_4_ <= _DAT_00fb35b4);
    auVar66._12_4_ = -(uint)(auVar111._12_4_ <= _DAT_00fb35b4);
    iVar19 = movmskps(uVar27,auVar66);
    *(bool *)((int)this + 0x808) = iVar19 == 0xf;
    pauStack_7b4 = pauVar36;
    pauStack_738 = pauVar36;
  }
  else {
    fStack_244 = *(float *)*pauVar36;
    fStack_570 = fStack_244 - local_924;
    fStack_24c = fStack_244 - local_924;
    fStack_248 = fStack_244 - local_924;
    fStack_244 = fStack_244 - local_924;
    fStack_550 = _DAT_00fb35b4;
    pauStack_78c = pauVar36;
    fStack_250 = fStack_570;
    if (fStack_570 <= _DAT_00fb35b4) {
      *(undefined1 *)((int)this + 0x809) = 0;
    }
    else {
      *(undefined1 *)((int)this + 0x809) = 1;
      *(undefined4 *)((int)this + 0x80c) = *(undefined4 *)*pauVar36;
      uVar20 = *(undefined4 *)((int)this + 0x7d4);
      uVar24 = *(undefined4 *)((int)this + 0x7d8);
      uVar25 = *(undefined4 *)((int)this + 0x7dc);
      *(float *)*pauVar36 = local_924;
      *(undefined4 *)((int)this + 0x7d4) = uVar20;
      *(undefined4 *)((int)this + 0x7d8) = uVar24;
      *(undefined4 *)((int)this + 0x7dc) = uVar25;
    }
  }
  fStack_4d0 = *(float *)((int)this + 0x7d4);
  fStack_4f0 = DAT_010f4ccc;
  if (fStack_4d0 < DAT_010f4ccc) {
    uVar20 = *(undefined4 *)((int)this + 0x7d8);
    uVar24 = *(undefined4 *)((int)this + 0x7dc);
    fVar41 = *(float *)((int)this + 0x7d4) + DAT_01046cbc;
    *(undefined4 *)*pauVar36 = *(undefined4 *)*pauVar36;
    *(float *)((int)this + 0x7d4) = fVar41;
    *(undefined4 *)((int)this + 0x7d8) = uVar20;
    *(undefined4 *)((int)this + 0x7dc) = uVar24;
  }
  fStack_4b0 = *(float *)((int)this + 0x7d4);
  fStack_490 = DAT_01046cbc;
  if (DAT_01046cbc <= fStack_4b0) {
    uVar20 = *(undefined4 *)((int)this + 0x7d8);
    uVar24 = *(undefined4 *)((int)this + 0x7dc);
    fVar41 = *(float *)((int)this + 0x7d4) - DAT_01046cbc;
    *(undefined4 *)*pauVar36 = *(undefined4 *)*pauVar36;
    *(float *)((int)this + 0x7d4) = fVar41;
    *(undefined4 *)((int)this + 0x7d8) = uVar20;
    *(undefined4 *)((int)this + 0x7dc) = uVar24;
  }
  pfStack_960 = *(float **)*pauVar36;
  pfStack_95c = *(float **)((int)this + 0x7d4);
  pfStack_958 = *(float **)((int)this + 0x7d8);
  pfStack_954 = *(float **)((int)this + 0x7dc);
  auStack_920._0_4_ = SUB124(*(undefined1 (*) [12])*pauVar36,0);
  uVar20 = auStack_920._0_4_;
  _auStack_920 = *pauVar36;
  pauStack_75c = pauVar36;
  pauStack_724 = pauVar36;
  GameplayCamera_DirectionFromPitchYaw((float *)local_820,(float)uVar20,(float)pfStack_95c);
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
  piVar21 = (int *)0x0;
  uVar140 = FUN_00c5f560(*(int *)((int)this + 0x3c));
  piVar21 = FUN_00c62810(*(void **)((int)this + 0x3c),(int)uVar140,(int)((ulonglong)uVar140 >> 0x20)
                         ,piVar21);
  if (piVar21 == (int *)0x0) {
    cVar17 = '\0';
  }
  else {
    cVar17 = (char)piVar21[0xd6];
  }
  if (((((*(char *)((int)this + 0x8b1) != '\0') || (*(char *)((int)this + 0x8b2) != '\0')) ||
       ((*(char *)((int)this + 0x8b4) != '\0' ||
        ((*(char *)((int)this + 0x8b3) != '\0' || (*(char *)((int)this + 0x8b6) != '\0')))))) ||
      (cVar17 != '\0')) || (fStack_974._0_1_ = '\x01', *(char *)((int)this + 0x819) != '\0')) {
    fStack_974._0_1_ = '\0';
  }
                    /* Ground-follow preparation call 00972CD0 executes after earlier map/follow
                       blocks. The returned x87 float is stored at stack +20; subsequent main-frame
                       code performs four offset samples and descent damping. This helper is not the
                       owner of the 2m/.4 constants. */
  fVar40 = FUN_00972cd0(this,(float *)&pfStack_7a0,&fStack_620,fStack_974._0_1_);
  fVar41 = (float)fVar40;
  bVar39 = false;
  bVar38 = false;
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
    fVar72 = fStack_818 * fStack_818 + 0.0 + (float)local_820._0_4_ * (float)local_820._0_4_;
    auVar131._4_4_ = fVar72;
    auVar131._0_4_ = fVar72;
    auVar131._8_4_ = fVar72;
    auVar131._12_4_ = fVar72;
    auVar74 = rsqrtps(auVar74,auVar131);
    fVar73 = auVar74._0_4_;
    fVar87 = auVar74._4_4_;
    fVar89 = auVar74._8_4_;
    fVar91 = auVar74._12_4_;
    fVar73 = ((float)DAT_00f998f8 - fVar73 * fVar73 * fVar72) * _DAT_00f9b5b4 * fVar73 + fVar73;
    fVar87 = ((float)DAT_00f998f8 - fVar87 * fVar87 * fVar72) * _DAT_00f9b5b4 * fVar87 + fVar87;
    fVar89 = ((float)DAT_00f998f8 - fVar89 * fVar89 * fVar72) * _DAT_00f9b5b4 * fVar89 + fVar89;
    fVar91 = ((float)DAT_00f998f8 - fVar91 * fVar91 * fVar72) * _DAT_00f9b5b4 * fVar91 + fVar91;
    pfStack_960 = (float *)((((float)DAT_00f998f8 - fVar73 * fVar73 * fVar72) *
                             _DAT_00f9b5b4 * fVar73 + fVar73) * (float)local_820._0_4_);
    pfStack_95c = (float *)((((float)DAT_00f998f8 - fVar87 * fVar87 * fVar72) *
                             _DAT_00f9b5b4 * fVar87 + fVar87) * 0.0);
    pfStack_958 = (float *)((((float)DAT_00f998f8 - fVar89 * fVar89 * fVar72) *
                             _DAT_00f9b5b4 * fVar89 + fVar89) * fStack_818);
    pfStack_954 = (float *)((((float)DAT_00f998f8 - fVar91 * fVar91 * fVar72) *
                             _DAT_00f9b5b4 * fVar91 + fVar91) * (float)local_820._0_4_);
    auStack_920._4_4_ = pfStack_95c;
    auStack_920._0_4_ = pfStack_960;
                    /* Read [0103FD88] = 2.0f from original PE bytes. Normalized horizontal
                       direction and its perpendicular are multiplied by 2 and added/subtracted from
                       eye +770: eye +/-2*forward and eye +/-2*perpendicular. Loop count 4 at
                       0097856D; ground query 00971480 at 0097857C; loop back at 009785FB. */
    pfStack_918 = pfStack_958;
    pfStack_914 = pfStack_954;
    fStack_8c8 = DAT_00f998f0 - (float)pfStack_960;
    fStack_270 = *pfStack_864;
    fStack_26c = *(float *)((int)this + 0x774);
    fStack_268 = *(float *)((int)this + 0x778);
    fStack_264 = *(float *)((int)this + 0x77c);
    fStack_2a0 = fStack_270 + DAT_0103fd88 * (float)pfStack_960;
    fStack_29c = fStack_26c + DAT_0103fd88 * (float)pfStack_95c;
    fStack_298 = fStack_268 + DAT_0103fd88 * (float)pfStack_958;
    fStack_294 = fStack_264 + DAT_0103fd88 * (float)pfStack_954;
    fStack_8cc = 0.0;
    fStack_290 = fStack_270 - DAT_0103fd88 * (float)pfStack_960;
    fStack_28c = fStack_26c - DAT_0103fd88 * (float)pfStack_95c;
    fStack_288 = fStack_268 - DAT_0103fd88 * (float)pfStack_958;
    fStack_284 = fStack_264 - DAT_0103fd88 * (float)pfStack_954;
    fStack_280 = fStack_270 + DAT_0103fd88 * (float)pfStack_958;
    fStack_27c = fStack_26c + DAT_0103fd88 * 0.0;
    fStack_278 = fStack_268 + DAT_0103fd88 * fStack_8c8;
    fStack_274 = fStack_264 + DAT_0103fd88 * (float)pfStack_958;
    fStack_270 = fStack_270 - DAT_0103fd88 * (float)pfStack_958;
    fStack_26c = fStack_26c - DAT_0103fd88 * 0.0;
    fStack_268 = fStack_268 - DAT_0103fd88 * fStack_8c8;
    fStack_264 = fStack_264 - DAT_0103fd88 * (float)pfStack_958;
    pfVar23 = &fStack_2a0;
    iVar19 = 4;
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
      GameplayCamera_QueryGroundHeight(this,pfVar23,'\0',(float *)&cStack_965);
      pfStack_960 = (float *)*pfStack_864;
      pfStack_95c = (float *)pfStack_864[1];
      pfStack_958 = (float *)pfStack_864[2];
      pfStack_954 = (float *)pfStack_864[3];
      pfVar23 = pfVar23 + 4;
      pfStack_964 = (float *)(float)((extraout_ST0 + (float10)*(float *)((int)this + 0x8f8)) -
                                    (float10)(float)pfStack_95c);
      auStack_920._4_4_ = pfStack_964;
      auStack_920._0_4_ = pfStack_964;
      pfStack_918 = pfStack_964;
      pfStack_914 = pfStack_964;
      uVar27 = (int)((float)pfStack_944 - (float)pfStack_964) >> 0x1f;
      pfStack_944 = (float *)(~uVar27 & (uint)pfStack_944 | (uint)pfStack_964 & uVar27);
      iVar19 = iVar19 + -1;
      pfStack_1e0 = pfStack_964;
      pfStack_1dc = pfStack_964;
      pfStack_1d8 = pfStack_964;
      pfStack_1d4 = pfStack_964;
    } while (iVar19 != 0);
    pfStack_754 = (float *)((int)this + 0x7b0);
    fVar72 = *(float *)((int)this + 0x7b4);
    pfStack_1c0 = (float *)(fVar72 - (float)pfStack_87c);
    pfStack_1bc = (float *)(fVar72 - (float)pfStack_87c);
    pfStack_1b8 = (float *)(fVar72 - (float)pfStack_87c);
    pfStack_1b4 = (float *)(fVar72 - (float)pfStack_87c);
    auVar70._0_4_ = (float *)0x0;
    pfVar23 = (float *)((int)this + 0x780);
    if (0.0 <= (float)pfStack_1c0) {
      fStack_7d0 = *pfStack_754 - *pfVar23;
      fStack_7c8 = *(float *)((int)this + 0x7b8) - *(float *)((int)this + 0x788);
      fStack_7c4 = *(float *)((int)this + 0x7bc) - *(float *)((int)this + 0x78c);
      fStack_7cc = 0.0;
      fVar72 = fStack_7d0 * fStack_7d0;
      auVar7._4_4_ = fVar72;
      auVar7._0_4_ = fVar72;
      auVar7._8_4_ = fVar72;
      auVar7._12_4_ = 0;
      auVar67._0_4_ = fStack_7c8 * fStack_7c8 + 0.0 + fVar72;
      auVar67._4_4_ = auVar67._0_4_;
      auVar67._8_4_ = auVar67._0_4_;
      auVar67._12_4_ = auVar67._0_4_;
                    /* Descent gate: sqrt(horizontal reference-target distance squared) divided by
                       vertical drop, then multiplied by 1/[0117EFA4], whose original float value is
                       0.4f. If scaled ratio <1 (horizontal travel <.4*drop), 009786E7 selects 0 to
                       hold downward movement; otherwise the candidate proceeds. Reference/target
                       field names are analyst interpretation; instructions determine comparisons.
                        */
      auVar74 = sqrtps(auVar7 << 0x20,auVar67);
      fVar72 = (float)DAT_00f998f8 / (float)pfStack_1c0;
      fVar73 = (float)DAT_00f998f8 / _DAT_0117efa4;
      pfStack_960 = (float *)(auVar74._0_4_ * fVar72 * fVar73);
      pfStack_95c = (float *)(auVar74._4_4_ * fVar72 * fVar73);
      pfStack_958 = (float *)(auVar74._8_4_ * fVar72 * fVar73);
      pfStack_954 = (float *)(auVar74._12_4_ * fVar72 * fVar73);
      if ((float)DAT_00f998f8 <= (float)pfStack_960) {
        *pfStack_754 = *pfVar23;
        *(undefined4 *)((int)this + 0x7b4) = *(undefined4 *)((int)this + 0x784);
        *(float *)((int)this + 0x7b8) = *(float *)((int)this + 0x788);
        *(float *)((int)this + 0x7bc) = *(float *)((int)this + 0x78c);
        auVar70._0_4_ = (float *)*pfStack_754;
        pfVar37 = *(float **)((int)this + 0x7b8);
        pfVar71 = *(float **)((int)this + 0x7bc);
        pfStack_82c = pfStack_87c;
        pfStack_830 = auVar70._0_4_;
        pfStack_828 = pfVar37;
        pfStack_824 = pfVar71;
        goto LAB_0097870b;
      }
    }
    else {
      *pfStack_754 = *pfVar23;
      *(undefined4 *)((int)this + 0x7b4) = *(undefined4 *)((int)this + 0x784);
      *(undefined4 *)((int)this + 0x7b8) = *(undefined4 *)((int)this + 0x788);
      *(undefined4 *)((int)this + 0x7bc) = *(undefined4 *)((int)this + 0x78c);
      auVar70._0_4_ = (float *)*pfStack_754;
      pfVar37 = *(float **)((int)this + 0x7b8);
      pfVar71 = *(float **)((int)this + 0x7bc);
      pfStack_63c = pfStack_87c;
      pfStack_960 = pfStack_1c0;
      pfStack_95c = pfStack_1bc;
      pfStack_958 = pfStack_1b8;
      pfStack_954 = pfStack_1b4;
      pfStack_640 = auVar70._0_4_;
      pfStack_638 = pfVar37;
      pfStack_634 = pfVar71;
LAB_0097870b:
      *pfStack_754 = (float)auVar70._0_4_;
      *(float **)((int)this + 0x7b4) = pfStack_87c;
      *(float **)((int)this + 0x7b8) = pfVar37;
      *(float **)((int)this + 0x7bc) = pfVar71;
      auVar70._0_4_ = pfStack_944;
    }
    if (fStack_974._0_1_ == '\0') {
LAB_0097884d:
      bVar39 = true;
    }
    else {
      auVar68._0_4_ = (float)pfStack_810 - (float)pfStack_940;
      auVar68._4_4_ = (float)pfStack_80c - (float)pfStack_93c;
      auVar68._8_4_ = (float)pfStack_808 - (float)pfStack_938;
      auVar68._12_4_ = (float)pfStack_804 - (float)pfStack_934;
      auVar125._0_4_ = auVar68._0_4_ * local_8a0;
      auVar125._4_4_ = auVar68._4_4_ * fStack_89c;
      auVar125._8_4_ = auVar68._8_4_ * fStack_898;
      auVar125._12_4_ = auVar68._12_4_ * fStack_894;
      auVar74 = maxps(auVar125,auVar68);
      auVar126._4_4_ = -(uint)(auVar74._4_4_ <= DAT_01046cac);
      auVar126._0_4_ = -(uint)(auVar74._0_4_ <= DAT_01046cac);
      auVar126._8_4_ = -(uint)(auVar74._8_4_ <= DAT_01046cac);
      auVar126._12_4_ = -(uint)(auVar74._12_4_ <= DAT_01046cac);
      uVar27 = movmskps(pfStack_754,auVar126);
      if ((char)(uVar27 & 7) != '\a') goto LAB_0097884d;
      auVar69._4_4_ = auVar70._0_4_;
      auVar69._0_4_ = auVar70._0_4_;
      auVar69._8_4_ = auVar70._0_4_;
      auVar69._12_4_ = auVar70._0_4_;
      auVar134._0_4_ = (float)auVar70._0_4_ * local_8a0;
      auVar134._4_4_ = (float)auVar70._0_4_ * fStack_89c;
      auVar134._8_4_ = (float)auVar70._0_4_ * fStack_898;
      auVar134._12_4_ = (float)auVar70._0_4_ * fStack_894;
      auVar74 = maxps(auVar134,auVar69);
      auVar135._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
      auVar135._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
      auVar135._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
      auVar135._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
      iVar19 = movmskps(uVar27 & 7,auVar135);
      if (iVar19 == 0xf) {
        uVar27 = (int)(*(float *)((int)this + 0x7c0) - (float)pfStack_87c) >> 0x1f;
        pfVar37 = (float *)(~uVar27 & (uint)*(float *)((int)this + 0x7c0) |
                           (uint)pfStack_87c & uVar27);
        auVar70._0_4_ = (float *)((float)pfVar37 - *(float *)((int)this + 0x784));
        auVar70._4_4_ = auVar70._0_4_;
        auVar70._8_4_ = auVar70._0_4_;
        auVar70._12_4_ = auVar70._0_4_;
        auVar136._0_4_ = (float)auVar70._0_4_ * local_8a0;
        auVar136._4_4_ = (float)auVar70._0_4_ * fStack_89c;
        auVar136._8_4_ = (float)auVar70._0_4_ * fStack_898;
        auVar136._12_4_ = (float)auVar70._0_4_ * fStack_894;
        auVar74 = maxps(auVar136,auVar70);
        auVar137._4_4_ = -(uint)(auVar74._4_4_ <= fStack_84c);
        auVar137._0_4_ = -(uint)(auVar74._0_4_ <= local_850);
        auVar137._8_4_ = -(uint)(auVar74._8_4_ <= fStack_848);
        auVar137._12_4_ = -(uint)(auVar74._12_4_ <= fStack_844);
        iVar19 = movmskps(pfVar23,auVar137);
        pfStack_960 = auVar70._0_4_;
        pfStack_95c = auVar70._0_4_;
        pfStack_958 = auVar70._0_4_;
        pfStack_954 = auVar70._0_4_;
        pfStack_71c = pfVar23;
        pfStack_1a0 = auVar70._0_4_;
        pfStack_19c = auVar70._0_4_;
        pfStack_198 = auVar70._0_4_;
        pfStack_194 = auVar70._0_4_;
        if (iVar19 != 0xf) {
          *pfStack_754 = *pfVar23;
          *(undefined4 *)((int)this + 0x7b4) = *(undefined4 *)((int)this + 0x784);
          *(undefined4 *)((int)this + 0x7b8) = *(undefined4 *)((int)this + 0x788);
          *(undefined4 *)((int)this + 0x7bc) = *(undefined4 *)((int)this + 0x78c);
          pfStack_8e0 = (float *)*pfStack_754;
          pfStack_8d8 = *(float **)((int)this + 0x7b8);
          pfStack_8d4 = *(float **)((int)this + 0x7bc);
          *pfStack_754 = (float)pfStack_8e0;
          *(float **)((int)this + 0x7b4) = pfVar37;
          *(float **)((int)this + 0x7b8) = pfStack_8d8;
          *(float **)((int)this + 0x7bc) = pfStack_8d4;
          pfStack_8dc = pfVar37;
        }
      }
      else if ((float)auVar70._0_4_ < 0.0) {
        bVar38 = true;
      }
    }
    fVar72 = DAT_00f998f0;
    if ((*(char *)((int)this + 0x809) == '\0') || (0.0 < (float)auVar70._0_4_)) {
      if (_DAT_0104487c <= deltaSeconds) goto LAB_0097895a;
      if (*(char *)((int)this + 0x818) == '\0') {
        fVar73 = *(float *)((int)this + 0x97c);
        fVar87 = *(float *)((int)this + 0x984);
      }
      else {
        fVar73 = *(float *)((int)this + 0x988);
        fVar87 = *(float *)((int)this + 0x98c);
      }
      fVar89 = *(float *)((int)this + 0x980);
      fVar87 = (DAT_00f998f0 - fVar87 * *(float *)((int)this + 0x804)) +
               fVar73 * (float)auVar70._0_4_;
      fVar73 = fVar87 * deltaSeconds + *(float *)((int)this + 0x804);
      bVar5 = false;
      *(float *)((int)this + 0x804) = fVar73;
      if (ABS(fVar73) < fVar89) {
        if (0.0 <= fVar87) {
          if ((fVar73 <= 0.0) && ((float)auVar70._0_4_ < 0.0)) {
            fVar89 = fVar72 - fVar89;
            goto LAB_0097891a;
          }
        }
        else if ((0.0 <= fVar73) && (0.0 < (float)auVar70._0_4_)) {
LAB_0097891a:
          *(float *)((int)this + 0x804) = fVar89;
          bVar5 = true;
        }
      }
      pfVar37 = (float *)(*(float *)((int)this + 0x804) * deltaSeconds);
      if (bVar5) {
        if (0.0 <= (float)pfVar37) {
          if ((float)auVar70._0_4_ <= (float)pfVar37) goto LAB_0097895a;
        }
        else if ((float)pfVar37 <= (float)auVar70._0_4_) {
LAB_0097895a:
          *(undefined4 *)((int)this + 0x804) = 0;
          pfVar37 = auVar70._0_4_;
        }
      }
      *(undefined4 *)((int)this + 0x770) = *(undefined4 *)((int)this + 0x770);
      *(float *)((int)this + 0x774) = (float)pfVar37 + *(float *)((int)this + 0x774);
      *(undefined4 *)((int)this + 0x778) = *(undefined4 *)((int)this + 0x778);
      *(undefined4 *)((int)this + 0x77c) = *(undefined4 *)((int)this + 0x77c);
      *pfVar23 = *pfVar23;
      *(float *)((int)this + 0x784) = (float)pfVar37 + *(float *)((int)this + 0x784);
      *(undefined4 *)((int)this + 0x788) = *(undefined4 *)((int)this + 0x788);
      *(undefined4 *)((int)this + 0x78c) = *(undefined4 *)((int)this + 0x78c);
    }
    fStack_6f0 = *(float *)((int)this + 0x774);
    puStack_74c = (undefined4 *)((int)this + 0x770);
    if (fStack_6f0 < fVar41) {
      pfStack_960 = (float *)(fVar41 - *(float *)((int)this + 0x774));
      *puStack_74c = *puStack_74c;
      *(float *)((int)this + 0x774) = (float)pfStack_960 + *(float *)((int)this + 0x774);
      *(undefined4 *)((int)this + 0x778) = *(undefined4 *)((int)this + 0x778);
      *(undefined4 *)((int)this + 0x77c) = *(undefined4 *)((int)this + 0x77c);
      *pfVar23 = *pfVar23;
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
    fStack_470 = fVar41;
    if (bVar38) {
      fStack_3f0 = *(float *)((int)this + 0x7c0);
      fStack_7f0 = *(float *)((int)this + 0x784);
      pfStack_744 = pfVar23;
      if (fStack_7f0 < fStack_3f0) {
LAB_00978adb:
        fStack_7f0 = *pfVar23;
        uVar20 = *(undefined4 *)((int)this + 0x784);
        uStack_7e8 = *(undefined4 *)((int)this + 0x788);
        uStack_7e4 = *(undefined4 *)((int)this + 0x78c);
        uStack_7ec = uVar20;
        goto LAB_00978aef;
      }
    }
    else if (bVar39) goto LAB_00978adb;
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
    uVar20 = *(undefined4 *)((int)this + 0x784);
    uStack_6e8 = *(undefined4 *)((int)this + 0x788);
    uStack_6e4 = *(undefined4 *)((int)this + 0x78c);
    uStack_6ec = uVar20;
LAB_00978aef:
    *(undefined4 *)((int)this + 0x7c0) = uVar20;
  }
  pfVar23 = (float *)local_820;
LAB_00978b07:
                    /* Commit eye/target/orientation to camera object after ground and pitch
                       processing. Camera sky/base transition operates on pitch; ordinary MMB yaw is
                       not tracked towards a separate intent here. */
  GameplayCamera_CommitFramePose(this,deltaSeconds,pfVar23,fStack_96c);
  return;
}

