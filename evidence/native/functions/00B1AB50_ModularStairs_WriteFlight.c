/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX manager,stream,keycontext,flight
   RET0C. WriteUInt32ID,four registeredUInt16keyhandles,UInt64linkedobject,UInt32direction,two
   X/Z/level triples,UInt32railing count. Actual count comes from (vectorEnd-vectorBegin)>>2;
   decompiler CONCAT22 is alias propagation, not an authored packing format. Loop each railing ID
   and callB18BE0. Fixed narrow wire prefix52bytes; railing output20bytes. Current2-railing guard is
   a project limit. */

void __thiscall ModularStairs_WriteFlight(void *this,void *param_1,void *param_2,uint *param_3)

{
  uint *puVar1;
  byte bVar2;
  uint uVar3;
  uint *puVar4;
  uint local_80 [2];
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68 [13];
  float local_34;
  float local_30;
  undefined4 local_2c;
  float local_28;
  float local_24;
  undefined4 local_20;
  void *local_1c;
  undefined4 local_18;
  undefined4 local_14;
  char *local_10;
  undefined4 local_8;
  undefined4 local_4;
  
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*param_3,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar3 = ResourceReferences_RegisterKey(param_2,param_3 + 2,0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar3,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar3 = ResourceReferences_RegisterKey(param_2,param_3 + 6,0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar3,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar3 = ResourceReferences_RegisterKey(param_2,param_3 + 10,0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar3,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar3 = ResourceReferences_RegisterKey(param_2,param_3 + 0xe,0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar3,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de0c0(*(int **)((int)param_1 + 8),
                       CONCAT26((short)(param_3[0x1f] >> 0x10),*(undefined6 *)(param_3 + 0x1e)),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),param_3[0x12],
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de390(*(int **)((int)param_1 + 8),param_3[0x13],*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de390(*(int **)((int)param_1 + 8),param_3[0x14],*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),param_3[0x15],*(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de390(*(int **)((int)param_1 + 8),param_3[0x16],*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de390(*(int **)((int)param_1 + 8),param_3[0x17],*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),param_3[0x18],*(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                             CONCAT22((short)((int)(param_3[0x1a] - param_3[0x19]) >> 0x12),
                                      (short)((int)(param_3[0x1a] - param_3[0x19]) >> 2)),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  if (*(void **)((int)this + 0x18) != (void *)0x0) {
    FUN_00ab09c0(*(void **)((int)this + 0x18),param_3 + 6);
    FUN_00ab09c0(*(void **)((int)this + 0x18),param_3 + 10);
    FUN_00ab09f0(*(void **)((int)this + 0x18),param_3 + 0xe);
  }
  puVar1 = (uint *)param_3[0x1a];
  for (puVar4 = (uint *)param_3[0x19]; puVar4 != puVar1; puVar4 = puVar4 + 1) {
    local_80[0] = *puVar4;
    local_78 = 0;
    local_74 = 0;
    local_70 = 0;
    local_6c = 0;
    FUN_00afbba0(local_68);
    local_34 = FLOAT_00fab218;
    local_30 = FLOAT_00fab218;
    local_2c = 0;
    local_28 = FLOAT_00fab218;
    local_24 = FLOAT_00fab218;
    local_20 = 0;
    local_1c = (void *)0x0;
    local_18 = 0;
    local_14 = 0;
    local_10 = "Lot/ModularStairs/Manager";
    local_8 = 0;
    local_4 = 0;
    ModularStairs_WriteRailing(this,param_1,param_2,local_80);
    if (local_1c != (void *)0x0) {
      Memory_FreeIfNonNull(local_1c);
    }
  }
  return;
}

