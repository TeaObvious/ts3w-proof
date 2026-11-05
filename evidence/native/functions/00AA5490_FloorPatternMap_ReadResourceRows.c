/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 floor pattern-map producer boundary): Physical ECX map plus six stack words,
   both exits RET18h, AL status. Clears forward/reverse maps, opens selected resource with literal
   mode0. Resource type0553EAD4 is used for caller word>=14h; lower usesF12E5E12. Reads UInt32 map
   version, full inline default T/G/I via7D7760, then UInt32 entry count. Version<4 delegates
   toAA52F0 (unexpanded here). For>=4 each row reads FOUR context keys through7D7470 in order, then
   UInt32 storage ID and UInt32 reference count. Find/insert of the four-key block supplies the two
   storage/count words, reverse storage lookup retains the complete64-byte key block. CallsA903B0
   for default key then closes context and returns accumulated reader status+14. These UInt16/UInt32
   widths are original instructions, not s3pi wrapper authority. Current reader's v4+ subset,
   byte-product/trailing/warning/nullable/handle-failure policy and valuation checks remain explicit
   differences; no new decoder or guessed EOF/status equivalence. Preserve actual
   ABI/types/body/bytes. */

undefined1 __thiscall
FloorPatternMap_ReadResourceRows
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,uint param_6)

{
  uint uVar1;
  bool bVar2;
  uint *puVar3;
  undefined4 *puVar4;
  int iVar5;
  undefined4 *puVar6;
  uint local_70;
  uint local_6c;
  void *local_68;
  uint local_64;
  uint local_60;
  uint local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48 [4];
  undefined4 local_38 [4];
  undefined4 local_28 [4];
  undefined4 local_18 [5];
  
  local_68 = this;
  FUN_00aa4d10(*(int *)((int)this + 4),*(uint *)((int)this + 8));
  *(undefined4 *)((int)this + 0xc) = 0;
  FUN_00aa4d10(*(int *)((int)this + 0x24),*(uint *)((int)this + 0x28));
  *(undefined4 *)((int)this + 0x2c) = 0;
  local_58 = param_4;
  local_54 = param_5;
  local_50 = 0x553ead4;
  local_4c = param_3;
  uVar1 = local_6c >> 8;
  local_6c = local_6c & 0xffffff00;
  if (param_6 < 0x14) {
    local_50 = 0xf12e5e12;
    local_6c = CONCAT31((int3)uVar1,1);
  }
  bVar2 = ResourceStreamContext_OpenWrite(param_1,&local_58,0);
  if (!bVar2) {
    return 0;
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_64,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_ReadResourceKeyTGI
                    (*(void **)((int)param_1 + 8),(void *)((int)this + 0x40),
                     *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_70,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  if (local_64 < 4) {
    FUN_00aa52f0(this,param_1,(char)local_6c,local_64,local_70);
  }
  else {
    FUN_00afba70(local_48);
    local_6c = 0;
    if (local_70 != 0) {
      do {
        ResourceReferences_ReadContextKey(param_2,param_1,local_48);
        ResourceReferences_ReadContextKey(param_2,param_1,local_38);
        ResourceReferences_ReadContextKey(param_2,param_1,local_28);
        ResourceReferences_ReadContextKey(param_2,param_1,local_18);
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_60,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_5c,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar2);
        puVar3 = (uint *)FloorKeyMap_GetOrCreateCounters(this,(undefined *)local_48);
        *puVar3 = local_60;
        puVar3[1] = local_5c;
        puVar4 = (undefined4 *)FUN_00a90180((void *)((int)this + 0x20),&local_60);
        local_6c = local_6c + 1;
        puVar6 = local_48;
        for (iVar5 = 0x10; iVar5 != 0; iVar5 = iVar5 + -1) {
          *puVar4 = *puVar6;
          puVar6 = puVar6 + 1;
          puVar4 = puVar4 + 1;
        }
        this = local_68;
      } while (local_6c < local_70);
    }
  }
  FUN_00a903b0(this,(int *)((int)this + 0x40));
  ResourceStreamContext_Close(param_1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

