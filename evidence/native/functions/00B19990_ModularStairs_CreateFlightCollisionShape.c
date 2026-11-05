/* Genuine /TS3W.exe C export; current function identifiers verified against the retained f915 names.
   Earlier body/ABI/variable qualifications remain; no runtime or whole-entry acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst note (PC1.67 stair collision and renderer contract): ECX manager; RET18 six stack slots:
   UInt32 flight ID, descriptor pointer (unused physical slot), direction32, top/bottom LotXZLevel
   pointers, signed selected level. Allocates named Lot/ModularStairsGeometry/ShearedBoxShape (0x80
   bytes), derives oriented/sheared collision shape from floor heights, registers with collision
   service and flight identity. No evidence of frontend Probable/VisualProxy tiers or endpoint
   tolerance.
   
   Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): Verified statically
   resolved virtual destination at B1A223: B19F71 installs vtable00FF0D48 on allocated
   ShearedBoxShape in ESI. B1A20A MOV EDX,[ESI], B1A20C MOV EDX,[EDX+0C], no intervening EDX
   assignment, then CALL EDX. Necessary original DWORD at FF0D54 is00682B50. This is a resolved
   virtual edge, not a relative immediate CALL; function-call indexes may include such statically
   resolved indirect destinations. Existing ABI/annotations remain. */

void __thiscall
ModularStairs_CreateFlightCollisionShape
          (void *this,uint flightId,void *descriptor,int direction,LotXZLevel *top,
          LotXZLevel *bottom,int selectedLevel)

{
  code *pcVar1;
  int iVar2;
  undefined1 auVar3 [16];
  float fVar4;
  float fVar5;
  float fVar6;
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
  uint uVar17;
  uint uVar18;
  float *pfVar19;
  int *this_00;
  int iVar20;
  int iVar21;
  float fVar22;
  float fVar23;
  float10 fVar24;
  float10 fVar25;
  float fVar26;
  float fVar28;
  undefined1 auVar27 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  undefined4 uStack_228;
  float local_224;
  float local_220;
  float local_218;
  float local_214;
  float local_210;
  float local_20c;
  void *local_208;
  float local_204;
  float local_200;
  int *local_1fc;
  float local_1f8;
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
  undefined4 uStack_1bc;
  undefined4 uStack_1b8;
  undefined4 uStack_1b4;
  float local_1b0;
  undefined4 uStack_1ac;
  undefined4 uStack_1a8;
  undefined4 uStack_1a4;
  float local_1a0;
  undefined4 uStack_19c;
  undefined4 uStack_198;
  undefined4 uStack_194;
  float local_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float local_180;
  float fStack_17c;
  float fStack_178;
  float fStack_174;
  float local_170;
  undefined4 uStack_16c;
  undefined4 uStack_168;
  undefined4 uStack_164;
  undefined4 local_160;
  undefined4 uStack_15c;
  undefined4 uStack_158;
  undefined4 uStack_154;
  undefined4 local_150;
  undefined4 uStack_14c;
  undefined4 uStack_148;
  undefined4 uStack_144;
  float local_140;
  float fStack_13c;
  float fStack_138;
  float fStack_134;
  float local_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
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
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float local_e0 [4];
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
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  uint local_50 [19];
  
  fVar24 = LotLevelHeight_SampleLocalPosition(*(void **)(*(int *)((int)this + 0x18) + 0x290),top);
  local_218 = (float)fVar24;
  fVar24 = LotLevelHeight_SampleLocalPosition(*(void **)(*(int *)((int)this + 0x18) + 0x290),bottom)
  ;
  local_214 = (float)fVar24;
  fVar28 = top->x;
  fVar26 = bottom->x;
  fVar22 = top->z;
  fVar23 = bottom->z;
  uVar17 = (int)(fVar28 - fVar26) >> 0x1f;
  local_1f8 = (float)(~uVar17 & (uint)fVar26 | (uint)fVar28 & uVar17);
  uVar18 = (int)(fVar22 - fVar23) >> 0x1f;
  local_210 = (float)(~uVar18 & (uint)fVar23 | (uint)fVar22 & uVar18);
  local_204 = (float)(~uVar17 & (uint)fVar28 | (uint)fVar26 & uVar17);
  uVar17 = (int)(fVar22 - fVar23) >> 0x1f;
  fVar22 = (float)(~uVar17 & (uint)fVar22 | (uint)fVar23 & uVar17);
  uVar17 = (int)(local_218 - local_214) >> 0x1f;
  fVar23 = (float)(~uVar17 & (uint)local_214 | (uint)local_218 & uVar17);
  local_200 = fVar23 + 0.1875;
  local_208 = (void *)0x0;
  local_20c = 0.0;
  local_220 = 0.0;
  local_1fc = (int *)0x0;
  switch(direction) {
  case 0:
  case 4:
    local_208 = (void *)(local_204 - local_1f8);
    local_20c = fVar22 - local_210;
    local_220 = fVar26 - fVar28;
    break;
  case 2:
  case 6:
    local_208 = (void *)(fVar22 - local_210);
    local_20c = local_204 - local_1f8;
    local_1fc = (int *)(bottom->z - top->z);
  }
  local_1f0 = 1.0;
  fVar25 = (float10)fpatan(-(float10)(float)local_1fc,(float10)local_220);
  fVar24 = (float10)fsin((float10)(float)fVar25);
  local_150 = 0;
  uStack_14c = 0;
  uStack_148 = 0;
  uStack_144 = 0;
  local_180 = (float)fVar24;
  fVar24 = (float10)fcos((float10)(float)fVar25);
  local_224 = (float)fVar24;
  local_1a0 = 0.0;
  uStack_19c = 0;
  uStack_198 = 0;
  uStack_194 = 0;
  local_160 = 0;
  uStack_15c = 0;
  uStack_158 = 0;
  uStack_154 = 0;
  local_1b0 = 0.0;
  uStack_1ac = 0;
  uStack_1a8 = 0;
  uStack_1a4 = 0;
  local_170 = 0.0;
  uStack_16c = 0;
  uStack_168 = 0;
  uStack_164 = 0;
  local_1c0 = 0.0;
  uStack_1bc = 0;
  uStack_1b8 = 0;
  uStack_1b4 = 0;
  local_100 = 0.0 - local_180;
  fStack_fc = 0.0 - local_180;
  fStack_f8 = 0.0 - local_180;
  fStack_f4 = 0.0 - local_180;
  fStack_cc = 0.0;
  fStack_c4 = 0.0;
  local_c0 = 0.0;
  fStack_b8 = 0.0;
  fStack_b4 = 0.0;
  fStack_ac = 0.0;
  fStack_a4 = 0.0;
  fStack_58 = (fVar22 + local_210) * 0.5;
  fStack_5c = (local_214 + local_218) * 0.5;
  local_60 = (local_204 + local_1f8) * 0.5;
  fStack_1ec = local_1f0;
  fStack_1e8 = local_1f0;
  fStack_1e4 = local_1f0;
  local_1e0 = local_224;
  fStack_1dc = local_224;
  fStack_1d8 = local_224;
  fStack_1d4 = local_224;
  local_1d0 = local_224;
  fStack_1cc = local_224;
  fStack_1c8 = local_224;
  fStack_1c4 = local_224;
  local_190 = local_1f0;
  fStack_18c = local_1f0;
  fStack_188 = local_1f0;
  fStack_184 = local_1f0;
  fStack_17c = local_180;
  fStack_178 = local_180;
  fStack_174 = local_180;
  local_d0 = local_224;
  fStack_c8 = local_100;
  fStack_bc = local_1f0;
  local_b0 = local_180;
  fStack_a8 = local_224;
  fStack_54 = local_1f0;
  pfVar19 = (float *)Lot_BuildLocalToWorldPoseMatrix(*(void **)((int)this + 0x18),local_50);
  fVar28 = pfVar19[4];
  fVar26 = pfVar19[5];
  fVar22 = pfVar19[6];
  fVar4 = pfVar19[7];
  fVar5 = *pfVar19;
  fVar6 = pfVar19[1];
  fVar7 = pfVar19[2];
  fVar8 = pfVar19[3];
  fVar9 = pfVar19[8];
  fVar10 = pfVar19[9];
  fVar11 = pfVar19[10];
  fVar12 = pfVar19[0xb];
  fVar13 = pfVar19[0xc];
  fVar14 = pfVar19[0xd];
  fVar15 = pfVar19[0xe];
  fVar16 = pfVar19[0xf];
  local_140 = local_d0 * fVar5 + fStack_cc * fVar28 + fStack_c8 * fVar9 + fStack_c4 * fVar13;
  fStack_13c = local_d0 * fVar6 + fStack_cc * fVar26 + fStack_c8 * fVar10 + fStack_c4 * fVar14;
  fStack_138 = local_d0 * fVar7 + fStack_cc * fVar22 + fStack_c8 * fVar11 + fStack_c4 * fVar15;
  fStack_134 = local_d0 * fVar8 + fStack_cc * fVar4 + fStack_c8 * fVar12 + fStack_c4 * fVar16;
  local_130 = fStack_bc * fVar28 + local_c0 * fVar5 + fStack_b8 * fVar9 + fStack_b4 * fVar13;
  fStack_12c = fStack_bc * fVar26 + local_c0 * fVar6 + fStack_b8 * fVar10 + fStack_b4 * fVar14;
  fStack_128 = fStack_bc * fVar22 + local_c0 * fVar7 + fStack_b8 * fVar11 + fStack_b4 * fVar15;
  fStack_124 = fStack_bc * fVar4 + local_c0 * fVar8 + fStack_b8 * fVar12 + fStack_b4 * fVar16;
  local_120 = local_b0 * fVar5 + fStack_ac * fVar28 + fStack_a8 * fVar9 + fStack_a4 * fVar13;
  fStack_11c = local_b0 * fVar6 + fStack_ac * fVar26 + fStack_a8 * fVar10 + fStack_a4 * fVar14;
  fStack_118 = local_b0 * fVar7 + fStack_ac * fVar22 + fStack_a8 * fVar11 + fStack_a4 * fVar15;
  fStack_114 = local_b0 * fVar8 + fStack_ac * fVar4 + fStack_a8 * fVar12 + fStack_a4 * fVar16;
  local_110 = local_60 * fVar5 + fStack_5c * fVar28 + fStack_58 * fVar9 + fStack_54 * fVar13;
  fStack_10c = local_60 * fVar6 + fStack_5c * fVar26 + fStack_58 * fVar10 + fStack_54 * fVar14;
  fStack_108 = local_60 * fVar7 + fStack_5c * fVar22 + fStack_58 * fVar11 + fStack_54 * fVar15;
  fStack_104 = local_60 * fVar8 + fStack_5c * fVar4 + fStack_58 * fVar12 + fStack_54 * fVar16;
  local_f0 = (float)local_208 * 0.5;
  fStack_e8 = local_20c * 0.5;
  fStack_ec = (local_200 - fVar23) * 0.5;
  local_e0[0] = (local_214 - local_218) / (float)local_208;
  local_e0[1] = 0.0;
  local_e0[2] = 0.0;
  fStack_e4 = local_f0;
  local_e0[3] = local_e0[0];
  this_00 = (int *)FUN_004e4520(0x80,0x10,0,"Lot/ModularStairsGeometry/ShearedBoxShape",0);
  if (this_00 == (int *)0x0) {
    this_00 = (int *)0x0;
  }
  else {
    FUN_00682c60(this_00);
    *this_00 = (int)&PTR_LAB_00ff0d48;
    FUN_00683640(this_00,&local_f0,local_e0);
    FUN_00682b20((int)this_00);
  }
  this_00[4] = (int)local_110;
  this_00[5] = (int)fStack_10c;
  this_00[6] = (int)fStack_108;
  this_00[7] = (int)fStack_104;
  local_1d0 = fStack_12c + local_140;
  fStack_1cc = fStack_12c + local_140;
  fStack_1c8 = fStack_12c + local_140;
  fStack_1c4 = fStack_12c + local_140;
  local_180 = local_1d0 + fStack_118;
  fStack_1dc = fStack_1cc + fStack_118;
  fStack_1d8 = fStack_1c8 + fStack_118;
  fStack_1d4 = fStack_1c4 + fStack_118;
  local_160 = 0;
  if (local_180 <= 0.0) {
    local_1e0 = local_140;
    local_1a0 = fStack_12c;
    if (fStack_12c < local_140) {
      local_1c0 = local_140;
      local_190 = fStack_118;
      if (fStack_118 < local_140) {
        auVar30._0_4_ = (local_140 - (fStack_118 + fStack_12c)) + local_1f0;
        auVar30._4_4_ = (local_140 - (fStack_118 + fStack_12c)) + fStack_1ec;
        auVar30._8_4_ = (local_140 - (fStack_118 + fStack_12c)) + fStack_1e8;
        auVar30._12_4_ = (local_140 - (fStack_118 + fStack_12c)) + fStack_1e4;
        auVar30 = sqrtps(auVar30,auVar30);
        auVar34._8_4_ = 0x3f000000;
        auVar34._0_8_ = 0x3f0000003f000000;
        auVar34._12_4_ = 0x3f000000;
        auVar34 = divps(auVar34,auVar30);
        fVar26 = auVar30._0_4_ * 0.5;
        fVar28 = (fStack_13c + local_130) * auVar34._4_4_;
        fVar22 = (fStack_138 + local_120) * auVar34._8_4_;
        fVar23 = (fStack_128 - fStack_11c) * auVar34._12_4_;
        goto LAB_00b1a200;
      }
    }
    local_170 = fStack_12c;
    local_1b0 = fStack_118;
    if (fStack_12c <= fStack_118) {
      auVar27._0_4_ = local_1f0 + (fStack_118 - local_1d0);
      auVar27._4_4_ = fStack_1ec + (fStack_118 - fStack_1cc);
      auVar27._8_4_ = fStack_1e8 + (fStack_118 - fStack_1c8);
      auVar27._12_4_ = fStack_1e4 + (fStack_118 - fStack_1c4);
      auVar34 = sqrtps(ZEXT416((uint)fStack_12c),auVar27);
      auVar33._8_4_ = 0x3f000000;
      auVar33._0_8_ = 0x3f0000003f000000;
      auVar33._12_4_ = 0x3f000000;
      auVar30 = divps(auVar33,auVar34);
      fVar26 = (fStack_138 + local_120) * auVar30._0_4_;
      fVar28 = (fStack_128 + fStack_11c) * auVar30._4_4_;
      fVar22 = auVar34._8_4_ * 0.5;
      fVar23 = (fStack_13c - local_130) * auVar30._12_4_;
    }
    else {
      auVar31._0_4_ = (fStack_12c - (fStack_118 + local_140)) + local_1f0;
      auVar31._4_4_ = (fStack_12c - (fStack_118 + local_140)) + fStack_1ec;
      auVar31._8_4_ = (fStack_12c - (fStack_118 + local_140)) + fStack_1e8;
      auVar31._12_4_ = (fStack_12c - (fStack_118 + local_140)) + fStack_1e4;
      auVar34 = sqrtps(ZEXT416((uint)fStack_12c),auVar31);
      auVar32._8_4_ = 0x3f000000;
      auVar32._0_8_ = 0x3f0000003f000000;
      auVar32._12_4_ = 0x3f000000;
      auVar30 = divps(auVar32,auVar34);
      fVar26 = auVar30._0_4_ * (fStack_13c + local_130);
      fVar28 = auVar34._4_4_ * 0.5;
      fVar22 = (fStack_128 + fStack_11c) * auVar30._8_4_;
      fVar23 = (local_120 - fStack_138) * auVar30._12_4_;
    }
  }
  else {
    auVar3._4_4_ = fStack_1dc + fStack_1ec;
    auVar3._0_4_ = local_180 + local_1f0;
    auVar3._8_4_ = fStack_1d8 + fStack_1e8;
    auVar3._12_4_ = fStack_1d4 + fStack_1e4;
    auVar34 = sqrtps(ZEXT416((uint)local_180),auVar3);
    auVar29._8_4_ = 0x3f000000;
    auVar29._0_8_ = 0x3f0000003f000000;
    auVar29._12_4_ = 0x3f000000;
    auVar30 = divps(auVar29,auVar34);
    fVar26 = (fStack_128 - fStack_11c) * auVar30._0_4_;
    fVar28 = (local_120 - fStack_138) * auVar30._4_4_;
    fVar22 = (fStack_13c - local_130) * auVar30._8_4_;
    fVar23 = auVar34._12_4_ * 0.5;
    local_1e0 = local_180;
  }
LAB_00b1a200:
  this_00[8] = (int)fVar26;
  this_00[9] = (int)fVar28;
  this_00[10] = (int)fVar22;
  this_00[0xb] = (int)fVar23;
  pcVar1 = *(code **)(*this_00 + 0xc);
  this_00[0xd] = (this_00[0xd] & 0xffff0000U) + 0x200;
  (*pcVar1)(flightId,0);
  local_208 = (void *)CollisionService_GetGlobal();
  if (local_208 != (void *)0x0) {
    iVar2 = *(int *)((int)this + 0x18);
    iVar20 = ((*(int *)(iVar2 + 0x378) - *(int *)(iVar2 + 0x37c) >> 2) - *(int *)(iVar2 + 0x17c)) +
             selectedLevel;
    iVar21 = iVar20 + 0x1000000;
    iVar21 = ((int)(iVar21 + (iVar21 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
    FUN_00687290(local_208,(int)this_00,
                 *(int *)(*(int *)(*(int *)(iVar2 + 900) + iVar21 * 4) +
                         (iVar20 + iVar21 * -0x40) * 4));
  }
  FUN_00682b20((int)this_00);
  FUN_00682b20((int)this_00);
  FUN_00682b30(this_00);
  local_200 = (float)flightId;
  local_1fc = this_00;
  FUN_00682b20((int)this_00);
  local_20c = (float)((uint)local_20c & 0xffffff00);
  FUN_00b17ce0((void *)((int)this + 0x7c),&uStack_228,(uint *)&local_200);
  if (local_1fc != (int *)0x0) {
    FUN_00682b30(local_1fc);
  }
  FUN_00682b30(this_00);
  FUN_00682b30(this_00);
  return;
}

