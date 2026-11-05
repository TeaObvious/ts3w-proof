/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX controller-listener/track state; RET8. Writes
   version/flag/count byte header and native track records including two-word object IDs and
   per-state pairs; final dword follows. Native bound-object branch influences tail flag. Current
   writer emits empty tracks and a GUID-derived flag only; exact full track/object restoration
   remains bounded. */

undefined1 __thiscall SacsControllerTracks_WriteSavedTail(void *this,void *param_1)

{
  undefined8 *puVar1;
  uint *puVar2;
  bool bVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  undefined8 *puVar7;
  uint *puVar8;
  void *pvVar9;
  uint uVar10;
  uint uVar11;
  char local_c;
  
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
  StreamReader_AccumulateStatus(param_1,bVar3);
  puVar1 = *(undefined8 **)((int)this + 8);
  for (puVar7 = *(undefined8 **)((int)this + 4); puVar7 != puVar1; puVar7 = puVar7 + 3) {
    bVar4 = FUN_004de0c0(*(int **)((int)param_1 + 8),*puVar7,*(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)(puVar7 + 1),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
    StreamReader_AccumulateStatus(param_1,bVar3);
    iVar5 = *(int *)(puVar7 + 2);
    local_c = '\0';
    if (iVar5 != 0) {
      local_c = (char)(*(int *)(iVar5 + 0xc) - *(int *)(iVar5 + 8) >> 3);
    }
    bVar3 = FUN_004dde30(*(int **)((int)param_1 + 8));
    StreamReader_AccumulateStatus(param_1,bVar3);
    if (local_c != '\0') {
      puVar2 = *(uint **)(*(int *)(puVar7 + 2) + 0xc);
      for (puVar8 = *(uint **)(*(int *)(puVar7 + 2) + 8); puVar8 != puVar2; puVar8 = puVar8 + 2) {
        bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*puVar8,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar4);
        iVar5 = FUN_008003d0(*(void **)(*(int *)((int)this + 0x18) + 4),puVar8[1]);
        if (iVar5 == 0) {
          uVar10 = *(uint *)((int)param_1 + 0x10);
          pvVar9 = *(void **)((int)param_1 + 8);
          uVar11 = 0;
        }
        else {
          uVar10 = *(uint *)((int)param_1 + 0x10);
          uVar11 = *(uint *)(*(int *)(iVar5 + 0x20) + 0x2c);
          pvVar9 = *(void **)((int)param_1 + 8);
        }
        bVar4 = Stream_WriteUInt32(pvVar9,uVar11,uVar10);
        StreamReader_AccumulateStatus(param_1,bVar4);
      }
    }
  }
  iVar6 = *(int *)((int)this + 8) - *(int *)((int)this + 4);
  iVar5 = iVar6 >> 0x1f;
  if (iVar6 / 0x18 + iVar5 == iVar5) {
    uVar10 = *(uint *)((int)param_1 + 0x10);
    pvVar9 = *(void **)((int)param_1 + 8);
    uVar11 = 0;
  }
  else {
    uVar10 = *(uint *)((int)param_1 + 0x10);
    uVar11 = *(uint *)((int)this + 0x14);
    pvVar9 = *(void **)((int)param_1 + 8);
  }
  bVar4 = Stream_WriteUInt32(pvVar9,uVar11,uVar10);
  StreamReader_AccumulateStatus(param_1,bVar4);
  return *(undefined1 *)((int)param_1 + 0x14);
}

