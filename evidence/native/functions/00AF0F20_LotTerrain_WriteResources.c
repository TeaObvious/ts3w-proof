/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX terrain. First AF0D50 removes
   exactly-zero-usage layers by swap/removal. Always paint-list04EE6ABB version14; UInt32count,
   key16/usage32 rows, unconditional cliffIndex32, coordinatePairCount32 and two packedUInt32 per
   six signed-byte pair, then alphaCount32. Coordinate packing uses MOVSX bytes and SHL12/ADD twice
   (not bitfield OR). Then per-alpha06DC847E/D4DAA4+index, water05FF6BA4/FF2067, pond05FF3549/137BE1
   and face05FF6BA4/958344 with sticky resource status and explicit close. Current version/header
   alone is not full state preparation. */

undefined1 __thiscall
LotTerrain_WriteResources
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,uint param_5
          )

{
  void *this_00;
  bool bVar1;
  byte bVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  uint *puVar6;
  int iVar7;
  uint uVar8;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  LotTerrain_RemoveUnusedPaintLayers(this);
  local_4 = param_5;
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x4ee6abb;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (bVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0xe,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    param_5 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18;
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),param_5,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    if (param_5 != 0) {
      iVar7 = 0;
      do {
        puVar6 = (uint *)(*(int *)((int)this + 0x30) + iVar7);
        uVar3 = ResourceReferences_RegisterKey(param_2,puVar6,0);
        bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar3,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),puVar6[4],*(int *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        iVar7 = iVar7 + 0x18;
        param_5 = param_5 - 1;
      } while (param_5 != 0);
    }
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x18),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                               (*(int *)((int)this + 0x158) - *(int *)((int)this + 0x154)) / 6,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    iVar5 = *(int *)((int)this + 0x158) - *(int *)((int)this + 0x154);
    iVar7 = iVar5 >> 0x1f;
    uVar3 = 0;
    if (iVar5 / 6 + iVar7 != iVar7) {
      iVar7 = 0;
      do {
        iVar5 = *(int *)((int)this + 0x154);
        bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                                   (*(char *)(iVar5 + 2 + iVar7) * 0x1000 +
                                   (int)*(char *)(iVar5 + 1 + iVar7)) * 0x1000 +
                                   (int)*(char *)(iVar5 + iVar7),*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        iVar5 = *(int *)((int)this + 0x154);
        bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                                   (*(char *)(iVar7 + 5 + iVar5) * 0x1000 +
                                   (int)*(char *)(iVar7 + 4 + iVar5)) * 0x1000 +
                                   (int)*(char *)(iVar7 + 3 + iVar5),*(uint *)((int)param_1 + 0x10))
        ;
        StreamReader_AccumulateStatus(param_1,bVar2);
        uVar3 = uVar3 + 1;
        iVar7 = iVar7 + 6;
      } while (uVar3 < (uint)((*(int *)((int)this + 0x158) - *(int *)((int)this + 0x154)) / 6));
    }
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                               *(int *)((int)this + 100) - *(int *)((int)this + 0x60) >> 2,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    ResourceStreamContext_Close(param_1);
  }
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    uVar8 = 0;
    uVar3 = *(int *)((int)this + 100) - *(int *)((int)this + 0x60) >> 2;
    if (uVar3 != 0) {
      do {
        this_00 = *(void **)(*(int *)((int)this + 0x60) + uVar8 * 4);
        uVar4 = ByteBlockGrid_WriteResourceHeader(this_00,param_1,uVar8 + 0xd4daa4,param_3,param_4);
        if ((char)uVar4 != '\0') {
          bVar2 = FUN_004dde50(*(int **)((int)param_1 + 8),*(int *)((int)this_00 + 0x10),
                               *(int *)((int)this_00 + 0x14) - *(int *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(param_1,bVar2);
          bVar2 = FUN_004dde50(*(int **)((int)param_1 + 8),*(int *)((int)this_00 + 0x20),
                               *(int *)((int)this_00 + 0x24) - *(int *)((int)this_00 + 0x20));
          StreamReader_AccumulateStatus(param_1,bVar2);
          ResourceStreamContext_Close(param_1);
        }
        uVar8 = uVar8 + 1;
      } while (uVar8 < uVar3);
    }
    if (*(char *)((int)param_1 + 0x14) != '\0') {
      LotFloatGrid_WriteResourceHeader
                (*(void **)((int)this + 200),param_1,&DAT_00ff2067,param_3,param_4);
      if (*(char *)((int)param_1 + 0x14) != '\0') {
        puVar6 = *(uint **)(*(int *)((int)this + 200) + 0xc);
        uVar4 = thunk_FUN_004ddfc0(*(int **)((int)param_1 + 8),puVar6,
                                   *(int *)(*(int *)((int)this + 200) + 0x10) - (int)puVar6 >> 2,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,(byte)uVar4);
      }
      ResourceStreamContext_Close(param_1);
    }
  }
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    PondFlags_WriteResourceHeader(*(void **)((int)this + 0xcc),param_1,0x137be1,param_3,param_4);
    if (*(char *)((int)param_1 + 0x14) != '\0') {
      iVar7 = *(int *)(*(int *)((int)this + 0xcc) + 0xc);
      bVar2 = FUN_004dde50(*(int **)((int)param_1 + 8),iVar7,
                           *(int *)(*(int *)((int)this + 0xcc) + 0x10) - iVar7);
      StreamReader_AccumulateStatus(param_1,bVar2);
    }
    ResourceStreamContext_Close(param_1);
    if (*(char *)((int)param_1 + 0x14) != '\0') {
      LotFloatGrid_WriteResourceHeader
                (*(void **)((int)this + 0xe4),param_1,0x958344,param_3,param_4);
      if (*(char *)((int)param_1 + 0x14) != '\0') {
        iVar7 = *(int *)(*(int *)((int)this + 0xe4) + 0xc);
        bVar2 = FUN_004dde50(*(int **)((int)param_1 + 8),iVar7,
                             *(int *)(*(int *)((int)this + 0xe4) + 0x10) - iVar7);
        StreamReader_AccumulateStatus(param_1,bVar2);
      }
      ResourceStreamContext_Close(param_1);
    }
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

