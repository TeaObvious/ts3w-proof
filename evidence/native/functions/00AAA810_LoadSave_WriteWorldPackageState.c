/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* PC 1.67 LoadSave operation boundary review (2026-10-17). Physical ECX manager with two stack
   arguments RET8; creates package stream context, opens header resource identified by authenticated
   01183E20 key and writes S3-NUL, version/buffers, caption/flag/GUID state. Calls additional-state
   00AAA240, world 00C6D2A0, final-state 00AAA280 in order. Failure stages return 9,10,11,12,13.
   These called producers remain bounded; no entire-world save equivalence or executed save claim.
    */

undefined4 __thiscall
LoadSave_WriteWorldPackageState(void *this,undefined4 param_1,undefined4 *param_2)

{
  bool bVar1;
  byte bVar2;
  bool readSucceeded;
  char cVar3;
  ushort *puVar4;
  uint uVar5;
  void *this_00;
  undefined1 local_430;
  undefined1 local_42f;
  undefined1 local_42e;
  int *local_42c [2];
  int *local_424;
  uint local_41c;
  char local_418;
  void *local_414;
  short local_410 [520];
  
  local_414 = DAT_011edbc4;
  puVar4 = (ushort *)World_ReadFilenameInputWord((int)DAT_011edbc4);
  FUN_007d7920(local_42c,param_1,param_2);
  bVar1 = ResourceStreamContext_OpenWrite(local_42c,&DAT_01183e20,1);
  if (!bVar1) {
    StreamReader_ReleaseAuxiliary(local_42c);
    return 9;
  }
  bVar2 = Stream_WriteByte((undefined *)local_424,(byte)param_2);
  StreamReader_AccumulateStatus(local_42c,bVar2);
  local_430 = 0x53;
  local_42f = 0x33;
  local_42e = 0;
  bVar2 = FUN_004dde50(local_424,&local_430,3);
  StreamReader_AccumulateStatus(local_42c,bVar2);
  bVar2 = Stream_WriteUInt32(local_424,4,local_41c);
  StreamReader_AccumulateStatus(local_42c,bVar2);
  bVar2 = Stream_WriteByte((undefined *)local_424,4);
  StreamReader_AccumulateStatus(local_42c,bVar2);
  FUN_007d8710(local_42c,*(undefined4 *)((int)this + 0x34),
               *(int *)((int)this + 0x38) - *(int *)((int)this + 0x34));
  FUN_007d8710(local_42c,*(undefined4 *)((int)this + 0x44),
               *(int *)((int)this + 0x48) - *(int *)((int)this + 0x44));
  FUN_004ee170(local_410,puVar4);
  puVar4 = (ushort *)FUN_004edd10(local_410);
  uVar5 = FUN_004fe2c0((short *)puVar4);
  FUN_007d8750(local_42c,puVar4,uVar5);
  this_00 = (void *)thunk_FUN_00835d40();
  if ((this_00 == (void *)0x0) || (*(char *)((int)this_00 + 0x981) != '\0')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  readSucceeded = Stream_WriteBoolean(local_424,bVar1);
  StreamReader_AccumulateStatus(local_42c,readSucceeded);
  bVar2 = FUN_004de0c0(local_424,*(undefined8 *)((int)this + 0x58),local_41c);
  StreamReader_AccumulateStatus(local_42c,bVar2);
  ResourceStreamContext_Close(local_42c);
  if (bVar1) {
    FUN_00834b00(this_00,(int)DAT_011edbc4);
    FUN_00828df0(this_00,local_42c);
    FUN_00829640((int)this_00);
  }
  if (local_418 == '\0') {
    StreamReader_ReleaseAuxiliary(local_42c);
    return 10;
  }
  cVar3 = FUN_00aaa240(this,(int *)local_42c);
  if (cVar3 == '\0') {
    StreamReader_ReleaseAuxiliary(local_42c);
    return 0xb;
  }
  cVar3 = FUN_00c6d2a0(local_414,local_42c[0],param_2);
  if (cVar3 == '\0') {
    StreamReader_ReleaseAuxiliary(local_42c);
    return 0xc;
  }
  cVar3 = FUN_00aaa280(this,(int *)local_42c);
  if (cVar3 == '\0') {
    StreamReader_ReleaseAuxiliary(local_42c);
    return 0xd;
  }
  StreamReader_ReleaseAuxiliary(local_42c);
  return 0;
}

