/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Enclosing saved-layer load: the selected deck lane creates its owner only when the retained deck
   field is absent. Header failure closes, marks failure, deletes and clears; a passing header reads
   the flat body and closes before ingestion, including when body reads have set sticky failure.
   Legacy conversion and the later missing compositor lane remain original.
   
   Analyst note (PC1.67 construction persistence contract): Original construction load dispatcher
   creates missing manager owners, resolves records by supplied lot identity and existing key
   context and consumes their status. Current saved-versus-world delta comparison and per-path
   registry are project integration policy; this native dispatcher does not implement their cache
   identity.
   
   PC1.67 selectedbasementreader closure only: exact B125533A/group002E2C5C/lotGUID open;
   absentrecord skipscreation. HeaderA97260failure closes/marksstickyfailure/destroyslayer/returns.
   Otherwise dimensionproduct bytes ReadBytesInto thenA94F40import, close. Bodyreadstatus
   stayssticky andlaterlanesgateonit; no transactionalrestore inferred. No
   independentcap8/dimensionmatch/trailingEOFversiongate. Otherlot lanes in fullbody retain
   separatecontracts.
   
   Additional PC1.67 floor-feature closure: only absent flag pointer29C tries exact
   B125533A/group00333E35/lotGUID, constructs byte grid, reads C6D950 header then physical byte body
   and closes. Only successful context plus absent mask pointer2A0 plus PRESENT flag pointer enter
   mask stage. Enclosing lot LDES ushort+78 <2Dhex ALWAYS constructs same-dimension ushort grid from
   flag dimensions and fills EVERY maskFFFF; it DOES NOT OPEN group00333E36 even if a resource
   exists or is malformed. >=2D reads exact mask header then endian-qualified ushort body. Header
   failure clears that failed pointer and sets sticky failure. Present allzero flags remain
   allocated; no normalize-to-absent scan on load. */

void __thiscall
LotDataLayers_ReadSavedResources(void *this,int *param_1,uint param_2,int param_3,int *param_4)

{
  int iVar1;
  int *streamContext;
  uint *allocation;
  char cVar2;
  byte bVar3;
  bool bVar4;
  void *pvVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  undefined1 *puVar11;
  undefined4 *puVar12;
  undefined *puVar13;
  int iVar14;
  int iVar15;
  uint uVar16;
  uint unaff_EDI;
  int local_28 [2];
  uint *local_20;
  int local_1c;
  undefined4 local_18;
  char *local_14;
  uint local_10;
  int local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  streamContext = param_1;
  FUN_007d3170(local_28,0x46c3503,0x46c3509,this);
  FloorManager_ReadResources(*(void **)((int)this + 0x290),(char *)param_1,param_4,param_2,param_3);
  if ((char)param_1[5] != '\0') {
    if (*(int *)((int)this + 0x2a4) == 0) {
      pvVar5 = (void *)FUN_004e4500(0x58,"Lot/DeckFoundationLayer",0);
      if (pvVar5 == (void *)0x0) {
        pvVar5 = (void *)0x0;
      }
      else {
        pvVar5 = (void *)FourWordGrid_InitializeStorage(pvVar5,"Lot/DeckFoundationLayer");
      }
      *(void **)((int)this + 0x2a4) = pvVar5;
      uVar6 = LotGrid_ReadHeaderAndResize(pvVar5,param_1,0x93d6d6,param_2,param_3);
      if ((char)uVar6 == '\0') {
        ResourceStreamContext_Close(param_1);
        StreamReader_AccumulateStatus(param_1,0);
        *(undefined1 *)(param_1 + 5) = 0;
        if (*(undefined4 **)((int)this + 0x2a4) != (undefined4 *)0x0) {
          (**(code **)**(undefined4 **)((int)this + 0x2a4))(1);
        }
        *(undefined4 *)((int)this + 0x2a4) = 0;
        FUN_007d31b0(local_28);
        return;
      }
      iVar7 = *(int *)((int)this + 0x2a4);
      local_20 = (uint *)0x0;
      local_1c = 0;
      local_18 = 0;
      local_14 = "Lot/DeckFoundationLayer";
      FUN_00ac08b0(&local_20,*(int *)(iVar7 + 0xc) * *(int *)(iVar7 + 8) * *(int *)(iVar7 + 4));
      uVar6 = Stream_ReadUInt32ArrayByByteOrder
                        ((int *)param_1[2],local_20,(local_1c - (int)local_20 >> 4) * 4,param_1[4]);
      StreamReader_AccumulateStatus(param_1,(byte)uVar6);
      ResourceStreamContext_Close(param_1);
      FourWordGrid_ImportLevelXZCells(*(void **)((int)this + 0x2a4),(int *)&local_20);
      if (*(ushort *)((int)this + 0x78) < 0x28) {
        iVar15 = *(int *)((int)this + 0x180) + 1;
        iVar7 = (*(int **)((int)this + 0x2a4))[3] - iVar15;
        if (0 < iVar7) {
          (**(code **)(**(int **)((int)this + 0x2a4) + 4))(-iVar7,1,0);
        }
        iVar15 = *(int *)((int)this + 0x184) - iVar15;
        if (0 < iVar15) {
          (**(code **)(**(int **)((int)this + 0x2a4) + 4))(iVar15,0,0);
          local_10 = 0xffffffff;
          local_c = -1;
          local_8 = 0xffffffff;
          local_4 = 0xffffffff;
          FUN_00ac6150(*(void **)((int)this + 0x2a4),0,-1 - *(int *)((int)this + 0x17c),&local_10);
        }
        iVar7 = -*(int *)((int)this + 0x17c);
        if (*(int *)((int)this + 0x17c) < 0) {
          iVar8 = FUN_00afe370();
          iVar15 = *(int *)(*(int *)((int)this + 0x2a4) + 4);
          iVar1 = *(int *)(*(int *)((int)this + 0x2a4) + 8);
          param_1 = (int *)0x0;
          if (0 < iVar15) {
            do {
              uVar16 = 0;
              if (0 < iVar1) {
                do {
                  piVar9 = (int *)FUN_00ac2fd0(*(void **)((int)this + 0x2a4),(uint)param_1,uVar16,
                                               iVar7);
                  iVar10 = FUN_00ac2fd0(*(void **)((int)this + 0x2a4),(uint)param_1,uVar16,
                                        iVar7 + -1);
                  iVar10 = iVar10 - (int)piVar9;
                  iVar14 = 4;
                  do {
                    if (*piVar9 == iVar8) {
                      *(int *)(iVar10 + (int)piVar9) = iVar8;
                      *piVar9 = -1;
                    }
                    piVar9 = piVar9 + 1;
                    iVar14 = iVar14 + -1;
                  } while (iVar14 != 0);
                  uVar16 = uVar16 + 1;
                } while ((int)uVar16 < iVar1);
              }
              param_1 = (int *)((int)param_1 + 1);
            } while ((int)param_1 < iVar15);
          }
        }
      }
      if (local_20 != (uint *)0x0) {
        Memory_FreeIfNonNull(local_20);
      }
    }
    if (((char)streamContext[5] != '\0') && (*(int *)((int)this + 0x294) == 0)) {
      puVar11 = (undefined1 *)FUN_004e4500(0x168,"Lot/LotTerrain",0);
      if (puVar11 == (undefined1 *)0x0) {
        puVar11 = (undefined1 *)0x0;
      }
      else {
        puVar11 = LotTerrain_Construct(puVar11);
      }
      *(undefined1 **)((int)this + 0x294) = puVar11;
      LotTerrain_BindLot(puVar11,(int)this);
      cVar2 = LotTerrain_ReadResources
                        (*(void **)((int)this + 0x294),streamContext,param_4,param_2,param_3,
                         (void *)0x0);
      if (cVar2 == '\0') {
        StreamReader_AccumulateStatus(streamContext,0);
        *(undefined1 *)(streamContext + 5) = 0;
        pvVar5 = *(void **)((int)this + 0x294);
        if (pvVar5 != (void *)0x0) {
          FUN_00abde10((int)pvVar5);
          Memory_FreeIfNonNull(pvVar5);
        }
        *(undefined4 *)((int)this + 0x294) = 0;
        FUN_007d31b0(local_28);
        return;
      }
      if (*(ushort *)((int)this + 0x78) < 0x39) {
        bVar3 = FUN_00aed580(*(int *)((int)this + 0x294));
        *(byte *)((int)this + 200) = *(byte *)((int)this + 200) | bVar3;
      }
    }
  }
  if ((char)streamContext[5] != '\0') {
    if (*(int *)((int)this + 0x2a8) == 0) {
      local_10 = param_2;
      local_c = param_3;
      local_8 = 0xb125533a;
      local_4 = 0x2e2c5c;
      bVar4 = ResourceStreamContext_OpenRead(streamContext,&local_10,0);
      if (bVar4) {
        pvVar5 = (void *)FUN_004e4500(0x58,"Lot/BasementLayer",0);
        if (pvVar5 == (void *)0x0) {
          pvVar5 = (void *)0x0;
        }
        else {
          pvVar5 = (void *)FUN_00a8e600(pvVar5,"Lot/BasementLayer");
        }
        *(void **)((int)this + 0x2a8) = pvVar5;
        bVar4 = ByteTileGrid_ReadResourceHeader(pvVar5,streamContext,0x2e2c5c,param_2,param_3);
        if (!bVar4) {
          ResourceStreamContext_Close(streamContext);
          StreamReader_AccumulateStatus(streamContext,0);
          *(undefined1 *)(streamContext + 5) = 0;
          if (*(undefined4 **)((int)this + 0x2a8) != (undefined4 *)0x0) {
            (**(code **)**(undefined4 **)((int)this + 0x2a8))(1);
          }
          *(undefined4 *)((int)this + 0x2a8) = 0;
          FUN_007d31b0(local_28);
          return;
        }
        iVar7 = *(int *)((int)this + 0x2a8);
        uVar16 = *(int *)(iVar7 + 0xc) * *(int *)(iVar7 + 8) * *(int *)(iVar7 + 4);
        if (uVar16 != 0) {
          local_20 = (uint *)0x0;
          local_1c = 0;
          local_18 = 0;
          local_14 = "Lot/BasementLayer/tempLoadData";
          ByteVector_ResizeZeroed(&local_20,uVar16);
          allocation = local_20;
          StreamReader_ReadBytesInto(streamContext,local_20,uVar16);
          ByteTileGrid_ImportFlatBytes(*(void **)((int)this + 0x2a8),(int *)&local_20);
          if (allocation != (uint *)0x0) {
            Memory_FreeIfNonNull(allocation);
          }
        }
        ResourceStreamContext_Close(streamContext);
      }
    }
    if ((char)streamContext[5] != '\0') {
      if (*(int *)((int)this + 0x298) == 0) {
        puVar12 = (undefined4 *)FUN_004e4500(0x290,"Lot/PartitionManager",0);
        if (puVar12 == (undefined4 *)0x0) {
          puVar12 = (undefined4 *)0x0;
        }
        else {
          puVar12 = FUN_00b4f490(puVar12);
        }
        *(undefined4 **)((int)this + 0x298) = puVar12;
        FUN_00b475c0(puVar12,(int)this);
        cVar2 = PartitionManager_ReadSavedResources
                          (*(void **)((int)this + 0x298),streamContext,param_4,param_2,param_3);
        if (cVar2 == '\0') {
          StreamReader_AccumulateStatus(streamContext,0);
          *(undefined1 *)(streamContext + 5) = 0;
          if (*(undefined4 **)((int)this + 0x298) != (undefined4 *)0x0) {
            (**(code **)**(undefined4 **)((int)this + 0x298))(1);
          }
          *(undefined4 *)((int)this + 0x298) = 0;
          FUN_007d31b0(local_28);
          return;
        }
      }
      if ((char)streamContext[5] != '\0') {
        if (*(int *)((int)this + 0x2ac) == 0) {
          puVar12 = (undefined4 *)FUN_004e4500(0xd0,"Lot/RoofManager",0);
          if (puVar12 == (undefined4 *)0x0) {
            puVar12 = (undefined4 *)0x0;
          }
          else {
            puVar12 = RoofManager_Construct(puVar12);
          }
          *(undefined4 **)((int)this + 0x2ac) = puVar12;
          FUN_00b9ab30(puVar12,this);
          uVar6 = RoofManager_ReadSavedRoofRecords
                            (*(void **)((int)this + 0x2ac),streamContext,param_4,param_2,param_3,0);
          if ((char)uVar6 == '\0') {
            StreamReader_AccumulateStatus(streamContext,0);
            *(undefined1 *)(streamContext + 5) = 0;
            if (*(undefined4 **)((int)this + 0x2ac) != (undefined4 *)0x0) {
              (**(code **)**(undefined4 **)((int)this + 0x2ac))(1);
            }
            *(undefined4 *)((int)this + 0x2ac) = 0;
            FUN_007d31b0(local_28);
            return;
          }
        }
        if ((char)streamContext[5] != '\0') {
          if (*(int *)((int)this + 0x2b0) == 0) {
            puVar12 = (undefined4 *)FUN_004e4500(0x30,"Lot/CeilingManager",0);
            if (puVar12 == (undefined4 *)0x0) {
              puVar12 = (undefined4 *)0x0;
            }
            else {
              puVar12 = FUN_00a488c0(puVar12);
            }
            *(undefined4 **)((int)this + 0x2b0) = puVar12;
            CeilingManager_BindOwnerAndRegisterRequest(puVar12,this);
            bVar4 = CeilingManager_ReadMaterialKey
                              (*(void **)((int)this + 0x2b0),(undefined *)streamContext,
                               (undefined *)param_4,param_2,param_3,0);
            if (!bVar4) {
              StreamReader_AccumulateStatus(streamContext,0);
              *(undefined1 *)(streamContext + 5) = 0;
              if (*(undefined4 **)((int)this + 0x2b0) != (undefined4 *)0x0) {
                (**(code **)**(undefined4 **)((int)this + 0x2b0))(1);
              }
              *(undefined4 *)((int)this + 0x2b0) = 0;
              FUN_007d31b0(local_28);
              return;
            }
          }
          if ((char)streamContext[5] != '\0') {
            if (*(int *)((int)this + 0x2b4) == 0) {
              puVar12 = (undefined4 *)FUN_004e4500(0xdc,"Lot/ModularStairsManager",0);
              if (puVar12 == (undefined4 *)0x0) {
                pvVar5 = (void *)0x0;
              }
              else {
                pvVar5 = (void *)ModularStairs_ConstructManager(puVar12);
              }
              *(void **)((int)this + 0x2b4) = pvVar5;
              FUN_00b150b0(pvVar5,this);
              uVar6 = ModularStairs_ReadManager
                                (*(void **)((int)this + 0x2b4),streamContext,param_4,param_2,param_3
                                 ,0);
              if ((char)uVar6 == '\0') {
                StreamReader_AccumulateStatus(streamContext,0);
                *(undefined1 *)(streamContext + 5) = 0;
                if (*(undefined4 **)((int)this + 0x2b4) != (undefined4 *)0x0) {
                  (**(code **)**(undefined4 **)((int)this + 0x2b4))(1);
                }
                *(undefined4 *)((int)this + 0x2b4) = 0;
                FUN_007d31b0(local_28);
                return;
              }
            }
            if ((char)streamContext[5] != '\0') {
              if (*(int *)((int)this + 0x2b8) == 0) {
                puVar12 = (undefined4 *)FUN_004e4500(0x7c,"Lot/StiltedFoundationManager",0);
                if (puVar12 == (undefined4 *)0x0) {
                  pvVar5 = (void *)0x0;
                }
                else {
                  pvVar5 = (void *)FUN_00c1c190(puVar12);
                }
                *(void **)((int)this + 0x2b8) = pvVar5;
                FUN_00c1e0b0(pvVar5,this);
                cVar2 = FUN_00c1d5f0(*(void **)((int)this + 0x2b8),streamContext,param_4,param_2,
                                     param_3,0);
                if (cVar2 == '\0') {
                  StreamReader_AccumulateStatus(streamContext,0);
                  *(undefined1 *)(streamContext + 5) = 0;
                  if (*(undefined4 **)((int)this + 0x2b8) != (undefined4 *)0x0) {
                    (**(code **)**(undefined4 **)((int)this + 0x2b8))(1);
                  }
                  *(undefined4 *)((int)this + 0x2b8) = 0;
                  FUN_007d31b0(local_28);
                  return;
                }
              }
              if ((char)streamContext[5] != '\0') {
                if (*(int *)((int)this + 700) == 0) {
                  puVar12 = (undefined4 *)FUN_004e4500(0x24,"Lot/PoolManager",0);
                  if (puVar12 == (undefined4 *)0x0) {
                    pvVar5 = (void *)0x0;
                  }
                  else {
                    pvVar5 = (void *)FUN_00b68cb0(puVar12);
                  }
                  *(void **)((int)this + 700) = pvVar5;
                  FUN_00b680b0(pvVar5,this);
                  uVar6 = PoolManager_ReadRoomObjectMap
                                    (*(void **)((int)this + 700),streamContext,param_4,param_2,
                                     param_3,0);
                  if ((char)uVar6 == '\0') {
                    StreamReader_AccumulateStatus(streamContext,0);
                    *(undefined1 *)(streamContext + 5) = 0;
                    pvVar5 = *(void **)((int)this + 700);
                    if (pvVar5 != (void *)0x0) {
                      if (*(void **)((int)pvVar5 + 8) != (void *)0x0) {
                        Memory_FreeIfNonNull(*(void **)((int)pvVar5 + 8));
                      }
                      Memory_FreeIfNonNull(pvVar5);
                    }
                    *(undefined4 *)((int)this + 700) = 0;
                    FUN_007d31b0(local_28);
                    return;
                  }
                }
                if ((char)streamContext[5] != '\0') {
                  if (*(int *)((int)this + 0x2c0) == 0) {
                    puVar12 = (undefined4 *)FUN_004e4500(0x48,"Lot/PlatformManager",0);
                    if (puVar12 == (undefined4 *)0x0) {
                      puVar12 = (undefined4 *)0x0;
                    }
                    else {
                      puVar12 = FUN_00b54ae0(puVar12);
                    }
                    *(undefined4 **)((int)this + 0x2c0) = puVar12;
                    FUN_00b680b0(puVar12,this);
                    if ((0x28 < *(ushort *)((int)this + 0x78)) &&
                       (uVar6 = FUN_00b54ea0(*(void **)((int)this + 0x2c0),streamContext,param_4,
                                             param_2,param_3,0), (char)uVar6 == '\0')) {
                      StreamReader_AccumulateStatus(streamContext,0);
                      *(undefined1 *)(streamContext + 5) = 0;
                      pvVar5 = *(void **)((int)this + 0x2c0);
                      if (pvVar5 != (void *)0x0) {
                        if (*(void **)((int)pvVar5 + 8) != (void *)0x0) {
                          Memory_FreeIfNonNull(*(void **)((int)pvVar5 + 8));
                        }
                        Memory_FreeIfNonNull(pvVar5);
                      }
                      *(undefined4 *)((int)this + 0x2c0) = 0;
                      FUN_007d31b0(local_28);
                      return;
                    }
                  }
                  if ((char)streamContext[5] != '\0') {
                    if (*(int *)((int)this + 0x2c4) == 0) {
                      puVar12 = (undefined4 *)FUN_004e4500(0x24,"Lot/PlatformManager",0);
                      if (puVar12 == (undefined4 *)0x0) {
                        pvVar5 = (void *)0x0;
                      }
                      else {
                        pvVar5 = (void *)FUN_00a5a2a0(puVar12);
                      }
                      *(void **)((int)this + 0x2c4) = pvVar5;
                      FUN_00b680b0(pvVar5,this);
                      if ((0x29 < *(ushort *)((int)this + 0x78)) &&
                         (cVar2 = FUN_00a581c0(*(void **)((int)this + 0x2c4),streamContext,param_4,
                                               param_2,param_3,0), cVar2 == '\0')) {
                        StreamReader_AccumulateStatus(streamContext,0);
                        *(undefined1 *)(streamContext + 5) = 0;
                        pvVar5 = *(void **)((int)this + 0x2c4);
                        if (pvVar5 != (void *)0x0) {
                          FUN_00a5a270((int)pvVar5);
                          Memory_FreeIfNonNull(pvVar5);
                        }
                        *(undefined4 *)((int)this + 0x2c4) = 0;
                        FUN_007d31b0(local_28);
                        return;
                      }
                    }
                    if ((char)streamContext[5] != '\0') {
                      if (*(int *)((int)this + 0x2c8) == 0) {
                        puVar12 = (undefined4 *)FUN_004e4500(0x60,"Lot/PondManager",0);
                        if (puVar12 == (undefined4 *)0x0) {
                          puVar12 = (undefined4 *)0x0;
                        }
                        else {
                          puVar12 = FUN_00b63a30(puVar12);
                        }
                        *(undefined4 **)((int)this + 0x2c8) = puVar12;
                        FUN_00b62d30(puVar12,this);
                        if (*(ushort *)((int)this + 0x78) < 0x39) {
                          if (*(ushort *)((int)this + 0x78) == 0x38) {
                            *(undefined1 *)(*(int *)((int)this + 0x2c8) + 9) = 1;
                          }
                          *(undefined1 *)(*(int *)((int)this + 0x2c8) + 8) = 1;
                        }
                        else {
                          cVar2 = FUN_00b64b30(*(void **)((int)this + 0x2c8),streamContext,param_4,
                                               param_2,param_3,0);
                          if (cVar2 == '\0') {
                            StreamReader_AccumulateStatus(streamContext,0);
                            *(undefined1 *)(streamContext + 5) = 0;
                            if (*(undefined4 **)((int)this + 0x2c8) != (undefined4 *)0x0) {
                              (**(code **)**(undefined4 **)((int)this + 0x2c8))(1);
                            }
                            *(undefined4 *)((int)this + 0x2c8) = 0;
                            FUN_007d31b0(local_28);
                            return;
                          }
                        }
                      }
                      if ((char)streamContext[5] != '\0') {
                        if (*(int *)((int)this + 0x2cc) == 0) {
                          puVar12 = (undefined4 *)FUN_004e4500(0x28,"Lot/FireplaceManager",0);
                          if (puVar12 == (undefined4 *)0x0) {
                            pvVar5 = (void *)0x0;
                          }
                          else {
                            pvVar5 = (void *)FireplaceGroups_Construct(puVar12);
                          }
                          *(void **)((int)this + 0x2cc) = pvVar5;
                          FUN_00ed7c40(pvVar5,this);
                          bVar4 = FireplaceGroups_LoadDirectIds
                                            (*(void **)((int)this + 0x2cc),
                                             (undefined *)streamContext,(ulonglong)(uint)param_3,
                                             unaff_EDI);
                          if (!bVar4) {
                            StreamReader_AccumulateStatus(streamContext,0);
                            *(undefined1 *)(streamContext + 5) = 0;
                            if (*(undefined4 **)((int)this + 0x2cc) != (undefined4 *)0x0) {
                              (**(code **)**(undefined4 **)((int)this + 0x2cc))(1);
                            }
                            *(undefined4 *)((int)this + 0x2cc) = 0;
                            FUN_007d31b0(local_28);
                            return;
                          }
                        }
                        if ((char)streamContext[5] != '\0') {
                          if (*(int *)((int)this + 0x2d4) == 0) {
                            iVar7 = FUN_004e4500(0x74,"Lot/LotCompositorsManager",0);
                            if (iVar7 == 0) {
                              pvVar5 = (void *)0x0;
                            }
                            else {
                              pvVar5 = (void *)FUN_00ad3f00(iVar7);
                            }
                            *(void **)((int)this + 0x2d4) = pvVar5;
                            FUN_00ad2d20(pvVar5,this);
                            uVar16 = LotCompositors_ReadResource
                                               (*(void **)((int)this + 0x2d4),streamContext,param_4,
                                                param_2,param_3,(int *)0x0);
                            if ((char)uVar16 == '\0') {
                              StreamReader_AccumulateStatus(streamContext,0);
                              *(undefined1 *)(streamContext + 5) = 0;
                              pvVar5 = *(void **)((int)this + 0x2d4);
                              if (pvVar5 != (void *)0x0) {
                                FUN_00ad3b80((int)pvVar5);
                                Memory_FreeIfNonNull(pvVar5);
                              }
                              *(undefined4 *)((int)this + 0x2d4) = 0;
                              FUN_007d31b0(local_28);
                              return;
                            }
                          }
                          if ((char)streamContext[5] != '\0') {
                            if (*(int *)((int)this + 0x2d8) == 0) {
                              puVar12 = (undefined4 *)FUN_004e4500(0x38,"Lot/RugManager",0);
                              if (puVar12 == (undefined4 *)0x0) {
                                pvVar5 = (void *)0x0;
                              }
                              else {
                                pvVar5 = (void *)FUN_00c099a0(puVar12);
                              }
                              *(void **)((int)this + 0x2d8) = pvVar5;
                              FUN_00c09930(pvVar5,this);
                              cVar2 = RugManager_ReadSavedResource
                                                (*(void **)((int)this + 0x2d8),streamContext,param_2
                                                 ,param_3,0);
                              if (cVar2 == '\0') {
                                StreamReader_AccumulateStatus(streamContext,0);
                                *(undefined1 *)(streamContext + 5) = 0;
                                if (*(undefined4 **)((int)this + 0x2d8) != (undefined4 *)0x0) {
                                  (**(code **)**(undefined4 **)((int)this + 0x2d8))(1);
                                }
                                *(undefined4 *)((int)this + 0x2d8) = 0;
                                FUN_007d31b0(local_28);
                                return;
                              }
                            }
                            if ((char)streamContext[5] != '\0') {
                              bVar4 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
                              if ((bVar4) && (*(int *)((int)this + 0x2e0) == 0)) {
                                puVar12 = (undefined4 *)
                                          FUN_004e4500(0x3c,"Lot/mpRainPuddleManager",0);
                                if (puVar12 == (undefined4 *)0x0) {
                                  pvVar5 = (void *)0x0;
                                }
                                else {
                                  pvVar5 = (void *)FUN_00b6e570(puVar12);
                                }
                                *(void **)((int)this + 0x2e0) = pvVar5;
                                FUN_00b6e650(pvVar5,this);
                                cVar2 = FUN_00b6e700(*(void **)((int)this + 0x2e0),streamContext,
                                                     param_2,param_3,0);
                                if (cVar2 == '\0') {
                                  StreamReader_AccumulateStatus(streamContext,0);
                                  *(undefined1 *)(streamContext + 5) = 0;
                                  if (*(undefined4 **)((int)this + 0x2e0) != (undefined4 *)0x0) {
                                    (**(code **)**(undefined4 **)((int)this + 0x2e0))(1);
                                  }
                                  *(undefined4 *)((int)this + 0x2e0) = 0;
                                  FUN_007d31b0(local_28);
                                  return;
                                }
                              }
                              if ((char)streamContext[5] != '\0') {
                                bVar4 = FlagWord_TestAnyMask(&DAT_011cede0,0x40000);
                                if ((((bVar4) &&
                                     (uVar6 = FUN_00624bc0((int)this), (char)uVar6 != '\0')) &&
                                    (*(int *)((int)this + 0x2e4) == 0)) &&
                                   (0x3c < *(ushort *)((int)this + 0x78))) {
                                  puVar12 = (undefined4 *)FUN_004e4500(0x18,"Lot/SeaLifeManager",0);
                                  if (puVar12 == (undefined4 *)0x0) {
                                    pvVar5 = (void *)0x0;
                                  }
                                  else {
                                    pvVar5 = (void *)FUN_00c0df00(puVar12);
                                  }
                                  *(void **)((int)this + 0x2e4) = pvVar5;
                                  FUN_00c0e010(pvVar5,this);
                                  FUN_00c0e620(*(void **)((int)this + 0x2e4),streamContext,param_4,
                                               param_2,param_3,0);
                                }
                                if ((char)streamContext[5] != '\0') {
                                  if (*(int *)((int)this + 0x29c) == 0) {
                                    local_10 = param_2;
                                    local_c = param_3;
                                    local_8 = 0xb125533a;
                                    local_4 = 0x333e35;
                                    bVar4 = ResourceStreamContext_OpenRead
                                                      (streamContext,&local_10,0);
                                    if (bVar4) {
                                      pvVar5 = (void *)FUN_004e4500(0x20,"Lot/FloorFeatureLayer",0);
                                      if (pvVar5 == (void *)0x0) {
                                        puVar13 = (undefined *)0x0;
                                      }
                                      else {
                                        puVar13 = ByteWorldGrid_Construct
                                                            (pvVar5,"Lot/FloorFeatureLayer");
                                      }
                                      *(undefined **)((int)this + 0x29c) = puVar13;
                                      bVar4 = LotGrid_ReadHeaderResource
                                                        (puVar13,(undefined *)streamContext,0x333e35
                                                         ,CONCAT44(param_3,param_2));
                                      if (!bVar4) {
                                        ResourceStreamContext_Close(streamContext);
                                        StreamReader_AccumulateStatus(streamContext,0);
                                        *(undefined1 *)(streamContext + 5) = 0;
                                        if (*(undefined4 **)((int)this + 0x29c) != (undefined4 *)0x0
                                           ) {
                                          (**(code **)**(undefined4 **)((int)this + 0x29c))(1);
                                        }
                                        *(undefined4 *)((int)this + 0x29c) = 0;
                                        FUN_007d31b0(local_28);
                                        return;
                                      }
                                      iVar7 = *(int *)((int)this + 0x29c);
                                      StreamReader_ReadBytesInto
                                                (streamContext,*(void **)(iVar7 + 0x10),
                                                 *(int *)(iVar7 + 0x14) - *(int *)(iVar7 + 0x10));
                                      ResourceStreamContext_Close(streamContext);
                                    }
                                  }
                                  if ((((char)streamContext[5] != '\0') &&
                                      (*(int *)((int)this + 0x2a0) == 0)) &&
                                     (*(int *)((int)this + 0x29c) != 0)) {
                                    if (*(ushort *)((int)this + 0x78) < 0x2d) {
                                      pvVar5 = (void *)FUN_004e4500(0x20,"Lot/FloorFeatureMaskLayer"
                                                                    ,0);
                                      if (pvVar5 == (void *)0x0) {
                                        puVar13 = (undefined *)0x0;
                                      }
                                      else {
                                        puVar13 = UInt16WorldGrid_Construct
                                                            (pvVar5,"Lot/FloorFeatureMaskLayer");
                                      }
                                      iVar7 = *(int *)((int)this + 0x29c);
                                      *(undefined **)((int)this + 0x2a0) = puVar13;
                                      WorldGrid_SetDimensions
                                                (puVar13,*(int *)(iVar7 + 4),*(int *)(iVar7 + 8),
                                                 *(int *)(iVar7 + 0xc));
                                      param_4 = (int *)0xffff;
                                      UInt16WorldGrid_FillAll
                                                (*(void **)((int)this + 0x2a0),(ushort *)&param_4);
                                    }
                                    else {
                                      pvVar5 = (void *)FUN_004e4500(0x20,"Lot/FloorFeatureMaskLayer"
                                                                    ,0);
                                      if (pvVar5 == (void *)0x0) {
                                        puVar13 = (undefined *)0x0;
                                      }
                                      else {
                                        puVar13 = UInt16WorldGrid_Construct
                                                            (pvVar5,"Lot/FloorFeatureMaskLayer");
                                      }
                                      *(undefined **)((int)this + 0x2a0) = puVar13;
                                      bVar4 = LotGrid_ReadHeaderResource
                                                        (puVar13,(undefined *)streamContext,0x333e36
                                                         ,CONCAT44(param_3,param_2));
                                      if (!bVar4) {
                                        ResourceStreamContext_Close(streamContext);
                                        StreamReader_AccumulateStatus(streamContext,0);
                                        *(undefined1 *)(streamContext + 5) = 0;
                                        if (*(undefined4 **)((int)this + 0x2a0) != (undefined4 *)0x0
                                           ) {
                                          (**(code **)**(undefined4 **)((int)this + 0x2a0))(1);
                                        }
                                        *(undefined4 *)((int)this + 0x2a0) = 0;
                                        FUN_007d31b0(local_28);
                                        return;
                                      }
                                      iVar7 = *(int *)((int)this + 0x2a0);
                                      BlendGeometry_ReadUInt16Bank
                                                (streamContext,*(ushort **)(iVar7 + 0x10),
                                                 *(int *)(iVar7 + 0x14) - *(int *)(iVar7 + 0x10) >>
                                                 1);
                                      ResourceStreamContext_Close(streamContext);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  LotDataLayers_CreateMissingOwners(this);
  FUN_00ac43f0(this,(uint)*(ushort *)((int)this + 0x78));
  if (*(ushort *)((int)this + 0x78) < 0x3a) {
    Lot_RefreshSeaBoundaryFlag(this);
  }
  if (((*(char *)((int)this + 0x4b0) != '\0') ||
      ((*(int *)((int)this + 0x408) == 1 && (*(int *)((int)this + 0x40c) == 0x50)))) &&
     (*(ushort *)((int)this + 0x78) < 0x3d)) {
    FUN_00ab1080(this,'\x01');
  }
  World_InvokeLoadPumpCallback();
  FUN_007d31b0(local_28);
  return;
}

