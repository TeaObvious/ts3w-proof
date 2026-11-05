/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX context plus locator/unused product/errors RET0C, AL success. Samples actual world
   endpoint positions, rejects absolute vertical delta divided by x87 square root of horizontal
   squared distance above Float32 constant at1089150 (1.7320508). FCOMIP/JBE bypasses this slope
   error for an unordered ratio. Then original region type3/5/6 exemptions, low-level object
   admission and pool/fountain midpoint gates. This is a separate product branch from ordinary inset
   validation; no invented universal fence clamp. */

bool __thiscall
WallPlacement_ValidateFenceSlopeAndRegions
          (void *this,char *param_1,undefined4 param_2,void *param_3)

{
  void *this_00;
  bool bVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  bool local_c1;
  char local_c0;
  char local_bf;
  char local_be;
  undefined1 local_bd;
  undefined2 local_bc;
  char local_ba;
  undefined1 local_b9;
  undefined4 local_b8;
  float local_b4;
  float local_b0;
  int local_ac;
  LotXZLevel local_a8;
  float local_9c;
  float local_98;
  int local_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80 [16];
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_ac = (int)param_1[2];
  local_b4 = (float)(int)*param_1;
  local_b0 = (float)(int)param_1[1];
  local_94 = (int)param_1[5];
  local_9c = (float)(int)param_1[3];
  local_98 = (float)(int)param_1[4];
  local_c1 = true;
  FUN_00adc750(*(int *)((int)this + 8),&local_b4,&local_20);
  FUN_00adc750(*(int *)((int)this + 8),&local_9c,&local_40);
  local_30 = local_40 - local_20;
  fStack_2c = fStack_3c - fStack_1c;
  fStack_28 = fStack_38 - fStack_18;
  fStack_24 = fStack_34 - fStack_14;
  local_90 = local_30 * local_30 + fStack_28 * fStack_28;
  fStack_8c = local_30 * local_30 + fStack_28 * fStack_28;
  fStack_88 = local_30 * local_30 + fStack_28 * fStack_28;
  fStack_84 = local_30 * local_30 + fStack_28 * fStack_28;
  if (1.7320508 < ABS(fStack_2c) / SQRT(local_90)) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad68b0(local_80,0x5a,*(int *)((int)this + 8),param_1,'\0');
    FUN_00ad8570(param_3,local_80);
    local_c1 = false;
    FUN_00ad70d0((int)local_80);
  }
  local_bc = 0xffff;
  local_ba = '\0';
  local_b9 = 0xff;
  WallLocator_QueryFirstAdjacentTile(param_1,&local_bc);
  cVar2 = local_ba;
  local_b8 = CONCAT22(local_b8._2_2_,local_bc);
  local_c0 = -1;
  local_bf = -1;
  local_be = '\0';
  local_bd = 0xff;
  WallLocator_QueryOtherAdjacentTile((undefined2 *)param_1,(undefined2 *)&local_c0);
  this_00 = *(void **)((int)this + 8);
  if (((((char)local_b8 < 0) || (*(int *)((int)this_00 + 0x174) <= (int)(char)local_b8)) ||
      (local_b8._1_1_ < 0)) ||
     (((*(int *)((int)this_00 + 0x178) <= (int)local_b8._1_1_ ||
       ((int)cVar2 < *(int *)((int)this_00 + 0x17c))) ||
      (*(int *)((int)this_00 + 0x180) < (int)cVar2)))) {
    bVar3 = false;
  }
  else {
    bVar3 = true;
  }
  if (((local_c0 < 0) || (*(int *)((int)this_00 + 0x174) <= (int)local_c0)) ||
     ((local_bf < 0 ||
      (((*(int *)((int)this_00 + 0x178) <= (int)local_bf ||
        ((int)local_be < *(int *)((int)this_00 + 0x17c))) ||
       (*(int *)((int)this_00 + 0x180) < (int)local_be)))))) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if ((bVar3) && (bVar1)) {
    iVar4 = Lot_ResolveCompatibleCellRegion(this_00,(char *)&local_bc,'\0');
    local_b8 = Lot_ResolveCompatibleCellRegion(*(void **)((int)this + 8),&local_c0,'\0');
    bVar3 = LotRegion_MatchesTypeCode(iVar4,3);
    if ((((!bVar3) &&
         ((bVar3 = LotRegion_MatchesTypeCode(local_b8,3), !bVar3 &&
          (bVar3 = LotRegion_MatchesTypeCode(iVar4,5), !bVar3)))) &&
        (bVar3 = LotRegion_MatchesTypeCode(local_b8,5), !bVar3)) &&
       ((((bVar3 = LotRegion_MatchesTypeCode(iVar4,6), !bVar3 &&
          (bVar3 = LotRegion_MatchesTypeCode(local_b8,6), !bVar3)) && (local_ac < 1)) &&
        ((iVar4 != -1 || (local_b8 != -1)))))) {
      if (param_3 == (void *)0x0) {
        return false;
      }
      FUN_00ad68b0(local_80,0x11,*(int *)((int)this + 8),param_1,'\0');
      FUN_00ad8570(param_3,local_80);
      local_c1 = false;
      FUN_00ad70d0((int)local_80);
    }
  }
  local_a8.x = (local_9c + local_b4) * 0.5;
  local_a8.z = (local_98 + local_b0) * 0.5;
  local_a8.level = local_ac;
  uVar5 = Lot_TestNextLevelAtLocalLocation(*(void **)((int)this + 8),&local_a8,0);
  if ((char)uVar5 != '\0') {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6720(local_80,0x35,*(int *)((int)this + 8),&local_a8.x,0,0);
    FUN_00ad8570(param_3,local_80);
    local_c1 = false;
    FUN_00ad70d0((int)local_80);
  }
  uVar6 = FUN_00b05240(*(void **)((int)this + 8),&local_a8.x);
  if ((char)uVar6 != '\0') {
    if (param_3 == (void *)0x0) {
      return false;
    }
    FUN_00ad6720(local_80,0x36,*(int *)((int)this + 8),&local_a8.x,0,0);
    FUN_00ad8570(param_3,local_80);
    local_c1 = false;
    FUN_00ad70d0((int)local_80);
  }
  return local_c1;
}

