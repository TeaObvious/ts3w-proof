/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name, original PC 1.67 TS3W.exe. Writes exact TerrainSizeInfo key 90624C1B:0:1.
   Hardcodes UInt16 version 14, then writes world origins, tile counts, manager-count word, four
   terrain auxiliary UInt32 words and the +164 bool byte. Complements reader 00C65D30; for modern
   13/14 the serialized field widths sum to 39 bytes. Array/object roles outside these fields and
   indirect-call ABI remain inferred. */

undefined4 __thiscall WorldManager_WriteTerrainSizeInfo(void *this,void *resourceWriter)

{
  int iVar1;
  int iVar2;
  void *this_00;
  bool bVar3;
  byte bVar4;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 uVar5;
  uint local_18;
  uint local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = 1;
  local_c = 0;
  local_8 = 0x90624c1b;
  local_4 = 0;
  bVar3 = ResourceStreamContext_OpenWrite(resourceWriter,&local_10,1);
  uVar5 = extraout_var;
  if (bVar3) {
    iVar1 = *(int *)((int)this + 0x104);
    iVar2 = *(int *)((int)this + 0x100);
                    /* Writer hardcodes version 14 via the UInt16 serialization helper 004DDE70. It
                       does not preserve the version of the imported world. */
    bVar4 = Stream_WriteUInt16(*(void **)((int)resourceWriter + 8),0xe,
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0xb4),
                         *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = FUN_004de390(*(int **)((int)resourceWriter + 8),*(undefined4 *)((int)this + 0xb8),
                         *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),*(uint *)((int)this + 0xcc),
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),*(uint *)((int)this + 0xd0),
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),iVar1 - iVar2 >> 2,
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    this_00 = *(void **)(*(int *)((int)this + 0x58) + 0x68);
    FUN_00c22b70(this_00,0,&local_18);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),local_18,
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),local_14,
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    FUN_00c22b70(this_00,1,&local_18);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),local_18,
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)resourceWriter + 8),local_14,
                               *(uint *)((int)resourceWriter + 0x10));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    bVar4 = Stream_WriteByte(*(undefined **)((int)resourceWriter + 8),*(byte *)((int)this + 0x164));
    StreamReader_AccumulateStatus(resourceWriter,bVar4);
    ResourceStreamContext_Close(resourceWriter);
    uVar5 = extraout_var_00;
  }
  return CONCAT31(uVar5,*(undefined1 *)((int)resourceWriter + 0x14));
}

