/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager+context/GUID-vector/lotIDlow/lotIDhigh/group fivewords RET14hex ALstatus.
   Clears manager; ignores consumed version, reads groupkey/count and uint32 indices. Only signed
   index>=0 and index<GUIDvector count is appended; invalid indices skipped. Duplicate group keys
   append converted valid entries to existing vector, unlike normal A76520 resize-and-overwrite.
   Never infer direct GUID widths from same resource/version. */

bool __thiscall
FireplaceGroups_ImportObjectIndices
          (void *this,undefined *context,undefined *objectIds,ulonglong lotId,uint group)

{
  undefined4 *puVar1;
  uint uVar2;
  undefined4 *puVar3;
  undefined *this_00;
  undefined *puVar4;
  bool bVar5;
  void *pvVar6;
  undefined4 uVar7;
  uint *allocation;
  int iVar8;
  uint *puVar9;
  uint local_60;
  uint local_58;
  undefined4 local_54;
  int local_50;
  uint local_4c;
  int local_48 [2];
  undefined local_40 [12];
  uint *local_34;
  uint *local_30;
  undefined4 local_2c;
  char *local_28;
  ulonglong local_24;
  undefined4 local_1c;
  uint local_18;
  undefined *local_14;
  void *local_10;
  void *local_c;
  void *local_8;
  char *local_4;
  
  FUN_00b7a260(*(int *)((int)this + 8),*(uint *)((int)this + 0xc));
  this_00 = context;
  local_18 = group;
  *(undefined4 *)((int)this + 0x10) = 0;
  local_50 = *(int *)(objectIds + 4) - *(int *)objectIds >> 3;
  local_1c = 0x4f66bcc;
  local_24 = lotId;
  bVar5 = ResourceStreamContext_OpenRead(context,&local_24,0);
  if (bVar5) {
    bVar5 = Stream_ReadUInt32(*(void **)(this_00 + 8),&local_4c,*(uint *)(this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar5);
    lotId._0_4_ = 0;
    bVar5 = Stream_ReadUInt32(*(void **)(this_00 + 8),(uint *)&lotId,*(uint *)(this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar5);
    local_60 = 0;
    if ((uint)lotId != 0) {
      do {
        context = (undefined *)0x0;
        bVar5 = Stream_ReadUInt32(*(void **)(this_00 + 8),(uint *)&context,*(uint *)(this_00 + 0x10)
                                 );
        StreamReader_AccumulateStatus(this_00,bVar5);
        group = group & 0xffffff00;
        bVar5 = Stream_ReadByte(*(void **)(this_00 + 8),(byte *)&group);
        StreamReader_AccumulateStatus(this_00,bVar5);
        puVar4 = context;
        pvVar6 = memmove((void *)0x0,(void *)0x0,0);
        local_14 = puVar4;
        iVar8 = (int)pvVar6 >> 3;
        local_4 = "Lot/ObjectIDs";
        if (iVar8 == 0) {
          local_10 = (void *)0x0;
        }
        else {
          local_10 = (void *)FUN_004e4500(iVar8 * 8,"Lot/ObjectIDs",0);
        }
        local_8 = (void *)((int)local_10 + iVar8 * 8);
        local_c = memmove(local_10,(void *)0x0,(size_t)pvVar6);
        local_c = (void *)((int)local_c + iVar8 * 8);
        local_58 = local_58 & 0xffffff00;
        FireplaceGroups_InsertIfAbsent
                  ((void *)((int)this + 4),local_40,(undefined *)&local_14,local_58);
        if (local_10 != (void *)0x0) {
          Memory_FreeIfNonNull(local_10);
        }
        FUN_004b0f80((void *)((int)this + 4),local_48,(uint *)&context);
        allocation = (uint *)0x0;
        local_34 = (uint *)0x0;
        local_30 = (uint *)0x0;
        local_2c = 0;
        local_28 = "Scratch/FireplaceManager/ExportFireplaceRecord/ObjectIdIndices";
        if ((group & 0xff) == 0) {
          memmove((void *)0x0,(void *)0x0,0);
          local_30 = (uint *)0x0;
        }
        else {
          local_54 = 0;
          FUN_006e4940(&local_34,(undefined4 *)0x0,group & 0xff,&local_54);
          allocation = local_34;
        }
        uVar7 = Stream_ReadUInt32ArrayByByteOrder
                          (*(int **)(this_00 + 8),allocation,(int)local_30 - (int)allocation >> 2,
                           *(uint *)(this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,(byte)uVar7);
        iVar8 = local_48[0];
        pvVar6 = (void *)(local_48[0] + 4);
        *(char **)(local_48[0] + 0x10) = "Lot/FireplaceManager/Load/ObjectArray";
        puVar9 = allocation;
        if (allocation != local_30) {
          do {
            uVar2 = *puVar9;
            if ((-1 < (int)uVar2) && ((int)uVar2 < local_50)) {
              puVar1 = (undefined4 *)(*(int *)objectIds + uVar2 * 8);
              puVar3 = *(undefined4 **)(iVar8 + 8);
              if (puVar3 < *(undefined4 **)(iVar8 + 0xc)) {
                *(undefined4 **)(iVar8 + 8) = puVar3 + 2;
                if (puVar3 != (undefined4 *)0x0) {
                  *puVar3 = *puVar1;
                  puVar3[1] = puVar1[1];
                }
              }
              else {
                FUN_00572360(pvVar6,puVar3,puVar1);
              }
            }
            puVar9 = puVar9 + 1;
          } while (puVar9 != local_30);
        }
        if (allocation != (uint *)0x0) {
          Memory_FreeIfNonNull(allocation);
        }
        local_60 = local_60 + 1;
      } while (local_60 < (uint)lotId);
    }
    ResourceStreamContext_Close(this_00);
  }
  return (bool)this_00[0x14];
}

