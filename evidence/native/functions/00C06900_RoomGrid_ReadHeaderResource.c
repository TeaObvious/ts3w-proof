/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 Room wire gate: complete233byte/82instruction body C06900..C069E8. ECX grid receiver, four
   stackDWORDs, RET10; AL is sticky read status, upper return bits not Boolean authority. Resource
   type B125533A; four UInt32 reads at C06954/71/8E/AB consume header word0,width,depth,layers, each
   accumulated through7D79F0. No word0==1 comparison exists. C069CC passes header dimensions
   toC05E40; no4096/64, LOT dimension equality or zero-product format rejection in this body. Header
   failure closes context; successful body reading remains C07AC0. Native allocation/wrap behavior
   is not a managed safe-input rule. */

undefined4 __thiscall
RoomGrid_ReadHeaderResource(void *this,void *param_1,uint param_2,uint param_3,undefined4 param_4)

{
  void *this_00;
  bool bVar1;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 uVar2;
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
    uVar2 = extraout_var;
    if (!bVar1) goto LAB_00c069de;
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
  RoomGrid_ResizeStorage(this,param_3,(int)param_1,param_2);
  uVar2 = extraout_var_00;
  if (*(char *)((int)this_00 + 0x14) == '\0') {
    ResourceStreamContext_Close(this_00);
    uVar2 = extraout_var_01;
  }
LAB_00c069de:
  return CONCAT31(uVar2,*(undefined1 *)((int)this_00 + 0x14));
}

