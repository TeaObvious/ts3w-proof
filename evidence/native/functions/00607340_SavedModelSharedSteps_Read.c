/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Model shared-step table reader. ECX pool, stack4 reader, stack8 key context;
   RET8, only low-AL status defined. Clears pool first. Unsigned UInt32 version1/2 selects property
   mode1/2; UInt32 size is availability preflight, not an exact-end bound. Reads full UInt32 count
   and rows.602120 returns existing or inserted node; caller overwrites packed value every row, so
   last serialized duplicate handle wins. Adapter00FE7748 captures key context; its context flag
   selects width for mode2. Full219instructions671ownedbytes in two existing ranges; byte60746F
   stays unowned. Child failures and malformed/truncated-input behavior are not a general host
   parity claim. */

byte __thiscall SavedModelSharedSteps_Read(void *this,void *reader,void *keyContext)

{
  void *this_00;
  undefined4 *puVar1;
  bool bVar2;
  uint uVar3;
  uint *puVar4;
  undefined4 uVar5;
  uint uVar6;
  int *stream;
  uint local_48;
  uint local_44;
  int *local_40;
  undefined4 local_3c;
  uint local_38;
  uint local_34;
  void *local_30;
  undefined **local_2c;
  void *local_28;
  int local_24 [3];
  undefined4 *local_18;
  undefined4 local_14;
  int local_10;
  undefined4 local_4;
  
  this_00 = reader;
  local_2c = &PTR_LAB_00fe7748;
  local_28 = keyContext;
  local_30 = this;
  FUN_006072d0((int)this);
  stream = *(int **)((int)reader + 8);
  local_40 = stream;
  bVar2 = Stream_ReadUInt32(stream,&local_48,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar2);
  if (1 < local_48 - 1) {
    return 0;
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),&local_44,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar2);
  if ((*(char *)((int)reader + 0x14) != '\0') &&
     (bVar2 = StreamReader_CheckArrayBytes(reader,local_44,1), bVar2)) {
    keyContext = (void *)0x0;
    StreamReader_ReadUInt32Into(reader,(uint *)&keyContext);
    local_18 = (undefined4 *)0x0;
    local_14 = 0;
    local_10 = 0;
    local_4 = 0;
    FUN_00602eb0(&local_18,0x14);
    reader = (void *)0x0;
    if (keyContext != (void *)0x0) {
      do {
        if (*(char *)((int)this_00 + 0x14) == '\0') {
          FUN_00601100((int *)&local_18);
          puVar1 = local_18;
          if (local_18 != (undefined4 *)0x0) {
            if ((uint)((local_10 - (int)local_18 >> 2) * 4) < 0x29) {
              FUN_004e1c00(&DAT_011cfb08,(uint *)&DAT_00fe76c0);
              *puVar1 = DAT_01158e40;
              DAT_01158e40 = puVar1;
              FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011cfb08);
              return 0;
            }
            FUN_004e5e70(DAT_011cc864,(int)local_18);
          }
          return 0;
        }
        bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_34,
                                  *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar2);
        FUN_00606f10(&local_18,stream,(int *)&local_2c,2 - (uint)(local_48 < 2));
        uVar3 = FUN_00606fc0((int *)&local_18);
        uVar6 = 0xff;
        puVar4 = FUN_006028b0(&local_18,0x687720a6);
        if (((char)*puVar4 != -1) &&
           (uVar5 = FUN_00600c60(*puVar4 >> 8,&local_3c), (char)uVar5 != '\0')) {
          uVar6 = FUN_005fea50(local_3c);
          uVar6 = uVar6 & 0xff;
        }
        local_38 = local_38 & 0xffffff00;
        SavedModelStepMap_GetOrInsert((void *)((int)local_30 + 0x10),local_24,&local_34,local_38);
        *(char *)(local_24[0] + 4) = (char)uVar6;
        *(uint *)(local_24[0] + 4) = uVar6 | uVar3 << 8;
        reader = (void *)((int)reader + 1);
        stream = local_40;
      } while (reader < keyContext);
    }
    FUN_00601100((int *)&local_18);
    puVar1 = local_18;
    if (local_18 != (undefined4 *)0x0) {
      if ((uint)((local_10 - (int)local_18 >> 2) * 4) < 0x29) {
        FUN_004e1c00(&DAT_011cfb08,(uint *)&DAT_00fe76c0);
        *puVar1 = DAT_01158e40;
        DAT_01158e40 = puVar1;
        FUN_004e1cc0((LPCRITICAL_SECTION)&DAT_011cfb08);
        return 1;
      }
      FUN_004e5e70(DAT_011cc864,(int)local_18);
    }
    return 1;
  }
  return 0;
}

