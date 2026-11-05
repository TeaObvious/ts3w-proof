/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX is not a required receiver: six physical DWORD arguments,
   low-byte flags. Current-held pointer equality returns1. Catalog+A8 bit2 with movement-ignore
   clear, and Sim selector checks, add4A. Buildable-shell predicate with sixth low-byte flag nonzero
   returns1 immediately, otherwise adds4A. Script selector qualifies event19 pickup rule; false
   produces4B root or63 child. Optional collector allows continuation. Parent movement bit6 supplies
   immediate child skip-script and inherited ignore-movement; other checks remain. Property/context
   and fireplace-mantle association recursion are separate calls. Return low-byte Boolean. */

undefined1 __cdecl
ObjectPickup_CollectAdmissionErrors
          (void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          char param_6)

{
  bool bVar1;
  char cVar2;
  void *pvVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined *puVar7;
  uint extraout_ECX;
  uint uVar8;
  ulonglong objectId;
  undefined1 local_71;
  void *local_70;
  void *local_6c;
  void *local_68;
  uint local_64;
  float local_60 [4];
  float local_50 [19];
  
  local_71 = 1;
  pvVar3 = (void *)HandTool_GetCurrentHeldPointer();
  if (pvVar3 == param_1) {
    return 1;
  }
  pvVar3 = Object_FindCatalogInfo(param_1);
  local_6c = pvVar3;
  if ((((char)param_4 == '\0') && (pvVar3 != (void *)0x0)) &&
     ((*(uint *)((int)pvVar3 + 0xa8) >> 2 & 1) != 0)) {
    if (param_2 == (void *)0x0) {
      return 0;
    }
    FUN_00ad6fb0(local_50,0x4a,param_1);
    FUN_00ad8570(param_2,local_50);
    local_71 = 0;
    FUN_00ad70d0((int)local_50);
  }
  bVar1 = Object_HasSimComponent((int)param_1);
  if (bVar1) {
    if (param_2 == (void *)0x0) {
      return 0;
    }
    FUN_00ad6fb0(local_50,0x4a,param_1);
    FUN_00ad8570(param_2,local_50);
    local_71 = 0;
    FUN_00ad70d0((int)local_50);
  }
  uVar4 = ObjectCatalog_HasBuildableShellFlag((int)param_1);
  if ((char)uVar4 != '\0') {
    if (param_6 != '\0') {
      return 1;
    }
    if (param_2 == (void *)0x0) {
      return 0;
    }
    FUN_00ad6fb0(local_50,0x4a,param_1);
    FUN_00ad8570(param_2,local_50);
    local_71 = 0;
    FUN_00ad70d0((int)local_50);
  }
  if ((((char)param_5 == '\0') && ((*(uint *)((int)param_1 + 0x2c) & DAT_011ea0f8) != 0)) &&
     (cVar2 = World_DispatchHandToolAllowUserPickup(), cVar2 == '\0')) {
    if (param_2 == (void *)0x0) {
      return 0;
    }
    FUN_00ad6fb0(local_50,(-(uint)((char)param_3 != '\0') & 0x18) + 0x4b,param_1);
    FUN_00ad8570(param_2,local_50);
    local_71 = 0;
    FUN_00ad70d0((int)local_50);
  }
  cVar2 = ObjectPickup_CheckPropertyContext(param_1,param_2);
  if (cVar2 != '\0') {
    if (param_2 == (void *)0x0) {
      return 0;
    }
    local_71 = 0;
  }
  if (pvVar3 != (void *)0x0) {
    local_70 = (void *)CONCAT31(local_70._1_3_,1);
    if ((*(uint *)((int)pvVar3 + 0xa8) >> 6 & 1) != 0) goto LAB_00ccd4c3;
  }
  local_70 = (void *)((uint)local_70 & 0xffffff00);
LAB_00ccd4c3:
  if ((param_1 != (void *)0x0) &&
     (local_68 = Object_GetComponentByMask(param_1,DAT_011ea114), local_68 != (void *)0x0)) {
    local_64 = FUN_00950290((int)local_68);
    uVar4 = 0;
    pvVar3 = local_6c;
    if (local_64 != 0) {
      do {
        iVar5 = FUN_009502a0(local_68,uVar4);
        if ((iVar5 != 0) && (*(void **)(iVar5 + 0x1c) != (void *)0x0)) {
          if (((char)param_4 == '\0') && ((char)local_70 == '\0')) {
            uVar8 = extraout_ECX & 0xffffff00;
          }
          else {
            uVar8 = 1;
          }
          cVar2 = ObjectPickup_CollectAdmissionErrors
                            (*(void **)(iVar5 + 0x1c),param_2,1,uVar8,local_70,'\0');
          if (cVar2 == '\0') {
            if (param_2 == (void *)0x0) {
              return 0;
            }
            local_71 = 0;
          }
        }
        uVar4 = uVar4 + 1;
        pvVar3 = local_6c;
      } while (uVar4 < local_64);
    }
  }
  if ((((param_2 != (void *)0x0) && ((char)param_3 == '\0')) &&
      (bVar1 = FUN_00ad6f10((int)param_2), bVar1)) &&
     (uVar6 = FUN_00ad7020(param_2,0x4b,local_60,(int *)0x0), (char)uVar6 != '\0')) {
    local_6c = (void *)0x0;
    uVar6 = FUN_00ad7020(param_2,99,(float *)0x0,(int *)&local_6c);
    if ((char)uVar6 != '\0') {
      FUN_00ad77d0((int)param_2);
      FUN_00ad66d0(local_50,99,0,local_60,local_6c);
      FUN_00ad8570(param_2,local_50);
      FUN_00ad70d0((int)local_50);
    }
  }
  if (((((pvVar3 != (void *)0x0) && ((*(uint *)((int)pvVar3 + 0xd0) >> 7 & 1) != 0)) &&
       ((iVar5 = FUN_00cef500(), iVar5 != 0 &&
        ((*(int *)(iVar5 + 0x2c) != 0 &&
         (pvVar3 = *(void **)(*(int *)(iVar5 + 0x2c) + 0xc), pvVar3 != (void *)0x0)))))) &&
      (*(void **)((int)pvVar3 + 0x2cc) != (void *)0x0)) &&
     (objectId = FireplaceGroups_FindMantle
                           (*(void **)((int)pvVar3 + 0x2cc),*(ulonglong *)((int)param_1 + 8)),
     objectId != 0)) {
    puVar7 = ObjectRegistry_FindBorrowedInLot(pvVar3,objectId);
    FUN_0055e250(&local_70,(int)puVar7);
    if (((local_70 != (void *)0x0) &&
        (cVar2 = ObjectPickup_CollectAdmissionErrors(local_70,param_2,param_3,param_4,param_5,'\0'),
        cVar2 == '\0')) && (local_71 = 0, param_2 == (void *)0x0)) {
      FUN_007462e0((int *)&local_70);
      return 0;
    }
    FUN_007462e0((int *)&local_70);
  }
  return local_71;
}

