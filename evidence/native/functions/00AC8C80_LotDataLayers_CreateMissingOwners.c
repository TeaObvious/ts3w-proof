/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Actual missing-data-layer creator. The selected deck field at offset 0x2A4 allocates 0x58 bytes
   (88 decimal), constructs/sizes storage, then receives four 0xFFFFFFFF fill words. The complete
   body also initializes other layer owners. No speculative class/type/prototype is proposed. */

void __fastcall LotDataLayers_CreateMissingOwners(int *param_1)

{
  bool bVar1;
  undefined1 *puVar2;
  void *pvVar3;
  undefined4 *puVar4;
  int iVar5;
  byte local_11;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  if (param_1[0xa4] == 0) {
    puVar2 = (undefined1 *)FUN_004e4500(0x230,"Lot/FloorManager",0);
    if (puVar2 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      puVar2 = FUN_00a92c90(puVar2);
    }
    param_1[0xa4] = (int)puVar2;
    FUN_00a8dd00(puVar2,(int)param_1);
  }
  FUN_00a97a50((void *)param_1[0xa4]);
  if (param_1[0xa9] == 0) {
    pvVar3 = (void *)FUN_004e4500(0x58,"Lot/DeckFoundationLayer",0);
    if (pvVar3 == (void *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FourWordGrid_InitializeStorage(pvVar3,"Lot/DeckFoundationLayer");
    }
    param_1[0xa9] = (int)pvVar3;
    FourWordGrid_ResizeStorage(pvVar3,param_1[0x5d],param_1[0x5e],param_1[0x61]);
    local_10 = 0xffffffff;
    local_c = 0xffffffff;
    local_8 = 0xffffffff;
    local_4 = 0xffffffff;
    FourWordGrid_FillUniformValue((void *)param_1[0xa9],&local_10);
  }
  if (param_1[0xaa] == 0) {
    pvVar3 = (void *)FUN_004e4500(0x58,"Lot/BasementLayer",0);
    if (pvVar3 == (void *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00a8e600(pvVar3,"Lot/BasementLayer");
    }
    iVar5 = -param_1[0x5f];
    param_1[0xaa] = (int)pvVar3;
    if (iVar5 < 0) {
      iVar5 = 0;
    }
    FUN_00a95850(pvVar3,param_1[0x5d],param_1[0x5e],iVar5);
    if (0 < iVar5) {
      local_11 = 0;
      FUN_00a94e90((void *)param_1[0xaa],&local_11);
    }
  }
  if (param_1[0xa5] == 0) {
    puVar2 = (undefined1 *)FUN_004e4500(0x168,"Lot/LotTerrain",0);
    if (puVar2 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      puVar2 = FUN_00aebf10(puVar2);
    }
    param_1[0xa5] = (int)puVar2;
    FUN_00ae9bf0(puVar2,(int)param_1);
    FUN_00aeff00(param_1[0xa5]);
  }
  if (param_1[0xa6] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x290,"Lot/PartitionManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = FUN_00b4f490(puVar4);
    }
    param_1[0xa6] = (int)puVar4;
    FUN_00b475c0(puVar4,(int)param_1);
    FUN_00b512c0(param_1[0xa6]);
  }
  if (param_1[0xab] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0xd0,"Lot/RoofManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = FUN_00b99330(puVar4);
    }
    param_1[0xab] = (int)puVar4;
    FUN_00b9ab30(puVar4,param_1);
  }
  if (param_1[0xac] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x30,"Lot/CeilingManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = FUN_00a488c0(puVar4);
    }
    param_1[0xac] = (int)puVar4;
    CeilingManager_BindOwnerAndRegisterRequest(puVar4,param_1);
  }
  if (param_1[0xad] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0xdc,"Lot/ModularStairsManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00b1d850(puVar4);
    }
    param_1[0xad] = (int)pvVar3;
    FUN_00b150b0(pvVar3,param_1);
  }
  if (param_1[0xae] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x7c,"Lot/StiltedFoundationManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00c1c190(puVar4);
    }
    param_1[0xae] = (int)pvVar3;
    FUN_00c1e0b0(pvVar3,param_1);
  }
  if (param_1[0xaf] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x24,"Lot/PoolManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00b68cb0(puVar4);
    }
    param_1[0xaf] = (int)pvVar3;
    FUN_00b680b0(pvVar3,param_1);
  }
  if (param_1[0xb0] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x48,"Lot/PlatformManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = FUN_00b54ae0(puVar4);
    }
    param_1[0xb0] = (int)puVar4;
    FUN_00b680b0(puVar4,param_1);
  }
  if (param_1[0xb1] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x24,"Lot/CurvedPoolManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00a5a2a0(puVar4);
    }
    param_1[0xb1] = (int)pvVar3;
    FUN_00b680b0(pvVar3,param_1);
  }
  if (param_1[0xb2] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x60,"Lot/PondManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = FUN_00b63a30(puVar4);
    }
    param_1[0xb2] = (int)puVar4;
    FUN_00b62d30(puVar4,param_1);
  }
  if (param_1[0xb3] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x28,"Lot/FireplaceManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00a76280(puVar4);
    }
    param_1[0xb3] = (int)pvVar3;
    FUN_00ed7c40(pvVar3,param_1);
  }
  if (param_1[0xb5] == 0) {
    iVar5 = FUN_004e4500(0x74,"Lot/LotCompositorsManager",0);
    if (iVar5 == 0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00ad3f00(iVar5);
    }
    param_1[0xb5] = (int)pvVar3;
    FUN_00ad2d20(pvVar3,param_1);
  }
  if (param_1[0xb6] == 0) {
    puVar4 = (undefined4 *)FUN_004e4500(0x38,"Lot/RugManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00c099a0(puVar4);
    }
    param_1[0xb6] = (int)pvVar3;
    FUN_00c09930(pvVar3,param_1);
  }
  bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
  if ((bVar1) && (param_1[0xb8] == 0)) {
    puVar4 = (undefined4 *)FUN_004e4500(0x3c,"Lot/mpRainPuddleManager",0);
    if (puVar4 == (undefined4 *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      pvVar3 = (void *)FUN_00b6e570(puVar4);
    }
    param_1[0xb8] = (int)pvVar3;
    FUN_00b6e650(pvVar3,param_1);
  }
  bVar1 = FlagWord_TestAnyMask(&DAT_011cede0,0x40000);
  if ((((bVar1) && (param_1[0xb9] == 0)) && (param_1[0x102] == 1)) && (param_1[0x103] == 0x50)) {
    puVar4 = (undefined4 *)FUN_004e4500(0x18,"Lot/mpSeaLifeManager",0);
    if (puVar4 != (undefined4 *)0x0) {
      pvVar3 = (void *)FUN_00c0df00(puVar4);
      param_1[0xb9] = (int)pvVar3;
      FUN_00c0e010(pvVar3,param_1);
      return;
    }
    param_1[0xb9] = 0;
    FUN_00c0e010((void *)0x0,param_1);
  }
  return;
}

