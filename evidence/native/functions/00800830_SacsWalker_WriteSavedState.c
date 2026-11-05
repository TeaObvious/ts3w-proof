/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  undefined3 extraout_var;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 uVar7;
  
  bVar2 = FUN_00800370((int)this);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)CONCAT31(extraout_var,bVar2),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),1);
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),
                           ((char)(*(int *)((int)this + 0x50) - *(int *)((int)this + 0x40) >> 2) +
                           -1) * ' ' +
                           (char)(*(int *)((int)this + 0x44) - *(int *)((int)this + 0x48) >> 3) +
                           (char)(*(int *)((int)this + 0x3c) - *(int *)((int)this + 0x34) >> 3));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar7 = 0;
  uVar5 = 0;
  iVar3 = FUN_00581870(*(void **)((int)this + 8),'\0');
  if (iVar3 != 0) {
    iVar3 = FUN_00581870(*(void **)((int)this + 8),'\0');
    uVar5 = *(undefined4 *)(iVar3 + 8);
    uVar7 = *(undefined4 *)(iVar3 + 0xc);
  }
  bVar2 = FUN_004de0c0(*(int **)((int)param_1 + 8),
                       CONCAT26((short)((uint)uVar7 >> 0x10),CONCAT24((short)uVar7,uVar5)),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = 0;
  for (puVar1 = *(undefined4 **)((int)this + 0x58); puVar1 != (undefined4 *)((int)this + 0x58);
      puVar1 = (undefined4 *)*puVar1) {
    bVar2 = bVar2 + 1;
  }
  bVar2 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),bVar2);
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),0);
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),0);
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),0);
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (*(int *)((int)this + 0x10) != 0) {
    uVar6 = *(uint *)(*(int *)((int)this + 0x10) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar6,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (*(int *)((int)this + 0x14) != 0) {
    uVar6 = *(uint *)(*(int *)((int)this + 0x14) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar6,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (*(int *)((int)this + 0x18) != 0) {
    uVar6 = *(uint *)(*(int *)((int)this + 0x18) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar6,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (*(int *)((int)this + 0x1c) != 0) {
    uVar6 = *(uint *)(*(int *)((int)this + 0x1c) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar6,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (*(int *)((int)this + 0x28) != 0) {
    uVar6 = *(uint *)(*(int *)((int)this + 0x28) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar6,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x20),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (*(int *)((int)this + 0x24) != 0) {
    uVar6 = *(uint *)(*(int *)((int)this + 0x24) + 0x28);
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar6,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x6c),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  uVar6 = 0;
  if (((*(int *)((int)this + 0x50) - *(int *)((int)this + 0x40) >> 2) + -1) * 0x20 +
      (*(int *)((int)this + 0x44) - *(int *)((int)this + 0x48) >> 3) +
      (*(int *)((int)this + 0x3c) - *(int *)((int)this + 0x34) >> 3) != 0) {
    do {
      iVar4 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x38) >> 3) + uVar6;
      iVar3 = iVar4 + 0x1000000;
      iVar3 = ((int)(iVar3 + (iVar3 >> 0x1f & 0x1fU)) >> 5) + -0x80000;
      bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                                 *(uint *)(*(int *)(*(int *)(*(int *)((int)this + 0x40) + iVar3 * 4)
                                                    + 4 + (iVar4 + iVar3 * -0x20) * 8) + 0x28),
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      iVar4 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x38) >> 3) + uVar6;
      iVar3 = iVar4 + 0x1000000;
      iVar3 = ((int)(iVar3 + (iVar3 >> 0x1f & 0x1fU)) >> 5) + -0x80000;
      bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                                 *(uint *)(*(int *)(*(int *)((int)this + 0x40) + iVar3 * 4) +
                                          (iVar4 + iVar3 * -0x20) * 8),
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar2);
      uVar6 = uVar6 + 1;
    } while (uVar6 < (uint)(((*(int *)((int)this + 0x50) - *(int *)((int)this + 0x40) >> 2) + -1) *
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

