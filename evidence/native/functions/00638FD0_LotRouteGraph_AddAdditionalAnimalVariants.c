/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst: original PC 1.67 portal contract. Adds original additional helper endpoint variants and
   primary mask; location triples have float X/Z, signed floor level. */

bool __thiscall LotRouteGraph_AddAdditionalAnimalVariants(void *this,void *lot,void *portal)

{
  TS3WPortalXZLevel start;
  TS3WPortalXZLevel end;
  TS3WPortalXZLevel backStart;
  TS3WPortalXZLevel backEnd;
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined1 in_XMM3 [16];
  undefined1 auVar15 [16];
  float fVar16;
  float fVar17;
  bool local_145;
  uint local_144;
  float local_140;
  float fStack_13c;
  int iStack_138;
  float fStack_134;
  float local_128;
  float local_124;
  int local_120;
  float local_11c;
  float local_118;
  int local_114;
  float local_110;
  float local_10c;
  int local_108;
  void *local_104;
  float local_100 [17];
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
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
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
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((lot == (void *)0x0) || (portal == (void *)0x0)) {
    return false;
  }
  *(undefined4 *)((int)portal + 0x60) = *(undefined4 *)((int)portal + 0x5c);
  local_104 = this;
  bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x200);
  if (!bVar1) {
    return true;
  }
  local_100[0] = 0.0;
  local_100[2] = 0.0;
  local_100[4] = 0.0;
  local_100[6] = 0.0;
  local_100[7] = 0.126;
  local_100[8] = -0.234;
  local_100[9] = 1.212;
  local_100[10] = -0.269;
  local_100[0xb] = 1.223;
  local_100[0xc] = -0.08;
  local_100[0xd] = 0.678;
  local_100[0xe] = -0.14;
  local_100[0xf] = 0.661;
  local_b0 = *(float *)((int)portal + 0x14);
  fStack_134 = *(float *)((int)portal + 0x20);
  local_100[1] = 0.455;
  local_100[3] = 0.455;
  local_100[5] = 0.169;
  local_100[0x10] = fStack_134;
  fStack_bc = *(float *)((int)portal + 0x24);
  fStack_b8 = fStack_134;
  fStack_b4 = fStack_134;
  fVar16 = fStack_134 - local_b0;
  fVar17 = *(float *)((int)portal + 0x24) - *(float *)((int)portal + 0x18);
  fVar7 = fVar16 * fVar16;
  fVar8 = fVar17 * fVar17;
  fVar12 = fVar8 + fVar7;
  fVar13 = fVar8 + fVar7;
  fVar14 = fVar8 + fVar7;
  fVar8 = fVar8 + fVar7;
  auVar15._4_4_ = fVar13;
  auVar15._0_4_ = fVar12;
  auVar15._8_4_ = fVar14;
  auVar15._12_4_ = fVar8;
  auVar15 = rsqrtps(in_XMM3,auVar15);
  fVar7 = auVar15._0_4_;
  fVar9 = auVar15._4_4_;
  fVar10 = auVar15._8_4_;
  fVar11 = auVar15._12_4_;
  fVar7 = (1.0 - fVar7 * fVar7 * fVar12) * fVar7 * 0.5 + fVar7;
  fVar9 = (1.0 - fVar9 * fVar9 * fVar13) * fVar9 * 0.5 + fVar9;
  fVar10 = (1.0 - fVar10 * fVar10 * fVar14) * fVar10 * 0.5 + fVar10;
  fVar11 = (1.0 - fVar11 * fVar11 * fVar8) * fVar11 * 0.5 + fVar11;
  *(undefined4 *)((int)portal + 0x78) = 0x7ff;
  *(undefined4 *)((int)portal + 0x7c) = 0;
  fStack_ac = *(float *)((int)portal + 0x18);
  fStack_a8 = local_b0;
  fStack_a4 = local_b0;
  local_20 = ((1.0 - fVar7 * fVar7 * fVar12) * fVar7 * 0.5 + fVar7) * fVar16;
  fStack_1c = ((1.0 - fVar9 * fVar9 * fVar13) * fVar9 * 0.5 + fVar9) * fVar17;
  fStack_18 = ((1.0 - fVar10 * fVar10 * fVar14) * fVar10 * 0.5 + fVar10) * (fStack_134 - local_b0);
  fStack_14 = ((1.0 - fVar11 * fVar11 * fVar8) * fVar11 * 0.5 + fVar11) * (fStack_134 - local_b0);
  local_145 = true;
  local_144 = 0;
  do {
    local_120 = *(int *)((int)portal + 0x28);
    fVar7 = local_100[local_144 * 4];
    fVar8 = local_100[local_144 * 4 + 1];
    fVar9 = local_100[local_144 * 4 + 2];
    local_140 = fVar7 * local_20 + local_b0;
    fStack_13c = fVar7 * fStack_1c + fStack_ac;
    fStack_88 = fVar7 * fStack_18 + fStack_a8;
    fStack_84 = fVar7 * fStack_14 + fStack_a4;
    local_90 = local_140;
    fStack_8c = fStack_13c;
    local_50 = local_140;
    fStack_4c = fStack_13c;
    fStack_48 = fStack_88;
    fStack_44 = fStack_84;
    local_110 = fVar8 * local_20 + local_100[0x10];
    local_10c = fVar8 * fStack_1c + fStack_bc;
    fStack_68 = fVar8 * fStack_18 + fStack_b8;
    fStack_64 = fVar8 * fStack_14 + fStack_b4;
    local_128 = local_100[0x10] - fVar9 * local_20;
    local_124 = fStack_bc - fVar9 * fStack_1c;
    fStack_98 = fStack_b8 - fVar9 * fStack_18;
    fStack_94 = fStack_b4 - fVar9 * fStack_14;
    fVar7 = local_100[local_144 * 4 + 3];
    iStack_138 = *(int *)((int)portal + 0x1c);
    local_11c = local_b0 - fVar7 * local_20;
    local_118 = fStack_ac - fVar7 * fStack_1c;
    fStack_58 = fStack_a8 - fVar7 * fStack_18;
    fStack_54 = fStack_a4 - fVar7 * fStack_14;
    local_114 = iStack_138;
    local_108 = local_120;
    local_a0 = local_128;
    fStack_9c = local_124;
    local_80 = local_128;
    fStack_7c = local_124;
    fStack_78 = fStack_98;
    fStack_74 = fStack_94;
    local_70 = local_110;
    fStack_6c = local_10c;
    local_60 = local_11c;
    fStack_5c = local_118;
    local_40 = local_11c;
    fStack_3c = local_118;
    fStack_38 = fStack_58;
    fStack_34 = fStack_54;
    local_30 = local_110;
    fStack_2c = local_10c;
    fStack_28 = fStack_68;
    fStack_24 = fStack_64;
    uVar2 = Lot_TestPlatformAtLocalXZLevel(lot,&local_110);
    uVar3 = Lot_TestPlatformAtLocalXZLevel(lot,&local_128);
    uVar4 = Lot_TestPlatformAtLocalXZLevel(lot,&local_140);
    uVar5 = Lot_TestPlatformAtLocalXZLevel(lot,&local_11c);
    if (((byte)uVar2 & 1 & (byte)uVar3 & (char)uVar4 == '\0' & (char)uVar5 == '\0') != 0) {
      uVar6 = 0;
      switch(local_144) {
      case 0:
        uVar6 = 0x180780;
        break;
      case 1:
        uVar6 = 0xc30780;
        break;
      case 2:
        uVar6 = 0x6780;
        break;
      case 3:
        uVar6 = 0x1780;
      }
      start.z = fStack_13c;
      start.x = local_140;
      start.level = iStack_138;
      end.z = local_10c;
      end.x = local_110;
      end.level = local_108;
      backStart.z = local_124;
      backStart.x = local_128;
      backStart.level = local_120;
      backEnd.z = local_118;
      backEnd.x = local_11c;
      backEnd.level = local_114;
      bVar1 = LotRouteGraph_AddPortalLocationVariant
                        (local_104,lot,*(ulonglong *)((int)portal + 8),portal,start,end,backStart,
                         backEnd,(ulonglong)uVar6,true);
      local_145 = (bool)(local_145 & bVar1);
    }
    local_144 = local_144 + 1;
  } while (local_144 < 4);
  return local_145;
}

