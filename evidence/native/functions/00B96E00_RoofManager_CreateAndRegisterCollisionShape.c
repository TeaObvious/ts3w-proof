/* Genuine /TS3W.exe C export; current function identifiers verified against the retained f915 names.
   Earlier body/ABI/variable qualifications remain; no runtime or whole-entry acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Static PC1.67 original instruction comparison; 2025 complete owned bytes/504 actual Listing
   instructions. No runtime execution.
   ECX manager and roof pointer, RET4. Allocates aligned0xA0 bytes under original label
   LotRenderer/RoofCollisionShape, constructs shape, configures geometry/transform and preserves
   upper flags while replacing low16 by8. If collision service exists, node index derives from
   ((lot[378]-lot[37C])>>2)-lot[17C]+1+roof[18], then signed segmented64 lookup;00687290 registers
   shape/node. Publishes manager map entry and balances references. This node bookkeeping alone does
   not prove universal roof viewed-level L+1 visibility or current maxLevel-1 cutoff. */

void __thiscall RoofManager_CreateAndRegisterCollisionShape(void *this,int *param_1)

{
  float fVar1;
  undefined1 auVar2 [16];
  char cVar3;
  void *pvVar4;
  int *this_00;
  int iVar5;
  int iVar6;
  undefined4 *puVar7;
  int *piVar8;
  float10 fVar9;
  float fVar11;
  float fVar12;
  undefined1 auVar10 [16];
  float fVar13;
  float fVar14;
  float fVar17;
  float fVar18;
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  float fVar20;
  float fVar21;
  undefined1 auVar19 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  int iVar27;
  float fStack_2f4;
  float fStack_2f0;
  void *pvStack_2e0;
  undefined1 auStack_2cc [8];
  float fStack_2c4;
  float fStack_2c0;
  float fStack_2b8;
  float afStack_2b4 [2];
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
  undefined4 uStack_25c;
  int iStack_254;
  float fStack_24c;
  float fStack_23c;
  float fStack_22c;
  float fStack_21c;
  float fStack_20c;
  float fStack_1fc;
  undefined4 uStack_1ec;
  float fStack_1e8;
  undefined4 uStack_1e4;
  undefined4 uStack_1e0;
  float fStack_1dc;
  float fStack_1c0;
  float fStack_1bc;
  float fStack_1b8;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_190;
  float fStack_18c;
  float fStack_188;
  float fStack_184;
  float fStack_180;
  undefined1 auStack_17c [16];
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
  float fStack_d8;
  float fStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
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
  
  pvVar4 = (void *)FUN_004e4520(0xa0,0x10,0,"LotRenderer/RoofCollisionShape",0);
  piVar8 = param_1;
  if (pvVar4 == (void *)0x0) {
    this_00 = (int *)0x0;
  }
  else {
    this_00 = FUN_00b943f0(pvVar4,param_1);
    if (this_00 != (int *)0x0) {
      FUN_00682b20((int)this_00);
    }
  }
  iVar27 = 0x7fffffff;
  iVar5 = (**(code **)(*piVar8 + 0x14))();
  iVar6 = (**(code **)(*piVar8 + 0x10))();
  FUN_00682bb0(this_00,iVar6,iVar5,iVar27);
  fVar13 = (float)piVar8[0x1b];
  iVar5 = (**(code **)(*piVar8 + 0x10))();
  fVar20 = (float)(iVar5 + -1);
  if (iVar5 + -1 < 0) {
    fVar20 = fVar20 + 4.2949673e+09;
  }
  fVar1 = (float)piVar8[0x1c];
  iStack_254 = (**(code **)(*piVar8 + 0x14))();
  iStack_254 = iStack_254 + -1;
  fStack_1b8 = (float)iStack_254;
  if (iStack_254 < 0) {
    fStack_1b8 = fStack_1b8 + 4.2949673e+09;
  }
  fStack_1b8 = fVar1 / fStack_1b8;
  fStack_1bc = 1.0;
  fStack_1c0 = fVar13 / fVar20;
  fStack_1b4 = fVar13 / fVar20;
  FUN_00684350(this_00,&fStack_1c0);
  piVar8 = param_1;
  this_00[0xd] = (this_00[0xd] & 0xffff0000U) + 8;
  (**(code **)(*this_00 + 0xc))(param_1[3],param_1[3] >> 0x1f);
  Lot_BuildLocalToWorldPoseMatrix(*(void **)((int)this + 8),(uint *)&fStack_2a8);
  (**(code **)(*piVar8 + 0x1c))(afStack_2b4);
  fStack_5c = fStack_29c * 0.0 + fStack_2ac * 1.0 + fStack_28c * 0.0 + fStack_27c * 0.0;
  fStack_58 = fStack_298 * 0.0 + fStack_2a8 * 1.0 + fStack_288 * 0.0 + fStack_278 * 0.0;
  fStack_54 = fStack_294 * 0.0 + fStack_2a4 * 1.0 + fStack_284 * 0.0 + fStack_274 * 0.0;
  fStack_50 = fStack_290 * 0.0 + fStack_2a0 * 1.0 + fStack_280 * 0.0 + fStack_270 * 0.0;
  fStack_4c = fStack_29c * 1.0 + fStack_2ac * 0.0 + fStack_28c * 0.0 + fStack_27c * 0.0;
  fStack_48 = fStack_298 * 1.0 + fStack_2a8 * 0.0 + fStack_288 * 0.0 + fStack_278 * 0.0;
  fStack_44 = fStack_294 * 1.0 + fStack_2a4 * 0.0 + fStack_284 * 0.0 + fStack_274 * 0.0;
  fStack_40 = fStack_290 * 1.0 + fStack_2a0 * 0.0 + fStack_280 * 0.0 + fStack_270 * 0.0;
  fStack_3c = fStack_29c * 0.0 + fStack_2ac * 0.0 + fStack_28c * 1.0 + fStack_27c * 0.0;
  fStack_38 = fStack_298 * 0.0 + fStack_2a8 * 0.0 + fStack_288 * 1.0 + fStack_278 * 0.0;
  fStack_34 = fStack_294 * 0.0 + fStack_2a4 * 0.0 + fStack_284 * 1.0 + fStack_274 * 0.0;
  fStack_30 = fStack_290 * 0.0 + fStack_2a0 * 0.0 + fStack_280 * 1.0 + fStack_270 * 0.0;
  fStack_2c = fStack_29c * 0.0 + fStack_2b8 * fStack_2ac + afStack_2b4[0] * fStack_28c +
              fStack_27c * 1.0;
  fStack_28 = fStack_298 * 0.0 + fStack_2b8 * fStack_2a8 + afStack_2b4[0] * fStack_288 +
              fStack_278 * 1.0;
  fStack_24 = fStack_294 * 0.0 + fStack_2b8 * fStack_2a4 + afStack_2b4[0] * fStack_284 +
              fStack_274 * 1.0;
  fStack_20 = fStack_290 * 0.0 + fStack_2b8 * fStack_2a0 + afStack_2b4[0] * fStack_280 +
              fStack_270 * 1.0;
  this_00[4] = (int)fStack_2c;
  this_00[5] = (int)fStack_28;
  this_00[6] = (int)fStack_24;
  this_00[7] = (int)fStack_20;
  fStack_ac = fStack_5c + fStack_48;
  fStack_a8 = fStack_5c + fStack_48;
  fStack_a4 = fStack_5c + fStack_48;
  fStack_a0 = fStack_5c + fStack_48;
  auStack_2cc._4_4_ = fStack_a8;
  auStack_2cc._0_4_ = fStack_ac;
  fStack_2c4 = fStack_a4;
  fStack_2c0 = fStack_a0;
  fStack_20c = fStack_ac + fStack_34;
  uStack_25c = 0;
  if (fStack_20c <= 0.0) {
    fStack_23c = fStack_5c;
    fStack_1fc = fStack_48;
    if (fStack_48 < fStack_5c) {
      fStack_21c = fStack_5c;
      fStack_1dc = fStack_34;
      if (fStack_34 < fStack_5c) {
        fStack_ec = fStack_34 + fStack_48;
        fStack_e8 = fStack_34 + fStack_48;
        fStack_e4 = fStack_34 + fStack_48;
        fStack_e0 = fStack_34 + fStack_48;
        fStack_16c = fStack_5c - fStack_ec;
        fStack_168 = fStack_5c - fStack_e8;
        fStack_164 = fStack_5c - fStack_e4;
        fStack_160 = fStack_5c - fStack_e0;
        fStack_6c = fStack_44 - fStack_38;
        fStack_68 = fStack_44 - fStack_38;
        fStack_64 = fStack_44 - fStack_38;
        fStack_60 = fStack_44 - fStack_38;
        auVar16._0_4_ = fStack_16c + 1.0;
        auVar16._4_4_ = fStack_168 + 1.0;
        auVar16._8_4_ = fStack_164 + 1.0;
        auVar16._12_4_ = fStack_160 + 1.0;
        auVar23 = sqrtps(auVar16,auVar16);
        fStack_14c = fStack_3c + fStack_54;
        fStack_148 = fStack_3c + fStack_54;
        fStack_144 = fStack_3c + fStack_54;
        fStack_140 = fStack_3c + fStack_54;
        fStack_cc = fStack_4c + fStack_58;
        fStack_c8 = fStack_4c + fStack_58;
        fStack_c4 = fStack_4c + fStack_58;
        fStack_c0 = fStack_4c + fStack_58;
        auVar24._8_4_ = 0x3f000000;
        auVar24._0_8_ = 0x3f0000003f000000;
        auVar24._12_4_ = 0x3f000000;
        auVar26 = divps(auVar24,auVar23);
        fVar13 = auVar23._0_4_ * 0.5;
        fVar20 = fStack_c8 * auVar26._4_4_;
        fStack_2f4 = fStack_144 * auVar26._8_4_;
        fStack_2f0 = fStack_60 * auVar26._12_4_;
        goto LAB_00b973f1;
      }
    }
    if (fStack_48 <= fStack_34) {
      fStack_15c = fStack_34 - fStack_ac;
      fStack_158 = fStack_34 - fStack_a8;
      fStack_154 = fStack_34 - fStack_a4;
      fStack_150 = fStack_34 - fStack_a0;
      auVar23._0_4_ = fStack_15c + 1.0;
      auVar23._4_4_ = fStack_158 + 1.0;
      auVar23._8_4_ = fStack_154 + 1.0;
      auVar23._12_4_ = fStack_150 + 1.0;
      auStack_17c = _auStack_2cc;
      auVar23 = sqrtps(_auStack_2cc,auVar23);
      fStack_13c = fStack_58 - fStack_4c;
      fStack_138 = fStack_58 - fStack_4c;
      fStack_134 = fStack_58 - fStack_4c;
      fStack_130 = fStack_58 - fStack_4c;
      fStack_11c = fStack_44 + fStack_38;
      fStack_118 = fStack_44 + fStack_38;
      fStack_114 = fStack_44 + fStack_38;
      fStack_110 = fStack_44 + fStack_38;
      fStack_fc = fStack_3c + fStack_54;
      fStack_f8 = fStack_3c + fStack_54;
      fStack_f4 = fStack_3c + fStack_54;
      fStack_f0 = fStack_3c + fStack_54;
      auVar26._8_4_ = 0x3f000000;
      auVar26._0_8_ = 0x3f0000003f000000;
      auVar26._12_4_ = 0x3f000000;
      auVar26 = divps(auVar26,auVar23);
      fVar13 = fStack_fc * auVar26._0_4_;
      fVar20 = fStack_118 * auVar26._4_4_;
      fStack_2f4 = auVar23._8_4_ * 0.5;
      fStack_2f0 = fStack_130 * auVar26._12_4_;
    }
    else {
      fStack_12c = fStack_34 + fStack_5c;
      fStack_128 = fStack_34 + fStack_5c;
      fStack_124 = fStack_34 + fStack_5c;
      fStack_120 = fStack_34 + fStack_5c;
      fStack_8c = fStack_48 - fStack_12c;
      fStack_88 = fStack_48 - fStack_128;
      fStack_84 = fStack_48 - fStack_124;
      fStack_80 = fStack_48 - fStack_120;
      auVar19._0_4_ = fStack_8c + 1.0;
      auVar19._4_4_ = fStack_88 + 1.0;
      auVar19._8_4_ = fStack_84 + 1.0;
      auVar19._12_4_ = fStack_80 + 1.0;
      auVar26 = sqrtps(ZEXT416((uint)fStack_48),auVar19);
      fStack_10c = fStack_3c - fStack_54;
      fStack_108 = fStack_3c - fStack_54;
      fStack_104 = fStack_3c - fStack_54;
      fStack_100 = fStack_3c - fStack_54;
      fStack_1ac = fStack_44 + fStack_38;
      fStack_1a8 = fStack_44 + fStack_38;
      fStack_1a4 = fStack_44 + fStack_38;
      fStack_1a0 = fStack_44 + fStack_38;
      fStack_19c = fStack_4c + fStack_58;
      fStack_198 = fStack_4c + fStack_58;
      fStack_194 = fStack_4c + fStack_58;
      fStack_190 = fStack_4c + fStack_58;
      auVar25._8_4_ = 0x3f000000;
      auVar25._0_8_ = 0x3f0000003f000000;
      auVar25._12_4_ = 0x3f000000;
      auVar23 = divps(auVar25,auVar26);
      fVar13 = fStack_19c * auVar23._0_4_;
      fVar20 = auVar26._4_4_ * 0.5;
      fStack_2f4 = fStack_1a4 * auVar23._8_4_;
      fStack_2f0 = fStack_100 * auVar23._12_4_;
    }
    fStack_24c = fStack_48;
    fStack_22c = fStack_34;
  }
  else {
    auVar15._0_4_ = fStack_20c + 1.0;
    auVar15._4_4_ = fStack_a8 + fStack_34 + 1.0;
    auVar15._8_4_ = fStack_a4 + fStack_34 + 1.0;
    auVar15._12_4_ = fStack_a0 + fStack_34 + 1.0;
    auVar26 = sqrtps(ZEXT416((uint)fStack_20c),auVar15);
    fStack_7c = fStack_58 - fStack_4c;
    fStack_78 = fStack_58 - fStack_4c;
    fStack_74 = fStack_58 - fStack_4c;
    fStack_70 = fStack_58 - fStack_4c;
    fStack_1bc = fStack_3c - fStack_54;
    fStack_1b8 = fStack_3c - fStack_54;
    fStack_1b4 = fStack_3c - fStack_54;
    fStack_1b0 = fStack_3c - fStack_54;
    fStack_18c = fStack_44 - fStack_38;
    fStack_188 = fStack_44 - fStack_38;
    fStack_184 = fStack_44 - fStack_38;
    fStack_180 = fStack_44 - fStack_38;
    auVar22._8_4_ = 0x3f000000;
    auVar22._0_8_ = 0x3f0000003f000000;
    auVar22._12_4_ = 0x3f000000;
    auVar23 = divps(auVar22,auVar26);
    fVar13 = fStack_18c * auVar23._0_4_;
    fVar20 = fStack_1b8 * auVar23._4_4_;
    fStack_2f4 = fStack_74 * auVar23._8_4_;
    fStack_2f0 = auVar26._12_4_ * 0.5;
  }
LAB_00b973f1:
  cVar3 = (**(code **)(*piVar8 + 0xc))();
  if (cVar3 != '\0') {
    uStack_1ec = 0;
    fStack_1e8 = 1.0;
    uStack_1e4 = 0;
    uStack_1e0 = 0;
    auVar10._8_4_ = 0xbf490fdb;
    auVar10._0_8_ = 0xbf490fdbbf490fdb;
    auVar10._12_4_ = 0xbf490fdb;
    auVar2._8_4_ = 0x40000000;
    auVar2._0_8_ = 0x4000000040000000;
    auVar2._12_4_ = 0x40000000;
    auVar23 = divps(auVar10,auVar2);
    auStack_2cc._0_4_ = auVar23._0_4_;
    fVar9 = (float10)fsin((float10)(float)auStack_2cc._0_4_);
    fStack_90 = (float)fVar9;
    fVar9 = (float10)fcos((float10)(float)auStack_2cc._0_4_);
    fStack_dc = fStack_90 * 0.0;
    fStack_d8 = fStack_90 * 0.0;
    fStack_d4 = fStack_90 * 0.0;
    fStack_d0 = fStack_90 * 0.0;
    fStack_bc = fStack_90 * 1.0;
    fStack_b8 = fStack_90 * 1.0;
    fStack_b4 = fStack_90 * 1.0;
    fStack_b0 = fStack_90 * 1.0;
    fStack_9c = fStack_90 * 0.0;
    fStack_98 = fStack_90 * 0.0;
    fStack_94 = fStack_90 * 0.0;
    fStack_90 = fStack_90 * 0.0;
    fVar1 = (float)fVar9;
    fVar21 = fVar13 * fStack_b8;
    fVar11 = fVar13 * fStack_d4;
    fVar12 = fVar20 * fStack_9c;
    fVar14 = fVar13 * fStack_9c;
    fVar17 = fVar20 * fStack_b8;
    fVar18 = fStack_2f4 * fStack_d4;
    fVar13 = (fStack_2f4 * fStack_b8 - fVar20 * fStack_d4) + fVar13 * fVar1 + fStack_2f0 * fStack_9c
    ;
    fVar20 = (fVar11 - fStack_2f4 * fStack_9c) + fVar20 * fVar1 + fStack_2f0 * fStack_b8;
    fStack_2f4 = (fVar12 - fVar21) + fStack_2f4 * fVar1 + fStack_2f0 * fStack_d4;
    fStack_2f0 = fStack_2f0 * fVar1 - (fVar18 + fVar17 + fVar14);
    piVar8 = param_1;
  }
  this_00[8] = (int)fVar13;
  this_00[9] = (int)fVar20;
  this_00[10] = (int)fStack_2f4;
  this_00[0xb] = (int)fStack_2f0;
  pvVar4 = (void *)CollisionService_GetGlobal();
  if (pvVar4 != (void *)0x0) {
    iVar27 = *(int *)((int)this + 8);
    iVar6 = ((*(int *)(iVar27 + 0x378) - *(int *)(iVar27 + 0x37c) >> 2) - *(int *)(iVar27 + 0x17c))
            + 1 + piVar8[6];
    iVar5 = iVar6 + 0x1000000;
    iVar5 = ((int)(iVar5 + (iVar5 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
    FUN_00687290(pvVar4,(int)this_00,
                 *(int *)(*(int *)(*(int *)(iVar27 + 900) + iVar5 * 4) + (iVar6 + iVar5 * -0x40) * 4
                         ));
    this = pvStack_2e0;
  }
  puVar7 = (undefined4 *)FUN_00b96a40((void *)((int)this + 0x58),(uint *)&param_1);
  piVar8 = (int *)*puVar7;
  if (this_00 != piVar8) {
    FUN_00682b20((int)this_00);
    *puVar7 = this_00;
    if (piVar8 != (int *)0x0) {
      FUN_00682b30(piVar8);
    }
  }
  FUN_00682b30(this_00);
  return;
}

