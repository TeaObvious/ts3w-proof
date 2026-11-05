/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX placement context plus location6/product key/errors/option byte four stackwords,
   RET10hex, AL success. Common stage can MUTATE native floor-feature layers even when accumulating
   prior refusal: after region/support gates it clears Leaves8 first-side then other-side, clears
   Puddle1 first-side then other-side viaABB5F0, then queries ANY residualFF with maskFFFF
   viaAB6550. Residual feature emits code81 WallIntersectsPuddle, including non-puddle feature bits.
   Error accumulator presence permits continuing; null errors takes early failure returns, so
   effects depend on actual branch path. This is not a pure validation predicate. First failing side
   bounds for ordinary wall return immediately; selected product type can allow one side off-lot.
   Keep actual property checks, flags, support, pool/fountain, water and basement-adjacency
   branches; no blanket all-wall equivalence inferred. */

bool __thiscall
WallPlacement_ValidateCommon(void *this,char *param_1,uint *param_2,void *param_3,byte param_4)

{
  int iVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  bool bVar5;
  undefined4 uVar6;
  uint uVar7;
  undefined4 uVar8;
  int iVar9;
  undefined2 *puVar10;
  int iVar11;
  float10 fVar12;
  void *pvVar13;
  bool local_78;
  undefined2 local_74;
  char local_72;
  undefined2 local_70;
  char local_6e;
  undefined2 local_6c;
  char local_6a;
  undefined1 local_69;
  undefined2 local_68;
  char local_66;
  undefined1 local_65;
  void *local_64;
  int *local_60;
  LotXZLevel local_5c;
  float local_50 [19];
  
  local_78 = true;
  local_6c = 0xffff;
  local_6a = '\0';
  local_69 = 0xff;
  WallLocator_QueryFirstAdjacentTile(param_1,&local_6c);
  local_74 = local_6c;
  local_72 = local_6a;
  local_68 = 0xffff;
  local_66 = '\0';
  local_65 = 0xff;
  WallLocator_QueryOtherAdjacentTile((undefined2 *)param_1,&local_68);
  local_70 = local_68;
  local_6e = local_66;
  uVar6 = FUN_00c5b860(param_2);
  iVar11 = (int)(char)local_74;
  iVar1 = *(int *)((int)this + 8);
  iVar9 = (int)local_74._1_1_;
  cVar4 = (char)uVar6;
  local_64 = (void *)CONCAT31(local_64._1_3_,cVar4);
  if (((((iVar11 < 0) || (*(int *)(iVar1 + 0x174) <= iVar11)) || (iVar9 < 0)) ||
      ((*(int *)(iVar1 + 0x178) <= iVar9 || ((int)local_72 < *(int *)(iVar1 + 0x17c))))) ||
     (*(int *)(iVar1 + 0x180) < (int)local_72)) {
    bVar2 = false;
  }
  else {
    bVar2 = true;
  }
  if ((((iVar11 < 0) || (*(int *)(iVar1 + 0x174) <= iVar11)) ||
      ((iVar9 < 0 ||
       (((*(int *)(iVar1 + 0x178) <= iVar9 || ((int)local_72 < *(int *)(iVar1 + 0x17c))) ||
        (*(int *)(iVar1 + 0x180) < (int)local_72)))))) && (cVar4 == '\0')) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    puVar10 = &local_74;
LAB_00d4852d:
    FUN_00ad6960(local_50,0x78,iVar1,puVar10);
    FUN_00ad8570(param_3,local_50);
    FUN_00ad70d0((int)local_50);
    return false;
  }
  if (((((char)local_70 < 0) || (*(int *)(iVar1 + 0x174) <= (int)(char)local_70)) ||
      ((local_70._1_1_ < 0 ||
       ((*(int *)(iVar1 + 0x178) <= (int)local_70._1_1_ || ((int)local_6e < *(int *)(iVar1 + 0x17c))
        ))))) || (*(int *)(iVar1 + 0x180) < (int)local_6e)) {
    bVar3 = false;
    if ((cVar4 == '\0') || (!bVar2)) {
      if (param_3 == (void *)0x0) {
        return false;
      }
      puVar10 = &local_70;
      goto LAB_00d4852d;
    }
  }
  else {
    bVar3 = true;
  }
  pvVar13 = param_3;
  uVar6 = FUN_00c5baa0((int *)param_2);
  cVar4 = FUN_00a63eb0(*(void **)((int)this + 8),param_1,(char)local_64,(char)uVar6,pvVar13);
  if (cVar4 != '\0') {
    if (param_3 == (void *)0x0) {
      return false;
    }
    local_78 = false;
  }
  bVar5 = WallPlacement_TestPartitionConflicts(this,param_1,param_2,param_3);
  if (bVar5) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    local_78 = false;
  }
  uVar7 = FUN_00c5beb0(param_2);
  if ((char)uVar7 == '\0') {
    if (((float)(int)*param_1 != (float)(int)param_1[3]) &&
       ((float)(int)param_1[1] != (float)(int)param_1[4])) {
      if (param_3 == (void *)0x0) {
        return false;
      }
      FUN_00ad68b0(local_50,0x86,*(int *)((int)this + 8),param_1,'\0');
      FUN_00ad8570(param_3,local_50);
      local_78 = false;
      FUN_00ad70d0((int)local_50);
    }
  }
  if (((param_4 & 1) == 0) && (uVar7 = FUN_00c5be20(param_2), (char)uVar7 != '\0')) {
    local_5c.level = (int)param_1[2];
    local_5c.x = (float)(int)*param_1;
    local_5c.z = (float)(int)param_1[1];
    fVar12 = LotLevelHeight_SampleLocalPosition
                       (*(void **)(*(int *)((int)this + 8) + 0x290),&local_5c);
    local_64 = (void *)(float)fVar12;
    local_5c.level = (int)param_1[5];
    local_5c.x = (float)(int)param_1[3];
    local_5c.z = (float)(int)param_1[4];
    fVar12 = LotLevelHeight_SampleLocalPosition
                       (*(void **)(*(int *)((int)this + 8) + 0x290),&local_5c);
    if ((float10)0.05 < ABS((float10)(float)local_64 - fVar12)) {
      if (param_3 == (void *)0x0) {
        return false;
      }
      FUN_00ad68b0(local_50,0x83,*(int *)((int)this + 8),param_1,'\0');
      FUN_00ad8570(param_3,local_50);
      local_78 = false;
      FUN_00ad70d0((int)local_50);
    }
  }
  if (((*(char *)((int)this + 0xc) == '\0') && (uVar7 = FUN_00c5bc30(param_2), (char)uVar7 != '\0'))
     && (uVar6 = FUN_00afdb70(*(void **)((int)this + 8),param_1), (char)uVar6 == '\0')) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad68b0(local_50,0x82,*(int *)((int)this + 8),param_1,'\0');
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  if (((!bVar2) ||
      (uVar6 = Lot_TestCellRegionAndCollectionAdmission
                         (*(void **)((int)this + 8),(char *)&local_6c,0,1,(undefined1 *)0x0),
      (char)uVar6 != '\0')) &&
     ((!bVar3 ||
      (uVar6 = Lot_TestCellRegionAndCollectionAdmission
                         (*(void **)((int)this + 8),(char *)&local_68,0,1,(undefined1 *)0x0),
      (char)uVar6 != '\0')))) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6960(local_50,0x7e,*(int *)((int)this + 8),&local_74);
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  if (((!bVar2) ||
      (uVar6 = FUN_00acf9d0(*(void **)((int)this + 8),(char *)&local_6c), (char)uVar6 != '\0')) &&
     ((!bVar3 ||
      (uVar6 = FUN_00acf9d0(*(void **)((int)this + 8),(char *)&local_68), (char)uVar6 != '\0')))) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6960(local_50,0x7f,*(int *)((int)this + 8),&local_74);
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  uVar6 = FUN_00c5b9b0((int *)param_2,'\x01');
  cVar4 = (char)uVar6;
  if ((cVar4 == '\0') &&
     ((uVar6 = Lot_TestCellSupportRegionType
                         (*(void **)((int)this + 8),(char *)&local_6c,'\0',(undefined1 *)0x0),
      (char)uVar6 != '\0' ||
      (uVar6 = Lot_TestCellSupportRegionType
                         (*(void **)((int)this + 8),(char *)&local_68,'\0',(undefined1 *)0x0),
      (char)uVar6 != '\0')))) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6960(local_50,0x7e,*(int *)((int)this + 8),&local_74);
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  LotFloorFeatures_SetTile(*(void **)((int)this + 8),(char *)&local_74,8,0,0xffff);
  LotFloorFeatures_SetTile(*(void **)((int)this + 8),(char *)&local_70,8,0,0xffff);
  LotFloorFeatures_SetTile(*(void **)((int)this + 8),(char *)&local_74,1,0,0xffff);
  LotFloorFeatures_SetTile(*(void **)((int)this + 8),(char *)&local_70,1,0,0xffff);
  bVar5 = LotFloorFeatures_TestAny(*(void **)((int)this + 8),(char *)&local_74,0xff,0xffff);
  if ((bVar5) ||
     (bVar5 = LotFloorFeatures_TestAny(*(void **)((int)this + 8),(char *)&local_70,0xff,0xffff),
     bVar5)) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6960(local_50,0x81,*(int *)((int)this + 8),&local_74);
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  uVar7 = FUN_00c5be80(param_2);
  if ((((char)uVar7 == '\0') &&
      ((!bVar2 ||
       (uVar6 = FUN_00acf2b0(*(void **)((int)this + 8),(char *)&local_74), (char)uVar6 != '\0'))))
     && ((!bVar3 ||
         (uVar6 = FUN_00acf2b0(*(void **)((int)this + 8),(char *)&local_70), (char)uVar6 != '\0'))))
  {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6960(local_50,0x80,*(int *)((int)this + 8),&local_74);
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  uVar6 = FUN_00c5ba60((int *)param_2);
  if (((((local_72 < '\0') && (cVar4 == '\0')) && ((char)uVar6 == '\0')) &&
      (uVar7 = FUN_00c5bc30(param_2), (char)uVar7 != '\0')) &&
     ((uVar7 = FUN_00acec00(*(void **)((int)this + 8),(char *)&local_6c), (char)uVar7 == '\0' ||
      (uVar7 = FUN_00acec00(*(void **)((int)this + 8),(char *)&local_68), (char)uVar7 == '\0')))) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad68b0(local_50,0x82,*(int *)((int)this + 8),param_1,'\0');
    FUN_00ad8570(param_3,local_50);
    local_78 = false;
    FUN_00ad70d0((int)local_50);
  }
  local_64 = *(void **)(*(int *)((int)this + 8) + 0x298);
  if (cVar4 != '\0') {
    local_60 = FUN_00b47df0(local_64,param_1,'\0');
    uVar8 = FUN_0054e0a0(local_60,&DAT_011ec8c0);
    if (((char)uVar8 != '\0') && (uVar8 = FUN_00c5ba60(local_60), (char)uVar8 != '\0')) {
      if (param_3 == (void *)0x0) {
        return false;
      }
      FUN_00ad68b0(local_50,0x6a,*(int *)((int)this + 8),param_1,'\0');
      FUN_00ad8570(param_3,local_50);
      local_78 = false;
      FUN_00ad70d0((int)local_50);
    }
  }
  if (((char)uVar6 != '\0') && (0x7f < (byte)param_1[2])) {
    local_60 = FUN_00b47df0(local_64,param_1,'\0');
    uVar6 = FUN_0054e0a0(local_60,&DAT_011ec8c0);
    if (((char)uVar6 != '\0') && (uVar6 = FUN_00c5b9b0(local_60,'\x01'), (char)uVar6 != '\0')) {
      if (param_3 == (void *)0x0) {
        return false;
      }
      FUN_00ad68b0(local_50,0x6b,*(int *)((int)this + 8),param_1,'\0');
      FUN_00ad8570(param_3,local_50);
      local_78 = false;
      FUN_00ad70d0((int)local_50);
    }
  }
  return local_78;
}

