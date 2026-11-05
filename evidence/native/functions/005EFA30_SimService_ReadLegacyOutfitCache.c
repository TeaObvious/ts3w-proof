/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst role, original PC1.67. Legacy instance1 reader admits versions1..7, v6+ relative pool
   offset is based on the position AFTER that offset DWORD; v5+ step pool, compositor restore and
   later outfit records retain version-specific ordering. Earlier thanv7 reads outfit bodies
   directly without size envelopes. A v7-only managed extractor does not establish support for all
   earlier versions or compositor reconstruction. Physical argument/return aliases in actual C are
   not authoritative recovered prototypes. */

uint SimService_ReadLegacyOutfitCache(undefined1 *param_1,void *param_2)

{
  undefined1 *this;
  bool bVar1;
  byte bVar2;
  uint extraout_EAX;
  void *pvVar3;
  void *offset;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint local_38 [2];
  undefined4 local_30 [12];
  
  this = param_1;
  FUN_007d85c0((int)param_1);
  bVar1 = Stream_ReadUInt32(*(void **)(this + 8),(uint *)&param_1,*(uint *)(this + 0x10));
  StreamReader_AccumulateStatus(this,bVar1);
  if (&DAT_00000006 < param_1 + -1) {
    return (uint)param_1 & 0xffffff00;
  }
  if (param_1 < &DAT_00000006) {
    pvVar3 = param_2;
  }
  else {
    bVar1 = Stream_ReadUInt32(*(void **)(this + 8),local_38,*(uint *)(this + 0x10));
    StreamReader_AccumulateStatus(this,bVar1);
    if (this[0x14] == '\0') {
      return extraout_EAX & 0xffffff00;
    }
    pvVar3 = (void *)StreamContext_GetPositionAndMarkNegative(this);
    StreamContext_SeekWithSignedAbsoluteGuard(this,(int)pvVar3 + local_38[0],0);
  }
  FUN_00602c10(local_30);
  puVar6 = (undefined4 *)0x0;
  if (param_1 < &DAT_00000005) {
    offset = param_2;
  }
  else {
    StreamContext_GetPositionAndMarkNegative(this);
    bVar2 = SavedModelSharedSteps_Read(local_30,this,param_2);
    if ((bVar2 == 0) || (this[0x14] == '\0')) goto LAB_005efb3a;
    offset = (void *)StreamContext_GetPositionAndMarkNegative(this);
    puVar6 = local_30;
    if (&DAT_00000005 < param_1) {
      StreamContext_SeekWithSignedAbsoluteGuard(this,(int)pvVar3,0);
    }
  }
  pvVar3 = param_2;
  uVar4 = FUN_005ef870(this,(uint)param_2,(int)puVar6,(uint)param_1);
  if ((char)uVar4 != '\0') {
    if (&DAT_00000005 < param_1) {
      StreamContext_SeekWithSignedAbsoluteGuard(this,(int)offset,0);
    }
    StreamContext_GetPositionAndMarkNegative(this);
    uVar4 = SimService_ReadCachedOutfitRecords(this,pvVar3,(uint)param_1);
    if ((char)uVar4 != '\0') {
      uVar4 = FUN_00607d00(local_30);
      return CONCAT31((int3)((uint)uVar4 >> 8),1);
    }
  }
LAB_005efb3a:
  uVar5 = FUN_00607d00(local_30);
  return uVar5 & 0xffffff00;
}

