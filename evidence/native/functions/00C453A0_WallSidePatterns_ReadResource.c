/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): Native versioned B1422971 reader, paired
   with C44CD0. Original resource/context widths and map ownership are visible in the complete
   function. A project v4-only ten-byte scanner is a subset; this routine does not certify
   partial-row admission or current sentinel equality rules. */

undefined1 __thiscall
WallSidePatterns_ReadResource
          (void *this,void *param_1,void *param_2,uint param_3,uint param_4,undefined4 param_5)

{
  void *this_00;
  void *this_01;
  bool bVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  void *pvVar5;
  uint local_2c;
  undefined4 local_28;
  ushort local_24 [2];
  uint local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  uint local_4;
  
  FUN_009d67f0(*(int *)((int)this + 0x3c),*(uint *)((int)this + 0x40));
  pvVar5 = (void *)0x0;
  *(undefined4 *)((int)this + 0x44) = 0;
  FUN_009d67f0(*(int *)((int)this + 0x5c),*(uint *)((int)this + 0x60));
  this_01 = param_1;
  local_10 = param_4;
  *(undefined4 *)((int)this + 100) = 0;
  local_c = param_5;
  local_8 = 0xb1422971;
  local_4 = param_3;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  if (bVar1) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&param_4,*(uint *)((int)this_01 + 0x10));
    StreamReader_AccumulateStatus(this_01,bVar1);
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&param_1,
                              *(uint *)((int)this_01 + 0x10));
    StreamReader_AccumulateStatus(this_01,bVar1);
    FUN_00c44b10((void *)((int)this + 0x18),*(int *)((int)this + 0x1c),*(uint *)((int)this + 0x20));
    *(undefined4 *)((int)this + 0x24) = 0;
    this_00 = DAT_011ee034;
    local_28 = CONCAT22(local_28._2_2_,0xffff);
    if (param_1 != (void *)0x0) {
      do {
        bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&local_2c,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        local_20 = 0;
        local_1c = 0;
        local_18 = 0;
        local_14 = 0;
        if (param_4 == 1) {
          param_3 = 0;
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),&param_3,
                                    *(uint *)((int)this_01 + 0x10));
          StreamReader_AccumulateStatus(this_01,bVar1);
          iVar2 = FUN_00c8bb80(this_00,param_3);
          local_20 = *(uint *)(iVar2 + 8);
          local_1c = *(undefined4 *)(iVar2 + 0xc);
          local_18 = *(undefined4 *)(iVar2 + 0x10);
          local_14 = *(undefined4 *)(iVar2 + 0x14);
        }
        else if (param_4 == 2) {
          bVar1 = Stream_ReadResourceKeyTGI
                            (*(void **)((int)this_01 + 8),&local_20,*(uint *)((int)this_01 + 0x10));
          StreamReader_AccumulateStatus(this_01,bVar1);
        }
        else if (2 < param_4) {
          ResourceReferences_ReadContextKey(param_2,this_01,&local_20);
        }
        uVar3 = WallPatternMap_AddReference((void *)((int)this + 0x38),&local_20);
        local_28 = CONCAT22(local_28._2_2_,(short)uVar3);
        bVar1 = Stream_ReadUInt16(*(void **)((int)this_01 + 8),local_24,
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        bVar1 = Stream_ReadUInt16(*(void **)((int)this_01 + 8),(ushort *)((int)&local_28 + 2),
                                  *(uint *)((int)this_01 + 0x10));
        StreamReader_AccumulateStatus(this_01,bVar1);
        puVar4 = (undefined4 *)FUN_00c45330((void *)((int)this + 0x18),&local_2c);
        *puVar4 = local_28;
        pvVar5 = (void *)((int)pvVar5 + 1);
        *(ushort *)(puVar4 + 1) = local_24[0];
      } while (pvVar5 < param_1);
    }
    ResourceStreamContext_Close(this_01);
    return *(undefined1 *)((int)this_01 + 0x14);
  }
  return 0;
}

