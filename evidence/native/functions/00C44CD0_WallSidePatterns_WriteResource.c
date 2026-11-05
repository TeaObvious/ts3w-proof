/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX owner; stream/key
   context/group/instance low/high RET14. Write B1422971 v4,count and hash traversal of 10-byte
   rows: section32, registered product key16, sideA16,sideB16. Row code0 resolves owner default
   key+78; nonzero via ordinal map+58; missing lookup uses global default. Native +6/+8 side storage
   is rearranged to serialized A/B order. Registration explicitly narrows to16. Sticky status and
   close. */

undefined1 __thiscall
WallSidePatterns_WriteResource
          (void *this,void *param_1,void *param_2,uint param_3,int param_4,undefined4 param_5)

{
  int iVar1;
  uint *puVar2;
  bool bVar3;
  byte bVar4;
  int *piVar5;
  uint *puVar6;
  uint uVar7;
  uint *puVar8;
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  local_10 = param_4;
  local_c = param_5;
  local_8 = 0xb1422971;
  local_4 = param_3;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (!bVar3) {
    return 0;
  }
  bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x24),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar4);
  piVar5 = *(int **)((int)this + 0x1c);
  puVar8 = (uint *)*piVar5;
  if (puVar8 == (uint *)0x0) {
    piVar5 = piVar5 + 1;
    iVar1 = *piVar5;
    while (iVar1 == 0) {
      piVar5 = piVar5 + 1;
      iVar1 = *piVar5;
    }
    puVar8 = (uint *)*piVar5;
  }
  puVar2 = *(uint **)(*(int *)((int)this + 0x1c) + *(int *)((int)this + 0x20) * 4);
  do {
    if (puVar8 == puVar2) {
      ResourceStreamContext_Close(param_1);
      return *(undefined1 *)((int)param_1 + 0x14);
    }
    bVar4 = FUN_004de060(*(int **)((int)param_1 + 8),*puVar8,*(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    param_3 = (uint)(ushort)puVar8[1];
    if (param_3 == 0) {
      puVar6 = (uint *)((int)this + 0x78);
LAB_00c44dd7:
      if (puVar6 == (uint *)0x0) goto LAB_00c44ddb;
    }
    else {
      FUN_009d6c30((void *)((int)this + 0x58),&param_4,&param_3);
      if (param_4 != *(int *)(*(int *)((int)this + 0x5c) + *(int *)((int)this + 0x60) * 4)) {
        puVar6 = (uint *)(param_4 + 8);
        goto LAB_00c44dd7;
      }
LAB_00c44ddb:
      puVar6 = &DAT_011ec8c0;
    }
    uVar7 = ResourceReferences_RegisterKey(param_2,puVar6,0);
    bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar7,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)puVar8[2],
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    bVar4 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),*(ushort *)((int)puVar8 + 6),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    for (puVar8 = (uint *)puVar8[3]; puVar8 == (uint *)0x0; puVar8 = (uint *)*puVar8) {
      puVar8 = (uint *)(piVar5 + 1);
      piVar5 = piVar5 + 1;
    }
  } while( true );
}

