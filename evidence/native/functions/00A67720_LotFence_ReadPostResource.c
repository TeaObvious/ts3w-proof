/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Ordinary fence reader: loads the design map before opening posts. Decimal versions below 2 read
   an inline key; versions at least 2 use context handles; version 3 reads three design keys;
   versions at least 4 read a UInt16 design ID. The loop continues despite sticky failure, then
   closes and returns status in AL. */

undefined1 __thiscall
LotFence_ReadPostResource(void *this,void *param_1,void *param_2,uint param_3,uint param_4)

{
  void *this_00;
  void *this_01;
  bool bVar1;
  uint uVar2;
  void *pvVar3;
  float local_64;
  float local_60;
  uint local_5c;
  uint local_58;
  uint local_54;
  undefined4 local_50;
  undefined4 local_4c;
  float local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  uint local_38 [2];
  byte local_30 [16];
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  
  uVar2 = param_4;
  this_01 = param_2;
  this_00 = param_1;
  FenceDesignMap_ReadResource(*(void **)((int)this + 0x18),param_1,param_2,0x913c61,param_3,param_4)
  ;
  local_58 = param_3;
  local_54 = uVar2;
  local_50 = 0x913381f2;
  local_4c = 0;
  bVar1 = ResourceStreamContext_OpenWrite(this_00,&local_58,0);
  if (!bVar1) {
    return 0;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  *(undefined4 *)((int)this + 8) = *(undefined4 *)((int)this + 4);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_2,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  FUN_00a66b50((void *)((int)this + 4),(uint)param_2);
  pvVar3 = (void *)0x0;
  if (param_2 != (void *)0x0) {
    do {
      local_64 = -1.0;
      local_60 = -1.0;
      local_5c = 0;
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_5c,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_64,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_60,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      local_48 = DAT_011ec8d0;
      local_44 = DAT_011ec8d4;
      local_40 = DAT_011ec8d8;
      local_3c = DAT_011ec8dc;
      local_38[0] = local_38[0] & 0xffff0000;
      if (param_1 < (void *)0x2) {
        bVar1 = Stream_ReadResourceKeyTGI
                          (*(void **)((int)this_00 + 8),&local_48,*(uint *)((int)this_00 + 0x10));
LAB_00a67909:
        StreamReader_AccumulateStatus(this_00,bVar1);
      }
      else {
        ResourceReferences_ReadContextKey(this_01,this_00,&local_48);
        if (param_1 == (void *)0x3) {
          FUN_00afbba0((undefined4 *)local_30);
          ResourceReferences_ReadContextKey(this_01,this_00,(undefined4 *)local_30);
          ResourceReferences_ReadContextKey(this_01,this_00,local_20);
          ResourceReferences_ReadContextKey(this_01,this_00,local_10);
          uVar2 = LotFence_AcquirePostDesign(*(void **)((int)this + 0x18),local_30);
          local_38[0] = CONCAT22(local_38[0]._2_2_,(short)uVar2);
        }
        else if ((void *)0x3 < param_1) {
          bVar1 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)local_38,
                                    *(uint *)((int)this_00 + 0x10));
          goto LAB_00a67909;
        }
      }
      LotFence_InsertPostIfAbsent(this,&local_64,&local_48,(short)local_38[0]);
      pvVar3 = (void *)((int)pvVar3 + 1);
    } while (pvVar3 < param_2);
  }
  ResourceStreamContext_Close(this_00);
  return *(undefined1 *)((int)this_00 + 0x14);
}

