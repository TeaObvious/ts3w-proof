/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 14h: reader, group, UInt64 instance,
   optional remap. Open resource type 05ED1226h for writing. Emit UInt16 version 3, normalized width
   Boolean, UInt32 key-map count; iterate hash-map rows, writing
   type32/group32/instanceLow32/instanceHigh32 and 16/32-bit handle. Optional remap substitutes
   matching keys. Emit UInt32 local-set count and UInt16 members. Close context and return status
   byte. Hash traversal does not promise original input-row order; commit/lifetime beyond this path
   remains open.
   
   Analyst note (PC1.67 SACS migration contract): ECX reference store; existing RET14 physical
   group/UInt64/context/remap ABI annotations retained. Writes version3,width flag,key-map
   count,T/G/instance keys and width-selected handles, local dependency set. Optional remap and hash
   traversal retained; current narrow ordinal array emission is a supported projection, not exact
   original traversal ordering.
   
   Analyst note (PC1.67 construction persistence contract): ECX owner RET14:
   stream,group,instanceLow/high,optional remap. Write version3,normalized width Boolean,UInt32 map
   count,T/G/I keys and context-width handles,UInt32 local-set count and UInt16 local handles. Hash
   traversal, key remap and sticky stream status differ from ordered narrow project append tables.
    */

bool __thiscall
ReferenceStore_WriteResource
          (void *this,void *reader,uint group,ulonglong instance,void *optionalKeyRemap)

{
  int *piVar1;
  int iVar2;
  uint *puVar3;
  uint value;
  ushort *puVar4;
  bool bVar5;
  byte bVar6;
  int *piVar7;
  uint *puVar8;
  ushort *puVar9;
  void *stream;
  uint *puVar10;
  uint endianFlag;
  ulonglong local_10;
  undefined4 local_8;
  uint local_4;
  
  local_8 = 0x5ed1226;
  local_4 = group;
  local_10 = instance;
  bVar5 = ResourceStreamContext_OpenWrite(reader,&local_10,1);
  if (bVar5) {
    bVar6 = Stream_WriteUInt16(*(void **)((int)reader + 8),3,*(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar6);
    bVar5 = Stream_WriteBoolean(*(void **)((int)reader + 8),*(byte *)((int)this + 0x82));
    StreamReader_AccumulateStatus(reader,bVar5);
    bVar6 = Stream_WriteUInt32(*(void **)((int)reader + 8),*(uint *)((int)this + 0xc),
                               *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar6);
    piVar1 = *(int **)((int)this + 4);
    puVar8 = (uint *)*piVar1;
    piVar7 = piVar1;
    if (puVar8 == (uint *)0x0) {
      piVar7 = piVar1 + 1;
      iVar2 = piVar1[1];
      while (iVar2 == 0) {
        piVar7 = piVar7 + 1;
        iVar2 = *piVar7;
      }
      puVar8 = (uint *)*piVar7;
    }
    puVar3 = (uint *)piVar1[*(int *)((int)this + 8)];
    while (puVar8 != puVar3) {
      value = puVar8[4];
      puVar10 = puVar8;
      if (optionalKeyRemap == (void *)0x0) {
        endianFlag = *(uint *)((int)reader + 0x10);
        stream = *(void **)((int)reader + 8);
      }
      else {
        FUN_0083b040(optionalKeyRemap,(undefined4 *)&instance,puVar8);
        if (*(int *)(*(int *)((int)optionalKeyRemap + 4) + *(int *)((int)optionalKeyRemap + 8) * 4)
            == (int)instance) {
          endianFlag = *(uint *)((int)reader + 0x10);
          stream = *(void **)((int)reader + 8);
        }
        else {
          endianFlag = *(uint *)((int)reader + 0x10);
          stream = *(void **)((int)reader + 8);
          puVar10 = (uint *)((int)instance + 0x10);
        }
      }
      bVar5 = Stream_WriteResourceKeyTGI(stream,puVar10,endianFlag);
      StreamReader_AccumulateStatus(reader,bVar5);
      if (*(char *)((int)this + 0x82) == '\0') {
        bVar6 = Stream_WriteUInt16(*(void **)((int)reader + 8),(ushort)value,
                                   *(uint *)((int)reader + 0x10));
      }
      else {
        bVar6 = Stream_WriteUInt32(*(void **)((int)reader + 8),value,*(uint *)((int)reader + 0x10));
      }
      StreamReader_AccumulateStatus(reader,bVar6);
      for (puVar8 = (uint *)puVar8[6]; puVar8 == (uint *)0x0; puVar8 = (uint *)*puVar8) {
        puVar8 = (uint *)(piVar7 + 1);
        piVar7 = piVar7 + 1;
      }
    }
    bVar6 = Stream_WriteUInt32(*(void **)((int)reader + 8),*(uint *)((int)this + 0x4c),
                               *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar6);
    piVar7 = *(int **)((int)this + 0x44);
    puVar9 = (ushort *)*piVar7;
    if (puVar9 == (ushort *)0x0) {
      piVar7 = piVar7 + 1;
      iVar2 = *piVar7;
      while (iVar2 == 0) {
        piVar7 = piVar7 + 1;
        iVar2 = *piVar7;
      }
      puVar9 = (ushort *)*piVar7;
    }
    puVar4 = *(ushort **)(*(int *)((int)this + 0x44) + *(int *)((int)this + 0x48) * 4);
    while (puVar9 != puVar4) {
      bVar6 = Stream_WriteUInt16(*(void **)((int)reader + 8),*puVar9,*(uint *)((int)reader + 0x10));
      StreamReader_AccumulateStatus(reader,bVar6);
      puVar9 = *(ushort **)(puVar9 + 2);
      while (puVar9 == (ushort *)0x0) {
        piVar1 = piVar7 + 1;
        piVar7 = piVar7 + 1;
        puVar9 = (ushort *)*piVar1;
      }
    }
    ResourceStreamContext_Close(reader);
    return (bool)*(undefined1 *)((int)reader + 0x14);
  }
  return false;
}

