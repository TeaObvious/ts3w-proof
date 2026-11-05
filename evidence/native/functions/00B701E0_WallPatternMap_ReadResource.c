/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX map, five stack words RET14. Clear
   both maps before openF12E5E12. Readversion,inline defaultkey,count. Belowv2 rowkey inline; fromv2
   use resource-table context width. Follow withUInt32ordinal/refcount and publish key/ordinal maps.
   Unsigned counted loop continues after sticky failures; close and returnAL. No current v2-only or
   partial-row admission policy is implied. */

undefined1 __thiscall
WallPatternMap_ReadResource
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  bool bVar1;
  uint *puVar2;
  uint uVar3;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  uint local_24;
  uint local_20;
  uint local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  FUN_009d67f0(*(int *)((int)this + 4),*(uint *)((int)this + 8));
  uVar3 = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  FUN_009d67f0(*(int *)((int)this + 0x24),*(uint *)((int)this + 0x28));
  local_18 = param_4;
  *(undefined4 *)((int)this + 0x2c) = 0;
  local_14 = param_5;
  local_10 = 0xf12e5e12;
  local_c = param_3;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_18,0);
  if (!bVar1) {
    return 0;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_34,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadResourceKeyTGI
                    (*(void **)((int)param_1 + 8),(void *)((int)this + 0x40),
                     *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_38,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  local_28 = 0;
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  if (local_38 != 0) {
    do {
      if (local_34 < 2) {
        bVar1 = Stream_ReadResourceKeyTGI
                          (*(void **)((int)param_1 + 8),&local_28,*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
      }
      else {
        ResourceReferences_ReadContextKey(param_2,param_1,&local_28);
      }
      bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_30,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_2c,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      puVar2 = (uint *)FUN_00b4b9c0(this,&local_28);
      *puVar2 = local_30;
      puVar2[1] = local_2c;
      puVar2 = (uint *)FUN_005b8b00((void *)((int)this + 0x20),&local_30);
      *puVar2 = local_28;
      puVar2[1] = local_24;
      puVar2[2] = local_20;
      uVar3 = uVar3 + 1;
      puVar2[3] = local_1c;
    } while (uVar3 < local_38);
  }
  ResourceStreamContext_Close(param_1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

