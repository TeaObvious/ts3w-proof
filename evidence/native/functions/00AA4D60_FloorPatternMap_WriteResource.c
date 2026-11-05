/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX owner; stream/key
   context/group/instance low/high RET14. Open0553EAD4, write version4, inline default T/G/I
   key,count, hash traversal with four registered UInt16 keys followed by UInt32 ordinal/refcount
   (16-byte rows). Native writer always4, independent from loaded source version; sticky failures
   accumulate, close, AL result. */

undefined1 __thiscall
FloorPatternMap_WriteResource
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
  local_8 = 0x553ead4;
  local_4 = param_3;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (!bVar3) {
    return 0;
  }
  bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  bVar3 = Stream_WriteResourceKeyTGI
                    (*(void **)((int)param_1 + 8),(void *)((int)this + 0x40),
                     *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar3);
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
      uVar5 = ResourceReferences_RegisterKey(param_2,puVar7 + 0xc,0);
      bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar5,
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar4);
      bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),puVar7[0x10],
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar4);
      bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),puVar7[0x11],
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar4);
      for (puVar7 = (uint *)puVar7[0x12]; puVar7 == (uint *)0x0; puVar7 = (uint *)*puVar7) {
        puVar7 = (uint *)(piVar6 + 1);
        piVar6 = piVar6 + 1;
      }
    } while (puVar7 != *(uint **)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4));
  }
  ResourceStreamContext_Close(param_1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

