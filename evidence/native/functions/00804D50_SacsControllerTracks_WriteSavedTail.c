/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): ECX controller-listener/track state; RET8. Writes
   version/flag/count byte header and native track records including two-word object IDs and
   per-state pairs; final dword follows. Native bound-object branch influences tail flag. Current
   writer emits empty tracks and a GUID-derived flag only; exact full track/object restoration
   remains bounded. */

undefined1 __thiscall SacsControllerTracks_WriteSavedTail(void *this,void *param_1)

{
  char cVar1;
  undefined8 *puVar2;
  uint *puVar3;
  void *this_00;
  byte bVar4;
  int iVar5;
  int iVar6;
  undefined8 *puVar7;
  uint *puVar8;
  void *pvVar9;
  uint uVar10;
  uint uVar11;
  byte local_c;
  
  this_00 = param_1;
  cVar1 = *(char *)((int)this + 0x1c);
  bVar4 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),0);
  StreamReader_AccumulateStatus(param_1,bVar4);
  bVar4 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),cVar1 == '\x01');
  StreamReader_AccumulateStatus(param_1,bVar4);
  bVar4 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),0);
  StreamReader_AccumulateStatus(param_1,bVar4);
  bVar4 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),
                           (byte)((*(int *)((int)this + 8) - *(int *)((int)this + 4)) / 0x18));
  StreamReader_AccumulateStatus(param_1,bVar4);
  puVar2 = *(undefined8 **)((int)this + 8);
  for (puVar7 = *(undefined8 **)((int)this + 4); puVar7 != puVar2; puVar7 = puVar7 + 3) {
    bVar4 = FUN_004de0c0(*(int **)((int)this_00 + 8),*puVar7,*(int *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),*(uint *)(puVar7 + 1),
                               *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar4);
    param_1._0_1_ = *(char *)((int)puVar7 + 0xe) != '\0';
    if (*(char *)((int)puVar7 + 0xd) != '\0') {
      param_1._0_1_ = (byte)param_1 | 2;
    }
    if (*(char *)((int)puVar7 + 0xf) == '\0') {
      param_1._0_1_ = (byte)param_1 | 4;
    }
    bVar4 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),(byte)param_1);
    StreamReader_AccumulateStatus(this_00,bVar4);
    bVar4 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),0);
    StreamReader_AccumulateStatus(this_00,bVar4);
    bVar4 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),0);
    StreamReader_AccumulateStatus(this_00,bVar4);
    iVar5 = *(int *)(puVar7 + 2);
    local_c = 0;
    if (iVar5 != 0) {
      local_c = (byte)(*(int *)(iVar5 + 0xc) - *(int *)(iVar5 + 8) >> 3);
    }
    bVar4 = Stream_WriteByte(*(undefined **)((int)this_00 + 8),local_c);
    StreamReader_AccumulateStatus(this_00,bVar4);
    if (local_c != 0) {
      puVar3 = *(uint **)(*(int *)(puVar7 + 2) + 0xc);
      for (puVar8 = *(uint **)(*(int *)(puVar7 + 2) + 8); puVar8 != puVar3; puVar8 = puVar8 + 2) {
        bVar4 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),*puVar8,
                                   *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar4);
        iVar5 = FUN_008003d0(*(void **)(*(int *)((int)this + 0x18) + 4),puVar8[1]);
        if (iVar5 == 0) {
          uVar10 = *(uint *)((int)this_00 + 0x10);
          pvVar9 = *(void **)((int)this_00 + 8);
          uVar11 = 0;
        }
        else {
          uVar10 = *(uint *)((int)this_00 + 0x10);
          uVar11 = *(uint *)(*(int *)(iVar5 + 0x20) + 0x2c);
          pvVar9 = *(void **)((int)this_00 + 8);
        }
        bVar4 = Stream_WriteUInt32(pvVar9,uVar11,uVar10);
        StreamReader_AccumulateStatus(this_00,bVar4);
      }
    }
  }
  iVar6 = *(int *)((int)this + 8) - *(int *)((int)this + 4);
  iVar5 = iVar6 >> 0x1f;
  if (iVar6 / 0x18 + iVar5 == iVar5) {
    uVar10 = *(uint *)((int)this_00 + 0x10);
    pvVar9 = *(void **)((int)this_00 + 8);
    uVar11 = 0;
  }
  else {
    uVar10 = *(uint *)((int)this_00 + 0x10);
    uVar11 = *(uint *)((int)this + 0x14);
    pvVar9 = *(void **)((int)this_00 + 8);
  }
  bVar4 = Stream_WriteUInt32(pvVar9,uVar11,uVar10);
  StreamReader_AccumulateStatus(this_00,bVar4);
  return *(undefined1 *)((int)this_00 + 0x14);
}

