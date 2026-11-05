/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX terrain. Paint versions>1; key
   inline below3/context from3; usage32. Cliff index is read unconditionally after rows, including
   v13/v14 (AF1429..1440). Compareversion13 then JBE skips extra coordinate list; version14+ reads
   count and twoUInt32 per six-byte pair, extracting lowbyte,bits12..19,bits24..31. Below14 AEC260
   derives pairs. ReadalphaCount then old/newalpha formats, water fromv4, pond fromv4, face fromv5;
   beforev13 AEED70 recalculates pond bits. The v13 boundary does NOT omit cliff index. Loader
   upgrades/initializes missing state, not raw source copying.
   
   Additional paint-key selection join: after each retained paint row/key/usage is read, callAEB730
   on key map+40 and STORE current row index through returned value pointer. Later duplicate full
   keys overwrite the prior lookup index; all rows remain in saved order. This is LAST retained row
   for existing-key lookup, not first IndexOf. Cliff index is read as its own DWORD; FFFFFFFF is
   absent. Full load/version/alpha-resource/failure/legacy-conversion semantics remain in this
   complete existing function and are not replaced by a host decoded-data adapter. */

undefined1 __thiscall
LotTerrain_ReadResources
          (void *this,void *param_1,void *param_2,uint param_3,int param_4,void *param_5)

{
  int *this_00;
  void *this_01;
  void *this_02;
  uint uVar1;
  bool bVar2;
  undefined1 *puVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  void **ppvVar6;
  void *pvVar7;
  uint *puVar8;
  int iVar9;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  uint *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  uint local_10;
  int local_c;
  undefined4 local_8;
  void *local_4;
  
  this_02 = param_1;
  local_10 = param_3;
  local_c = param_4;
  local_30 = 0xe;
  local_8 = 0x4ee6abb;
  local_4 = param_5;
  bVar2 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  if (bVar2) {
    bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),&local_30,*(uint *)((int)this_02 + 0x10))
    ;
    StreamReader_AccumulateStatus(this_02,bVar2);
    if ((*(char *)((int)this_02 + 0x14) != '\0') && (1 < local_30)) {
      FUN_009d67f0(*(int *)((int)this + 0x44),*(uint *)((int)this + 0x48));
      pvVar7 = (void *)0x0;
      *(undefined4 *)((int)this + 0x4c) = 0;
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),(uint *)&param_5,
                                *(uint *)((int)this_02 + 0x10));
      StreamReader_AccumulateStatus(this_02,bVar2);
      FUN_007dfe60((void *)((int)this + 0x30),(uint)param_5);
      if (param_5 != (void *)0x0) {
        param_1 = (void *)0x0;
        do {
          puVar8 = (uint *)(*(int *)((int)this + 0x30) + (int)param_1);
          if (local_30 < 3) {
            bVar2 = Stream_ReadResourceKeyTGI
                              (*(void **)((int)this_02 + 8),puVar8,*(uint *)((int)this_02 + 0x10));
            StreamReader_AccumulateStatus(this_02,bVar2);
          }
          else {
            ResourceReferences_ReadContextKey(param_2,this_02,puVar8);
          }
          bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),puVar8 + 4,
                                    *(uint *)((int)this_02 + 0x10));
          StreamReader_AccumulateStatus(this_02,bVar2);
          puVar8 = (uint *)FUN_00aeb730((void *)((int)this + 0x40),puVar8);
          param_1 = (void *)((int)param_1 + 0x18);
          *puVar8 = (uint)pvVar7;
          pvVar7 = (void *)((int)pvVar7 + 1);
        } while (pvVar7 < param_5);
      }
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),(uint *)((int)this + 0x18),
                                *(uint *)((int)this_02 + 0x10));
      StreamReader_AccumulateStatus(this_02,bVar2);
      if (local_30 < 0xe) {
        LotTerrain_RebuildSeaBoundaryPairs((int)this);
      }
      else {
        bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),(uint *)&param_1,
                                  *(uint *)((int)this_02 + 0x10));
        StreamReader_AccumulateStatus(this_02,bVar2);
        this_00 = (int *)((int)this + 0x154);
        FUN_00aed1c0(this_00,(uint)param_1);
        param_2 = (void *)0x0;
        if (param_1 != (void *)0x0) {
          iVar9 = 0;
          do {
            bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),&local_2c,
                                      *(uint *)((int)this_02 + 0x10));
            StreamReader_AccumulateStatus(this_02,bVar2);
            bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),&local_28,
                                      *(uint *)((int)this_02 + 0x10));
            StreamReader_AccumulateStatus(this_02,bVar2);
            puVar3 = (undefined1 *)(*this_00 + iVar9);
            puVar3[2] = (char)(local_2c >> 0x18);
            *puVar3 = (char)local_2c;
            puVar3[1] = (char)(local_2c >> 0xc);
            puVar3 = (undefined1 *)(*this_00 + 3 + iVar9);
            puVar3[2] = (char)(local_28 >> 0x18);
            puVar3[1] = (char)(local_28 >> 0xc);
            *puVar3 = (char)local_28;
            param_2 = (void *)((int)param_2 + 1);
            iVar9 = iVar9 + 6;
          } while (param_2 < param_1);
        }
      }
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_02 + 8),&local_24,
                                *(uint *)((int)this_02 + 0x10));
      StreamReader_AccumulateStatus(this_02,bVar2);
      FUN_00c221f0((void *)((int)this + 0x60),(uint)param_5);
      param_1 = (void *)0x0;
      if (param_5 != (void *)0x0) {
        do {
          puVar4 = (undefined4 *)FUN_004e4500(0x44,"Lot/LotTerrain/AlphaMap",0);
          if (puVar4 == (undefined4 *)0x0) {
            puVar4 = (undefined4 *)0x0;
          }
          else {
            *puVar4 = 0;
            puVar4[1] = 0;
            puVar4[2] = 0;
            puVar4[3] = 0;
            puVar4[4] = 0;
            puVar4[5] = 0;
            puVar4[6] = 0;
            puVar4[7] = "Lot/LotTerrain/AlphaMap";
            puVar4[8] = 0;
            puVar4[9] = 0;
            puVar4[10] = 0;
            puVar4[0xb] = "Lot/LotTerrain/AlphaMap";
            puVar4[0xc] = 0;
            puVar4[0xd] = 0;
            puVar4[0xe] = 0;
            puVar4[0xf] = "Lot/LotTerrain/AlphaMap";
            *(undefined1 *)(puVar4 + 0x10) = 0;
          }
          if (local_30 < 9) {
            ByteBlockGrid_SetDimensions
                      (puVar4,*(int *)((int)this + 0x1c),*(int *)((int)this + 0x20));
          }
          *(undefined4 **)(*(int *)((int)this + 0x60) + (int)param_1 * 4) = puVar4;
          param_1 = (void *)((int)param_1 + 1);
        } while (param_1 < param_5);
      }
      if ((local_30 < 6) && (param_1 = (void *)0x0, param_5 != (void *)0x0)) {
        do {
          local_20 = (uint *)0x0;
          local_1c = 0;
          local_18 = 0;
          local_14 = "Lot/LotTerrain/Load/alphaValues";
          if (*(uint *)((int)this + 0x2c) == 0) {
            memmove((void *)0x0,(void *)0x0,0);
            local_1c = 0;
          }
          else {
            param_2 = (void *)0x0;
            FUN_006e4940(&local_20,(undefined4 *)0x0,*(uint *)((int)this + 0x2c),&param_2);
          }
          uVar5 = Stream_ReadUInt32ArrayByByteOrder
                            (*(int **)((int)this_02 + 8),local_20,*(uint *)((int)this + 0x2c),
                             *(uint *)((int)this_02 + 0x10));
          StreamReader_AccumulateStatus(this_02,(byte)uVar5);
          pvVar7 = (void *)((int)param_1 + 4);
          param_2 = pvVar7;
          ppvVar6 = &param_5;
          if (pvVar7 <= param_5) {
            ppvVar6 = &param_2;
          }
          FUN_00aeeca0(this,(int *)&local_20,(uint)param_1,(uint)*ppvVar6);
          if (local_20 != (uint *)0x0) {
            Memory_FreeIfNonNull(local_20);
          }
          param_1 = pvVar7;
        } while (pvVar7 < param_5);
      }
    }
    ResourceStreamContext_Close(this_02);
    if ((*(char *)((int)this_02 + 0x14) != '\0') && (5 < local_30)) {
      if (local_30 < 9) {
        if ((local_30 == 7) || (local_30 == 8)) {
          FUN_00aefaf0(this,this_02,local_30,param_3,param_4);
        }
        else {
          FUN_00aefd40(this,this_02,param_3,param_4);
        }
      }
      else {
        param_5 = (void *)((*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18);
        pvVar7 = (void *)0x0;
        if (param_5 != (void *)0x0) {
          do {
            this_01 = *(void **)(*(int *)((int)this + 0x60) + (int)pvVar7 * 4);
            uVar5 = ByteBlockGrid_ReadResourceHeader
                              (this_01,this_02,(int)pvVar7 + 0xd4daa4,param_3,param_4);
            if ((char)uVar5 != '\0') {
              bVar2 = Stream_ReadExactBytes
                                (*(void **)((int)this_02 + 8),*(void **)((int)this_01 + 0x10),
                                 *(int *)((int)this_01 + 0x14) -
                                 (int)*(void **)((int)this_01 + 0x10));
              StreamReader_AccumulateStatus(this_02,bVar2);
              bVar2 = Stream_ReadExactBytes
                                (*(void **)((int)this_02 + 8),*(void **)((int)this_01 + 0x20),
                                 *(int *)((int)this_01 + 0x24) -
                                 (int)*(void **)((int)this_01 + 0x20));
              StreamReader_AccumulateStatus(this_02,bVar2);
              ResourceStreamContext_Close(this_02);
            }
            pvVar7 = (void *)((int)pvVar7 + 1);
          } while (pvVar7 < param_5);
        }
      }
    }
    if ((*(char *)((int)this_02 + 0x14) == '\0') ||
       (*(int *)((int)this + 0x30) == *(int *)((int)this + 0x34))) {
      *(undefined4 *)((int)this + 0xb4) = DAT_011844a8;
      *(undefined4 *)((int)this + 0xb8) = DAT_011844ac;
      *(undefined4 *)((int)this + 0xbc) = DAT_011844b0;
      *(undefined4 *)((int)this + 0xc0) = DAT_011844b4;
    }
    else {
      if ((*(int *)((int)this + 0x74) * *(int *)((int)this + 0x70) == 0) &&
         (*(int *)((int)this + 0x74) * *(int *)((int)this + 0x70) == 0)) {
        ByteBlockGrid_SetDimensions
                  ((int *)((int)this + 0x70),*(int *)((int)this + 0x1c),*(int *)((int)this + 0x20));
        LotTerrain_RebuildTotalPaintAlpha((int)this);
      }
      *(undefined4 *)((int)this + 0xb4) = 0;
      *(undefined4 *)((int)this + 0xb8) = 0;
      *(undefined4 *)((int)this + 0xbc) = *(undefined4 *)((int)this + 0x24);
      *(undefined4 *)((int)this + 0xc0) = *(undefined4 *)((int)this + 0x28);
    }
    bVar2 = *(char *)((int)this_02 + 0x14) == '\0';
    if (!bVar2) {
      if (3 < local_30) {
        puVar4 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/WaterElevationLayer",0);
        if (puVar4 == (undefined4 *)0x0) {
          puVar4 = (undefined4 *)0x0;
        }
        else {
          *puVar4 = &PTR_FUN_0105fb94;
          puVar4[1] = 0;
          puVar4[2] = 0;
          puVar4[3] = 0;
          puVar4[4] = 0;
          puVar4[5] = 0;
          puVar4[6] = "Lot/LotTerrain/WaterElevationLayer";
        }
        *(undefined4 **)((int)this + 200) = puVar4;
        uVar5 = FUN_00aef080(puVar4,this_02,0xff2067,param_3,param_4);
        if ((char)uVar5 != '\0') {
          puVar8 = *(uint **)(*(int *)((int)this + 200) + 0xc);
          uVar5 = Stream_ReadUInt32ArrayByByteOrder
                            (*(int **)((int)this_02 + 8),puVar8,
                             *(int *)(*(int *)((int)this + 200) + 0x10) - (int)puVar8 >> 2,
                             *(uint *)((int)this_02 + 0x10));
          StreamReader_AccumulateStatus(this_02,(byte)uVar5);
          ResourceStreamContext_Close(this_02);
        }
      }
      bVar2 = *(char *)((int)this_02 + 0x14) == '\0';
      if (!bVar2) {
        if (3 < local_30) {
          puVar4 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/PondPartFlagLayer",0);
          if (puVar4 == (undefined4 *)0x0) {
            puVar4 = (undefined4 *)0x0;
          }
          else {
            *puVar4 = &PTR_FUN_0105fb94;
            puVar4[1] = 0;
            puVar4[2] = 0;
            puVar4[3] = 0;
            puVar4[4] = 0;
            puVar4[5] = 0;
            puVar4[6] = "Lot/LotTerrain/PondPartFlagLayer";
          }
          *(undefined4 **)((int)this + 0xcc) = puVar4;
          uVar5 = FUN_00aee880(puVar4,this_02,0x137be1,param_3,param_4);
          if ((char)uVar5 != '\0') {
            pvVar7 = *(void **)(*(int *)((int)this + 0xcc) + 0xc);
            bVar2 = Stream_ReadExactBytes
                              (*(void **)((int)this_02 + 8),pvVar7,
                               *(int *)(*(int *)((int)this + 0xcc) + 0x10) - (int)pvVar7);
            StreamReader_AccumulateStatus(this_02,bVar2);
            ResourceStreamContext_Close(this_02);
          }
        }
        bVar2 = *(char *)((int)this_02 + 0x14) == '\0';
        if (!bVar2) {
          if (4 < local_30) {
            puVar4 = (undefined4 *)FUN_004e4500(0x1c,"Lot/LotTerrain/FaceFlagLayer",0);
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              *puVar4 = &PTR_FUN_0105fb94;
              puVar4[1] = 0;
              puVar4[2] = 0;
              puVar4[3] = 0;
              puVar4[4] = 0;
              puVar4[5] = 0;
              puVar4[6] = "Lot/LotTerrain/FaceFlagLayer";
            }
            *(undefined4 **)((int)this + 0xe4) = puVar4;
            uVar5 = FUN_00aef160(puVar4,this_02,0x958344,param_3,param_4);
            if ((char)uVar5 != '\0') {
              pvVar7 = *(void **)(*(int *)((int)this + 0xe4) + 0xc);
              bVar2 = Stream_ReadExactBytes
                                (*(void **)((int)this_02 + 8),pvVar7,
                                 *(int *)(*(int *)((int)this + 0xe4) + 0x10) - (int)pvVar7);
              StreamReader_AccumulateStatus(this_02,bVar2);
              ResourceStreamContext_Close(this_02);
            }
          }
          bVar2 = *(char *)((int)this_02 + 0x14) == '\0';
        }
      }
    }
    if ((!bVar2) && (local_30 < 0xd)) {
      FUN_00aeed70((int)this);
    }
    if (*(char *)((int)this_02 + 0x14) == '\0') {
      return 0;
    }
    LotWater_EnsureWaterAndPondLayers((int)this);
  }
  else {
    LotWater_EnsureWaterAndPondLayers((int)this);
    LotTerrain_RebuildSeaBoundaryPairs((int)this);
  }
  if (*(char *)((int)this_02 + 0x14) == '\0') {
    return 0;
  }
  if (local_30 < 9) {
    LotTerrain_RemoveUnusedPaintLayers(this);
  }
  uVar1 = local_30;
  if (local_30 < 10) {
    FUN_00aea080((int)this);
  }
  if (uVar1 < 0xb) {
    FUN_00af05f0(this);
  }
  FUN_00af0dd0((int)this);
  return *(undefined1 *)((int)this_02 + 0x14);
}

