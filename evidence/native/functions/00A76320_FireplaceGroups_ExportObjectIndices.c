/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 lot export path ACAF70 atACB093, distinct from normal A75930 save. ECXmanager plus
   context/object-index-table/lotIDlow/lotIDhigh/group fivewords RET14hex ALstatus. Writes
   version1/mapcount then callbackA76110 converts each GUID via934840 to uint32 index and writes
   uint32 array, not uint64 identities. */

bool __thiscall
FireplaceGroups_ExportObjectIndices
          (void *this,undefined *context,undefined *objectIndices,ulonglong lotId,uint group)

{
  bool bVar1;
  byte bVar2;
  ulonglong local_20;
  undefined4 local_18;
  uint local_14;
  undefined4 local_10 [4];
  
  local_18 = 0x4f66bcc;
  local_14 = group;
  local_20 = lotId;
  bVar1 = ResourceStreamContext_OpenWrite(context,&local_20,1);
  if (bVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)(context + 8),1,*(uint *)(context + 0x10));
    StreamReader_AccumulateStatus(context,bVar2);
    bVar2 = Stream_WriteUInt32(*(void **)(context + 8),*(uint *)((int)this + 0x10),
                               *(uint *)(context + 0x10));
    StreamReader_AccumulateStatus(context,bVar2);
    FUN_00a758a0(local_10,(int)this + 4,this,FireplaceGroups_WriteExportGroup,context,objectIndices)
    ;
    ResourceStreamContext_Close(context);
  }
  return (bool)context[0x14];
}

