/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 STATIC ORIGINAL. cdecl six DWORD stack slots, ordinary RET, byte status; char spellings
   are low-byte mode arguments, not packed argument ABI. B404B0 calls modes0,1 and catalog bit12.
   Reads physical wall support from context lot+298 and signed packed endpoint coordinates/levels;
   selected stairs/cutouts/products/footprint predicates and native feedback are part of this body.
   Modes bothzero returns1. Missing support and later prohibited conditions must be interpreted in
   their actual branch/mode context. Null diagnostics fails early; nonnull appends errors and
   retains aggregate failure. Native child predicates and full script veto/placement mutation remain
   separate. */

undefined1 __cdecl
Placement_TestRequiredWallEdge
          (char *param_1,char param_2,char param_3,char param_4,int *param_5,void *param_6)

{
  void *catalog;
  bool bVar1;
  char cVar2;
  uint uVar3;
  uint *productKey;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  float10 fVar7;
  undefined1 local_84;
  bool local_83;
  bool local_82;
  char local_81;
  float local_7c;
  float local_78;
  void *local_74;
  void *local_70;
  LotXZLevel local_6c;
  float local_60;
  float local_5c;
  int local_58;
  undefined4 local_54;
  float local_50 [19];
  
  if ((param_2 == '\0') && (param_3 == '\0')) {
    return 1;
  }
  local_74 = *(void **)(param_5[1] + 0x298);
  local_84 = 1;
  local_82 = PartitionManager_HasPhysicalWallForLocator(local_74,param_1);
  local_83 = local_82;
  if (!local_82) goto LAB_00b3d276;
  if ((((param_1[3] != *param_1) && (param_1[4] != param_1[1])) &&
      ((void *)param_5[7] != (void *)0x0)) &&
     (uVar3 = Catalog_TestIntersectionCategoryOrD0Bit4((void *)param_5[7]), (char)uVar3 != '\0')) {
    local_60 = 0.0;
    local_5c = 0.0;
    local_58 = 0;
    local_54 = 0;
    uVar3 = FUN_00c978a0((void *)param_5[7],&local_60);
    if (((char)uVar3 != '\0') && (uVar3 = FUN_00c97890(param_5[7]), (char)uVar3 == '\0')) {
      if (param_6 == (void *)0x0) {
        return 0;
      }
      FUN_00ad68b0(local_50,0x65,param_5[1],param_1,'\0');
      FUN_00ad8570(param_6,local_50);
      local_84 = 0;
      FUN_00ad70d0((int)local_50);
    }
  }
  productKey = FUN_00b47df0(local_74,param_1,'\0');
  uVar4 = FUN_00c5b7b0(productKey);
  if ((char)uVar4 != '\0') {
    local_70 = *(void **)(param_5[1] + 0x2b4);
    local_78 = 0.0;
    local_7c = 0.0;
    local_6c.x = (float)(int)*param_1;
    local_6c.level = (int)param_1[2];
    local_6c.z = (float)(int)param_1[1];
    uVar4 = TryGetFirstMatchingStairHeight(local_70,&local_6c.x,&local_78);
    if ((char)uVar4 != '\0') {
      local_58 = (int)param_1[5];
      local_60 = (float)(int)param_1[3];
      local_5c = (float)(int)param_1[4];
      uVar4 = TryGetFirstMatchingStairHeight(local_70,&local_60,&local_7c);
      if ((char)uVar4 != '\0') {
        fVar7 = LotLevelHeight_SampleLocalPosition(*(void **)(param_5[1] + 0x290),&local_6c);
        local_70 = (void *)(float)fVar7;
        uVar4 = FUN_00b3ae10(local_78,local_7c);
        if ((char)uVar4 != '\0') {
          fVar7 = FUN_00ab02d0();
          uVar4 = FUN_00b3ae10(local_78 - (float)local_70,(float)fVar7);
          if ((char)uVar4 != '\0') goto LAB_00b3cf5d;
        }
        if (param_6 == (void *)0x0) {
          return 0;
        }
        FUN_00ad68b0(local_50,0xe8,param_5[1],param_1,'\0');
        FUN_00ad8570(param_6,local_50);
        local_84 = 0;
        FUN_00ad70d0((int)local_50);
      }
    }
  }
LAB_00b3cf5d:
  uVar4 = FUN_00c5b9b0((int *)productKey,'\x01');
  if ((char)uVar4 != '\0') {
    catalog = (void *)param_5[7];
    iVar6 = *(int *)((int)catalog + 0xd8) - *(int *)((int)catalog + 0xd4);
    iVar5 = iVar6 >> 0x1f;
    if (iVar6 / 0x28 + iVar5 == iVar5) {
      uVar3 = Catalog_TestPlacementMask403F(catalog);
      if ((char)uVar3 != '\0') {
        local_70 = (void *)0xffffffff;
        uVar4 = FUN_00a56390(*(void **)(param_5[1] + 0x2c4),param_1,&local_70,'\0');
        if ((char)uVar4 != '\0') {
          if (param_6 == (void *)0x0) {
            return 0;
          }
          FUN_00ad68b0(local_50,0xff,param_5[1],param_1,'\0');
          FUN_00ad8570(param_6,local_50);
          local_84 = 0;
          FUN_00ad70d0((int)local_50);
        }
        uVar3 = FUN_00b008e0(*param_5,'\0');
        if (((char)uVar3 == '\0') &&
           (cVar2 = FUN_00aff810((void *)param_5[1],param_1,'\0'), cVar2 != '\0')) {
          if (param_6 == (void *)0x0) {
            return 0;
          }
          FUN_00ad68b0(local_50,0x35,param_5[1],param_1,'\0');
          goto LAB_00b3d151;
        }
      }
    }
    else {
      local_70 = (void *)0xffffffff;
      uVar4 = FUN_00a56390(*(void **)(param_5[1] + 0x2c4),param_1,&local_70,'\x01');
      if ((char)uVar4 != '\0') {
        if (param_6 == (void *)0x0) {
          return 0;
        }
        FUN_00ad68b0(local_50,0xff,param_5[1],param_1,'\0');
        FUN_00ad8570(param_6,local_50);
        local_84 = 0;
        FUN_00ad70d0((int)local_50);
      }
      if (0x7fffffff < (uint)param_5[4]) {
        local_7c = -1.714704e+38;
        local_78 = -1.714704e+38;
        WallLocator_QueryFirstAdjacentTile(param_1,(undefined2 *)&local_7c);
        WallLocator_QueryOtherAdjacentTile((undefined2 *)param_1,(undefined2 *)&local_78);
        uVar3 = FUN_00ad01d0(param_5[1],(char *)&local_7c,'\0','\0');
        if (((char)uVar3 == '\0') ||
           (uVar3 = FUN_00ad01d0(param_5[1],(char *)&local_78,'\0','\0'), (char)uVar3 == '\0')) {
          if (param_6 == (void *)0x0) {
            return 0;
          }
          FUN_00ad68b0(local_50,0x106,param_5[1],param_1,'\0');
LAB_00b3d151:
          FUN_00ad8570(param_6,local_50);
          local_84 = 0;
          FUN_00ad70d0((int)local_50);
        }
      }
    }
  }
  uVar3 = WallProduct_BlocksPlacementOrMissing(productKey);
  if ((char)uVar3 == '\0') {
    local_83 = false;
    local_82 = false;
  }
  else {
    uVar3 = FUN_00c5bdc0(productKey);
    if ((char)uVar3 == '\0') {
      local_83 = false;
    }
    else {
      uVar4 = FUN_00c5b860(productKey);
      cVar2 = (char)uVar4;
      if (param_4 == '\0') {
        local_81 = cVar2 == '\0';
      }
      else {
        local_81 = cVar2;
      }
      if (((cVar2 == '\0') ||
          (fVar7 = FenceCatalog_GetPostHeight(productKey), fVar7 <= (float10)0.35)) ||
         (uVar4 = WallProduct_HasNonzeroFieldE0(productKey), (char)uVar4 != '\0')) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if ((local_81 == '\0') || ((cVar2 != '\0' && (!bVar1)))) {
        local_83 = false;
      }
    }
  }
  iVar5 = param_5[7];
  if (((iVar5 != 0) && (*(int *)(iVar5 + 0xd4) != *(int *)(iVar5 + 0xd8))) &&
     ((1 < *(uint *)(iVar5 + 0xe8) && (uVar4 = FUN_00c5b7f0(productKey), (char)uVar4 != '\0')))) {
    if (param_6 == (void *)0x0) {
      return 0;
    }
    FUN_00ad68b0(local_50,0xc,param_5[1],param_1,'\0');
    FUN_00ad8570(param_6,local_50);
    local_84 = 0;
    FUN_00ad70d0((int)local_50);
  }
LAB_00b3d276:
  if ((param_2 != '\0') && (local_82 != false)) {
    if (param_6 == (void *)0x0) {
      return 0;
    }
    FUN_00ad68b0(local_50,0x46,param_5[1],param_1,'\0');
    FUN_00ad8570(param_6,local_50);
    local_84 = 0;
    FUN_00ad70d0((int)local_50);
  }
  if (param_3 != '\0') {
    if (local_83 != false) {
      fVar7 = FUN_00c462a0(param_1,(float *)(param_1 + 8));
      local_70 = (void *)(float)fVar7;
      if ((_DAT_011ed188 & 1) == 0) {
        _DAT_011ed188 = _DAT_011ed188 | 1;
        _DAT_011ed184 = 0.2;
      }
      if ((float)local_70 <= _DAT_011ed184) {
        return local_84;
      }
    }
    if (param_6 == (void *)0x0) {
      return 0;
    }
    local_78 = -1.714704e+38;
    local_7c = -1.714704e+38;
    WallLocator_QueryFirstAdjacentTile(param_1,(undefined2 *)&local_78);
    WallLocator_QueryOtherAdjacentTile((undefined2 *)param_1,(undefined2 *)&local_7c);
    uVar4 = FUN_00b49740(local_74,(undefined2 *)&local_78);
    cVar2 = (char)uVar4;
    if (param_4 == '\0') {
      iVar5 = (-(uint)(cVar2 != '\0') & 0x58) + 0xd;
    }
    else {
      if (cVar2 == '\0') {
        uVar4 = FUN_00b49740(local_74,(undefined2 *)&local_7c);
        cVar2 = (char)uVar4;
      }
      iVar5 = (-(uint)(cVar2 != '\0') & 0xffffff92) + 0xd4;
    }
    FUN_00ad68b0(local_50,iVar5,param_5[1],param_1,'\0');
    FUN_00ad8570(param_6,local_50);
    local_84 = 0;
    FUN_00ad70d0((int)local_50);
  }
  return local_84;
}

