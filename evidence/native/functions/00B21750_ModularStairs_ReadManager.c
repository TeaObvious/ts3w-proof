/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Clear retained flights,open04A09283 and
   readversion/count. Product inline belowv3,context handle fromv3. Three additional design keys
   only when version>4. Linked object exists fromv2. Flag list appears fromv4; v4/5 rows have
   onlyUInt32key and defaulttrue; v6 adds explicitBoolean. Current suffix copier only supportsv6 or
   no pre-v4suffix. Existing higher-level helper creation remains original consumer work. */

undefined4 __thiscall
ModularStairs_ReadManager
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int iVar1;
  float *pfVar2;
  bool bVar3;
  undefined3 extraout_var;
  uint *puVar4;
  float **ppfVar5;
  float *pfVar6;
  void *this_00;
  undefined3 extraout_var_00;
  undefined3 uVar7;
  int iVar8;
  uint *puVar9;
  uint uVar10;
  undefined4 *puVar11;
  undefined1 local_141;
  void *local_140;
  float local_13c;
  uint local_138;
  uint local_134;
  uint local_130;
  uint local_12c;
  float local_128;
  float local_124;
  uint local_120;
  float local_11c;
  undefined1 local_118;
  uint local_114;
  undefined4 local_110;
  undefined4 local_10c;
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100 [4];
  undefined4 local_f0 [4];
  undefined4 local_e0 [4];
  uint local_d0;
  float local_cc;
  float local_c8;
  uint local_c4;
  float local_c0;
  float local_bc;
  uint local_b8;
  float *local_b4;
  float *local_b0;
  float *local_ac;
  char *local_a8;
  undefined4 local_a0;
  undefined4 local_9c;
  float *local_98;
  int local_94;
  float *local_90;
  int local_8c;
  float *local_88;
  int local_84;
  float *local_80;
  int local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  float *local_64 [3];
  uint local_58 [4];
  float local_48;
  float local_44;
  uint local_40;
  undefined4 local_38 [4];
  undefined4 local_28 [4];
  undefined4 local_18 [5];
  
  local_140 = this;
  FUN_00b1af00(*(int *)((int)this + 0x20),*(uint *)((int)this + 0x24));
  *(undefined4 *)((int)this + 0x28) = 0;
  local_78 = param_3;
  local_6c = param_5;
  local_74 = param_4;
  local_70 = 0x4a09283;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_78,0);
  uVar7 = extraout_var;
  if (bVar3) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_138,*(uint *)((int)param_1 + 0x10)
                             );
    StreamReader_AccumulateStatus(param_1,bVar3);
    local_12c = 0;
    bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_12c,*(uint *)((int)param_1 + 0x10)
                             );
    StreamReader_AccumulateStatus(param_1,bVar3);
    local_120 = 0;
    if (local_12c != 0) {
      do {
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_124,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        local_110 = 0;
        local_10c = 0;
        local_108 = 0;
        local_104 = 0;
        FUN_00afbba0(local_100);
        local_cc = FLOAT_00fab218;
        local_c8 = FLOAT_00fab218;
        local_c4 = 0;
        local_c0 = FLOAT_00fab218;
        local_bc = FLOAT_00fab218;
        local_b8 = 0;
        local_b4 = (float *)0x0;
        local_b0 = (float *)0x0;
        local_ac = (float *)0x0;
        local_a8 = "Lot/ModularStairs/Manager";
        local_a0 = 0;
        local_9c = 0;
        if (local_138 < 3) {
          bVar3 = Stream_ReadResourceKeyTGI
                            (*(void **)((int)param_1 + 8),&local_110,*(uint *)((int)param_1 + 0x10))
          ;
          StreamReader_AccumulateStatus(param_1,bVar3);
        }
        else {
          ResourceReferences_ReadContextKey(param_2,param_1,&local_110);
        }
        if (4 < local_138) {
          ResourceReferences_ReadContextKey(param_2,param_1,local_100);
          ResourceReferences_ReadContextKey(param_2,param_1,local_f0);
          ResourceReferences_ReadContextKey(param_2,param_1,local_e0);
        }
        local_a0 = 0;
        local_9c = 0;
        if (1 < local_138) {
          bVar3 = Stream_ReadUInt64(*(void **)((int)param_1 + 8),(ulonglong *)&local_a0,
                                    *(uint *)((int)param_1 + 0x10));
          StreamReader_AccumulateStatus(param_1,bVar3);
        }
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_130,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        local_d0 = local_130;
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_cc,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_c8,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_c4,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_c0,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_bc,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_b8,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        FUN_00b1c360(local_140,local_124,&local_110,local_d0,&local_cc,&local_c0);
        local_134 = 0;
        bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_134,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar3);
        local_114 = 0;
        if (local_134 != 0) {
          do {
            bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_13c,
                                      *(uint *)((int)param_1 + 0x10));
            StreamReader_AccumulateStatus(param_1,bVar3);
            iVar8 = (int)local_b0 - (int)local_b4 >> 2;
            pfVar6 = local_b4;
            while (iVar1 = iVar8, 0 < iVar1) {
              iVar8 = iVar1 >> 1;
              if ((uint)pfVar6[iVar8] < (uint)local_13c) {
                pfVar6 = pfVar6 + iVar8 + 1;
                iVar8 = iVar1 + (-1 - iVar8);
              }
            }
            if ((pfVar6 == local_b0) || (pfVar2 = local_b0, (uint)local_13c < (uint)*pfVar6)) {
              if ((local_b0 == local_ac) || (pfVar6 != local_b0)) {
                FUN_00982420(&local_b4,pfVar6,&local_13c);
                pfVar2 = local_b0;
              }
              else {
                pfVar2 = local_b0 + 1;
                if (local_b0 != (float *)0x0) {
                  *local_b0 = local_13c;
                }
              }
            }
            local_b0 = pfVar2;
            local_58[0] = 0;
            local_58[1] = 0;
            local_58[2] = 0;
            local_58[3] = 0;
            local_48 = FLOAT_00fab218;
            local_44 = FLOAT_00fab218;
            local_40 = 0;
            FUN_00afbba0(local_38);
            if (local_138 < 3) {
              bVar3 = Stream_ReadResourceKeyTGI
                                (*(void **)((int)param_1 + 8),local_58,
                                 *(uint *)((int)param_1 + 0x10));
              StreamReader_AccumulateStatus(param_1,bVar3);
            }
            else {
              ResourceReferences_ReadContextKey(param_2,param_1,local_58);
            }
            if (4 < local_138) {
              ResourceReferences_ReadContextKey(param_2,param_1,local_38);
              ResourceReferences_ReadContextKey(param_2,param_1,local_28);
              ResourceReferences_ReadContextKey(param_2,param_1,local_18);
            }
            bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_48,
                                      *(uint *)((int)param_1 + 0x10));
            StreamReader_AccumulateStatus(param_1,bVar3);
            bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_44,
                                      *(uint *)((int)param_1 + 0x10));
            StreamReader_AccumulateStatus(param_1,bVar3);
            local_40 = local_c4;
            puVar4 = (uint *)FUN_00b1ae50((void *)((int)local_140 + 0x3c),(uint *)&local_13c);
            puVar9 = local_58;
            for (iVar8 = 0x14; iVar8 != 0; iVar8 = iVar8 + -1) {
              *puVar4 = *puVar9;
              puVar9 = puVar9 + 1;
              puVar4 = puVar4 + 1;
            }
            uVar10 = *(uint *)((int)local_140 + 100);
            iVar8 = *(int *)((int)local_140 + 0x60);
            for (pfVar6 = *(float **)(iVar8 + ((uint)local_13c % uVar10) * 4);
                pfVar6 != (float *)0x0; pfVar6 = (float *)pfVar6[2]) {
              if (local_13c == *pfVar6) {
                local_90 = pfVar6;
                local_8c = iVar8 + ((uint)local_13c % uVar10) * 4;
                ppfVar5 = &local_90;
                goto LAB_00b21caa;
              }
            }
            local_98 = *(float **)(iVar8 + uVar10 * 4);
            local_94 = iVar8 + uVar10 * 4;
            ppfVar5 = &local_98;
LAB_00b21caa:
            uVar10 = *(uint *)((int)local_140 + 100);
            if (*ppfVar5 == *(float **)(*(int *)((int)local_140 + 0x60) + uVar10 * 4)) {
              iVar8 = *(int *)((int)local_140 + 0x60);
              for (pfVar6 = *(float **)(iVar8 + ((uint)local_13c % uVar10) * 4);
                  pfVar6 != (float *)0x0; pfVar6 = (float *)pfVar6[2]) {
                if (local_13c == *pfVar6) {
                  local_80 = pfVar6;
                  local_7c = iVar8 + ((uint)local_13c % uVar10) * 4;
                  ppfVar5 = &local_80;
                  goto LAB_00b21cfd;
                }
              }
              local_84 = iVar8 + uVar10 * 4;
              local_88 = *(float **)(iVar8 + uVar10 * 4);
              ppfVar5 = &local_88;
LAB_00b21cfd:
              pfVar6 = *ppfVar5;
              if (*ppfVar5 == *(float **)(iVar8 + uVar10 * 4)) {
                local_128 = (float)((uint)local_128 & 0xffffff00);
                local_11c = local_13c;
                local_118 = 0;
                UInt32PairMap_InsertUnique
                          ((void *)((int)local_140 + 0x5c),local_64,(uint *)&local_11c,
                           (uint)local_128);
                pfVar6 = local_64[0];
              }
              *(undefined1 *)(pfVar6 + 1) = 1;
            }
            else {
              pfVar6 = *ppfVar5 + 1;
              *(char *)pfVar6 = *(char *)pfVar6 + '\x01';
            }
            FUN_00b1c650(local_140,local_13c,local_58,local_d0,&local_48,&local_c0);
            local_114 = local_114 + 1;
          } while (local_114 < local_134);
        }
        puVar11 = &local_110;
        this_00 = (void *)FUN_00b21630((void *)((int)local_140 + 0x1c),(uint *)&local_124);
        FUN_00b1d9a0(this_00,puVar11);
        if (local_b4 != (float *)0x0) {
          Memory_FreeIfNonNull(local_b4);
        }
        local_120 = local_120 + 1;
        this = local_140;
      } while (local_120 < local_12c);
    }
    uVar10 = 0;
    if (3 < local_138) {
      local_134 = 0;
      bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_134,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar3);
      if (local_134 != 0) {
        do {
          local_141 = 1;
          bVar3 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_128,
                                    *(uint *)((int)param_1 + 0x10));
          StreamReader_AccumulateStatus(param_1,bVar3);
          if (5 < local_138) {
            bVar3 = Stream_ReadBoolean(*(void **)((int)param_1 + 8),&local_141);
            StreamReader_AccumulateStatus(param_1,bVar3);
          }
          local_130 = local_130 & 0xffffff00;
          local_11c = local_128;
          local_118 = local_141;
          UInt32PairMap_InsertUnique
                    ((void *)((int)this + 0xbc),local_64,(uint *)&local_11c,local_130);
          uVar10 = uVar10 + 1;
        } while (uVar10 < local_134);
      }
    }
    ResourceStreamContext_Close(param_1);
    uVar7 = extraout_var_00;
  }
  return CONCAT31(uVar7,*(undefined1 *)((int)param_1 + 0x14));
}

