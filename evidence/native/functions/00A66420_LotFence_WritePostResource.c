/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original lot fence writer: emits the design-map dependency first (group 0x00913C61), then post
   resource type 0x913381F2, group 0, version 4, count, level/X/Z and UInt16 key handle/design ID.
   Version/group-zero values and runtime record stride 40 bytes are decimal. Closes before returning
   sticky status in AL.
   
   Analyst note (PC1.67 construction persistence contract): ECX owner. First call B146F0 design-map
   writer group913C61, then open913381F2 group0, writeversion4,count and each signed32
   level,binary32 X/Z,registeredUInt16 product key,UInt16design ID. Runtime40-byte stride is not
   wire16-byte stride. Native never chooses v2 at save time. Close and AL status. */

undefined1 __thiscall
LotFence_WritePostResource
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 *puVar1;
  bool bVar2;
  byte bVar3;
  uint uVar4;
  undefined4 *puVar5;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  FenceDesignMap_WriteResource
            (*(void **)((int)this + 0x18),param_1,param_2,0x913c61,param_3,param_4);
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x913381f2;
  local_4 = 0;
  bVar2 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (!bVar2) {
    return 0;
  }
  bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                             (*(int *)((int)this + 8) - *(int *)((int)this + 4)) / 0x28,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
  puVar1 = *(undefined4 **)((int)this + 8);
  for (puVar5 = *(undefined4 **)((int)this + 4); puVar5 != puVar1; puVar5 = puVar5 + 10) {
    bVar3 = FUN_004de060(*(int **)((int)param_1 + 8),puVar5[2],*(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = FUN_004de390(*(int **)((int)param_1 + 8),*puVar5,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = FUN_004de390(*(int **)((int)param_1 + 8),puVar5[1],*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    uVar4 = ResourceReferences_RegisterKey(param_2,puVar5 + 4,0);
    bVar3 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar4,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),*(ushort *)(puVar5 + 8),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
  }
  ResourceStreamContext_Close(param_1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

