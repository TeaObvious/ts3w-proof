/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  float fVar15;
  undefined1 in_XMM3 [16];
  undefined1 auVar16 [16];
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
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
  float local_100 [4];
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  undefined4 local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined4 local_d4;
  undefined4 local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
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
  
  if ((lot != (void *)0x0) && (portal != (void *)0x0)) {
    *(undefined4 *)((int)portal + 0x60) = *(undefined4 *)((int)portal + 0x5c);
    local_104 = this;
    bVar1 = FUN_00523da0(&DAT_011cede0,0x200);
    if (bVar1) {
      local_100[0] = 0.0;
      local_100[2] = 0.0;
      local_f0 = 0;
      local_e8 = 0;
      local_e4 = DAT_00feda34;
      local_e0 = DAT_00feda30;
      local_dc = DAT_00feda2c;
      local_d8 = DAT_00feda28;
      local_d4 = DAT_00feda24;
      local_d0 = DAT_00feda20;
      local_cc = DAT_00feda1c;
      local_c8 = DAT_00feda18;
      local_c4 = DAT_00feda14;
      local_b0 = *(float *)((int)portal + 0x14);
      fStack_134 = *(float *)((int)portal + 0x20);
      local_100[1] = (float)DAT_00feda38;
      local_100[3] = (float)DAT_00feda38;
      local_ec = DAT_00feda10;
      local_c0 = fStack_134;
      fStack_bc = *(float *)((int)portal + 0x24);
      fStack_b8 = fStack_134;
      fStack_b4 = fStack_134;
      fVar20 = fStack_134 - local_b0;
      fVar21 = *(float *)((int)portal + 0x24) - *(float *)((int)portal + 0x18);
      fVar7 = fVar20 * fVar20;
      fVar8 = fVar21 * fVar21;
      fVar13 = fVar8 + fVar7;
      fVar14 = fVar8 + fVar7;
      fVar15 = fVar8 + fVar7;
      fVar8 = fVar8 + fVar7;
      auVar16._4_4_ = fVar14;
      auVar16._0_4_ = fVar13;
      auVar16._8_4_ = fVar15;
      auVar16._12_4_ = fVar8;
      auVar16 = rsqrtps(in_XMM3,auVar16);
      fVar9 = auVar16._0_4_;
      fVar10 = auVar16._4_4_;
      fVar11 = auVar16._8_4_;
      fVar12 = auVar16._12_4_;
      fVar9 = (DAT_00f998f8 - fVar9 * fVar9 * fVar13) * _DAT_00f9b5b4 * fVar9 + fVar9;
      fVar10 = (DAT_00f998f8 - fVar10 * fVar10 * fVar14) * _DAT_00f9b5b4 * fVar10 + fVar10;
      fVar11 = (DAT_00f998f8 - fVar11 * fVar11 * fVar15) * _DAT_00f9b5b4 * fVar11 + fVar11;
      fVar12 = (DAT_00f998f8 - fVar12 * fVar12 * fVar8) * _DAT_00f9b5b4 * fVar12 + fVar12;
      fVar7 = DAT_00f998f8 - fVar9 * fVar9 * fVar13;
      fVar13 = DAT_00f998f8 - fVar10 * fVar10 * fVar14;
      fVar14 = DAT_00f998f8 - fVar11 * fVar11 * fVar15;
      fVar8 = DAT_00f998f8 - fVar12 * fVar12 * fVar8;
      fVar15 = _DAT_00f9b5b4 * fVar9;
      fVar17 = _DAT_00f9b5b4 * fVar10;
      fVar18 = _DAT_00f9b5b4 * fVar11;
      fVar19 = _DAT_00f9b5b4 * fVar12;
      *(undefined4 *)((int)portal + 0x78) = 0x7ff;
      *(undefined4 *)((int)portal + 0x7c) = 0;
      fStack_ac = *(float *)((int)portal + 0x18);
      fStack_a8 = local_b0;
      fStack_a4 = local_b0;
      local_20 = (fVar7 * fVar15 + fVar9) * fVar20;
      fStack_1c = (fVar13 * fVar17 + fVar10) * fVar21;
      fStack_18 = (fVar14 * fVar18 + fVar11) * (fStack_134 - local_b0);
      fStack_14 = (fVar8 * fVar19 + fVar12) * (fStack_134 - local_b0);
      local_145 = true;
      local_144 = 0;
      do {
        local_120 = *(int *)((int)portal + 0x28);
        fVar7 = local_100[local_144 * 4];
        fVar8 = local_100[local_144 * 4 + 1];
        fVar13 = local_100[local_144 * 4 + 2];
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
        local_110 = fVar8 * local_20 + local_c0;
        local_10c = fVar8 * fStack_1c + fStack_bc;
        fStack_68 = fVar8 * fStack_18 + fStack_b8;
        fStack_64 = fVar8 * fStack_14 + fStack_b4;
        local_128 = local_c0 - fVar13 * local_20;
        local_124 = fStack_bc - fVar13 * fStack_1c;
        fStack_98 = fStack_b8 - fVar13 * fStack_18;
        fStack_94 = fStack_b4 - fVar13 * fStack_14;
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
        uVar2 = FUN_00b04ea0(lot,&local_110);
        uVar3 = FUN_00b04ea0(lot,&local_128);
        uVar4 = FUN_00b04ea0(lot,&local_140);
        uVar5 = FUN_00b04ea0(lot,&local_11c);
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
                            (local_104,lot,*(ulonglong *)((int)portal + 8),portal,start,end,
                             backStart,backEnd,(ulonglong)uVar6,true);
          local_145 = (bool)(local_145 & bVar1);
        }
        local_144 = local_144 + 1;
      } while (local_144 < 4);
      return local_145;
    }
    return true;
  }
  return false;
}

