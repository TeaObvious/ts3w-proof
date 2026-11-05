/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 stdcall callback three stackwords RET0C throughA761F6. group
   pointer/context/object-index-table; writes groupID32/countbyte then converts EVERY uint64 GUID
   via934840 and writes full uint32 index array4DE0B0. Same version1 as direct save, selected by
   export caller not a version bit. Complete original231byte Listing; no original bytes changed. */

void FireplaceGroups_WriteExportGroup(undefined *group,undefined *context,undefined *objectIndices)

{
  int *piVar1;
  undefined *puVar2;
  undefined *this;
  int *piVar3;
  byte bVar4;
  undefined4 uVar5;
  int *piVar6;
  int iVar7;
  uint *puStack_10;
  int *piStack_c;
  int *piStack_8;
  char *pcStack_4;
  
  this = context;
  puVar2 = group;
  bVar4 = Stream_WriteUInt32(*(void **)(context + 8),*(uint *)group,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(this,bVar4);
  iVar7 = *(int *)(puVar2 + 8) - *(int *)(puVar2 + 4) >> 3;
  bVar4 = Stream_WriteByte(*(undefined **)(this + 8),(byte)iVar7);
  StreamReader_AccumulateStatus(this,bVar4);
  piVar6 = *(int **)(puVar2 + 4);
  piVar1 = *(int **)(puVar2 + 8);
  puStack_10 = (uint *)0x0;
  piStack_c = (int *)0x0;
  piStack_8 = (int *)0x0;
  pcStack_4 = "Scratch/FireplaceManager/ExportFireplaceRecord/ObjectIdIndices";
  for (; piVar6 != piVar1; piVar6 = piVar6 + 2) {
    group = (undefined *)FUN_00934840(objectIndices,*piVar6,piVar6[1]);
    if (piStack_c < piStack_8) {
      piVar3 = piStack_c + 1;
      if (piStack_c != (int *)0x0) {
        *piStack_c = (int)group;
      }
    }
    else {
      FUN_00982420(&puStack_10,piStack_c,&group);
      piVar3 = piStack_c;
    }
    piStack_c = piVar3;
  }
  uVar5 = thunk_FUN_004ddfc0(*(int **)(this + 8),puStack_10,iVar7,*(uint *)(this + 0x10));
  StreamReader_AccumulateStatus(this,(byte)uVar5);
  if (puStack_10 != (uint *)0x0) {
    Memory_FreeIfNonNull(puStack_10);
  }
  return;
}

