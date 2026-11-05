/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 ECX context plus locator/product/errors three stackwords RET0C, lowAL Boolean.
   ChecksD49040 at both original/reversed endpoints, stair admission at midpoint, positive-level
   segment stair crossing, then side queries (level-1 when current>0). Null error accumulator
   enables early return; with an accumulator retains failure and continues. This is a later stage,
   not a replacement for common mutable checks. */

bool __thiscall
WallPlacement_ValidateWallAndStairs(void *this,char *param_1,uint *param_2,void *param_3)

{
  void *this_00;
  char cVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  bool local_b1;
  char local_ac [3];
  undefined4 local_a9;
  void *local_a4;
  char local_a0 [3];
  undefined4 local_9d;
  LotPaintPoint local_98;
  undefined2 local_8c;
  char local_8a;
  undefined2 local_89;
  char local_87;
  LotXZLevel local_84;
  LotXZLevel local_78;
  undefined4 local_6c;
  float local_68;
  float local_64;
  int local_60;
  float local_5c;
  float local_58;
  int local_54;
  float local_50 [19];
  
  local_b1 = true;
  cVar1 = FUN_00d49040(this,param_1,param_2,param_3);
  if (cVar1 == '\0') {
    if (param_3 == (void *)0x0) {
      return false;
    }
    local_b1 = false;
  }
  local_8c = *(undefined2 *)(param_1 + 3);
  local_8a = param_1[5];
  local_89 = *(undefined2 *)param_1;
  local_87 = param_1[2];
  cVar1 = FUN_00d49040(this,(char *)&local_8c,param_2,param_3);
  if (cVar1 == '\0') {
    if (param_3 == (void *)0x0) {
      return false;
    }
    local_b1 = false;
  }
  this_00 = *(void **)(*(int *)((int)this + 8) + 0x2b4);
  local_98.level = (int)param_1[2];
  local_98.x = ((float)(int)param_1[3] + (float)(int)*param_1) * 0.5;
  local_98.z = ((float)(int)param_1[4] + (float)(int)param_1[1]) * 0.5;
  uVar2 = FUN_00c5b7b0(param_2);
  if (((((char)uVar2 == '\0') &&
       (uVar2 = FUN_00b16640(this_00,&local_98.x,&local_6c), (char)uVar2 != '\0')) &&
      (uVar3 = FUN_00b18020(this_00,local_6c,(int *)&local_a4), (char)uVar3 != '\0')) &&
     (uVar2 = FUN_00b14f00(local_a4,&local_98.x), (char)uVar2 == '\0')) {
    if (param_3 == (void *)0x0) {
      return false;
    }
    BuildEditErrorRecord_InitializeAtLotPoint
              (local_50,0x11,*(undefined **)((int)this + 8),&local_98,0,0);
    FUN_00ad8570(param_3,local_50);
    local_b1 = false;
    FUN_00ad70d0((int)local_50);
  }
  if (0 < local_98.level) {
    local_5c = (float)(int)*param_1;
    local_58 = (float)(int)param_1[1];
    local_68 = (float)(int)param_1[3];
    local_60 = local_98.level;
    local_54 = local_98.level;
    local_64 = (float)(int)param_1[4];
    uVar2 = FUN_00b167c0(this_00,&local_5c,&local_68,0);
    if ((char)uVar2 != '\0') {
      if (param_3 == (void *)0x0) {
        return false;
      }
      BuildEditErrorRecord_InitializeAtLotPoint
                (local_50,0x11,*(undefined **)((int)this + 8),&local_98,0,0);
      FUN_00ad8570(param_3,local_50);
      local_b1 = false;
      FUN_00ad70d0((int)local_50);
    }
  }
  local_ac[0] = -1;
  local_ac[1] = 0xff;
  local_ac[2] = 0;
  local_a9 = CONCAT31(local_a9._1_3_,0xff);
  local_a0[0] = -1;
  local_a0[1] = 0xff;
  local_a0[2] = 0;
  local_9d = CONCAT31(local_9d._1_3_,0xff);
  WallLocator_QueryFirstAdjacentTile(param_1,(undefined2 *)local_ac);
  WallLocator_QueryOtherAdjacentTile((undefined2 *)param_1,(undefined2 *)local_a0);
  local_84.level = 0;
  local_78.level = 0;
  local_84.x = -1.0;
  local_84.z = -1.0;
  local_78.x = -1.0;
  local_78.z = -1.0;
  TilePart_GetLocalSamplePoint(local_ac,&local_84);
  TilePart_GetLocalSamplePoint(local_a0,&local_78);
  iVar4 = FUN_00afcd90(local_9d);
  local_a4 = (void *)FUN_00afcd90(local_a9);
  if (0 < local_98.level) {
    local_84.level = local_84.level + -1;
    local_78.level = local_84.level;
  }
  uVar2 = FUN_00d45d30(*(int *)((int)this + 8),this_00,iVar4,&local_84.x,local_98.level,param_3);
  if (((char)uVar2 == '\0') &&
     (uVar2 = FUN_00d45d30(*(int *)((int)this + 8),this_00,(int)local_a4,&local_78.x,local_98.level,
                           param_3), (char)uVar2 == '\0')) {
    return local_b1;
  }
  return false;
}

