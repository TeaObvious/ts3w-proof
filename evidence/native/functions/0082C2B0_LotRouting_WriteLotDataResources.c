/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX routing owner; four stack slots
   RET10, AL status. Low byte of final slot gates all writing. Routing critical section owner+918
   surrounds lookup and serialization. When enabled, resource046A7235/group0/supplied64-bit lot ID
   writes UInt32version5 then63CEB0 and657930, accumulating failures; separate07CD07EC/group0 writes
   version5 and662E70 when the retained lot record exists. Caller/global routing availability gates
   remain visible. No geometric byte-pattern scanning occurs. */

byte __thiscall
LotRouting_WriteLotDataResources(void *this,uint lotLow,uint lotHigh,void *stream,byte writeEnabled)

{
  LPCRITICAL_SECTION this_00;
  uint lotLow_00;
  uint lotHigh_00;
  void *this_01;
  bool bVar1;
  byte bVar2;
  char cVar3;
  int *piVar4;
  undefined3 in_stack_00000011;
  uint local_20;
  uint local_1c;
  undefined4 local_18;
  undefined4 local_14;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x918);
  FUN_004e1c00(this_00,(uint *)&DAT_01022d28);
  lotHigh_00 = lotHigh;
  lotLow_00 = lotLow;
  if (writeEnabled == 0) {
    FUN_004e1cc0(this_00);
    return 0;
  }
  local_20 = lotLow;
  local_1c = lotHigh;
  piVar4 = U64PairMap_Find((void *)((int)this + 0x878),&lotLow,(ulonglong *)&local_20);
  this_01 = stream;
  if (*piVar4 == *(int *)(*(int *)((int)this + 0x87c) + *(int *)((int)this + 0x880) * 4)) {
    _writeEnabled = (int *)0x0;
  }
  else {
    _writeEnabled = *(int **)(*piVar4 + 8);
  }
  if (*(char *)((int)this + 0x974) == '\0') goto LAB_0082c40c;
  if (*(int *)(*(int *)((int)this + 0x964) + 0x1b4) == 2) {
    FUN_0082b210(this,lotLow_00,lotHigh_00);
  }
  local_20 = lotLow_00;
  local_1c = lotHigh_00;
  local_18 = 0x46a7235;
  local_14 = 0;
  bVar1 = ResourceStreamContext_OpenWrite(this_01,&local_20,1);
  if (!bVar1) goto LAB_0082c40c;
  bVar2 = Stream_WriteUInt32(*(void **)((int)this_01 + 8),5,*(uint *)((int)this_01 + 0x10));
  StreamReader_AccumulateStatus(this_01,bVar2);
  if (_writeEnabled == (int *)0x0) {
    _writeEnabled = FUN_0082bdd0(this,lotLow_00,lotHigh_00);
    if (_writeEnabled != (int *)0x0) goto LAB_0082c3b5;
  }
  else {
LAB_0082c3b5:
    FUN_006329c0(*(void **)((int)this + 0x95c),lotLow_00,lotHigh_00,_writeEnabled);
  }
  bVar2 = LotRouting_WriteLotLocationPayload
                    (*(void **)((int)this + 0x95c),this_01,lotLow_00,lotHigh_00);
  if (bVar2 == 0) {
    StreamReader_AccumulateStatus(this_01,0);
    *(undefined1 *)((int)this_01 + 0x14) = 0;
  }
  bVar2 = LotRouting_WriteLotIndexPairs(*(void **)((int)this + 0x960),this_01,lotLow_00,lotHigh_00);
  if (bVar2 == 0) {
    StreamReader_AccumulateStatus(this_01,0);
    *(undefined1 *)((int)this_01 + 0x14) = 0;
  }
  ResourceStreamContext_Close(this_01);
LAB_0082c40c:
  if (_writeEnabled != (int *)0x0) {
    local_10 = lotLow_00;
    local_c = lotHigh_00;
    local_8 = 0x7cd07ec;
    local_4 = 0;
    bVar1 = ResourceStreamContext_OpenWrite(this_01,&local_10,1);
    if (bVar1) {
      bVar2 = Stream_WriteUInt32(*(void **)((int)this_01 + 8),5,*(uint *)((int)this_01 + 0x10));
      StreamReader_AccumulateStatus(this_01,bVar2);
      cVar3 = FUN_00662e70(_writeEnabled,this_01);
      if (cVar3 == '\0') {
        StreamReader_AccumulateStatus(this_01,0);
        *(undefined1 *)((int)this_01 + 0x14) = 0;
      }
      ResourceStreamContext_Close(this_01);
    }
  }
  bVar2 = *(byte *)((int)this_01 + 0x14);
  FUN_004e1cc0(this_00);
  return bVar2;
}

