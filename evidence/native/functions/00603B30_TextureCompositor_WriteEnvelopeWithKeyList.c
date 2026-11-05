/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original compositor envelope writer: writes marker 8 (decimal), a size placeholder, actual
   fields/body, then backpatches payload length excluding the 4-byte size field; a byte-counted
   trailing key list follows. Stream/key-list adapter ownership remains original. Stored prototype
   has stack-flow caveats. */

uint __thiscall
TextureCompositor_WriteEnvelopeWithKeyList(void *this,int *param_1,undefined ***param_2)

{
  undefined1 uVar1;
  byte bVar2;
  bool bVar3;
  char cVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 *this_00;
  uint extraout_EAX;
  undefined4 extraout_EAX_00;
  byte value;
  uint uVar7;
  undefined ***pppuVar8;
  undefined4 uVar9;
  undefined4 unaff_retaddr;
  uint arg0;
  uint uStack_38;
  void *pvStack_30;
  undefined **local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  char *local_1c;
  int *local_18;
  int *piStack_14;
  int *local_10;
  uint uStack_c;
  uint local_8;
  uint uStack_4;
  
  StreamReader_Construct(&local_18,param_1,1);
  local_2c = &PTR_FUN_00fe7828;
  local_28 = 0;
  local_24 = 0;
  local_20 = 0;
  local_1c = "CAS/KeyListAdapter";
  pppuVar8 = param_2;
  if (param_2 == (undefined ***)0x0) {
    pppuVar8 = &local_2c;
  }
  bVar2 = Stream_WriteUInt32(local_10,8,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  (**(code **)(*local_10 + 0x24))(0);
  bVar2 = Stream_WriteUInt32(piStack_14,0,uStack_c);
  StreamReader_AccumulateStatus(&local_1c,bVar2);
  bVar2 = Stream_WriteByte((undefined *)piStack_14,0);
  StreamReader_AccumulateStatus(&local_1c,bVar2);
  bVar2 = FUN_004de060(piStack_14,*(uint *)((int)this + 0x54),uStack_c);
  StreamReader_AccumulateStatus(&local_1c,bVar2);
  bVar2 = FUN_004de060(piStack_14,*(uint *)((int)this + 0x58),uStack_c);
  StreamReader_AccumulateStatus(&local_1c,bVar2);
  arg0 = CONCAT31((int3)((uint)unaff_retaddr >> 8),*(byte *)((int)this + 0x62));
  bVar3 = Stream_WriteBoolean(piStack_14,*(byte *)((int)this + 0x62));
  StreamReader_AccumulateStatus(&local_1c,bVar3);
  uVar7 = (uint)*(byte *)((int)this + 0x60);
  bVar2 = FUN_004de060(piStack_14,uVar7,uStack_c);
  StreamReader_AccumulateStatus(&local_1c,bVar2);
  if (param_2 == (undefined ***)0x0) {
    bVar3 = Stream_WriteBoolean(piStack_14,0);
    StreamReader_AccumulateStatus(&local_1c,bVar3);
    iVar6 = 0;
    if (uVar7 != 0) {
      do {
        this_00 = FUN_00602920();
        cVar4 = FUN_00601140(this_00,&local_1c,(int *)pppuVar8,0);
        if (cVar4 == '\0') {
          if (local_2c != (undefined **)0x0) {
            Memory_FreeIfNonNull(local_2c);
          }
          StreamReader_ReleaseAuxiliary(&local_1c);
          return extraout_EAX & 0xffffff00;
        }
        iVar6 = iVar6 + 1;
      } while (iVar6 < (int)uVar7);
    }
  }
  else {
    bVar3 = Stream_WriteBoolean(piStack_14,1);
    StreamReader_AccumulateStatus(&local_1c,bVar3);
    uVar5 = FUN_004ddfc0(piStack_14,*(uint **)((int)this + 0x5c),uVar7,uStack_c);
    StreamReader_AccumulateStatus(&local_1c,(byte)uVar5);
    FUN_00602c60(param_2,*(uint *)((int)this + 0x5c),uVar7);
  }
  iVar6 = (**(code **)(*piStack_14 + 0x24))(0);
  if (iVar6 == -1) {
    uStack_c = uStack_c & 0xffffff00;
  }
  else {
    Stream_BackpatchUInt32(&local_20,arg0,(iVar6 - arg0) - 4);
  }
  value = (byte)((int)local_2c - (int)pvStack_30 >> 4);
  uStack_4._0_1_ = value;
  bVar2 = Stream_WriteByte((undefined *)local_18,value);
  StreamReader_AccumulateStatus(&local_20,bVar2);
  uVar5 = 0;
  uVar9 = 0;
  uVar7 = 0;
  uStack_38 = 0;
  uStack_4 = (uint)uStack_4._1_3_ << 8;
  if (value != 0) {
    do {
      if ((uStack_4 & 0xff) < (uint)((int)local_2c - (int)pvStack_30 >> 4)) {
        iVar6 = (uStack_4 & 0xff) * 0x10;
        uVar5 = *(undefined4 *)(iVar6 + (int)pvStack_30);
        uVar9 = *(undefined4 *)(iVar6 + 4 + (int)pvStack_30);
        uVar7 = *(uint *)(iVar6 + 8 + (int)pvStack_30);
        uStack_38 = *(uint *)((int)pvStack_30 + iVar6 + 0xc);
      }
      bVar2 = FUN_004de0c0(local_18,CONCAT44(uVar9,uVar5),(int)local_10);
      StreamReader_AccumulateStatus(&local_20,bVar2);
      bVar2 = Stream_WriteUInt32(local_18,uStack_38,(uint)local_10);
      StreamReader_AccumulateStatus(&local_20,bVar2);
      bVar2 = Stream_WriteUInt32(local_18,uVar7,(uint)local_10);
      StreamReader_AccumulateStatus(&local_20,bVar2);
      bVar2 = (byte)uStack_4 + 1;
      uStack_4 = CONCAT31(uStack_4._1_3_,bVar2);
    } while (bVar2 < value);
  }
  uVar1 = (undefined1)uStack_c;
  if (pvStack_30 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_30);
  }
  StreamReader_ReleaseAuxiliary(&local_20);
  return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),uVar1);
}

