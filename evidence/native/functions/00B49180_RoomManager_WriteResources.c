/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Actual RoomManager save caller, not
   FloorManager. Writes its header, four wall-side lanes C44CD0 with
   groups2FDACF/4BFAAB/82079A/DD33E4, wall graphs C3F910, room grids C06070 or C06110, wall ordinal
   maps B6FF20 groups2E7DF7/4BE299/8207AA/DD3460 and other manager fields. A detached single graph
   or pattern writer is not a complete manager save. Preserve original status/order from this full
   body. */

undefined4 __thiscall
RoomManager_WriteResources
          (void *this,undefined4 *param_1,void *param_2,int param_3,undefined4 param_4,char param_5)

{
  int *piVar1;
  uint *puVar2;
  int iVar3;
  undefined4 *this_00;
  bool bVar4;
  byte bVar5;
  undefined4 *puVar6;
  undefined4 extraout_EAX;
  undefined4 uVar7;
  int *piVar8;
  uint uVar9;
  uint *puVar10;
  int iVar11;
  int local_28;
  void *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = param_1;
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x5512255;
  local_4 = 0x5122c9;
  bVar4 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (bVar4) {
    bVar5 = Stream_WriteUInt16((void *)param_1[2],0xd,param_1[4]);
    StreamReader_AccumulateStatus(param_1,bVar5);
    FUN_00b47820(param_1,(int *)((int)this + 0xa8));
    FUN_00b47820(param_1,(int *)((int)this + 0xbc));
    ResourceStreamContext_Close(param_1);
  }
  WallSidePatterns_WriteResource
            (*(void **)((int)this + 0x6c),param_1,param_2,0x2fdacf,param_3,param_4);
  WallSidePatterns_WriteResource
            (*(void **)((int)this + 0x74),param_1,param_2,0x4bfaab,param_3,param_4);
  WallSidePatterns_WriteResource
            (*(void **)((int)this + 0x84),param_1,param_2,0x82079a,param_3,param_4);
  WallSidePatterns_WriteResource
            (*(void **)((int)this + 0x7c),param_1,param_2,0xdd33e4,param_3,param_4);
  FUN_00c5af40(*(void **)((int)this + 0x98),param_1,0xd22a0,param_3,param_4);
  FUN_00c5af40(*(void **)((int)this + 0xa0),param_1,0x3b166c,param_3,param_4);
  param_1 = (undefined4 *)((int)this + 0x54);
  uVar9 = 0x512e7b4b;
  local_28 = 6;
  do {
    WallGraph_WriteResource
              ((void *)*param_1,this_00,uVar9 >> 0x18 ^ uVar9 & 0xffffff,param_3,param_4);
    param_1 = param_1 + 1;
    uVar9 = uVar9 + 1;
    local_28 = local_28 + -1;
  } while (local_28 != 0);
  puVar6 = (undefined4 *)((int)this + 0x44);
  uVar9 = 0xf12e7bff;
  local_28 = 4;
  do {
    if (param_5 == '\0') {
      RoomGrid_WriteSavedResource
                ((void *)*puVar6,this_00,uVar9 >> 0x18 ^ uVar9 & 0xffffff,param_3,param_4);
    }
    else {
      RoomGrid_WriteExportResource
                ((void *)*puVar6,this_00,uVar9 >> 0x18 ^ uVar9 & 0xffffff,param_3,param_4);
    }
    puVar6 = puVar6 + 1;
    uVar9 = uVar9 + 1;
    local_28 = local_28 + -1;
  } while (local_28 != 0);
  WallPatternMap_WriteResource
            (*(void **)((int)this + 0x70),this_00,param_2,0x2e7df7,param_3,param_4);
  WallPatternMap_WriteResource
            (*(void **)((int)this + 0x78),this_00,param_2,0x4be299,param_3,param_4);
  WallPatternMap_WriteResource
            (*(void **)((int)this + 0x88),this_00,param_2,0x8207aa,param_3,param_4);
  WallPatternMap_WriteResource
            (*(void **)((int)this + 0x80),this_00,param_2,0xdd3460,param_3,param_4);
  FloorPatternMap_WriteResource
            (*(void **)((int)this + 0x94),this_00,param_2,0xd2507,param_3,param_4);
  FloorPatternMap_WriteResource
            (*(void **)((int)this + 0x9c),this_00,param_2,0x3b1255,param_3,param_4);
  piVar1 = *(int **)(*(int *)((int)this + 0x78) + 4);
  puVar10 = (uint *)*piVar1;
  piVar8 = piVar1;
  if (puVar10 == (uint *)0x0) {
    piVar8 = piVar1 + 1;
    iVar11 = piVar1[1];
    while (iVar11 == 0) {
      piVar8 = piVar8 + 1;
      iVar11 = *piVar8;
    }
    puVar10 = (uint *)*piVar8;
  }
  puVar2 = (uint *)piVar1[*(int *)(*(int *)((int)this + 0x78) + 8)];
  while (puVar10 != puVar2) {
    FUN_00ab09c0(*(void **)((int)this + 0xc),puVar10);
    for (puVar10 = (uint *)puVar10[6]; puVar10 == (uint *)0x0; puVar10 = (uint *)*puVar10) {
      puVar10 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  piVar1 = *(int **)(*(int *)((int)this + 0x88) + 4);
  puVar10 = (uint *)*piVar1;
  piVar8 = piVar1;
  if (puVar10 == (uint *)0x0) {
    piVar8 = piVar1 + 1;
    iVar11 = piVar1[1];
    while (iVar11 == 0) {
      piVar8 = piVar8 + 1;
      iVar11 = *piVar8;
    }
    puVar10 = (uint *)*piVar8;
  }
  puVar2 = (uint *)piVar1[*(int *)(*(int *)((int)this + 0x88) + 8)];
  while (puVar10 != puVar2) {
    FUN_00ab09c0(*(void **)((int)this + 0xc),puVar10);
    for (puVar10 = (uint *)puVar10[6]; puVar10 == (uint *)0x0; puVar10 = (uint *)*puVar10) {
      puVar10 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  piVar1 = *(int **)(*(int *)((int)this + 0x80) + 4);
  puVar10 = (uint *)*piVar1;
  piVar8 = piVar1;
  if (puVar10 == (uint *)0x0) {
    piVar8 = piVar1 + 1;
    iVar11 = piVar1[1];
    while (iVar11 == 0) {
      piVar8 = piVar8 + 1;
      iVar11 = *piVar8;
    }
    puVar10 = (uint *)*piVar8;
  }
  puVar2 = (uint *)piVar1[*(int *)(*(int *)((int)this + 0x80) + 8)];
  while (puVar10 != puVar2) {
    FUN_00ab09f0(*(void **)((int)this + 0xc),puVar10);
    for (puVar10 = (uint *)puVar10[6]; puVar10 == (uint *)0x0; puVar10 = (uint *)*puVar10) {
      puVar10 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  piVar1 = *(int **)(*(int *)((int)this + 0x94) + 4);
  iVar11 = *piVar1;
  piVar8 = piVar1;
  if (iVar11 == 0) {
    piVar8 = piVar1 + 1;
    iVar11 = piVar1[1];
    while (iVar11 == 0) {
      piVar8 = piVar8 + 1;
      iVar11 = *piVar8;
    }
    iVar11 = *piVar8;
  }
  iVar3 = piVar1[*(int *)(*(int *)((int)this + 0x94) + 8)];
  while (iVar11 != iVar3) {
    FUN_00ab09c0(*(void **)((int)this + 0xc),(uint *)(iVar11 + 0x10));
    FUN_00ab09c0(*(void **)((int)this + 0xc),(uint *)(iVar11 + 0x20));
    FUN_00ab09f0(*(void **)((int)this + 0xc),(uint *)(iVar11 + 0x30));
    iVar11 = *(int *)(iVar11 + 0x48);
    while (iVar11 == 0) {
      piVar1 = piVar8 + 1;
      piVar8 = piVar8 + 1;
      iVar11 = *piVar1;
    }
  }
  piVar1 = *(int **)(*(int *)((int)this + 0x9c) + 4);
  iVar11 = *piVar1;
  piVar8 = piVar1;
  if (iVar11 == 0) {
    piVar8 = piVar1 + 1;
    iVar11 = piVar1[1];
    while (iVar11 == 0) {
      piVar8 = piVar8 + 1;
      iVar11 = *piVar8;
    }
    iVar11 = *piVar8;
  }
  iVar3 = piVar1[*(int *)(*(int *)((int)this + 0x9c) + 8)];
  while (iVar11 != iVar3) {
    FUN_00ab09c0(*(void **)((int)this + 0xc),(uint *)(iVar11 + 0x10));
    FUN_00ab09c0(*(void **)((int)this + 0xc),(uint *)(iVar11 + 0x20));
    FUN_00ab09f0(*(void **)((int)this + 0xc),(uint *)(iVar11 + 0x30));
    iVar11 = *(int *)(iVar11 + 0x48);
    while (iVar11 == 0) {
      piVar1 = piVar8 + 1;
      piVar8 = piVar8 + 1;
      iVar11 = *piVar1;
    }
  }
  local_20 = (void *)0x0;
  local_1c = 0;
  local_18 = 0;
  local_14 = "World/PartitionManager";
  FUN_00a67160(*(void **)((int)this + 0x8c),(int *)&local_20);
  LotFence_WritePostResource(*(void **)((int)this + 0x8c),this_00,param_2,param_3,param_4);
  WallSidePatterns_WriteResource
            (*(void **)((int)this + 0x90),this_00,param_2,0x2e7e1d,param_3,param_4);
  if (*(char *)(this_00 + 5) != '\0') {
    FUN_00b474f0(*(void **)((int)this + 0xa4),this_00,0xe3277,param_3,param_4);
    if (*(char *)(this_00 + 5) != '\0') {
      iVar11 = *(int *)(*(int *)((int)this + 0xa4) + 0x14);
      bVar5 = FUN_004dde50((int *)this_00[2],iVar11,
                           *(int *)(*(int *)((int)this + 0xa4) + 0x18) - iVar11);
      StreamReader_AccumulateStatus(this_00,bVar5);
    }
    ResourceStreamContext_Close(this_00);
  }
  uVar7 = 0;
  if (local_20 != (void *)0x0) {
    Memory_FreeIfNonNull(local_20);
    uVar7 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)uVar7 >> 8),1);
}

