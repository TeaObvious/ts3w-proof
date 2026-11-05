/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original CAW 1.22.10 Sims3Common.dll: Selects first resource type 0x9063660D. Reads uint16
   version and the initial five uint32 fields into terrain +10,+3C,+40,+38,+34; +3C/+40 are terrain
   tile counts and +38 tile size. After version-dependent records, stores chunk counts
   (+tiles+255)>>8 at +CC/+D0 and indexes serialized collision chunks. Collision queries select
   floor(X/Z)>>8 and reject indices outside those counts. These fields do not establish general
   collision topology, complete missing chunks or equality with world-size resource dimensions.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

char __thiscall
CAW_TerrainReadHeaderAndChunkIndex
          (void *this,undefined4 param_1,undefined4 param_2,char param_3,ushort *param_4)

{
  void *_Src;
  int *piVar1;
  int *******pppppppiVar2;
  uint *puVar3;
  size_t sVar4;
  float fVar5;
  char cVar6;
  byte bVar7;
  bool bVar8;
  uint uVar9;
  undefined *_Dst;
  undefined4 uVar10;
  int iVar11;
  undefined4 *puVar12;
  int *piVar13;
  undefined *puVar14;
  uint uVar15;
  uint *puVar16;
  uint *puVar17;
  int *******pppppppiVar18;
  uint *puVar19;
  undefined8 uVar20;
  uint *local_e4;
  undefined1 local_e0 [8];
  int *local_d8;
  char local_cc;
  void *local_c8;
  void *local_c4;
  uint *local_c0;
  undefined *local_bc;
  undefined2 *local_b8;
  char *local_b4;
  undefined8 local_b0;
  undefined2 *local_a8;
  undefined2 *local_a4;
  char *local_a0;
  uint *puStack_8c;
  byte bStack_86;
  byte bStack_85;
  void *local_84;
  uint *local_80;
  uint local_7c;
  int ******local_78;
  int ******local_74;
  char *local_70;
  undefined4 local_6c;
  uint *puStack_64;
  undefined8 local_60;
  int ******local_58;
  int ******local_54;
  char *local_50 [2];
  int local_48;
  uint local_40;
  uint uStack_3c;
  uint local_38;
  undefined4 local_34;
  int ******local_30;
  int ******local_2c;
  uint uStack_28;
  uint uStack_24;
  uint uStack_20;
  uint uStack_1c;
  uint uStack_18;
  uint local_14 [4];
  
  local_84 = this;
  FUN_105ca890(local_e0,param_1,param_2);
  cVar6 = CAW_ResourceReaderOpenFirstOfType(local_e0,0x9063660d);
  if (cVar6 == '\0') goto LAB_101ffb8e;
  uVar9 = FUN_10912550(local_d8,param_4);
  FUN_105ca960(local_e0,(byte)uVar9);
  if ((*param_4 < 7) || ((param_3 != '\0' && (*param_4 < 8)))) {
    FUN_105ca960(local_e0,0);
    local_cc = '\0';
    goto LAB_101febf5;
  }
  uVar9 = FUN_10912610(local_d8,(uint *)((int)this + 0x10));
  FUN_105ca960(local_e0,(byte)uVar9);
  uVar9 = FUN_10912610(local_d8,(uint *)((int)this + 0x3c));
  FUN_105ca960(local_e0,(byte)uVar9);
  uVar9 = FUN_10912610(local_d8,(uint *)((int)this + 0x40));
  FUN_105ca960(local_e0,(byte)uVar9);
  uVar9 = FUN_10912610(local_d8,(uint *)((int)this + 0x38));
  FUN_105ca960(local_e0,(byte)uVar9);
  uVar9 = FUN_10912610(local_d8,(uint *)((int)this + 0x34));
  FUN_105ca960(local_e0,(byte)uVar9);
  if (*param_4 < 9) {
    uVar9 = 0;
    do {
      uVar20 = FUN_105c3950(*(char **)((int)&PTR_s_rock01_10ac7238 + uVar9));
      local_b0 = uVar20;
      puVar12 = FUN_10926db0(&local_c0,*(LPCWSTR *)((int)&PTR_s_rock01_10ac7238 + uVar9),0xffffffff,
                             (char *)0x0);
      local_58 = (int ******)0xb2d882;
      local_54 = (int ******)0x0;
      local_60 = local_b0;
      FUN_1006a320(local_50,puVar12);
      FUN_101fc450((void *)((int)this + 0x44),(undefined4 *)&local_60);
      if ((2 < (int)(local_48 - (int)local_50[0] & 0xfffffffeU)) && (local_50[0] != (char *)0x0)) {
        FUN_10918e90((int)local_50[0]);
      }
      if ((2 < (int)((int)local_b8 - (int)local_c0 & 0xfffffffeU)) && (local_c0 != (uint *)0x0)) {
        FUN_10918e90((int)local_c0);
      }
      uVar9 = uVar9 + 4;
    } while (uVar9 < 0x20);
  }
  else {
    uVar9 = FUN_10912610(local_d8,(uint *)&local_c8);
    FUN_105ca960(local_e0,(byte)uVar9);
    FUN_101faf80(*(uint *)((int)this + 0x44),*(uint *)((int)this + 0x48));
    *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)this + 0x44);
    local_e4 = (void *)0x0;
    if (local_c8 != (void *)0x0) {
      do {
        local_78 = (int ******)0x0;
        local_74 = (int ******)0x0;
        local_70 = (char *)0x0;
        local_6c = 0;
        bVar7 = FUN_105ca6d0(local_d8,(uint *)&local_78);
        FUN_105ca960(local_e0,bVar7);
        local_c0 = (uint *)&_Dst_10ca8244;
        local_bc = &_Dst_10ca8244;
        local_b4 = "Terrain/TextureName";
        local_b8 = &DAT_10ca8246;
        FUN_105cc5d0(local_e0,&local_c0);
        FUN_105cb1d0(&local_38,(uint *)&local_78);
        local_60._4_4_ = local_34;
        local_60._0_4_ = local_38;
        local_58 = local_30;
        local_54 = local_2c;
        FUN_1006a320(local_50,&local_c0);
        FUN_101fc450((undefined4 *)((int)this + 0x44),(undefined4 *)&local_60);
        if ((2 < (int)(local_48 - (int)local_50[0] & 0xfffffffeU)) && (local_50[0] != (char *)0x0))
        {
          FUN_10918e90((int)local_50[0]);
        }
        if ((2 < (int)((int)local_b8 - (int)local_c0 & 0xfffffffeU)) && (local_c0 != (uint *)0x0)) {
          FUN_10918e90((int)local_c0);
        }
        local_e4 = (uint *)((int)local_e4 + 1);
      } while (local_e4 < local_c8);
    }
  }
  if (*param_4 < 0xc) {
    if (*param_4 < 9) {
      local_e4 = (void *)0x0;
      local_c4 = (void *)(*(int *)((int)this + 0x48) - *(int *)((int)this + 0x44) >> 5);
      if (local_c4 != (void *)0x0) {
        do {
          local_c0 = (uint *)&_Dst_10ca8244;
          local_bc = &_Dst_10ca8244;
          local_b4 = "Terrain/layerName";
          local_b8 = &DAT_10ca8246;
          FUN_100722f0(&local_c0,(ushort *)L"Layer%d");
          iVar11 = (int)local_bc - (int)local_c0 >> 1;
          uVar9 = iVar11 + 1;
          local_b0._0_4_ = (undefined2 *)0x0;
          local_a0 = local_b4;
          if (uVar9 < 2) {
            puVar14 = &_Dst_10ca8244;
            local_a4 = &DAT_10ca8246;
          }
          else {
            uVar9 = uVar9 * 2;
            puVar14 = (undefined *)FUN_10918eb0(uVar9,local_b4,0);
            local_a4 = (undefined2 *)(puVar14 + uVar9);
            this = local_84;
          }
          sVar4 = iVar11 * 2;
          local_b0._4_4_ = puVar14;
          memmove(puVar14,local_c0,sVar4);
          local_a8 = (undefined2 *)(puVar14 + sVar4);
          *local_a8 = 0;
          puVar12 = *(undefined4 **)((int)this + 0x58);
          if (puVar12 < *(undefined4 **)((int)this + 0x5c)) {
            *(undefined4 **)((int)this + 0x58) = puVar12 + 5;
            if (puVar12 != (undefined4 *)0x0) {
              *puVar12 = 0;
              FUN_1006a320(puVar12 + 1,(undefined4 *)((int)&local_b0 + 4));
            }
          }
          else {
            FUN_101fc5e0((void *)((int)this + 0x54),puVar12,(undefined4 *)&local_b0);
            puVar14 = local_b0._4_4_;
          }
          if ((2 < (int)((int)local_a4 - (int)puVar14 & 0xfffffffeU)) &&
             (puVar14 != (undefined *)0x0)) {
            FUN_10918e90((int)puVar14);
          }
          if ((2 < (int)((int)local_b8 - (int)local_c0 & 0xfffffffeU)) && (local_c0 != (uint *)0x0))
          {
            FUN_10918e90((int)local_c0);
          }
          local_e4 = (uint *)((int)local_e4 + 1);
        } while (local_e4 < local_c4);
      }
    }
    else {
      local_e4 = *(uint **)((int)this + 0x44);
      local_80 = *(uint **)((int)this + 0x48);
      local_c4 = (void *)DAT_10c700c4;
      local_c8 = (void *)0x0;
      if (local_e4 != local_80) {
        do {
          local_c0 = (uint *)&_Dst_10ca8244;
          local_bc = &_Dst_10ca8244;
          local_b4 = "Terrain/layerName";
          local_b8 = &DAT_10ca8246;
          FUN_100722f0(&local_c0,(ushort *)L"Layer%d");
          uVar10 = FUN_10233670(local_e4);
          iVar11 = (int)local_bc - (int)local_c0 >> 1;
          uVar9 = iVar11 + 1;
          local_a0 = local_b4;
          local_b0._0_4_ = (undefined2 *)uVar10;
          if (uVar9 < 2) {
            puVar14 = &_Dst_10ca8244;
            local_a4 = &DAT_10ca8246;
          }
          else {
            uVar9 = uVar9 * 2;
            puVar14 = (undefined *)FUN_10918eb0(uVar9,local_b4,0);
            local_a4 = (undefined2 *)(puVar14 + uVar9);
            this = local_84;
          }
          sVar4 = iVar11 * 2;
          local_b0._4_4_ = puVar14;
          memmove(puVar14,local_c0,sVar4);
          local_a8 = (undefined2 *)(puVar14 + sVar4);
          *local_a8 = 0;
          puVar12 = *(undefined4 **)((int)this + 0x58);
          if (puVar12 < *(undefined4 **)((int)this + 0x5c)) {
            *(undefined4 **)((int)this + 0x58) = puVar12 + 5;
            if (puVar12 != (undefined4 *)0x0) {
              *puVar12 = (undefined2 *)local_b0;
              FUN_1006a320(puVar12 + 1,(undefined4 *)((int)&local_b0 + 4));
            }
          }
          else {
            FUN_101fc5e0((void *)((int)this + 0x54),puVar12,(undefined4 *)&local_b0);
            puVar14 = local_b0._4_4_;
          }
          if ((2 < (int)((int)local_a4 - (int)puVar14 & 0xfffffffeU)) &&
             (puVar14 != (undefined *)0x0)) {
            FUN_10918e90((int)puVar14);
          }
          local_c8 = (void *)((int)local_c8 + 1);
          if ((2 < (int)((int)local_b8 - (int)local_c0 & 0xfffffffeU)) && (local_c0 != (uint *)0x0))
          {
            FUN_10918e90((int)local_c0);
          }
          local_e4 = local_e4 + 8;
        } while (local_e4 != local_80);
      }
    }
  }
  else {
    uVar9 = FUN_10912610(local_d8,(uint *)&local_c8);
    FUN_105ca960(local_e0,(byte)uVar9);
    FUN_101fafc0(*(uint *)((int)this + 0x54),*(uint *)((int)this + 0x58));
    *(undefined4 *)((int)this + 0x58) = *(undefined4 *)((int)this + 0x54);
    local_e4 = (void *)0x0;
    if (local_c8 != (void *)0x0) {
      do {
        uVar9 = FUN_10912610(local_d8,(uint *)&local_c4);
        FUN_105ca960(local_e0,(byte)uVar9);
        local_b4 = "Terrain/layerName";
        local_c0 = (uint *)&_Dst_10ca8244;
        local_bc = &_Dst_10ca8244;
        local_b8 = &DAT_10ca8246;
        FUN_105cc5d0(local_e0,&local_c0);
        puVar14 = local_bc;
        local_b0._0_4_ = local_c4;
        uVar9 = ((int)local_bc - (int)local_c0 >> 1) + 1;
        local_a0 = local_b4;
        local_80 = local_c0;
        if (uVar9 < 2) {
          _Dst = &_Dst_10ca8244;
          local_a4 = &DAT_10ca8246;
        }
        else {
          uVar9 = uVar9 * 2;
          _Dst = (undefined *)FUN_10918eb0(uVar9,local_b4,0);
          local_a4 = (undefined2 *)(_Dst + uVar9);
          this = local_84;
        }
        sVar4 = ((int)puVar14 - (int)local_80 >> 1) * 2;
        local_b0._4_4_ = _Dst;
        memmove(_Dst,local_80,sVar4);
        local_a8 = (undefined2 *)(_Dst + sVar4);
        *local_a8 = 0;
        puVar17 = *(uint **)((int)this + 0x58);
        if (puVar17 < *(uint **)((int)this + 0x5c)) {
          *(uint **)((int)this + 0x58) = puVar17 + 5;
          if (puVar17 != (uint *)0x0) {
            *puVar17 = (uint)(undefined2 *)local_b0;
            FUN_1006a320(puVar17 + 1,(undefined4 *)((int)&local_b0 + 4));
          }
        }
        else {
          FUN_101fc5e0((void *)((int)this + 0x54),puVar17,(undefined4 *)&local_b0);
          _Dst = local_b0._4_4_;
        }
        if ((2 < (int)((int)local_a4 - (int)_Dst & 0xfffffffeU)) && (_Dst != (undefined *)0x0)) {
          FUN_10918e90((int)_Dst);
        }
        if ((2 < (int)((int)local_b8 - (int)local_c0 & 0xfffffffeU)) && (local_c0 != (uint *)0x0)) {
          FUN_10918e90((int)local_c0);
        }
        local_e4 = (uint *)((int)local_e4 + 1);
      } while (local_e4 < local_c8);
    }
  }
  if (*param_4 < 8) {
    uVar9 = FUN_10912610(local_d8,&local_7c);
    FUN_105ca960(local_e0,(byte)uVar9);
    uVar9 = FUN_10912610(local_d8,&local_40);
    FUN_105ca960(local_e0,(byte)uVar9);
    if (7 < *param_4) goto LAB_101ff408;
    FUN_101fe680((int)this);
  }
  else {
LAB_101ff408:
    uVar9 = FUN_10912610(local_d8,(uint *)&local_c8);
    FUN_105ca960(local_e0,(byte)uVar9);
    if (local_cc == '\0') {
LAB_101febf5:
      FUN_105ca900((int)local_e0);
      return '\0';
    }
    FUN_101fd640(*(uint *)((int)this + 0xac),*(uint *)((int)this + 0xb0));
    *(undefined4 *)((int)this + 0xb0) = *(undefined4 *)((int)this + 0xac);
    FUN_101fe590((undefined4 *)((int)this + 0xac),(uint)local_c8);
    uVar15 = *(int *)((int)this + 0x3c) + 0xffU >> 8;
    uVar9 = *(int *)((int)this + 0x40) + 0xffU >> 8;
    *(uint *)((int)this + 0xd0) = uVar9;
    uVar9 = uVar9 * uVar15;
    *(uint *)((int)this + 0xcc) = uVar15;
    puVar12 = *(undefined4 **)((int)this + 0xc0);
    uVar15 = (int)puVar12 - *(int *)((int)this + 0xbc) >> 2;
    local_c4 = (void *)0x0;
    if (uVar9 < uVar15 || uVar9 - uVar15 == 0) {
      local_c4 = (void *)(*(int *)((int)this + 0xbc) + uVar9 * 4);
      memmove(local_c4,puVar12,0);
      *(int *)((int)this + 0xc0) =
           *(int *)((int)this + 0xc0) + ((int)puVar12 - (int)local_c4 >> 2) * -4;
    }
    else {
      FUN_10506500((void *)((int)this + 0xbc),puVar12,uVar9 - uVar15,&local_c4);
    }
    local_c4 = (void *)0x0;
    if (local_c8 != (void *)0x0) {
      local_e4 = (uint *)0x0;
      do {
        puVar17 = (uint *)(*(int *)((int)local_84 + 0xac) + (int)local_e4);
        uVar9 = FUN_10912610(local_d8,local_14);
        FUN_105ca960(local_e0,(byte)uVar9);
        iVar11 = (**(code **)(*local_d8 + 0x24))(0);
        local_7c = iVar11 + local_14[0];
        uVar9 = FUN_10912610(local_d8,puVar17);
        FUN_105ca960(local_e0,(byte)uVar9);
        uVar9 = FUN_10912610(local_d8,puVar17 + 1);
        FUN_105ca960(local_e0,(byte)uVar9);
        uVar9 = FUN_10912610(local_d8,puVar17 + 2);
        FUN_105ca960(local_e0,(byte)uVar9);
        uVar9 = FUN_10912610(local_d8,puVar17 + 3);
        FUN_105ca960(local_e0,(byte)uVar9);
        uVar9 = FUN_10912610(local_d8,puVar17 + 4);
        FUN_105ca960(local_e0,(byte)uVar9);
        uVar9 = FUN_10912610(local_d8,puVar17 + 5);
        FUN_105ca960(local_e0,(byte)uVar9);
        uVar9 = FUN_10912610(local_d8,&uStack_20);
        FUN_105ca960(local_e0,(byte)uVar9);
        if (local_cc == '\0') goto LAB_101febf5;
        _Src = (void *)puVar17[0x10];
        uVar9 = puVar17[0xf];
        if ((int)_Src - uVar9 < uStack_20) {
          bStack_86 = 0;
          FUN_100011f0(puVar17 + 0xf,_Src,(void *)((uVar9 - (int)_Src) + uStack_20),&bStack_86);
        }
        else {
          puStack_8c = (uint *)(uVar9 + uStack_20);
          memmove(puStack_8c,_Src,0);
          puVar17[0x10] = (uint)((int)puStack_8c + (puVar17[0x10] - (int)_Src));
        }
        uVar9 = puVar17[0xf];
        bVar8 = FUN_109124d0(local_d8,uVar9,puVar17[0x10] - uVar9);
        FUN_105ca960(local_e0,bVar8);
        local_a8 = (undefined2 *)puVar17[5];
        local_b0._0_4_ = (undefined2 *)puVar17[4];
        local_b0._4_4_ = (undefined *)0x0;
        puVar17[8] = (uint)(undefined2 *)local_b0;
        puVar17[9] = 0;
        puVar17[10] = (uint)local_a8;
        puVar17[0xb] = (uint)(undefined2 *)local_b0;
        local_a4 = (undefined2 *)local_b0;
        puVar12 = (undefined4 *)FUN_10918ed0(0xb0,0x10,0,"Terrain/TerrainData/KDTree",0);
        if (puVar12 == (undefined4 *)0x0) {
          piVar13 = (int *)0x0;
        }
        else {
          piVar13 = (int *)FUN_10475bf0(puVar12);
        }
        piVar1 = (int *)puVar17[0xc];
        if (piVar13 != piVar1) {
          if (piVar13 != (int *)0x0) {
            (**(code **)*piVar13)();
          }
          puVar17[0xc] = (uint)piVar13;
          if (piVar1 != (int *)0x0) {
            (**(code **)(*piVar1 + 4))();
          }
        }
        FUN_10477110((void *)puVar17[0xc],0,0,0,DAT_10ab0fa4,DAT_10ab0fa4);
        uVar9 = *puVar17;
        uVar15 = puVar17[2];
        puStack_64 = (uint *)(puVar17[3] + puVar17[1] >> 8);
        puStack_8c = (uint *)((int)uVar9 >> 8);
        puVar17[0xe] = 0;
        for (puVar16 = (uint *)((int)puVar17[1] >> 8); puVar19 = puStack_8c, puVar16 < puStack_64;
            puVar16 = (uint *)((int)puVar16 + 1)) {
          for (; puVar19 < (uint *)(uVar15 + uVar9 >> 8); puVar19 = (uint *)((int)puVar19 + 1)) {
            *(uint **)(*(int *)((int)local_84 + 0xbc) +
                      (int)(*(int *)((int)local_84 + 0xcc) * (int)puVar16 + (int)puVar19) * 4) =
                 puVar17;
          }
        }
        if (10 < *param_4) {
          uVar9 = FUN_10912610(local_d8,(uint *)&local_80);
          FUN_105ca960(local_e0,(byte)uVar9);
          puStack_8c = (uint *)0x0;
          if (local_80 != (uint *)0x0) {
            puStack_64 = puVar17 + 0x14;
            do {
              uVar9 = FUN_109126d0(local_d8,&local_38);
              FUN_105ca960(local_e0,(byte)uVar9);
              local_78 = (int ******)&local_78;
              local_60._4_4_ = local_34;
              local_70 = "Terrain/LotTerrainPasses";
              local_50[0] = "Terrain/LotTerrainPasses";
              local_58 = (int ******)&local_58;
              uStack_24 = uStack_24 & 0xffffff00;
              local_60._0_4_ = local_38;
              local_74 = local_78;
              local_54 = local_58;
              FUN_101fc740(&local_58,(int)&local_58,&local_78,&local_78);
              uStack_1c = uStack_1c & 0xffffff00;
              FUN_101fd570(puStack_64,&local_c0,(uint *)&local_60);
              pppppppiVar18 = (int *******)local_58;
              if ((int *******)local_58 != &local_58) {
                do {
                  pppppppiVar2 = (int *******)*pppppppiVar18;
                  if (pppppppiVar18[10] != (int ******)0x0) {
                    FUN_10918e90((int)pppppppiVar18[10]);
                  }
                  FUN_10918e90((int)pppppppiVar18);
                  pppppppiVar18 = pppppppiVar2;
                } while (pppppppiVar2 != &local_58);
              }
              pppppppiVar18 = (int *******)local_78;
              if ((int *******)local_78 != &local_78) {
                do {
                  pppppppiVar2 = (int *******)*pppppppiVar18;
                  if (pppppppiVar18[10] != (int ******)0x0) {
                    FUN_10918e90((int)pppppppiVar18[10]);
                  }
                  FUN_10918e90((int)pppppppiVar18);
                  pppppppiVar18 = pppppppiVar2;
                } while (pppppppiVar2 != &local_78);
              }
              puVar16 = local_c0;
              puVar19 = local_c0 + 2;
              uVar9 = FUN_10912610(local_d8,&uStack_3c);
              FUN_105ca960(local_e0,(byte)uVar9);
              puVar17 = (uint *)*puVar19;
              while (puVar17 != puVar19) {
                puVar3 = (uint *)*puVar17;
                if (puVar17[10] != 0) {
                  FUN_10918e90(puVar17[10]);
                }
                FUN_10918e90((int)puVar17);
                puVar17 = puVar3;
              }
              uVar9 = 0;
              *puVar19 = (uint)puVar19;
              puVar16[3] = (uint)puVar19;
              if (uStack_3c != 0) {
                uStack_18 = 4;
                do {
                  puVar12 = (undefined4 *)FUN_10918eb0(0x38,puVar16[4],0);
                  if (puVar12 != (undefined4 *)0xfffffff8) {
                    puVar12[10] = 0;
                    puVar12[0xb] = 0;
                    puVar12[0xc] = 0;
                    puVar12[0xd] = "Terrain/PassTriList";
                  }
                  *puVar12 = puVar19;
                  puVar12[1] = puVar16[3];
                  *(undefined4 **)puVar16[3] = puVar12;
                  puVar16[3] = (uint)puVar12;
                  uVar15 = FUN_10912480(local_d8);
                  FUN_105ca960(local_e0,(byte)uVar15);
                  uVar15 = FUN_10912480(local_d8);
                  FUN_105ca960(local_e0,(byte)uVar15);
                  bVar8 = FUN_109124b0(local_d8,&bStack_85);
                  FUN_105ca960(local_e0,bVar8);
                  uStack_28 = (uint)bStack_85;
                  puVar17 = &uStack_18;
                  if (bStack_85 < 5) {
                    puVar17 = &uStack_28;
                  }
                  uVar15 = *puVar17;
                  puVar12[3] = uVar15;
                  bVar8 = FUN_109124d0(local_d8,puVar12 + 4,uVar15);
                  FUN_105ca960(local_e0,bVar8);
                  uVar15 = FUN_10912610(local_d8,&local_40);
                  FUN_105ca960(local_e0,(byte)uVar15);
                  FUN_105cb350(local_e0,local_40 * 4,1);
                  uVar9 = uVar9 + 1;
                } while (uVar9 < uStack_3c);
              }
              puStack_8c = (uint *)((int)puStack_8c + 1);
            } while (puStack_8c < local_80);
          }
        }
        (**(code **)(*local_d8 + 0x28))(local_7c,0);
        local_e4 = (uint *)((int)local_e4 + 0x70);
        local_c4 = (void *)((int)local_c4 + 1);
        this = local_84;
      } while (local_c4 < local_c8);
    }
  }
  FUN_105ca9e0((int)local_e0);
  fVar5 = (float)*(int *)((int)this + 0x34);
  if (*(int *)((int)this + 0x34) < 0) {
    fVar5 = fVar5 + _DAT_10aae190;
  }
  *(float *)((int)this + 0x24) = fVar5 * _DAT_10ac71f4;
  fVar5 = (float)*(int *)((int)this + 0x38);
  if (*(int *)((int)this + 0x38) < 0) {
    fVar5 = fVar5 + _DAT_10aae190;
  }
  *(float *)((int)this + 0x28) = fVar5;
  *(float *)((int)this + 0x2c) = 1.0 / fVar5;
  puVar14 = FUN_10234190();
  *(undefined4 *)((int)this + 0x30) = *(undefined4 *)(puVar14 + 4);
LAB_101ffb8e:
  FUN_105ca900((int)local_e0);
  return local_cc;
}

