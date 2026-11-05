/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. ECX routing
   manager; four stackslots RET 0x10: signed level32,lot owner,removeExisting low byte,createNew low
   byte; void. Scoped critical section +0x918, absent+95C owner returns, signed level-range bounds
   at lot +0x17C/+0x180. TypedIDs from 829290. Nonzero-level create path constructs kind 3 and kind
   21 through the same 8077D0 class; passes respective IDs through +B4, copies lot GUID into
   objectID +0x0C/+0x10, calls +CC with 0 versus 10 then registers via 637EF0. Ground path creates
   other kind lanes; all preserved in complete body. Final 831250 refresh and lock release. Calls
   +B4 are not polygon-building calls; actual pushes supply two-word owner ID even where decompiler
   omits arguments. No statement that kind 21 is a solid foundation mesh follows. */

void __thiscall
LotRouting_RefreshLevelFootprints
          (void *this,int level,void *lotOwner,byte removeExisting,byte createNew)

{
  LPCRITICAL_SECTION this_00;
  void *pvVar1;
  int *piVar2;
  ulonglong uVar3;
  ulonglong uVar4;
  byte level_00;
  int *piStack_a4;
  int *apiStack_a0 [2];
  char local_96;
  char local_95;
  int *local_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 local_50;
  LPCRITICAL_SECTION local_44;
  undefined8 local_40;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int *local_30;
  uint uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int *local_20;
  uint uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x918);
  local_44 = this_00;
  FUN_004e1c00(this_00,(uint *)&DAT_01022d28);
  if (*(int *)((int)this + 0x95c) == 0) {
    FUN_004e1cc0(this_00);
    return;
  }
  FUN_00ab5b70(lotOwner,(float *)&local_20);
  local_30 = local_20;
  uStack_2c = uStack_1c;
  uStack_28 = uStack_18;
  uStack_24 = uStack_14;
  local_40._0_4_ = local_20;
  local_40._4_4_ = uStack_1c;
  uStack_38 = uStack_18;
  uStack_34 = uStack_14;
  local_94 = local_20;
  uStack_8c = CONCAT13(level == 0,(undefined3)uStack_8c);
  local_90 = uStack_18;
  local_80 = CONCAT44(local_80._4_4_,(uint)local_80);
  local_70 = CONCAT44(local_70._4_4_,(uint)local_70);
  local_68 = CONCAT44(local_68._4_4_,(uint)local_68);
  local_58 = CONCAT44(local_58._4_4_,(uint)local_58);
  uVar3 = CONCAT44(uStack_1c,local_20);
  if ((level < *(int *)((int)lotOwner + 0x17c)) ||
     (local_80 = CONCAT44(local_80._4_4_,(uint)local_80),
     local_70 = CONCAT44(local_70._4_4_,(uint)local_70),
     local_68 = CONCAT44(local_68._4_4_,(uint)local_68),
     local_58 = CONCAT44(local_58._4_4_,(uint)local_58), uVar3 = CONCAT44(uStack_1c,local_20),
     *(int *)((int)lotOwner + 0x180) < level)) goto LAB_00833cf4;
  Lot_RefreshSeaBoundaryFlag(lotOwner);
  FUN_00ab02a0((int)lotOwner);
  if ((*(int *)((int)lotOwner + 0x408) != 1) ||
     (local_96 = '\x01', *(int *)((int)lotOwner + 0x40c) != 0x50)) {
    local_96 = '\0';
  }
  local_95 = *(char *)((int)lotOwner + 0x4bc);
  level_00 = (byte)level;
  if (uStack_8c._3_1_ == '\0') {
    local_80 = LotRouting_BuildTypedFootprintOwnerId(3,(float *)&local_94,level);
    local_78 = LotRouting_BuildTypedFootprintOwnerId(0x15,(float *)&local_94,level);
    local_88 = LotRouting_BuildTypedFootprintOwnerId(0x1f,(float *)&local_94,level);
    if (removeExisting != 0) {
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_80,local_80._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_78,local_78._4_4_);
      if ((local_96 != '\0') && (level == 1)) {
        FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                     *(uint *)((int)lotOwner + 0x4c),(uint)local_88,local_88._4_4_);
      }
    }
    local_70 = CONCAT44(local_70._4_4_,(uint)local_70);
    local_68 = CONCAT44(local_68._4_4_,(uint)local_68);
    local_58 = CONCAT44(local_58._4_4_,(uint)local_58);
    local_40 = CONCAT44(local_40._4_4_,(int *)local_40);
    if (createNew != 0) {
      pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
      if (pvVar1 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,3);
      }
      FUN_00625130(&local_94,piVar2);
      piVar2 = local_94;
      (**(code **)(*local_94 + 0xb4))();
      piVar2[3] = *(int *)((int)lotOwner + 0x48);
      piVar2[4] = *(int *)((int)lotOwner + 0x4c);
      (**(code **)(*piVar2 + 0xcc))();
      FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),piVar2,0);
      (**(code **)(*piVar2 + 0x94))();
      pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
      if (pvVar1 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x15);
      }
      FUN_00625130(apiStack_a0,piVar2);
      (**(code **)(*apiStack_a0[0] + 0xb4))();
      apiStack_a0[0][3] = *(int *)((int)lotOwner + 0x48);
      apiStack_a0[0][4] = *(int *)((int)lotOwner + 0x4c);
      (**(code **)(*apiStack_a0[0] + 0xcc))(10);
      FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),apiStack_a0[0],0);
      (**(code **)(*apiStack_a0[0] + 0x94))();
      local_70 = CONCAT44(local_70._4_4_,(uint)local_70);
      local_68 = CONCAT44(local_68._4_4_,(uint)local_68);
      local_58 = CONCAT44(local_58._4_4_,(uint)local_58);
      local_40 = CONCAT44(local_40._4_4_,(int *)local_40);
      if ((local_96 != '\0') &&
         (local_70 = CONCAT44(local_70._4_4_,(uint)local_70),
         local_68 = CONCAT44(local_68._4_4_,(uint)local_68),
         local_58 = CONCAT44(local_58._4_4_,(uint)local_58),
         local_40 = CONCAT44(local_40._4_4_,(int *)local_40), level == 1)) {
        pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
        if (pvVar1 == (void *)0x0) {
          piVar2 = (int *)0x0;
        }
        else {
          piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,1,0x1f);
        }
        FUN_00625130(&local_94,piVar2);
        piVar2 = local_94;
        (**(code **)(*local_94 + 0xb4))();
        piVar2[3] = *(int *)((int)lotOwner + 0x48);
        piVar2[4] = *(int *)((int)lotOwner + 0x4c);
        (**(code **)(*piVar2 + 0xcc))();
        (**(code **)(*piVar2 + 200))();
        FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                     *(uint *)((int)lotOwner + 0x4c),piVar2,0);
        (**(code **)(*piVar2 + 0x94))();
      }
    }
LAB_00833ccc:
    if (local_95 == '\0') {
LAB_00833cdc:
      if (local_96 == '\0') goto LAB_00833ceb;
    }
    createNew = 0;
    removeExisting = 1;
  }
  else {
    uVar3 = LotRouting_BuildTypedFootprintOwnerId(0x10,(float *)&local_94,0);
    uStack_2c = (uint)(uVar3 >> 0x20);
    local_88 = LotRouting_BuildTypedFootprintOwnerId(0xf,(float *)&local_94,0);
    local_50 = LotRouting_BuildTypedFootprintOwnerId(0x15,(float *)&local_94,0);
    local_58 = LotRouting_BuildTypedFootprintOwnerId(0x1a,(float *)&local_94,0);
    local_70 = LotRouting_BuildTypedFootprintOwnerId(0x1b,(float *)&local_94,0);
    local_78 = LotRouting_BuildTypedFootprintOwnerId(0x1d,(float *)&local_94,0);
    local_80 = LotRouting_BuildTypedFootprintOwnerId(0x1c,(float *)&local_94,0);
    local_68 = LotRouting_BuildTypedFootprintOwnerId(0x1e,(float *)&local_94,0);
    local_60 = LotRouting_BuildTypedFootprintOwnerId(0x1f,(float *)&local_94,0);
    local_40 = LotRouting_BuildTypedFootprintOwnerId(3,(float *)&local_94,0);
    FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),(uint)uVar3,uStack_2c);
    FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),(uint)local_88,local_88._4_4_);
    if (removeExisting != 0) {
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_50,local_50._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_58,local_58._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_70,local_70._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_78,local_78._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_80,local_80._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_68,local_68._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)local_60,local_60._4_4_);
      FUN_00635f20(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),(uint)(int *)local_40,local_40._4_4_);
    }
    if (createNew == 0) goto LAB_00833ccc;
    if (local_96 != '\0') {
      if (local_95 != '\0') goto LAB_00833c3c;
      goto LAB_00833cdc;
    }
    if (local_95 == '\0') {
      pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
      if (pvVar1 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x1d);
      }
      FUN_00625130(&local_94,piVar2);
      piVar2 = local_94;
      (**(code **)(*local_94 + 0xb4))();
      piVar2[3] = *(int *)((int)lotOwner + 0x48);
      piVar2[4] = *(int *)((int)lotOwner + 0x4c);
      (**(code **)(*piVar2 + 0xcc))();
      FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),piVar2,0);
      (**(code **)(*piVar2 + 0x94))();
      pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
      if (pvVar1 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x1c);
      }
      FUN_00625130(apiStack_a0,piVar2);
      (**(code **)(*apiStack_a0[0] + 0xb4))();
      apiStack_a0[0][3] = *(int *)((int)lotOwner + 0x48);
      apiStack_a0[0][4] = *(int *)((int)lotOwner + 0x4c);
      (**(code **)(*apiStack_a0[0] + 0xcc))(0);
      (**(code **)(*apiStack_a0[0] + 200))(_DAT_011670f0);
      FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),apiStack_a0[0],0);
      (**(code **)(*apiStack_a0[0] + 0x94))();
    }
    pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
    if (pvVar1 == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x15);
    }
    FUN_00625130(&local_94,piVar2);
    piVar2 = local_94;
    (**(code **)(*local_94 + 0xb4))();
    piVar2[3] = *(int *)((int)lotOwner + 0x48);
    piVar2[4] = *(int *)((int)lotOwner + 0x4c);
    (**(code **)(*piVar2 + 0xcc))();
    FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),piVar2,0);
    (**(code **)(*piVar2 + 0x94))();
    if (local_95 != '\0') {
LAB_00833c3c:
      pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
      if (pvVar1 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,3);
      }
      FUN_00625130(&local_94,piVar2);
      piVar2 = local_94;
      (**(code **)(*local_94 + 0xb4))();
      piVar2[3] = *(int *)((int)lotOwner + 0x48);
      piVar2[4] = *(int *)((int)lotOwner + 0x4c);
      (**(code **)(*piVar2 + 0xcc))();
      FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                   *(uint *)((int)lotOwner + 0x4c),piVar2,0);
      (**(code **)(*piVar2 + 0x94))();
      goto LAB_00833ccc;
    }
    pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
    if (pvVar1 == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x1a);
    }
    FUN_00625130(&local_94,piVar2);
    piVar2 = local_94;
    uVar3 = local_58;
    (**(code **)(*local_94 + 0xb4))();
    piVar2[3] = *(int *)((int)lotOwner + 0x48);
    piVar2[4] = *(int *)((int)lotOwner + 0x4c);
    (**(code **)(*piVar2 + 0xcc))();
    (**(code **)(*piVar2 + 200))();
    FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),piVar2,0);
    (**(code **)(*piVar2 + 0x94))();
    pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
    if (pvVar1 == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x1b);
    }
    FUN_00625130(&piStack_a4,piVar2);
    uVar4 = local_80;
    (**(code **)(*piStack_a4 + 0xb4))((uint)local_80);
    piStack_a4[3] = *(int *)((int)lotOwner + 0x48);
    piStack_a4[4] = *(int *)((int)lotOwner + 0x4c);
    (**(code **)(*piStack_a4 + 0xcc))(10);
    (**(code **)(*piStack_a4 + 200))(_DAT_011670f4);
    FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),piStack_a4,0);
    (**(code **)(*piStack_a4 + 0x94))();
    pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
    if (pvVar1 == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x1e);
    }
    FUN_00625130(&stack0xffffff4c,piVar2);
    piVar2 = (int *)(uVar3 >> 0x20);
    (**(code **)(*piVar2 + 0xb4))((uint)local_88,local_88._4_4_);
    piVar2[3] = *(int *)((int)lotOwner + 0x48);
    piVar2[4] = *(int *)((int)lotOwner + 0x4c);
    (**(code **)(*piVar2 + 0xcc))(1);
    (**(code **)(*piVar2 + 200))(_DAT_011670fc);
    FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),piVar2,0);
    (**(code **)(*piVar2 + 0x94))();
    pvVar1 = (void *)FUN_004e4500(0x44,"Routing/LotFloorFootprint",0);
    if (pvVar1 == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = LotFloorFootprint_Construct(pvVar1,lotOwner,level_00,0x1f);
    }
    FUN_00625130(&stack0xffffff3c,piVar2);
    piVar2 = (int *)(uVar4 >> 0x20);
    (**(code **)(*piVar2 + 0xb4))(local_90,uStack_8c);
    piVar2[3] = *(int *)((int)lotOwner + 0x48);
    piVar2[4] = *(int *)((int)lotOwner + 0x4c);
    (**(code **)(*piVar2 + 0xcc))(0);
    (**(code **)(*piVar2 + 200))(0x3f800000);
    FUN_00637ef0(*(void **)((int)this + 0x95c),*(ushort **)((int)lotOwner + 0x48),
                 *(uint *)((int)lotOwner + 0x4c),piVar2,0);
    (**(code **)(*piVar2 + 0x94))();
  }
LAB_00833ceb:
  FUN_00831250(this,lotOwner,level,removeExisting,createNew);
  uVar3 = local_40;
LAB_00833cf4:
  local_40 = uVar3;
  FUN_004e1cc0(local_44);
  return;
}

