/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Point vtable+0x10 expansion: resolve containing lot and INTEGER
   level; query route height for XZ, with special lot classification(1,0x50) and below-level
   property15 behavior. Emits one64-byte candidate with point/facing, weight+0x20, level+0x24,
   slot0+0x28, caller tag+0x2c, flag0+0x30. Appends candidate and returns AL1; filtering follows
   later. */

undefined4 __thiscall
PointDestination_ExpandCandidate
          (void *this,undefined4 param_1,void *param_2,undefined4 param_3,void *param_4)

{
  float *worldPosition;
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  void *pvVar4;
  float10 fVar5;
  void *local_8c;
  int local_88;
  float local_84;
  LotXZLevel local_80;
  undefined4 uStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  undefined4 uStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  undefined4 uStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  int local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  
  worldPosition = (float *)((int)this + 0x30);
  local_8c = (void *)0x0;
  local_88 = RoutePoint_ResolveLotAndLevel(worldPosition,&local_8c);
  pvVar4 = local_8c;
  local_70 = *worldPosition;
  fStack_6c = *(float *)((int)this + 0x34);
  fStack_68 = *(float *)((int)this + 0x38);
  uStack_64 = *(undefined4 *)((int)this + 0x3c);
  if ((((local_8c == (void *)0x0) || (*(int *)((int)local_8c + 0x408) != 1)) ||
      (*(int *)((int)local_8c + 0x40c) != 0x50)) || (bVar1 = true, local_88 != 0)) {
    bVar1 = false;
  }
  bVar2 = false;
  if ((local_8c != (void *)0x0) && (local_88 < 0)) {
    local_80.x = DAT_00fab218;
    local_80.z = DAT_00fab218;
    local_80.level = 0;
    Lot_WorldPositionToLocalXZLevel(local_8c,worldPosition,&local_80);
    bVar2 = Lot_TestProperty15AtLocalLocation(pvVar4,&local_80);
  }
  if ((bVar1) || (local_8c = (void *)CONCAT31(local_8c._1_3_,1), bVar2 != false)) {
    local_8c = (void *)((uint)local_8c & 0xffffff00);
  }
  local_80.x = local_70;
  local_80.z = fStack_6c;
  local_80.level = (int)fStack_68;
  uStack_74 = uStack_64;
  local_60 = local_70;
  fStack_5c = fStack_6c;
  fStack_58 = fStack_68;
  uStack_54 = uStack_64;
  uVar3 = RoutingOptions_TestMask(param_2,1,0,'\x01');
  local_84 = (float)CONCAT31(local_84._1_3_,(char)uVar3 == '\0');
  pvVar4 = (void *)thunk_FUN_00835d40();
  if (pvVar4 == (void *)0x0) {
    fStack_6c = 0.0;
  }
  else {
    fVar5 = RoutingSystem_QueryHeightForLevel
                      (pvVar4,local_60,(float)local_80.level,local_88,SUB41(local_84,0),
                       (char)local_8c);
    fStack_6c = (float)fVar5;
    local_84 = fStack_6c;
  }
  local_24 = *(undefined4 *)((int)this + 0x28);
  local_50 = local_70;
  fStack_48 = fStack_68;
  uStack_44 = uStack_64;
  local_30 = *(undefined4 *)((int)this + 0x2c);
  local_40 = *(undefined4 *)((int)this + 0x40);
  uStack_3c = *(undefined4 *)((int)this + 0x44);
  uStack_38 = *(undefined4 *)((int)this + 0x48);
  uStack_34 = *(undefined4 *)((int)this + 0x4c);
  local_2c = local_88;
  local_28 = 0;
  local_20 = 0;
  fStack_4c = fStack_6c;
  uVar3 = FUN_00654980(param_4,&local_50);
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}

