/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX map, stream/context/group/instance
   low/high RET14. Open089132E8,version1,count; hash traversal writes three registeredUInt16 keys
   (diffuse,specular,preset),UInt32design ID,UInt32reference count:14-byte rows. Caller A66420
   supplies group913C61. No wall pattern key is present. */

undefined1 __thiscall
FenceDesignMap_WriteResource
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  byte bVar4;
  uint uVar5;
  int *piVar6;
  uint *puVar7;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_4;
  local_c = param_5;
  local_8 = 0x89132e8;
  local_4 = param_3;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (bVar3) {
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),1,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0xc),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    piVar1 = *(int **)((int)this + 4);
    puVar7 = (uint *)*piVar1;
    piVar6 = piVar1;
    if (puVar7 == (uint *)0x0) {
      piVar6 = piVar1 + 1;
      iVar2 = piVar1[1];
      while (iVar2 == 0) {
        piVar6 = piVar6 + 1;
        iVar2 = *piVar6;
      }
      puVar7 = (uint *)*piVar6;
    }
    if (puVar7 != (uint *)piVar1[*(int *)((int)this + 8)]) {
      do {
        uVar5 = ResourceReferences_RegisterKey(param_2,puVar7,0);
        bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar5,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        uVar5 = ResourceReferences_RegisterKey(param_2,puVar7 + 4,0);
        bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar5,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        uVar5 = ResourceReferences_RegisterKey(param_2,puVar7 + 8,0);
        bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar5,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),puVar7[0xc],
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),puVar7[0xd],
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        for (puVar7 = (uint *)puVar7[0xe]; puVar7 == (uint *)0x0; puVar7 = (uint *)*puVar7) {
          puVar7 = (uint *)(piVar6 + 1);
          piVar6 = piVar6 + 1;
        }
      } while (puVar7 != *(uint **)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4));
    }
    ResourceStreamContext_Close(param_1);
    return *(undefined1 *)((int)param_1 + 0x14);
  }
  return 0;
}

