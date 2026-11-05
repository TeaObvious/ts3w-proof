/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX SeaLife row owner; stream context and resource-reference context stack words, RET8. Reads
   UInt32 version/count without comparing the version or imposing a fixed row cap. Each row clears
   its full key before the context-key read, then reads spacing/variance bits, seed, and UInt32
   UTF16-unit count. Counts above3FF fail sticky status immediately. Declared rows may mutate the
   owner before final sticky-status return; exact EOF is not required. */

undefined1 __thiscall LotSeaLife_ReadRows(void *this,void *param_1,void *param_2)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  void *this_00;
  uint *puVar4;
  uint *puVar5;
  uint local_834;
  uint local_830;
  uint local_82c;
  void *local_828;
  uint local_824 [5];
  ushort local_810 [1024];
  uint local_10;
  uint local_c;
  uint local_8 [2];
  
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_824,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  local_830 = 0;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_830,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    this_00 = (void *)((int)this + 4);
    *(undefined4 *)((int)this + 8) = *(undefined4 *)((int)this + 4);
    local_82c = 0;
    local_828 = this_00;
    if (local_830 != 0) {
      do {
        local_824[1] = 0;
        local_824[2] = 0;
        local_824[3] = 0;
        local_824[4] = 0;
        ResourceReferences_ReadContextKey(param_2,param_1,local_824 + 1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_10,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_c,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),local_8,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
        local_834 = 0;
        bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_834,
                                  *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
        if (0x3ff < local_834) {
          StreamReader_AccumulateStatus(param_1,0);
          *(undefined1 *)((int)param_1 + 0x14) = 0;
          return 0;
        }
        if (local_834 == 0) {
          local_810[0] = 0;
        }
        else {
          uVar2 = Stream_ReadUtf16UnitsEndian
                            (*(int **)((int)param_1 + 8),local_810,local_834,
                             *(uint *)((int)param_1 + 0x10));
          StreamReader_AccumulateStatus(param_1,(byte)uVar2);
          local_810[local_834] = 0;
        }
        puVar5 = *(uint **)((int)this_00 + 4);
        if (puVar5 < *(uint **)((int)this_00 + 8)) {
          *(uint **)((int)this_00 + 4) = puVar5 + 0x208;
          if (puVar5 != (uint *)0x0) {
            puVar4 = local_824;
            for (iVar3 = 0x208; puVar4 = puVar4 + 1, this_00 = local_828, iVar3 != 0;
                iVar3 = iVar3 + -1) {
              *puVar5 = *puVar4;
              puVar5 = puVar5 + 1;
            }
          }
        }
        else {
          FUN_00c0e240(this_00,puVar5,local_824 + 1);
        }
        local_82c = local_82c + 1;
      } while (local_82c < local_830);
    }
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

