/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst: original PC 1.67 portal contract. Reconciles transformed object routing-slot pairs
   against existing graph portals. Kind0 selects
   PoolHelper/PoolLadder/StairsHelper/PlatformHelper/FountainHelper object type. Stairs kind3
   reverses pair order (table0082d6dc); kinds5/6 span two slots. Slot transforms produce world X/Z
   plus selected signed lot level, deduplicate same endpoints, create type0xb0c2 animated portals,
   attach variants and remove stale portals. Returns changed count. Jump-table override derives
   solely from original six DWORDs. Ghidra still omits kind6 alias to kind5 in switch display: both
   original entries target0082d1db and use pair(i,i+2). Displayed pointer/float local casts from
   SIMD spills are artifacts; local-level MOV stores are authoritative. */

uint __thiscall RoutingManager_ReconcileSlotPortals(void *this,ulonglong objectId,uint kind)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  TS3WPortalXZLevel start;
  TS3WPortalXZLevel end;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  void *pvVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  int *lot;
  void *pvVar12;
  int *piVar13;
  int *piVar14;
  uint uVar15;
  undefined4 uVar16;
  uint uVar17;
  bool bVar18;
  wchar_t *pwVar19;
  char local_1e3;
  char local_1e2;
  void *pvStack_1d8;
  float local_1d4;
  uint local_1d0;
  void *local_1cc;
  uint local_1c8;
  uint local_1c4;
  void *local_1c0;
  int *local_1bc;
  undefined1 local_1b8 [8];
  int local_1b0;
  uchar local_1ac [8];
  undefined1 auStack_1a4 [8];
  float local_19c;
  int local_198;
  uint local_194;
  _GUID local_190;
  _GUID local_180;
  int *local_170;
  int *local_16c;
  undefined4 local_168;
  int *local_164;
  undefined1 local_160 [8];
  float local_158;
  int *local_154;
  undefined1 local_150 [8];
  float local_148;
  int *local_144;
  undefined8 uStack_140;
  undefined4 uStack_138;
  undefined4 uStack_134;
  undefined8 uStack_128;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  float fStack_114;
  float local_110;
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
  ulong uStack_d0;
  ushort uStack_cc;
  ushort uStack_ca;
  float fStack_c8;
  int *piStack_c4;
  ulong uStack_c0;
  ushort uStack_bc;
  ushort uStack_ba;
  float fStack_b8;
  int *piStack_b4;
  ulong uStack_b0;
  float fStack_ac;
  float fStack_a8;
  ulong uStack_a0;
  ushort uStack_9c;
  ushort uStack_9a;
  float fStack_98;
  int *piStack_94;
  ulong uStack_90;
  ushort uStack_8c;
  ushort uStack_8a;
  float fStack_88;
  int *piStack_84;
  ulong uStack_80;
  ushort uStack_7c;
  ushort uStack_7a;
  float fStack_78;
  int *piStack_74;
  ulong uStack_70;
  float fStack_6c;
  float fStack_68;
  ulong uStack_60;
  ushort uStack_5c;
  ushort uStack_5a;
  float fStack_58;
  int *piStack_54;
  undefined1 local_50 [76];
  
  if (*(char *)((int)this + 0x974) == '\0') {
    return 0;
  }
  local_1cc = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    return 0;
  }
  pvVar8 = ObjectRegistry_GetGlobal();
  if (pvVar8 == (void *)0x0) {
    return 0;
  }
  pvVar8 = ObjectRegistry_FindBorrowed(pvVar8,objectId);
  if (pvVar8 == (void *)0x0) {
    return 0;
  }
  iVar9 = FUN_0068f130((int)pvVar8);
  if (iVar9 == 0) {
    return 0;
  }
  iVar10 = FUN_0068f130((int)pvVar8);
  iVar9 = *(int *)(iVar10 + 0x48);
  iVar10 = *(int *)(iVar10 + 0x4c);
  iVar11 = FUN_00c88f20();
  if ((iVar9 == *(int *)(iVar11 + 0x48)) && (iVar10 == *(int *)(iVar11 + 0x4c))) {
    return 0;
  }
  iVar9 = FUN_0068f130((int)pvVar8);
  lot = WorldObjects_FindLotByGuid
                  (local_1cc,*(uint *)(iVar9 + 0x48),*(uint *)(iVar9 + 0x4c),(uint *)0x0);
  if (lot == (int *)0x0) {
    return 0;
  }
  local_1cc = (void *)Object_GetTransformComponentOrNull(pvVar8);
  if (local_1cc == (void *)0x0) {
    return 0;
  }
  local_1c0 = (void *)FUN_005805e0(pvVar8);
  if (local_1c0 == (void *)0x0) {
    return 0;
  }
  local_1c4 = local_1c4 & 0xffffff00;
  local_1e3 = '\0';
  if (kind == 0) {
    pwVar19 = L"PoolHelper";
    pvVar12 = NameGuidMaps_GetGlobal();
    join_0x00000008_0x00000000_ = NameGuidMaps_FindByWideName(pvVar12,(ushort *)pwVar19);
    pwVar19 = L"PoolLadder";
    local_198 = 0x319e4f1d;
    local_194 = kind;
    pvVar12 = NameGuidMaps_GetGlobal();
    local_190._0_8_ = NameGuidMaps_FindByWideName(pvVar12,(ushort *)pwVar19);
    pwVar19 = L"StairsHelper";
    local_190.Data4[0] = '\x1d';
    local_190.Data4[1] = 'O';
    local_190.Data4[2] = 0x9e;
    local_190.Data4[3] = '1';
    local_190.Data4._4_4_ = kind;
    pvVar12 = NameGuidMaps_GetGlobal();
    local_160 = (undefined1  [8])NameGuidMaps_FindByWideName(pvVar12,(ushort *)pwVar19);
    pwVar19 = L"PlatformHelper";
    local_158 = 4.6073994e-09;
    local_154 = (int *)kind;
    pvVar12 = NameGuidMaps_GetGlobal();
    local_150 = (undefined1  [8])NameGuidMaps_FindByWideName(pvVar12,(ushort *)pwVar19);
    pwVar19 = L"FountainHelper";
    local_148 = 4.6073994e-09;
    local_144 = (int *)kind;
    pvVar12 = NameGuidMaps_GetGlobal();
    local_180._0_8_ = NameGuidMaps_FindByWideName(pvVar12,(ushort *)pwVar19);
    local_1b8._4_4_ = *(float *)((int)pvVar8 + 0x1c);
    local_1b0 = *(int *)((int)pvVar8 + 0x20);
    local_1b8._0_4_ = *(float *)((int)pvVar8 + 0x18);
    local_1ac._0_4_ = *(undefined4 *)((int)pvVar8 + 0x24);
    local_180.Data4[0] = '\x1d';
    local_180.Data4[1] = 'O';
    local_180.Data4[2] = 0x9e;
    local_180.Data4[3] = '1';
    local_180.Data4._4_4_ = kind;
    iVar9 = _AfxIsEqualGUID((_GUID *)local_1b8,(_GUID *)(auStack_1a4 + 4));
    if (((char)iVar9 == '\0') &&
       (iVar9 = _AfxIsEqualGUID((_GUID *)local_1b8,&local_180), (char)iVar9 == '\0')) {
      iVar9 = _AfxIsEqualGUID((_GUID *)local_1b8,&local_190);
      if ((char)iVar9 == '\0') {
        iVar9 = _AfxIsEqualGUID((_GUID *)local_1b8,(_GUID *)local_160);
        if ((char)iVar9 == '\0') {
          iVar9 = _AfxIsEqualGUID((_GUID *)local_1b8,(_GUID *)local_150);
          if ((char)iVar9 != '\0') {
            kind = 4;
            local_1c4 = CONCAT31(local_1c4._1_3_,1);
          }
        }
        else {
          kind = 3;
        }
      }
      else {
        kind = 2;
      }
    }
    else {
      kind = 1;
      iVar9 = _AfxIsEqualGUID((_GUID *)local_1b8,&local_180);
      local_1e3 = (char)iVar9;
    }
  }
  if ((local_1e3 != '\0') || (bVar5 = true, kind != 1)) {
    bVar5 = false;
  }
  bVar18 = kind == 2;
  bVar6 = FlagWord_TestAnyMask(&DAT_011cede0,0x200);
  switch(kind - 1) {
  case 0:
    local_1d4 = 300.0;
    break;
  case 1:
    local_1d4 = 296.0;
    break;
  case 2:
    local_1d4 = 5.0;
    break;
  case 3:
    local_1d4 = 6.0;
    break;
  case 4:
    local_1d4 = 295.0;
    goto LAB_0082d087;
  case 5:
    local_1d4 = 295.5;
LAB_0082d087:
    bVar18 = true;
    break;
  default:
    goto switchD_0082d046_default;
  }
  uVar15 = *(uint *)((int)local_1c0 + 8);
  if ((kind == 5) || (kind == 6)) {
    if (uVar15 == 3) goto LAB_0082d154;
  }
  else {
    if ((uVar15 & 1) == 0) {
LAB_0082d154:
      local_170 = (int *)0x0;
      local_16c = (int *)0x0;
      local_168 = 0;
      local_164 = (int *)0x10055e8;
      LotRouteGraph_CollectObjectPortals(*(void **)((int)this + 0x95c),lot,objectId,&local_170);
      local_1d0 = 0;
      local_1e2 = '\0';
      TransformComponent_GetWorldMatrix(local_1cc,&local_110);
      if ((void *)(uVar15 >> 1) != (void *)0x0) {
        local_1c8 = 0;
        local_1cc = (void *)(uVar15 >> 1);
        do {
          uVar15 = local_1c8;
                    /* WARNING: Switch is manually overridden */
          switch(kind) {
          default:
            uVar17 = local_1c8 + 1;
            break;
          case 3:
            uVar15 = local_1c8 + 1;
            uVar17 = local_1c8;
            break;
          case 5:
            uVar17 = local_1c8 + 2;
          }
          piVar13 = (int *)FUN_0094fe50(local_1c0,uVar15);
          piVar14 = (int *)FUN_0094fe50(local_1c0,uVar17);
          if (((*(byte *)(piVar13 + 2) & 1) == 0) && ((*(byte *)(piVar14 + 2) & 1) == 0)) {
            iVar9 = (**(code **)(*piVar13 + 0x14))(local_50);
            fVar1 = *(float *)(iVar9 + 0x30);
            fVar2 = *(float *)(iVar9 + 0x34);
            fVar3 = *(float *)(iVar9 + 0x38);
            fVar4 = *(float *)(iVar9 + 0x3c);
            local_164 = (int *)(fVar2 * fStack_104 + fVar1 * fStack_114 + fVar3 * fStack_f4 +
                               fVar4 * fStack_e4);
            local_158 = fVar2 * fStack_f8 + fVar1 * fStack_108 + fVar3 * fStack_e8 +
                        fVar4 * fStack_d8;
            local_160._4_4_ =
                 fVar2 * fStack_fc + fVar1 * fStack_10c + fVar3 * fStack_ec + fVar4 * fStack_dc;
            local_160._0_4_ =
                 fVar2 * fStack_100 + fVar1 * local_110 + fVar3 * fStack_f0 + fVar4 * fStack_e0;
            auStack_1a4._0_4_ = -1.0;
            stack0xfffffe60 = 0xbf800000;
            Lot_WorldPositionToPortalLocalXZLevel(lot,&local_164,(TS3WPortalXZLevel *)auStack_1a4);
            piStack_74 = local_164;
            uStack_70 = local_160._0_4_;
            fStack_6c = (float)local_160._4_4_;
            fStack_68 = local_158;
            piStack_b4 = local_164;
            uStack_b0 = local_160._0_4_;
            fStack_ac = (float)local_160._4_4_;
            fStack_a8 = local_158;
            local_1bc = local_164;
            local_1b8._4_4_ = local_19c;
            local_1b8._0_4_ = local_160._4_4_;
            iVar9 = (**(code **)(*piVar14 + 0x14))(&piStack_54);
            fVar1 = *(float *)(iVar9 + 0x30);
            fVar2 = *(float *)(iVar9 + 0x34);
            fVar3 = *(float *)(iVar9 + 0x38);
            fVar4 = *(float *)(iVar9 + 0x3c);
            local_148 = fVar1 * fStack_108 + fVar2 * fStack_f8 + fVar3 * fStack_e8 +
                        fVar4 * fStack_d8;
            local_144 = (int *)(fVar1 * fStack_104 + fVar2 * fStack_f4 + fVar3 * fStack_e4 +
                               fVar4 * fStack_d4);
            local_150._4_4_ =
                 fVar1 * fStack_10c + fVar2 * fStack_fc + fVar3 * fStack_ec + fVar4 * fStack_dc;
            local_150._0_4_ =
                 fVar1 * local_110 + fVar2 * fStack_100 + fVar3 * fStack_f0 + fVar4 * fStack_e0;
            local_190.Data1 = 0xbf800000;
            local_190.Data2 = 0;
            local_190.Data3 = 0xbf80;
            local_190.Data4[0] = '\0';
            local_190.Data4[1] = '\0';
            local_190.Data4[2] = '\0';
            local_190.Data4[3] = '\0';
            Lot_WorldPositionToPortalLocalXZLevel(lot,local_150,(TS3WPortalXZLevel *)&local_190);
            local_180.Data4[0] = local_190.Data4[0];
            local_180.Data4[1] = local_190.Data4[1];
            local_180.Data4[2] = local_190.Data4[2];
            local_180.Data4[3] = local_190.Data4[3];
            uStack_90 = local_150._0_4_;
            uStack_8c = local_150._4_2_;
            uStack_8a = local_150._6_2_;
            fStack_88 = local_148;
            piStack_84 = local_144;
            uStack_d0 = local_150._0_4_;
            uStack_cc = local_150._4_2_;
            uStack_ca = local_150._6_2_;
            fStack_c8 = local_148;
            piStack_c4 = local_144;
            local_180._0_8_ = CONCAT44(local_148,local_150._0_4_);
            bVar7 = RoutingManager_FindMatchingPortalEndpoints
                              (this,&local_170,*(ulonglong *)(lot + 0x12),
                               (TS3WPortalXZLevel *)local_1b8,(TS3WPortalXZLevel *)&local_180,
                               &local_1bc);
            if (bVar7) {
              FUN_00aa7dc0(&local_170,local_1bc);
            }
            else {
              if (local_1d0 == 0) {
                uVar16 = FUN_006322c0(*(void **)((int)this + 0x95c),lot[0x12],lot[0x13]);
                local_1e2 = (char)uVar16;
              }
              FUN_0055dd00((undefined4 *)&uStack_140);
              uStack_138 = 0;
              uStack_134 = 0xb0c2;
              uStack_140 = objectId;
              FUN_0055dd00((undefined4 *)&uStack_128);
              uStack_120 = 0;
              pvStack_1d8 = (void *)0x0;
              uStack_11c = 0xb0c2;
              if ((kind == 5) || (auStack_1a4._0_4_ = auStack_1a4._0_4_ & 0xffffff00, kind == 6)) {
                auStack_1a4[0] = 1;
              }
              uStack_80 = local_150._0_4_;
              uStack_7c = local_150._4_2_;
              uStack_7a = local_150._6_2_;
              fStack_78 = local_148;
              piStack_74 = local_144;
              uStack_a0 = local_150._0_4_;
              uStack_9c = local_150._4_2_;
              uStack_9a = local_150._6_2_;
              fStack_98 = local_148;
              piStack_94 = local_144;
              uStack_60 = local_160._0_4_;
              uStack_5c = local_160._4_2_;
              uStack_5a = local_160._6_2_;
              fStack_58 = local_158;
              piStack_54 = local_154;
              uStack_c0 = local_160._0_4_;
              uStack_bc = local_160._4_2_;
              uStack_ba = local_160._6_2_;
              fStack_b8 = local_158;
              piStack_b4 = local_154;
              start.z = local_158;
              start.x = (float)local_160._0_4_;
              start.level = local_198;
              end.z = local_148;
              end.x = (float)local_150._0_4_;
              end.level._0_1_ = local_190.Data4[0];
              end.level._1_1_ = local_190.Data4[1];
              end.level._2_1_ = local_190.Data4[2];
              end.level._3_1_ = local_190.Data4[3];
              uStack_128 = objectId;
              uVar15 = LotRouteGraph_CreatePortal
                                 (*(void **)((int)this + 0x95c),lot,objectId,start,&uStack_140,end,
                                  &uStack_128,local_1d4,0,auStack_1a4[0],0xffffffffffffffff,
                                  &pvStack_1d8,SUB41(local_1c4,0),0xffffffff);
              if (uVar15 != 0) {
                local_1d0 = local_1d0 + 1;
              }
              if (bVar6) {
                if (kind == 3) {
                  LotRouteGraph_AddStairPetVariants(*(void **)((int)this + 0x95c),lot,pvStack_1d8);
                }
                else if ((char)local_1c4 == '\0') {
                  if (bVar5) {
                    pvVar8 = *(void **)((int)this + 0x95c);
                    bVar7 = false;
LAB_0082d608:
                    LotRouteGraph_AddDirectionalAnimalVariants(pvVar8,lot,pvStack_1d8,bVar7);
                  }
                  else if (bVar18) {
                    *(undefined4 *)((int)pvStack_1d8 + 0x78) = 0x7ff;
                    *(undefined4 *)((int)pvStack_1d8 + 0x7c) = 0;
                  }
                  else if (local_1e3 != '\0') {
                    pvVar8 = *(void **)((int)this + 0x95c);
                    bVar7 = true;
                    goto LAB_0082d608;
                  }
                }
                else {
                  LotRouteGraph_AddAdditionalAnimalVariants
                            (*(void **)((int)this + 0x95c),lot,pvStack_1d8);
                }
              }
            }
          }
          local_1c8 = local_1c8 + 2;
          local_1cc = (void *)((int)local_1cc - 1);
        } while (local_1cc != (void *)0x0);
      }
      if (((int)local_16c - (int)local_170 >> 2 != 0) &&
         (local_1bc = local_16c, piVar13 = local_170, local_170 != local_16c)) {
        do {
          uVar16 = FUN_00636950(*(void **)((int)this + 0x95c),(int)lot,*piVar13);
          if ((char)uVar16 != '\0') {
            local_1d0 = local_1d0 + 1;
          }
          piVar13 = piVar13 + 1;
        } while (piVar13 != local_1bc);
      }
      uVar15 = local_1d0;
      if (local_1d0 != 0) {
        FUN_00631730(*(void **)((int)this + 0x95c),lot[0x12],lot[0x13]);
        if (local_1e2 != '\0') {
          FUN_00632310(*(void **)((int)this + 0x95c),lot[0x12],lot[0x13]);
        }
      }
      FUN_00626e50((int *)&local_170);
      return uVar15;
    }
    local_50[0] = 0;
    switch(kind - 1) {
    case 0:
      FUN_004fdeb0((int)local_50,"Pool");
      return 0;
    case 1:
      FUN_004fdeb0((int)local_50,"PoolLadder");
      return 0;
    case 2:
      FUN_004fdeb0((int)local_50,"Stairs");
      return 0;
    case 3:
      FUN_004fdeb0((int)local_50,"Platform");
      return 0;
    }
  }
switchD_0082d046_default:
  return 0;
}

