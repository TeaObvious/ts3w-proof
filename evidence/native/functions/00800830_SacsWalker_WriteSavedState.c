/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX walker; RET0C consumes three physical words
   despite inferred two-argument C. Writes packed u16 flags from00800370, version/count bytes,
   two-word actor GUID, state hashes including current/previous/retained/pending/return, request
   flags/destination/status and queued entries. Delegates native clip and controller-tail
   serialization. Native queued/active state is not unconditionally zero; current quiescent writer
   is a subset. Stream status and callback/object-table child policy remain bounded. */

void __thiscall SacsWalker_WriteSavedState(void *this,void *param_1,int *param_2)

{
  undefined4 *puVar1;
  byte bVar2;
  bool bVar3;
  undefined3 extraout_var;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  undefined4 uVar8;
  
  bVar2 = FUN_00800370((int)this);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)CONCAT31(extraout_var,bVar2),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  uVar8 = 0;
  uVar6 = 0;
  iVar4 = FUN_00581870(*(void **)((int)this + 8),'\0');
  if (iVar4 != 0) {
    iVar4 = FUN_00581870(*(void **)((int)this + 8),'\0');
    uVar6 = *(undefined4 *)(iVar4 + 8);
    uVar8 = *(undefined4 *)(iVar4 + 0xc);
  }
  bVar2 = FUN_004de0c0(*(int **)((int)param_1 + 8),
                       CONCAT26((short)((uint)uVar8 >> 0x10),CONCAT24((short)uVar8,uVar6)),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  for (puVar1 = *(undefined4 **)((int)this + 0x58); puVar1 != (undefined4 *)((int)this + 0x58);
      puVar1 = (undefined4 *)*puVar1) {
  }
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  uVar7 = 0;
  if (*(int *)((int)this + 0x10) != 0) {
    uVar7 = *(uint *)(*(int *)((int)this + 0x10) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  if (*(int *)((int)this + 0x14) != 0) {
    uVar7 = *(uint *)(*(int *)((int)this + 0x14) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  if (*(int *)((int)this + 0x18) != 0) {
    uVar7 = *(uint *)(*(int *)((int)this + 0x18) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  if (*(int *)((int)this + 0x1c) != 0) {
    uVar7 = *(uint *)(*(int *)((int)this + 0x1c) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  if (*(int *)((int)this + 0x28) != 0) {
    uVar7 = *(uint *)(*(int *)((int)this + 0x28) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x20),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  if (*(int *)((int)this + 0x24) != 0) {
    uVar7 = *(uint *)(*(int *)((int)this + 0x24) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar7,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x6c),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  if (((*(int *)((int)this + 0x50) - *(int *)((int)this + 0x40) >> 2) + -1) * 0x20 +
      (*(int *)((int)this + 0x44) - *(int *)((int)this + 0x48) >> 3) +
      (*(int *)((int)this + 0x3c) - *(int *)((int)this + 0x34) >> 3) != 0) {
    do {
      iVar5 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x38) >> 3) + uVar7;
      iVar4 = iVar5 + 0x1000000;
      iVar4 = ((int)(iVar4 + (iVar4 >> 0x1f & 0x1fU)) >> 5) + -0x80000;
      bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                                 *(uint *)(*(int *)(*(int *)(*(int *)((int)this + 0x40) + iVar4 * 4)
                                                    + 4 + (iVar5 + iVar4 * -0x20) * 8) + 0x28),
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      iVar5 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x38) >> 3) + uVar7;
      iVar4 = iVar5 + 0x1000000;
      iVar4 = ((int)(iVar4 + (iVar4 >> 0x1f & 0x1fU)) >> 5) + -0x80000;
      bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                                 *(uint *)(*(int *)(*(int *)((int)this + 0x40) + iVar4 * 4) +
                                          (iVar5 + iVar4 * -0x20) * 8),
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      uVar7 = uVar7 + 1;
    } while (uVar7 < (uint)(((*(int *)((int)this + 0x50) - *(int *)((int)this + 0x40) >> 2) + -1) *
                            0x20 + (*(int *)((int)this + 0x3c) - *(int *)((int)this + 0x34) >> 3) +
                           (*(int *)((int)this + 0x44) - *(int *)((int)this + 0x48) >> 3)));
  }
  for (puVar1 = *(undefined4 **)((int)this + 0x58); puVar1 != (undefined4 *)((int)this + 0x58);
      puVar1 = (undefined4 *)*puVar1) {
    FUN_007692a0((void *)puVar1[2],param_1,param_2);
  }
  SacsControllerTracks_WriteSavedTail(*(void **)((int)this + 100),param_1);
  return;
}

