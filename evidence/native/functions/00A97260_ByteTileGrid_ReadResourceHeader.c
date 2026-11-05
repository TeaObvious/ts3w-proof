/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+4stackwords context/group/GUIDlow/high RET10hex, result lowAL contextstatus.
   ReadsFOUR UInt32: version into discardedlocal, then width,depth,levelcount; NO versioncomparison,
   cap8, lot-dimension equality or exactEOF gate. InitializesA95850 from actualthree retained words.
   Accumulates eachreadfailure; closesonfailure; selectedparent already opened exactbasementrecord.
    */

bool __thiscall
ByteTileGrid_ReadResourceHeader
          (void *this,void *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  void *this_00;
  bool bVar1;
  uint local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  this_00 = param_1;
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0xb125533a;
  local_4 = param_2;
  if (*(int *)((int)param_1 + 4) == 0) {
    bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
    if (!bVar1) goto LAB_00a9733e;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_14,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&param_3,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&param_2,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  ByteTileGrid_SetDimensions(this,param_3,(int)param_1,param_2);
  if (*(char *)((int)this_00 + 0x14) == '\0') {
    ResourceStreamContext_Close(this_00);
  }
LAB_00a9733e:
  return (bool)*(undefined1 *)((int)this_00 + 0x14);
}

