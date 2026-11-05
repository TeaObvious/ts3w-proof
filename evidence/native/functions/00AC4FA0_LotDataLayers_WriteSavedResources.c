/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Enclosing saved-lot data writer: deck group 0x0093D6D6 writes the header, flattens four-word
   cells, writes the body, then closes. Sticky status gates subsequent lanes. The later actual
   compositor save lane is retained; other child algorithms are not reconstructed.
   
   Analyst note (PC1.67 construction persistence contract): Original lot construction save
   dispatcher. Uses supplied resource stream/key context/lot identity and manager resource keys;
   current package-copy/source-path dictionary is a project provider mechanism. Full manager
   ordering and status behavior remain visible here, not replaced by detached array writers.
   
   PC1.67 selectedbasementwriter closure: sticky-statusgatedcall C6D880 group002E2C5C withlotGUID;
   whenheadergood andcellproductpositive, A95080flattensfullrawbytes inlevel/X/Z
   thenwritesexactarray andaccumulatesstatus; closesresource. Headerstillrepresentszero-cellgrid.
   Wholelotmanagerordering retainsindependentcontracts; Game snapshotwriter isnotthenative
   mutablemanager.
   
   Additional PC1.67 floor-feature normal-write closure: present byte flag pointer29C writes
   B125533A group00333E35 viaC6D880 header and full physical byte body; present ushort mask
   pointer2A0 similarly writes00333E36 with context-qualified ushort body. Presence, not nonzero
   scan or enclosing old LDES version, gates emission. Ordinary lot description writerACA430 writes
   full current45hex, so copied old LDES bytes are not a reason to prefer a supplied modern mask
   during a legacy load. Selection during load is the original enclosing description version. */

void __thiscall
LotDataLayers_WriteSavedResources(void *this,char *param_1,void *param_2,char *param_3,int *param_4)

{
  void *this_00;
  int iVar1;
  byte bVar2;
  undefined4 uVar3;
  uint unaff_EDI;
  uint *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  FUN_00ad3090(*(int *)((int)this + 0x2d4));
  FloorManager_WriteResources(*(void **)((int)this + 0x290),param_1,param_2,param_3,param_4);
  if (param_1[0x14] != '\0') {
    LotGrid_WriteHeaderResource(*(void **)((int)this + 0x2a4),param_1,0x93d6d6,param_3,param_4);
    if (param_1[0x14] != '\0') {
      local_10 = (uint *)0x0;
      local_c = 0;
      local_8 = 0;
      local_4 = "Lot/DeckFoundationLayer";
      FourWordGrid_ExportLevelXZCells(*(void **)((int)this + 0x2a4),(int *)&local_10);
      uVar3 = FUN_004ddfc0(*(int **)(param_1 + 8),local_10,(local_c - (int)local_10 >> 4) * 4,
                           *(uint *)(param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,(byte)uVar3);
      if (local_10 != (uint *)0x0) {
        Memory_FreeIfNonNull(local_10);
      }
    }
    ResourceStreamContext_Close(param_1);
    if (param_1[0x14] != '\0') {
      LotTerrain_WriteResources(*(void **)((int)this + 0x294),param_1,param_2,param_3,param_4,0);
      if (param_1[0x14] != '\0') {
        LotGrid_WriteHeaderResource(*(void **)((int)this + 0x2a8),param_1,0x2e2c5c,param_3,param_4);
        this_00 = *(void **)((int)this + 0x2a8);
        if ((param_1[0x14] != '\0') &&
           (0 < *(int *)((int)this_00 + 0xc) * *(int *)((int)this_00 + 8) *
                *(int *)((int)this_00 + 4))) {
          local_10 = (uint *)0x0;
          local_c = 0;
          local_8 = 0;
          local_4 = "Lot/SaveDataLayers/Tmp1";
          FloorRotations_FlattenBytes(this_00,(int *)&local_10);
          bVar2 = FUN_004dde50(*(int **)(param_1 + 8),local_10,local_c - (int)local_10);
          StreamReader_AccumulateStatus(param_1,bVar2);
          if (local_10 != (uint *)0x0) {
            Memory_FreeIfNonNull(local_10);
          }
        }
        ResourceStreamContext_Close(param_1);
        if (param_1[0x14] != '\0') {
          RoomManager_WriteResources
                    (*(void **)((int)this + 0x298),(undefined4 *)param_1,param_2,(int)param_3,
                     param_4,'\0');
          if (param_1[0x14] != '\0') {
            RoofManager_WriteResource
                      (*(void **)((int)this + 0x2ac),param_1,param_2,param_3,param_4,
                       (undefined4 *)0x0);
            if (param_1[0x14] != '\0') {
              FUN_00a48920(*(void **)((int)this + 0x2b0),param_1,param_2,param_3,param_4,0);
              if (param_1[0x14] != '\0') {
                ModularStairs_WriteManager
                          (*(void **)((int)this + 0x2b4),param_1,param_2,param_3,param_4,0);
                if (param_1[0x14] != '\0') {
                  FUN_00c1a950(*(void **)((int)this + 0x2b8),param_1,param_2,param_3,param_4,0);
                  if (param_1[0x14] != '\0') {
                    PoolManager_WriteResource
                              (*(void **)((int)this + 700),param_1,param_2,param_3,param_4,0);
                    if (param_1[0x14] != '\0') {
                      FUN_00b54730(*(void **)((int)this + 0x2c0),param_1,param_2,param_3,param_4,0);
                      if (param_1[0x14] != '\0') {
                        FUN_00a55280(*(void **)((int)this + 0x2c4),param_1,param_2,param_3,param_4,0
                                    );
                        if (param_1[0x14] != '\0') {
                          if (*(void **)((int)this + 0x2c8) != (void *)0x0) {
                            FUN_00b64a00(*(void **)((int)this + 0x2c8),param_1,param_2,param_3,
                                         param_4,0);
                          }
                          if (param_1[0x14] != '\0') {
                            FireplaceGroups_SaveDirectIds
                                      (*(void **)((int)this + 0x2cc),param_1,ZEXT48(param_4),
                                       unaff_EDI);
                            if (param_1[0x14] != '\0') {
                              FUN_00ad3710(*(void **)((int)this + 0x2d4));
                              LotCompositors_WriteResource
                                        (*(void **)((int)this + 0x2d4),param_1,param_2,(uint)param_3
                                         ,(uint)param_4,0);
                              if (param_1[0x14] != '\0') {
                                RugManager_WriteSavedResource
                                          (*(void **)((int)this + 0x2d8),param_1,param_3,param_4,0);
                                if (param_1[0x14] != '\0') {
                                  if (*(void **)((int)this + 0x2e0) != (void *)0x0) {
                                    FUN_00b6e130(*(void **)((int)this + 0x2e0),param_1,param_3,
                                                 (int)param_4,(void *)0x0);
                                  }
                                  if (param_1[0x14] != '\0') {
                                    if (*(void **)((int)this + 0x2e4) != (void *)0x0) {
                                      FUN_00c0df50(*(void **)((int)this + 0x2e4),param_1,param_2,
                                                   param_3,param_4,0);
                                    }
                                    if ((param_1[0x14] != '\0') &&
                                       (*(void **)((int)this + 0x29c) != (void *)0x0)) {
                                      LotGrid_WriteHeaderResource
                                                (*(void **)((int)this + 0x29c),param_1,0x333e35,
                                                 param_3,param_4);
                                      if (param_1[0x14] != '\0') {
                                        iVar1 = *(int *)(*(int *)((int)this + 0x29c) + 0x10);
                                        bVar2 = FUN_004dde50(*(int **)(param_1 + 8),iVar1,
                                                             *(int *)(*(int *)((int)this + 0x29c) +
                                                                     0x14) - iVar1);
                                        StreamReader_AccumulateStatus(param_1,bVar2);
                                      }
                                      ResourceStreamContext_Close(param_1);
                                      if ((param_1[0x14] != '\0') &&
                                         (*(void **)((int)this + 0x2a0) != (void *)0x0)) {
                                        LotGrid_WriteHeaderResource
                                                  (*(void **)((int)this + 0x2a0),param_1,0x333e36,
                                                   param_3,param_4);
                                        if (param_1[0x14] != '\0') {
                                          iVar1 = *(int *)((int)this + 0x2a0);
                                          FUN_005a2fe0(param_1,*(ushort **)(iVar1 + 0x10),
                                                       *(int *)(iVar1 + 0x14) -
                                                       *(int *)(iVar1 + 0x10) >> 1);
                                        }
                                        ResourceStreamContext_Close(param_1);
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
  }
  return;
}

