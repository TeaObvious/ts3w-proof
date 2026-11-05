/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX manager,stream,keycontext,railingID
   record RET0C. WriteUInt32ID; lookup existing railing map+3C. Missing lookup retains null/default
   resource keys and coordinate defaults; found copies full runtime record. Emit four
   registeredUInt16keys followed byX/Zbinary32, total20bytes. Additional design dependency
   notifications occur when manager+18 exists. Project writes supplied resolved railing values and
   does not reproduce this runtime lookup/default/dependency mechanism. */

void __thiscall ModularStairs_WriteRailing(void *this,void *param_1,void *param_2,uint *param_3)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  uint *puVar4;
  uint *puVar5;
  int local_58 [2];
  uint local_50 [4];
  float local_40;
  float local_3c;
  undefined4 local_38;
  uint local_30 [4];
  uint local_20 [4];
  uint local_10 [4];
  
  local_50[0] = 0;
  local_50[1] = 0;
  local_50[2] = 0;
  local_50[3] = 0;
  local_40 = FLOAT_00fab218;
  local_3c = FLOAT_00fab218;
  local_38 = 0;
  FUN_00afbba0(local_30);
  puVar4 = param_3;
  bVar1 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*param_3,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  param_3 = (uint *)*puVar4;
  FUN_00b17b80((void *)((int)this + 0x3c),local_58,(uint *)&param_3);
  if (local_58[0] != *(int *)(*(int *)((int)this + 0x40) + *(int *)((int)this + 0x44) * 4)) {
    puVar4 = (uint *)(local_58[0] + 8);
    puVar5 = local_50;
    for (iVar3 = 0x14; iVar3 != 0; iVar3 = iVar3 + -1) {
      *puVar5 = *puVar4;
      puVar4 = puVar4 + 1;
      puVar5 = puVar5 + 1;
    }
  }
  uVar2 = ResourceReferences_RegisterKey(param_2,local_50,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar2,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  uVar2 = ResourceReferences_RegisterKey(param_2,local_30,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar2,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  uVar2 = ResourceReferences_RegisterKey(param_2,local_20,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar2,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  uVar2 = ResourceReferences_RegisterKey(param_2,local_10,0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar2,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = FUN_004de390(*(int **)((int)param_1 + 8),local_40,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = FUN_004de390(*(int **)((int)param_1 + 8),local_3c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  if (*(void **)((int)this + 0x18) != (void *)0x0) {
    FUN_00ab09c0(*(void **)((int)this + 0x18),local_30);
    FUN_00ab09c0(*(void **)((int)this + 0x18),local_20);
    FUN_00ab09f0(*(void **)((int)this + 0x18),local_10);
  }
  return;
}

