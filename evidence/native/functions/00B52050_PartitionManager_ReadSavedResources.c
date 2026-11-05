/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 Room provenance/caller gate: entire1549owned bytes/492instructions in B52050..B522D6,
   B522E0..B5234B, B52350..B52669;13unowned alignment bytes preserved. Existing ECX this+four stack
   input metadata/RET10 retained. B52060 callsC6DCC0; MOVZX AX atB5206D and retained local B52074
   carry enclosingLOT source version. B52354..6F pushes it as fifth RoomManager stackDWORD while
   deriving group=(id>>24) XOR(id&FFFFFF) from lane id F12E7BFF incremented for room-definition
   lanes. Type B125533A is read inside C06900. Separate room-index UInt16 gates govern lane
   availability/legacy Platform initialization and must not select cell width. Other
   floor/deck/resource branches and genuine existing notes remain unchanged. */

undefined1 __thiscall
PartitionManager_ReadSavedResources
          (void *this,undefined4 *param_1,void *param_2,uint param_3,uint param_4)

{
  void *pvVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 *stream;
  uint lotLow;
  bool bVar5;
  ushort uVar6;
  undefined4 *puVar7;
  undefined4 uVar8;
  uint uVar9;
  int iVar10;
  int iVar11;
  ushort local_20 [2];
  uint local_1c;
  int local_18;
  undefined **local_14;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  stream = param_1;
  *(undefined1 *)((int)this + 0x10) = 0;
  uVar6 = Lot_GetSourceFormatVersion(*(int *)((int)this + 0xc));
  uVar9 = param_4;
  local_1c = (uint)uVar6;
  local_20[0] = 0;
  local_20[1] = 0;
  if (0x12 < uVar6) {
    local_10 = param_3;
    local_c = param_4;
    local_8 = 0x5512255;
    local_4 = 0x5122c9;
    bVar5 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
    if (bVar5) {
      bVar5 = Stream_ReadUInt16((void *)param_1[2],local_20,param_1[4]);
      StreamReader_AccumulateStatus(param_1,bVar5);
      if (local_20[0] < 7) {
        *(undefined1 *)((int)this + 500) = 1;
      }
      else {
        PartitionState_ReadCountedUInt16Vector(param_1,(int *)((int)this + 0xa8));
        PartitionState_ReadCountedUInt16Vector(param_1,(int *)((int)this + 0xbc));
      }
      if (local_20[0] < 8) {
        *(undefined1 *)((int)this + 500) = 1;
      }
      ResourceStreamContext_Close(param_1);
    }
  }
  iVar11 = *(int *)((int)this + 0x70);
  FUN_009d67f0(*(int *)(iVar11 + 4),*(uint *)(iVar11 + 8));
  *(undefined4 *)(iVar11 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar11 + 0x24),*(uint *)(iVar11 + 0x28));
  *(undefined4 *)(iVar11 + 0x2c) = 0;
  FUN_00a667c0(*(int *)((int)this + 0x8c));
  iVar11 = *(int *)((int)this + 0x78);
  FUN_009d67f0(*(int *)(iVar11 + 4),*(uint *)(iVar11 + 8));
  *(undefined4 *)(iVar11 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar11 + 0x24),*(uint *)(iVar11 + 0x28));
  *(undefined4 *)(iVar11 + 0x2c) = 0;
  iVar11 = *(int *)((int)this + 0x88);
  FUN_009d67f0(*(int *)(iVar11 + 4),*(uint *)(iVar11 + 8));
  *(undefined4 *)(iVar11 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar11 + 0x24),*(uint *)(iVar11 + 0x28));
  *(undefined4 *)(iVar11 + 0x2c) = 0;
  iVar11 = *(int *)((int)this + 0x80);
  FUN_009d67f0(*(int *)(iVar11 + 4),*(uint *)(iVar11 + 8));
  *(undefined4 *)(iVar11 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar11 + 0x24),*(uint *)(iVar11 + 0x28));
  lotLow = param_3;
  *(undefined4 *)(iVar11 + 0x2c) = 0;
  WallSidePatterns_ReadResource(*(void **)((int)this + 0x6c),param_1,param_2,0x2fdacf,param_3,uVar9)
  ;
  uVar6 = 0;
  if (local_20[0] != 0) {
    WallSidePatterns_ReadResource
              (*(void **)((int)this + 0x74),param_1,param_2,0x4bfaab,lotLow,uVar9);
    uVar6 = local_20[0];
  }
  if (1 < uVar6) {
    WallSidePatterns_ReadResource
              (*(void **)((int)this + 0x84),param_1,param_2,0x82079a,lotLow,uVar9);
    uVar6 = local_20[0];
  }
  if (2 < uVar6) {
    WallSidePatterns_ReadResource
              (*(void **)((int)this + 0x7c),param_1,param_2,0xdd33e4,lotLow,uVar9);
    uVar6 = local_20[0];
  }
  if (10 < uVar6) {
    FUN_00c5b330(*(void **)((int)this + 0x98),param_1,0xd22a0,lotLow,uVar9);
    uVar6 = local_20[0];
  }
  if (0xb < uVar6) {
    FUN_00c5b330(*(void **)((int)this + 0xa0),param_1,0x3b166c,lotLow,uVar9);
    uVar6 = local_20[0];
  }
  iVar11 = 0;
  if (uVar6 < 6) {
    iVar11 = 3;
  }
  iVar10 = 6 - (uint)(uVar6 < 0xb);
  if (0 < iVar10) {
    param_3 = iVar11 + 0x512e7b4b;
    param_1 = (undefined4 *)((int)this + 0x54);
    local_18 = iVar10;
    do {
      WallGraph_ReadResource
                ((void *)*param_1,stream,param_3 >> 0x18 ^ param_3 & 0xffffff,lotLow,uVar9);
      param_1 = param_1 + 1;
      param_3 = param_3 + 1;
      local_18 = local_18 + -1;
    } while (local_18 != 0);
    uVar6 = local_20[0];
    local_18 = 0;
  }
  bVar5 = false;
  if (uVar6 < 0xb) {
    FUN_00c44930(*(uint *)((int)this + 0x68));
    uVar6 = local_20[0];
    bVar5 = uVar6 < 0xb;
  }
  if (0 < (int)(4 - (uint)bVar5)) {
    param_1 = (undefined4 *)((int)this + 0x44);
    param_3 = 0xf12e7bff;
    local_18 = 4 - (uint)bVar5;
    do {
      RoomManager_ReadSavedGridResource
                ((void *)*param_1,stream,param_3 >> 0x18 ^ param_3 & 0xffffff,lotLow,uVar9,
                 (ushort)local_1c);
      param_1 = param_1 + 1;
      param_3 = param_3 + 1;
      local_18 = local_18 + -1;
    } while (local_18 != 0);
    uVar6 = local_20[0];
    local_18 = 0;
  }
  if (uVar6 < 0xb) {
    RoomManager_ResetToEmptyGrid(*(void **)((int)this + 0x50));
  }
  param_1 = (undefined4 *)((int)this + 0x54);
  param_3 = 6;
  do {
    FUN_00c40a50((void *)*param_1,'\x01');
    param_1 = param_1 + 1;
    param_3 = param_3 - 1;
  } while (param_3 != 0);
  WallPatternMap_ReadResource(*(void **)((int)this + 0x70),stream,param_2,0x2e7df7,lotLow,uVar9);
  local_14 = &PTR_LAB_0106dac8;
  if (local_20[0] != 0) {
    WallPatternMap_ReadResource(*(void **)((int)this + 0x78),stream,param_2,0x4be299,lotLow,uVar9);
    FUN_00b700e0(*(void **)((int)this + 0x78),(int *)&local_14);
  }
  if (1 < local_20[0]) {
    WallPatternMap_ReadResource(*(void **)((int)this + 0x88),stream,param_2,0x8207aa,lotLow,uVar9);
    FUN_00b700e0(*(void **)((int)this + 0x88),(int *)&local_14);
  }
  if (2 < local_20[0]) {
    WallPatternMap_ReadResource(*(void **)((int)this + 0x80),stream,param_2,0xdd3460,lotLow,uVar9);
  }
  if (10 < local_20[0]) {
    FloorPatternMap_ReadResourceRows
              (*(void **)((int)this + 0x94),stream,param_2,0xd2507,lotLow,uVar9,local_1c & 0xffff);
  }
  if (0xb < local_20[0]) {
    FloorPatternMap_ReadResourceRows
              (*(void **)((int)this + 0x9c),stream,param_2,0x3b1255,lotLow,uVar9,local_1c & 0xffff);
  }
  LotFence_ReadPostResource(*(void **)((int)this + 0x8c),stream,param_2,lotLow,uVar9);
  WallSidePatterns_ReadResource(*(void **)((int)this + 0x90),stream,param_2,0x2e7e1d,lotLow,uVar9);
  if (*(int *)((int)this + 0xa4) == 0) {
    puVar7 = (undefined4 *)FUN_004e4500(0x24,"Lot/PartitionManager/TriangulationLayer",0);
    if (puVar7 == (undefined4 *)0x0) {
      puVar7 = (undefined4 *)0x0;
    }
    else {
      *puVar7 = &PTR_FUN_0106de60;
      puVar7[1] = 0;
      puVar7[2] = 0;
      puVar7[3] = 0;
      puVar7[5] = 0;
      puVar7[6] = 0;
      puVar7[7] = 0;
      puVar7[8] = "Lot/PartitionManager/TriangulationLayer";
    }
    *(undefined4 **)((int)this + 0xa4) = puVar7;
  }
  if (local_20[0] < 4) {
    iVar11 = *(int *)((int)this + 0x20);
    iVar10 = *(int *)((int)this + 0x1c);
    iVar2 = *(int *)((int)this + 0x18);
    iVar3 = *(int *)((int)this + 0x14);
    iVar4 = *(int *)((int)this + 0xa4);
    *(int *)(iVar4 + 4) = iVar3;
    uVar9 = iVar3 * iVar2;
    *(int *)(iVar4 + 8) = iVar2;
    iVar10 = (iVar11 - iVar10) + 1;
    iVar11 = (int)(uVar9 + ((int)uVar9 >> 0x1f & 7U)) >> 3;
    uVar9 = uVar9 & 0x80000007;
    bVar5 = uVar9 == 0;
    *(int *)(iVar4 + 0xc) = iVar10;
    *(int *)(iVar4 + 0x10) = iVar11;
    if ((int)uVar9 < 0) {
      bVar5 = (uVar9 - 1 | 0xfffffff8) == 0xffffffff;
    }
    if (!bVar5) {
      *(int *)(iVar4 + 0x10) = iVar11 + 1;
    }
    iVar11 = *(int *)(iVar4 + 0x14);
    uVar9 = *(int *)(iVar4 + 0x10) * iVar10;
    pvVar1 = *(void **)(iVar4 + 0x18);
    if ((uint)((int)pvVar1 - iVar11) < uVar9) {
      param_2 = (void *)((uint)param_2 & 0xffffff00);
      FUN_00b6f4c0((void *)(iVar4 + 0x14),pvVar1,(void *)((iVar11 - (int)pvVar1) + uVar9),
                   (byte *)&param_2);
    }
    else {
      param_2 = (void *)(iVar11 + uVar9);
      memmove(param_2,pvVar1,0);
      *(int *)(iVar4 + 0x18) = (int)param_2 + (*(int *)(iVar4 + 0x18) - (int)pvVar1);
    }
    pvVar1 = *(void **)(*(int *)((int)this + 0xa4) + 0x14);
    memset(pvVar1,0,*(int *)(*(int *)((int)this + 0xa4) + 0x18) - (int)pvVar1);
    FUN_00b51fe0(this);
  }
  else {
    uVar8 = FUN_00b50ae0(*(void **)((int)this + 0xa4),stream,0xe3277,lotLow,uVar9);
    if ((char)uVar8 != '\0') {
      pvVar1 = *(void **)(*(int *)((int)this + 0xa4) + 0x14);
      bVar5 = Stream_ReadExactBytes
                        ((void *)stream[2],pvVar1,
                         *(int *)(*(int *)((int)this + 0xa4) + 0x18) - (int)pvVar1);
      StreamReader_AccumulateStatus(stream,bVar5);
      ResourceStreamContext_Close(stream);
    }
  }
  uVar6 = local_20[0];
  *(bool *)((int)this + 0x12) = uVar6 < 9;
  if (uVar6 < 10) {
    FUN_00b4f0f0(this);
    uVar6 = local_20[0];
  }
  *(undefined1 *)((int)this + 0x10) = 1;
  if (uVar6 < 0xd) {
    *(undefined1 *)((int)this + 0x13) = 1;
  }
  return *(undefined1 *)(stream + 5);
}

