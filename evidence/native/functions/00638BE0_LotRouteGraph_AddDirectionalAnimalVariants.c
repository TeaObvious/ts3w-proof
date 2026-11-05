/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst: original PC 1.67 portal contract. Attaches original directional age/species endpoint
   variants using lot slot positions; boolean AL. The selector distinguishes helper families; field
   levels are integers. */

bool __thiscall
LotRouteGraph_AddDirectionalAnimalVariants(void *this,void *lot,void *portal,bool selector)

{
  TS3WPortalXZLevel start;
  TS3WPortalXZLevel end;
  TS3WPortalXZLevel backStart;
  TS3WPortalXZLevel backEnd;
  bool bVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  undefined1 in_XMM3 [16];
  undefined1 auVar14 [16];
  float fVar15;
  float fVar16;
  bool local_125;
  uint local_124;
  LotXZLevel local_120;
  float fStack_114;
  LotXZLevel local_108;
  LotXZLevel local_fc;
  LotXZLevel local_f0;
  void *local_e4;
  float local_e0 [9];
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
  local_e4 = this;
  bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x200);
  if (!bVar1) {
    return true;
  }
  *(undefined4 *)((int)portal + 0x7c) = 0;
  if (selector) {
    *(undefined4 *)((int)portal + 0x78) = 0;
  }
  else {
    *(undefined4 *)((int)portal + 0x78) = 0x7ff;
  }
  local_e0[0] = 0.0;
  local_e0[4] = 0.0;
  local_e0[5] = -0.217;
  local_e0[6] = 0.19;
  local_e0[1] = 0.301;
  local_e0[7] = 0.097;
  local_b0 = *(float *)((int)portal + 0x14);
  fStack_114 = *(float *)((int)portal + 0x20);
  local_e0[2] = -0.301;
  local_e0[3] = 0.41;
  local_e0[8] = fStack_114;
  fStack_bc = *(float *)((int)portal + 0x24);
  fStack_b8 = fStack_114;
  fStack_b4 = fStack_114;
  fVar15 = fStack_114 - local_b0;
  fVar16 = *(float *)((int)portal + 0x24) - *(float *)((int)portal + 0x18);
  fVar6 = fVar15 * fVar15;
  fVar7 = fVar16 * fVar16;
  fVar11 = fVar7 + fVar6;
  fVar12 = fVar7 + fVar6;
  fVar13 = fVar7 + fVar6;
  fVar7 = fVar7 + fVar6;
  auVar14._4_4_ = fVar12;
  auVar14._0_4_ = fVar11;
  auVar14._8_4_ = fVar13;
  auVar14._12_4_ = fVar7;
  auVar14 = rsqrtps(in_XMM3,auVar14);
  fVar6 = auVar14._0_4_;
  fVar8 = auVar14._4_4_;
  fVar9 = auVar14._8_4_;
  fVar10 = auVar14._12_4_;
  fVar6 = (1.0 - fVar6 * fVar6 * fVar11) * fVar6 * 0.5 + fVar6;
  fVar8 = (1.0 - fVar8 * fVar8 * fVar12) * fVar8 * 0.5 + fVar8;
  fVar9 = (1.0 - fVar9 * fVar9 * fVar13) * fVar9 * 0.5 + fVar9;
  fVar10 = (1.0 - fVar10 * fVar10 * fVar7) * fVar10 * 0.5 + fVar10;
  fStack_ac = *(float *)((int)portal + 0x18);
  fStack_a8 = local_b0;
  fStack_a4 = local_b0;
  local_20 = ((1.0 - fVar6 * fVar6 * fVar11) * fVar6 * 0.5 + fVar6) * fVar15;
  fStack_1c = ((1.0 - fVar8 * fVar8 * fVar12) * fVar8 * 0.5 + fVar8) * fVar16;
  fStack_18 = ((1.0 - fVar9 * fVar9 * fVar13) * fVar9 * 0.5 + fVar9) * (fStack_114 - local_b0);
  fStack_14 = ((1.0 - fVar10 * fVar10 * fVar7) * fVar10 * 0.5 + fVar10) * (fStack_114 - local_b0);
  local_125 = true;
  local_124 = 0;
  do {
    local_108.level = *(int *)((int)portal + 0x28);
    fVar6 = local_e0[local_124 * 4];
    fVar7 = local_e0[local_124 * 4 + 1];
    fVar8 = local_e0[local_124 * 4 + 2];
    local_120.x = fVar6 * local_20 + local_b0;
    local_120.z = fVar6 * fStack_1c + fStack_ac;
    fStack_88 = fVar6 * fStack_18 + fStack_a8;
    fStack_84 = fVar6 * fStack_14 + fStack_a4;
    local_90 = local_120.x;
    fStack_8c = local_120.z;
    local_50 = local_120.x;
    fStack_4c = local_120.z;
    fStack_48 = fStack_88;
    fStack_44 = fStack_84;
    local_f0.x = fVar7 * local_20 + local_e0[8];
    local_f0.z = fVar7 * fStack_1c + fStack_bc;
    fStack_68 = fVar7 * fStack_18 + fStack_b8;
    fStack_64 = fVar7 * fStack_14 + fStack_b4;
    local_108.x = local_e0[8] - fVar8 * local_20;
    local_108.z = fStack_bc - fVar8 * fStack_1c;
    fStack_98 = fStack_b8 - fVar8 * fStack_18;
    fStack_94 = fStack_b4 - fVar8 * fStack_14;
    fVar6 = local_e0[local_124 * 4 + 3];
    local_120.level = *(int *)((int)portal + 0x1c);
    local_fc.x = local_b0 - fVar6 * local_20;
    local_fc.z = fStack_ac - fVar6 * fStack_1c;
    fStack_58 = fStack_a8 - fVar6 * fStack_18;
    fStack_54 = fStack_a4 - fVar6 * fStack_14;
    local_fc.level = local_120.level;
    local_f0.level = local_108.level;
    local_a0 = local_108.x;
    fStack_9c = local_108.z;
    local_80 = local_108.x;
    fStack_7c = local_108.z;
    fStack_78 = fStack_98;
    fStack_74 = fStack_94;
    local_70 = local_f0.x;
    fStack_6c = local_f0.z;
    local_60 = local_fc.x;
    fStack_5c = local_fc.z;
    local_40 = local_fc.x;
    fStack_3c = local_fc.z;
    fStack_38 = fStack_58;
    fStack_34 = fStack_54;
    local_30 = local_f0.x;
    fStack_2c = local_f0.z;
    fStack_28 = fStack_68;
    fStack_24 = fStack_64;
    uVar2 = Lot_TestNextLevelAtLocalLocation(lot,&local_f0,1);
    uVar3 = Lot_TestNextLevelAtLocalLocation(lot,&local_108,1);
    uVar4 = Lot_TestNextLevelAtLocalLocation(lot,&local_120,1);
    uVar5 = Lot_TestNextLevelAtLocalLocation(lot,&local_fc,1);
    if (((byte)uVar2 & 1 & (byte)uVar3 & (char)uVar4 == '\0' & (char)uVar5 == '\0') != 0) {
      uVar2 = 0;
      if (local_124 == 0) {
        uVar2 = 0x180780;
      }
      else if (local_124 == 1) {
        uVar2 = 0xc00780;
      }
      start.z = local_120.z;
      start.x = local_120.x;
      start.level = local_120.level;
      end.z = local_f0.z;
      end.x = local_f0.x;
      end.level = local_f0.level;
      backStart.z = local_108.z;
      backStart.x = local_108.x;
      backStart.level = local_108.level;
      backEnd.z = local_fc.z;
      backEnd.x = local_fc.x;
      backEnd.level = local_fc.level;
      bVar1 = LotRouteGraph_AddPortalLocationVariant
                        (local_e4,lot,*(ulonglong *)((int)portal + 8),portal,start,end,backStart,
                         backEnd,(ulonglong)uVar2,true);
      local_125 = (bool)(local_125 & bVar1);
    }
    local_124 = local_124 + 1;
  } while (local_124 < 2);
  return local_125;
}

