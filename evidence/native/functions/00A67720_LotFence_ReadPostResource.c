/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Ordinary fence reader: loads the design map before opening posts. Decimal versions below 2 read
   an inline key; versions at least 2 use context handles; version 3 reads three design keys;
   versions at least 4 read a UInt16 design ID. The loop continues despite sticky failure, then
   closes and returns status in AL. */

undefined1 __thiscall
LotFence_ReadPostResource
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4)

{
  void *this_00;
  void *this_01;
  undefined4 uVar1;
  bool bVar2;
  uint uVar3;
  void *pvVar4;
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
  
  uVar1 = param_4;
  this_01 = param_2;
  this_00 = param_1;
  FUN_00b14a20(*(void **)((int)this + 0x18),param_1,param_2,0x913c61,param_3,param_4);
  local_58 = param_3;
  local_54 = uVar1;
  local_50 = 0x913381f2;
  local_4c = 0;
  bVar2 = ResourceStreamContext_OpenWrite(this_00,&local_58,0);
  if (!bVar2) {
    return 0;
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  *(undefined4 *)((int)this + 8) = *(undefined4 *)((int)this + 4);
  bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_2,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  FUN_00a66b50((void *)((int)this + 4),(uint)param_2);
  pvVar4 = (void *)0x0;
  if (param_2 != (void *)0x0) {
    do {
      local_64 = -1.0;
      local_60 = -1.0;
      local_5c = 0;
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_5c,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_64,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar2);
      bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_60,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar2);
      local_48 = DAT_011ec8d0;
      local_44 = DAT_011ec8d4;
      local_40 = DAT_011ec8d8;
      local_3c = DAT_011ec8dc;
      local_38[0] = local_38[0] & 0xffff0000;
      if (param_1 < (void *)0x2) {
        bVar2 = Stream_ReadResourceKeyTGI
                          (*(void **)((int)this_00 + 8),&local_48,*(uint *)((int)this_00 + 0x10));
LAB_00a67909:
        StreamReader_AccumulateStatus(this_00,bVar2);
      }
      else {
        ResourceReferences_ReadContextKey(this_01,this_00,&local_48);
        if (param_1 == (void *)0x3) {
          FUN_00afbba0((undefined4 *)local_30);
          ResourceReferences_ReadContextKey(this_01,this_00,(undefined4 *)local_30);
          ResourceReferences_ReadContextKey(this_01,this_00,local_20);
          ResourceReferences_ReadContextKey(this_01,this_00,local_10);
          uVar3 = LotFence_AcquirePostDesign(*(void **)((int)this + 0x18),local_30);
          local_38[0] = CONCAT22(local_38[0]._2_2_,(short)uVar3);
        }
        else if ((void *)0x3 < param_1) {
          bVar2 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)local_38,
                                    *(uint *)((int)this_00 + 0x10));
          goto LAB_00a67909;
        }
      }
      LotFence_InsertPostIfAbsent(this,&local_64,&local_48,(short)local_38[0]);
      pvVar4 = (void *)((int)pvVar4 + 1);
    } while (pvVar4 < param_2);
  }
  ResourceStreamContext_Close(this_00);
  return *(undefined1 *)((int)this_00 + 0x14);
}

