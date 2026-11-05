/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* PC1.67 STATIC ORIGINAL. cdecl context pointer + optional diagnostics pointer; AL byte aggregate.
   Context+1C catalog absent/fieldA4zero succeeds. Otherwise constructs distinct named
   wallsRequired/wallsProhibited ordered sets and invokes B3FD50 with five stack words (ADD ESP14),
   checking AL. Required entries call B3CD30(edge,0,1,(flags>>12)&1,context,diagnostics), six stack
   words/ADD ESP18. Prohibited entries consult physical wall map at lot+298 plus
   stair/cutout/product/footprint predicates; signed endpoint bytes use MOVSX. Null diagnostics
   short-circuits on first failure; nonnull diagnostics appends native numeric feedback and
   continues aggregating. Both edge sets are freed on all local exits. B45410 calls this unless its
   existing bypass fields apply. No proof of current collinear-span tolerance or project report
   scoring follows. */

byte __cdecl Placement_TestWallFlagConstraints(int *param_1,void *param_2)

{
  void *pvVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  byte bVar5;
  bool bVar6;
  char cVar7;
  uint uVar8;
  int ******ppppppiVar9;
  uint uVar10;
  uint *productKey;
  undefined4 uVar11;
  float *pfVar12;
  int iVar13;
  byte bVar14;
  int ******ppppppiVar15;
  undefined4 *puVar16;
  float10 fVar17;
  byte local_296;
  char local_290;
  undefined1 local_28f;
  undefined1 local_28e;
  undefined1 local_28d;
  char local_28c;
  undefined1 local_28b;
  undefined1 local_28a;
  undefined1 local_289;
  float local_288;
  int ******local_284;
  void *local_280;
  undefined1 local_27c [4];
  int ******local_278;
  int ******local_274;
  undefined4 *local_270;
  undefined4 local_26c;
  undefined4 local_268;
  char *local_264;
  undefined1 local_260 [4];
  int ******local_25c;
  int ******local_258;
  undefined4 *local_254;
  undefined4 local_250;
  undefined4 local_24c;
  char *local_248;
  float local_244;
  undefined4 local_240;
  undefined4 local_23c;
  LotXZLevel local_238;
  float local_22c;
  float local_228;
  int local_224;
  undefined4 local_220;
  undefined4 local_21c;
  undefined4 local_218;
  undefined4 local_214;
  float local_210 [16];
  float local_1d0 [16];
  float local_190 [16];
  float local_150 [16];
  float local_110 [16];
  float local_d0 [16];
  float local_90 [16];
  float local_50 [19];
  
  local_296 = 1;
  if (param_1[7] == 0) {
    uVar10 = 0;
  }
  else {
    uVar10 = *(uint *)(param_1[7] + 0xa4);
  }
  if (uVar10 == 0) {
    return 1;
  }
  local_278 = (int ******)&local_278;
  local_25c = (int ******)&local_25c;
  local_264 = "World/Lot/TestPlacementWithRespectToWallFlags/wallsRequired";
  local_270 = (undefined4 *)0x0;
  local_26c = 0;
  local_268 = 0;
  local_248 = "World/Lot/TestPlacementWithRespectToWallFlags/wallsProhibited";
  local_254 = (undefined4 *)0x0;
  local_250 = 0;
  local_24c = 0;
  local_274 = local_278;
  local_258 = local_25c;
  uVar8 = Placement_CollectWallFlagEdgeSets
                    ((void *)*param_1,(float *)(param_1 + 2),param_1[8],local_27c,local_260);
  if ((char)uVar8 != '\0') {
    local_288 = (float)(CONCAT31(local_288._1_3_,(char)(uVar10 >> 0xc)) & 0xffffff01);
    ppppppiVar9 = local_274;
    if ((int *******)local_274 != &local_278) {
      do {
        bVar5 = Placement_TestRequiredWallEdge
                          ((char *)(ppppppiVar9 + 4),'\0','\x01',SUB41(local_288,0),param_1,param_2)
        ;
        local_296 = local_296 & bVar5;
        if ((local_296 == 0) && (param_2 == (void *)0x0)) {
          FUN_008b19b0(local_254);
          FUN_008b19b0(local_270);
          return 0;
        }
        ppppppiVar9 = (int ******)FUN_004e1030((int *)ppppppiVar9);
      } while ((int *******)ppppppiVar9 != &local_278);
    }
    local_284 = local_258;
    if ((int *******)local_258 != &local_25c) {
      do {
        ppppppiVar9 = local_284;
        pvVar1 = *(void **)(param_1[1] + 0x298);
        ppppppiVar15 = local_284 + 4;
        bVar14 = 1;
        bVar5 = 1;
        bVar6 = PartitionManager_HasPhysicalWallForLocator(pvVar1,(char *)ppppppiVar15);
        if (bVar6) {
          bVar5 = bVar14;
          if ((((*(char *)((int)ppppppiVar9 + 0x13) == *(char *)ppppppiVar15) ||
               (*(char *)(ppppppiVar9 + 5) == *(char *)((int)ppppppiVar9 + 0x11))) ||
              ((void *)param_1[7] == (void *)0x0)) ||
             (uVar10 = Catalog_TestIntersectionCategoryOrD0Bit4((void *)param_1[7]),
             (char)uVar10 == '\0')) {
LAB_00b406af:
            productKey = FUN_00b47df0(pvVar1,(char *)ppppppiVar15,'\0');
            uVar11 = FUN_00c5b7b0(productKey);
            if ((char)uVar11 != '\0') {
              local_280 = *(void **)(param_1[1] + 0x2b4);
              local_244 = 0.0;
              local_288 = 0.0;
              local_238.x = (float)(int)*(char *)ppppppiVar15;
              local_238.level = (int)*(char *)((int)ppppppiVar9 + 0x12);
              local_238.z = (float)(int)*(char *)((int)ppppppiVar9 + 0x11);
              uVar11 = TryGetFirstMatchingStairHeight(local_280,&local_238.x,&local_244);
              if ((char)uVar11 != '\0') {
                local_224 = (int)*(char *)((int)ppppppiVar9 + 0x15);
                local_22c = (float)(int)*(char *)((int)ppppppiVar9 + 0x13);
                local_228 = (float)(int)*(char *)(ppppppiVar9 + 5);
                uVar11 = TryGetFirstMatchingStairHeight(local_280,&local_22c,&local_288);
                if ((char)uVar11 != '\0') {
                  fVar17 = LotLevelHeight_SampleLocalPosition
                                     (*(void **)(param_1[1] + 0x290),&local_238);
                  if (ABS((float10)local_244 - (float10)local_288) < (float10)0.01) {
                    local_280 = (void *)(float)((float10)local_244 - fVar17);
                    fVar17 = FUN_00ab02d0();
                    if (ABS((float10)(float)local_280 - fVar17) < (float10)0.01) goto LAB_00b4082a;
                  }
                  if (param_2 == (void *)0x0) goto LAB_00b40b67;
                  FUN_00ad68b0(local_190,0xe8,param_1[1],(char *)ppppppiVar15,'\0');
                  FUN_00ad8570(param_2,local_190);
                  bVar5 = 0;
                  FUN_00ad70d0((int)local_190);
                }
              }
            }
LAB_00b4082a:
            uVar11 = FUN_00c5b9b0((int *)productKey,'\x01');
            if ((char)uVar11 != '\0') {
              pvVar1 = (void *)param_1[7];
              iVar13 = *(int *)((int)pvVar1 + 0xd8) - *(int *)((int)pvVar1 + 0xd4);
              iVar2 = iVar13 >> 0x1f;
              if (iVar13 / 0x28 + iVar2 == iVar2) {
                uVar10 = Catalog_TestPlacementMask403F(pvVar1);
                if ((char)uVar10 != '\0') {
                  local_23c = 0xffffffff;
                  uVar11 = FUN_00a56390(*(void **)(param_1[1] + 0x2c4),(char *)ppppppiVar15,
                                        &local_23c,'\0');
                  if ((char)uVar11 != '\0') {
                    if (param_2 == (void *)0x0) goto LAB_00b40b67;
                    FUN_00ad68b0(local_1d0,0xff,param_1[1],(char *)ppppppiVar15,'\0');
                    FUN_00ad8570(param_2,local_1d0);
                    bVar5 = 0;
                    FUN_00ad70d0((int)local_1d0);
                  }
                  uVar10 = FUN_00b008e0(*param_1,'\0');
                  if (((char)uVar10 == '\0') &&
                     (cVar7 = FUN_00aff810((void *)param_1[1],(char *)ppppppiVar15,'\0'),
                     cVar7 != '\0')) {
                    if (param_2 == (void *)0x0) goto LAB_00b40b67;
                    FUN_00ad68b0(local_150,0x35,param_1[1],(char *)ppppppiVar15,'\0');
                    FUN_00ad8570(param_2,local_150);
                    pfVar12 = local_150;
LAB_00b40a55:
                    bVar5 = 0;
                    FUN_00ad70d0((int)pfVar12);
                  }
                }
              }
              else {
                local_240 = 0xffffffff;
                uVar11 = FUN_00a56390(*(void **)(param_1[1] + 0x2c4),(char *)ppppppiVar15,&local_240
                                      ,'\x01');
                if ((char)uVar11 != '\0') {
                  if (param_2 == (void *)0x0) goto LAB_00b40b67;
                  FUN_00ad68b0(local_210,0xff,param_1[1],(char *)ppppppiVar15,'\0');
                  FUN_00ad8570(param_2,local_210);
                  bVar5 = 0;
                  FUN_00ad70d0((int)local_210);
                }
                if (0x7fffffff < (uint)param_1[4]) {
                  local_28c = -1;
                  local_28b = 0xff;
                  local_28a = 0;
                  local_289 = 0xff;
                  local_290 = -1;
                  local_28f = 0xff;
                  local_28e = 0;
                  local_28d = 0xff;
                  WallLocator_QueryFirstAdjacentTile((char *)ppppppiVar15,(undefined2 *)&local_28c);
                  WallLocator_QueryOtherAdjacentTile
                            ((undefined2 *)ppppppiVar15,(undefined2 *)&local_290);
                  uVar10 = FUN_00ad01d0(param_1[1],&local_28c,'\0','\0');
                  if (((char)uVar10 == '\0') ||
                     (uVar10 = FUN_00ad01d0(param_1[1],&local_290,'\0','\0'), (char)uVar10 == '\0'))
                  {
                    if (param_2 != (void *)0x0) {
                      FUN_00ad68b0(local_110,0x106,param_1[1],(char *)ppppppiVar15,'\0');
                      FUN_00ad8570(param_2,local_110);
                      pfVar12 = local_110;
                      goto LAB_00b40a55;
                    }
                    goto LAB_00b40b67;
                  }
                }
              }
            }
            uVar10 = WallProduct_BlocksPlacementOrMissing(productKey);
            if ((char)uVar10 == '\0') {
              bVar6 = false;
            }
            else {
              uVar10 = FUN_00c5bdc0(productKey);
              bVar6 = true;
              if ((((char)uVar10 != '\0') &&
                  (uVar11 = FUN_00c5b860(productKey), (char)uVar11 != '\0')) &&
                 (fVar17 = FenceCatalog_GetPostHeight(productKey), (float10)0.35 < fVar17)) {
                WallProduct_HasNonzeroFieldE0(productKey);
              }
            }
            iVar2 = param_1[7];
            if (((iVar2 != 0) && (*(int *)(iVar2 + 0xd4) != *(int *)(iVar2 + 0xd8))) &&
               ((1 < *(uint *)(iVar2 + 0xe8) &&
                (uVar11 = FUN_00c5b7f0(productKey), (char)uVar11 != '\0')))) {
              if (param_2 == (void *)0x0) goto LAB_00b40b67;
              FUN_00ad68b0(local_d0,0xc,param_1[1],(char *)ppppppiVar15,'\0');
              FUN_00ad8570(param_2,local_d0);
              bVar5 = 0;
              FUN_00ad70d0((int)local_d0);
            }
            if (bVar6) {
              if (param_2 == (void *)0x0) goto LAB_00b40b67;
              FUN_00ad68b0(local_50,0x46,param_1[1],(char *)ppppppiVar15,'\0');
              FUN_00ad8570(param_2,local_50);
              bVar5 = 0;
              FUN_00ad70d0((int)local_50);
            }
          }
          else {
            local_220 = 0;
            local_21c = 0;
            local_218 = 0;
            local_214 = 0;
            uVar10 = FUN_00c978a0((void *)param_1[7],&local_220);
            if (((char)uVar10 == '\0') || (uVar10 = FUN_00c97890(param_1[7]), (char)uVar10 != '\0'))
            goto LAB_00b406af;
            if (param_2 != (void *)0x0) {
              FUN_00ad68b0(local_90,0x65,param_1[1],(char *)ppppppiVar15,'\0');
              FUN_00ad8570(param_2,local_90);
              bVar5 = 0;
              FUN_00ad70d0((int)local_90);
              goto LAB_00b406af;
            }
LAB_00b40b67:
            bVar5 = 0;
          }
        }
        local_296 = local_296 & bVar5;
        if ((local_296 == 0) && (puVar4 = local_254, param_2 == (void *)0x0)) {
          while (puVar16 = local_270, puVar4 != (undefined4 *)0x0) {
            FUN_008b19b0((undefined4 *)*puVar4);
            puVar16 = (undefined4 *)puVar4[1];
            Memory_FreeIfNonNull(puVar4);
            puVar4 = puVar16;
          }
          while (puVar16 != (undefined4 *)0x0) {
            FUN_008b19b0((undefined4 *)*puVar16);
            puVar4 = (undefined4 *)puVar16[1];
            Memory_FreeIfNonNull(puVar16);
            puVar16 = puVar4;
          }
          return 0;
        }
        local_284 = (int ******)FUN_004e1030((int *)local_284);
      } while ((int *******)local_284 != &local_25c);
    }
  }
  puVar4 = local_270;
  if (local_254 != (undefined4 *)0x0) {
    puVar16 = local_254;
    do {
      FUN_008b19b0((undefined4 *)*puVar16);
      puVar3 = (undefined4 *)puVar16[1];
      Memory_FreeIfNonNull(puVar16);
      puVar16 = puVar3;
      puVar4 = local_270;
    } while (puVar3 != (undefined4 *)0x0);
  }
  while (puVar4 != (undefined4 *)0x0) {
    FUN_008b19b0((undefined4 *)*puVar4);
    puVar16 = (undefined4 *)puVar4[1];
    Memory_FreeIfNonNull(puVar4);
    puVar4 = puVar16;
  }
  return local_296;
}

