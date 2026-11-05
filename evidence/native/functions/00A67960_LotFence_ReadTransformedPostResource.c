/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Alternate fence import reader: transforms X/Z through the import context before insertion and
   uses context keys. It is distinct from the ordinary post reader. Complete noncontiguous body
   ranges are retained. */

undefined1 __thiscall
LotFence_ReadTransformedPostResource(void *this,void *param_1,undefined4 *param_2)

{
  undefined4 *keyContext;
  bool bVar1;
  uint uVar2;
  uint uVar3;
  uint local_78;
  void *local_74;
  float local_70;
  float local_6c;
  uint local_68;
  float local_64;
  float local_60;
  uint local_5c;
  undefined4 local_58;
  undefined4 local_54;
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
  
  keyContext = param_2 + 0x1d;
  local_74 = this;
  FenceDesignMap_ReadResource
            (*(void **)((int)this + 0x18),param_1,keyContext,0x913c61,*param_2,param_2[1]);
  local_58 = *param_2;
  local_54 = param_2[1];
  local_50 = 0x913381f2;
  local_4c = 0;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_58,0);
  if (!bVar1) {
    return 0;
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_68,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  *(undefined4 *)((int)this + 8) = *(undefined4 *)((int)this + 4);
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_78,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  FUN_00a66b50((void *)((int)this + 4),local_78);
  uVar3 = 0;
  if (local_78 != 0) {
    do {
      local_64 = -1.0;
      local_60 = -1.0;
      local_5c = 0;
      bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_5c,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_64,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),(uint *)&local_60,
                                *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar1);
      FUN_00cb3160(param_2 + 0x19,local_64,local_60,&local_70,&local_6c);
      local_44 = DAT_011ec8d4;
      local_48 = DAT_011ec8d0;
      local_64 = local_70;
      local_60 = local_6c;
      local_40 = DAT_011ec8d8;
      local_3c = DAT_011ec8dc;
      local_38[0] = local_38[0] & 0xffff0000;
      ResourceReferences_ReadContextKey(keyContext,param_1,&local_48);
      if (local_68 == 3) {
        FUN_00afbba0((undefined4 *)local_30);
        ResourceReferences_ReadContextKey(keyContext,param_1,(undefined4 *)local_30);
        ResourceReferences_ReadContextKey(keyContext,param_1,local_20);
        ResourceReferences_ReadContextKey(keyContext,param_1,local_10);
        uVar2 = LotFence_AcquirePostDesign(*(void **)((int)local_74 + 0x18),local_30);
        local_38[0] = CONCAT22(local_38[0]._2_2_,(short)uVar2);
      }
      else if (3 < local_68) {
        bVar1 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)local_38,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
      }
      LotFence_InsertPostIfAbsent(local_74,&local_64,&local_48,(short)local_38[0]);
      uVar3 = uVar3 + 1;
    } while (uVar3 < local_78);
  }
  ResourceStreamContext_Close(param_1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

