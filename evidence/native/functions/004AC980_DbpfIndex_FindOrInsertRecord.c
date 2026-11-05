/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Find key through83B040; on miss build zero/default record and
   insert via4AB900; return node+10 record. This assignment helper differs from raw-load
   first-insert policy. */

int __thiscall DbpfIndex_FindOrInsertRecord(void *this,uint *param_1)

{
  uint *puVar1;
  int local_30 [3];
  undefined4 local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  int local_4;
  
  puVar1 = param_1;
  DbpfIndex_FindIterator(this,local_30,param_1);
  if (local_30[0] == *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_20 = *param_1;
    local_c = 0;
    param_1 = (uint *)((uint)param_1 & 0xffffff00);
    local_24 = (uint)local_24._3_1_ << 0x18;
    local_8 = 0;
    local_1c = puVar1[1];
    local_10 = 0;
    local_4 = local_24;
    local_18 = puVar1[2];
    local_14 = puVar1[3];
    DbpfIndex_InsertFirstRecord(this,local_30,&local_20,(uint)param_1);
  }
  return local_30[0] + 0x10;
}

