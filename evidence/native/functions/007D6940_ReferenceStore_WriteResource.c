/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  uint *puVar2;
  uint uVar3;
  int iVar4;
  ushort *puVar5;
  bool bVar6;
  byte bVar7;
  uint *puVar8;
  int *piVar9;
  uint *puVar10;
  ushort *puVar11;
  void *stream;
  uint *puVar12;
  uint endianFlag;
  ulonglong local_10;
  undefined4 local_8;
  uint local_4;
  
  local_8 = 0x5ed1226;
  local_4 = group;
  local_10 = instance;
  bVar6 = ResourceStreamContext_OpenWrite(reader,&local_10,1);
  if (bVar6) {
    bVar7 = Stream_WriteUInt16(*(void **)((int)reader + 8),3,*(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar7);
    bVar6 = Stream_WriteBoolean(*(void **)((int)reader + 8),*(byte *)((int)this + 0x82));
    StreamReader_AccumulateStatus(reader,bVar6);
    bVar7 = Stream_WriteUInt32(*(void **)((int)reader + 8),*(uint *)((int)this + 0xc),
                               *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar7);
    puVar2 = *(uint **)((int)this + 4);
    puVar10 = (uint *)*puVar2;
    puVar8 = puVar2;
    if (puVar10 == (uint *)0x0) {
      puVar8 = puVar2 + 1;
      uVar3 = puVar2[1];
      while (uVar3 == 0) {
        puVar8 = puVar8 + 1;
        uVar3 = *puVar8;
      }
      puVar10 = (uint *)*puVar8;
    }
    puVar2 = (uint *)puVar2[*(int *)((int)this + 8)];
    if (puVar10 != puVar2) {
      do {
        uVar3 = puVar10[4];
        puVar12 = puVar10;
        if (optionalKeyRemap == (void *)0x0) {
          endianFlag = *(uint *)((int)reader + 0x10);
          stream = *(void **)((int)reader + 8);
        }
        else {
          DbpfIndex_FindIterator(optionalKeyRemap,(undefined4 *)&instance,puVar10);
          if (*(int *)(*(int *)((int)optionalKeyRemap + 4) + *(int *)((int)optionalKeyRemap + 8) * 4
                      ) == (int)instance) {
            endianFlag = *(uint *)((int)reader + 0x10);
            stream = *(void **)((int)reader + 8);
          }
          else {
            endianFlag = *(uint *)((int)reader + 0x10);
            stream = *(void **)((int)reader + 8);
            puVar12 = (uint *)((int)instance + 0x10);
          }
        }
        bVar6 = Stream_WriteResourceKeyTGI(stream,puVar12,endianFlag);
        StreamReader_AccumulateStatus(reader,bVar6);
        if (*(char *)((int)this + 0x82) == '\0') {
          bVar7 = Stream_WriteUInt16(*(void **)((int)reader + 8),(ushort)uVar3,
                                     *(uint *)((int)reader + 0x10));
        }
        else {
          bVar7 = Stream_WriteUInt32(*(void **)((int)reader + 8),uVar3,*(uint *)((int)reader + 0x10)
                                    );
        }
        StreamReader_AccumulateStatus(reader,bVar7);
        for (puVar10 = (uint *)puVar10[6]; puVar10 == (uint *)0x0; puVar10 = (uint *)*puVar10) {
          puVar10 = puVar8 + 1;
          puVar8 = puVar8 + 1;
        }
      } while (puVar10 != puVar2);
    }
    bVar7 = Stream_WriteUInt32(*(void **)((int)reader + 8),*(uint *)((int)this + 0x4c),
                               *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar7);
    piVar9 = *(int **)((int)this + 0x44);
    puVar11 = (ushort *)*piVar9;
    if (puVar11 == (ushort *)0x0) {
      piVar9 = piVar9 + 1;
      iVar4 = *piVar9;
      while (iVar4 == 0) {
        piVar9 = piVar9 + 1;
        iVar4 = *piVar9;
      }
      puVar11 = (ushort *)*piVar9;
    }
    puVar5 = *(ushort **)(*(int *)((int)this + 0x44) + *(int *)((int)this + 0x48) * 4);
    if (puVar11 != puVar5) {
      do {
        bVar7 = Stream_WriteUInt16(*(void **)((int)reader + 8),*puVar11,
                                   *(uint *)((int)reader + 0x10));
        StreamReader_AccumulateStatus(reader,bVar7);
        puVar11 = *(ushort **)(puVar11 + 2);
        while (puVar11 == (ushort *)0x0) {
          piVar1 = piVar9 + 1;
          piVar9 = piVar9 + 1;
          puVar11 = (ushort *)*piVar1;
        }
      } while (puVar11 != puVar5);
    }
    ResourceStreamContext_Close(reader);
    return (bool)*(undefined1 *)((int)reader + 0x14);
  }
  return false;
}

