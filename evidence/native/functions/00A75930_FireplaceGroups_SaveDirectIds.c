/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 normal lot save, called AC4FA0 atAC523E. ECXmanager+context/lotIDlow/lotIDhigh/group
   fourwords RET10hex ALstatus. Writes version1 and map count, then A756F0 emits groupID u32, LOW
   BYTE of vector length, and ALL actual uint64 IDs through4DE100 using context byte order. This is
   separate from A76320 export with uint32 indices. */

bool __thiscall
FireplaceGroups_SaveDirectIds(void *this,undefined *context,ulonglong lotId,uint group)

{
  bool bVar1;
  byte bVar2;
  undefined4 local_1c [3];
  undefined1 local_10 [4];
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_c = (undefined4)lotId;
  local_8 = 0x4f66bcc;
  local_4 = lotId._4_4_;
  bVar1 = ResourceStreamContext_OpenWrite(context,local_10,1);
  if (bVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)(context + 8),1,*(uint *)(context + 0x10));
    StreamReader_AccumulateStatus(context,bVar2);
    bVar2 = Stream_WriteUInt32(*(void **)(context + 8),*(uint *)((int)this + 0x10),
                               *(uint *)(context + 0x10));
    StreamReader_AccumulateStatus(context,bVar2);
    FUN_00a75820(local_1c,(int)this + 4,this,FireplaceGroups_WriteDirectGroup,context);
    ResourceStreamContext_Close(context);
  }
  return (bool)context[0x14];
}

