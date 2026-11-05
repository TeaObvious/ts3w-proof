/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 exact1394B/455I acrossB50D40..B51077 andB51080..B512B9;8unowned alignment bytes excluded.
   Physical ECX plus2stackDWORD inputs, RET8, result is reader context status lowbyte/AL. Opens
   type05512255/group005122C9 keyed by supplied bundle identity, readsUInt16 partition version,
   callsB4F990 twice atversion>=7. Loads3room lanes before11 and4at11+, derives group from
   sequentialF12E7BFF ids using high-byte XOR low24bits, invokesC07D80 for missing fourth lane
   before11. Other graph/pattern/post/triangulation branches remain visible; does not establish that
   partition version chooses room cell width. Import/bundle ownership and other callers are distinct
   from saved B52050 path; descriptive analyst name, not original symbol. */

undefined1 __thiscall PartitionManager_ReadResourceBundle(void *this,uint *param_1,uint *param_2)

{
  uint *puVar1;
  uint *this_00;
  uint *puVar2;
  bool bVar3;
  ushort uVar4;
  undefined4 uVar5;
  void *_Dst;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined4 *puVar9;
  int local_38;
  int local_34;
  undefined **local_30;
  uint local_2c;
  uint local_28;
  int local_24;
  uint local_20;
  uint local_1c;
  undefined4 local_18;
  undefined4 local_14;
  void *local_10;
  int local_c;
  int local_8;
  char *local_4;
  
  puVar2 = param_2;
  this_00 = param_1;
  *(uint *)((int)this + 0x1c) = param_2[9];
  *(uint *)((int)this + 0x20) = param_2[10];
  local_20 = *param_2;
  local_1c = param_2[1];
  param_2 = (uint *)0x0;
  local_18 = 0x5512255;
  local_14 = 0x5122c9;
  bVar3 = ResourceStreamContext_OpenRead(param_1,&local_20,0);
  if (bVar3) {
    bVar3 = Stream_ReadUInt16((void *)this_00[2],(ushort *)&param_2,this_00[4]);
    StreamReader_AccumulateStatus(this_00,bVar3);
    if ((ushort)param_2 < 7) {
      *(undefined1 *)((int)this + 500) = 1;
    }
    else {
      PartitionState_ReadCountedUInt16Vector(this_00,(int *)((int)this + 0xa8));
      PartitionState_ReadCountedUInt16Vector(this_00,(int *)((int)this + 0xbc));
    }
    ResourceStreamContext_Close(this_00);
  }
  iVar7 = *(int *)((int)this + 0x70);
  FUN_009d67f0(*(int *)(iVar7 + 4),*(uint *)(iVar7 + 8));
  *(undefined4 *)(iVar7 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar7 + 0x24),*(uint *)(iVar7 + 0x28));
  *(undefined4 *)(iVar7 + 0x2c) = 0;
  FUN_00a667c0(*(int *)((int)this + 0x8c));
  iVar7 = *(int *)((int)this + 0x78);
  FUN_009d67f0(*(int *)(iVar7 + 4),*(uint *)(iVar7 + 8));
  *(undefined4 *)(iVar7 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar7 + 0x24),*(uint *)(iVar7 + 0x28));
  *(undefined4 *)(iVar7 + 0x2c) = 0;
  iVar7 = *(int *)((int)this + 0x88);
  FUN_009d67f0(*(int *)(iVar7 + 4),*(uint *)(iVar7 + 8));
  *(undefined4 *)(iVar7 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar7 + 0x24),*(uint *)(iVar7 + 0x28));
  *(undefined4 *)(iVar7 + 0x2c) = 0;
  iVar7 = *(int *)((int)this + 0x80);
  FUN_009d67f0(*(int *)(iVar7 + 4),*(uint *)(iVar7 + 8));
  *(undefined4 *)(iVar7 + 0xc) = 0;
  FUN_009d67f0(*(int *)(iVar7 + 0x24),*(uint *)(iVar7 + 0x28));
  *(undefined4 *)(iVar7 + 0x2c) = 0;
  puVar1 = puVar2 + 0x1d;
  WallSidePatterns_ReadResource
            (*(void **)((int)this + 0x6c),this_00,puVar1,0x2fdacf,*puVar2,puVar2[1]);
  WallSidePatterns_ReadResource
            (*(void **)((int)this + 0x74),this_00,puVar1,0x4bfaab,*puVar2,puVar2[1]);
  WallSidePatterns_ReadResource
            (*(void **)((int)this + 0x84),this_00,puVar1,0x82079a,*puVar2,puVar2[1]);
  WallSidePatterns_ReadResource
            (*(void **)((int)this + 0x7c),this_00,puVar1,0xdd33e4,*puVar2,puVar2[1]);
  uVar4 = (ushort)param_2;
  if (10 < uVar4) {
    FUN_00c5b330(*(void **)((int)this + 0x98),this_00,0xd22a0,*puVar2,puVar2[1]);
    uVar4 = (ushort)param_2;
  }
  if (0xb < uVar4) {
    FUN_00c5b330(*(void **)((int)this + 0xa0),this_00,0x3b166c,*puVar2,puVar2[1]);
    uVar4 = (ushort)param_2;
  }
  iVar7 = 0;
  if (uVar4 < 6) {
    iVar7 = 3;
  }
  iVar6 = 6 - (uint)(uVar4 < 0xb);
  if (0 < iVar6) {
    param_1 = (uint *)((int)this + 0x54);
    uVar8 = iVar7 + 0x512e7b4b;
    local_38 = iVar6;
    do {
      FUN_00c443f0((void *)*param_1,this_00,uVar8 >> 0x18 ^ uVar8 & 0xffffff,puVar2);
      param_1 = param_1 + 1;
      uVar8 = uVar8 + 1;
      local_38 = local_38 + -1;
    } while (local_38 != 0);
    uVar4 = (ushort)param_2;
  }
  bVar3 = false;
  if (uVar4 < 0xb) {
    if (iVar6 < 6) {
      param_1 = (uint *)((int)this + iVar6 * 4 + 0x54);
      iVar6 = 6 - iVar6;
      do {
        FUN_00c44930(*param_1);
        param_1 = param_1 + 1;
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
      uVar4 = (ushort)param_2;
    }
    bVar3 = uVar4 < 0xb;
  }
  iVar7 = 4 - (uint)bVar3;
  local_34 = 0;
  local_24 = iVar7;
  if (0 < iVar7) {
    param_1 = (uint *)((int)this + 0x44);
    uVar8 = 0xf12e7bff;
    local_38 = iVar7;
    do {
      FUN_00c07c90((void *)*param_1,this_00,uVar8 >> 0x18 ^ uVar8 & 0xffffff,(char *)puVar2);
      param_1 = param_1 + 1;
      uVar8 = uVar8 + 1;
      local_38 = local_38 + -1;
    } while (local_38 != 0);
    uVar4 = (ushort)param_2;
    local_34 = iVar7;
  }
  if ((uVar4 < 0xb) && (local_24 < 4)) {
    iVar7 = 4 - local_24;
    do {
      RoomManager_ResetToEmptyGrid(*(void **)((int)this + local_34 * 4 + 0x44));
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
  }
  puVar9 = (undefined4 *)((int)this + 0x54);
  param_1 = (uint *)&DAT_00000006;
  do {
    FUN_00c40a50((void *)*puVar9,'\x01');
    puVar9 = puVar9 + 1;
    param_1 = (uint *)((int)param_1 + -1);
  } while (param_1 != (uint *)0x0);
  puVar1 = puVar2 + 0x1d;
  WallPatternMap_ReadResource
            (*(void **)((int)this + 0x70),this_00,puVar1,0x2e7df7,*puVar2,puVar2[1]);
  WallPatternMap_ReadResource
            (*(void **)((int)this + 0x78),this_00,puVar1,0x4be299,*puVar2,puVar2[1]);
  WallPatternMap_ReadResource
            (*(void **)((int)this + 0x88),this_00,puVar1,0x8207aa,*puVar2,puVar2[1]);
  WallPatternMap_ReadResource
            (*(void **)((int)this + 0x80),this_00,puVar1,0xdd3460,*puVar2,puVar2[1]);
  if (10 < (ushort)param_2) {
    FloorPatternMap_ReadResourceRows
              (*(void **)((int)this + 0x94),this_00,puVar1,0xd2507,*puVar2,puVar2[1],
               (uint)(ushort)puVar2[2]);
  }
  if (0xb < (ushort)param_2) {
    FloorPatternMap_ReadResourceRows
              (*(void **)((int)this + 0x9c),this_00,puVar1,0x3b1255,*puVar2,puVar2[1],
               (uint)(ushort)puVar2[2]);
  }
  local_30 = &PTR_LAB_0106dac8;
  FUN_00b700e0(*(void **)((int)this + 0x78),(int *)&local_30);
  FUN_00b700e0(*(void **)((int)this + 0x88),(int *)&local_30);
  LotFence_ReadTransformedPostResource(*(void **)((int)this + 0x8c),this_00,puVar2);
  WallSidePatterns_ReadResource
            (*(void **)((int)this + 0x90),this_00,puVar1,0x2e7e1d,*puVar2,puVar2[1]);
  local_28 = 0;
  local_2c = 0;
  param_1 = (uint *)0x0;
  uVar5 = FUN_00b50bd0(*(void **)((int)this + 0xa4),this_00,0xe3277,*puVar2,puVar2[1],puVar2[9],
                       puVar2[10],&local_28,&local_2c,(int *)&param_1);
  if ((char)uVar5 != '\0') {
    local_4 = "Lot/PartitionManager/TriangulationContents";
    if (param_1 == (uint *)0x0) {
      _Dst = (void *)0x0;
    }
    else {
      _Dst = (void *)FUN_004e4500((uint)param_1,"Lot/PartitionManager/TriangulationContents",0);
    }
    local_8 = (int)_Dst + (int)param_1;
    local_10 = _Dst;
    if (param_1 != (uint *)0x0) {
      memset(_Dst,0,(size_t)param_1);
    }
    local_c = (int)_Dst + (int)param_1;
    bVar3 = Stream_ReadExactBytes((void *)this_00[2],_Dst,(uint)param_1);
    StreamReader_AccumulateStatus(this_00,bVar3);
    ResourceStreamContext_Close(this_00);
    FUN_00b48310(*(int *)((int)this + 0xa4),(int *)&local_10,(int)puVar2,local_28,local_2c);
    if (_Dst != (void *)0x0) {
      Memory_FreeIfNonNull(_Dst);
    }
  }
  if ((ushort)param_2 < 10) {
    FUN_00b4f0f0(this);
  }
  if ((ushort)param_2 < 0xd) {
    *(undefined1 *)((int)this + 0x13) = 1;
  }
  return (char)this_00[5];
}

