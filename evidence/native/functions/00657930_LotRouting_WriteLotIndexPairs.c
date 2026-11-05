/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX secondary routing owner; three
   stack slots RET0C, AL status. Require good stream and owner dependencies. For selected lot,
   derive indexed UInt32 key/value pairs; writeUInt32version1,count and UInt32key/value rows,
   missing required lookup fails sticky status. Encoded key combines low10 index bits and
   neighborhood offsets relative to owner grid. Broader topology semantics remain unresolved;
   complete original body retained. */

byte __thiscall LotRouting_WriteLotIndexPairs(void *this,void *stream,uint lotLow,uint lotHigh)

{
  ushort uVar1;
  int iVar2;
  byte *pbVar3;
  bool bVar4;
  void *this_00;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  uint local_18;
  uint local_14;
  byte *local_10;
  uint local_c;
  int local_8 [2];
  
  if ((((*(char *)((int)stream + 0x14) == '\0') || (*(void **)((int)this + 0xc) == (void *)0x0)) ||
      (*(int *)((int)this + 0x10) == 0)) || (*(int *)((int)this + 8) == 0)) {
    StreamReader_AccumulateStatus(stream,0);
    *(undefined1 *)((int)stream + 0x14) = 0;
    return 0;
  }
  local_10 = (byte *)WorldObjects_FindLotByGuid
                               (*(void **)((int)this + 0xc),lotLow,lotHigh,(uint *)0x0);
  if (((local_10 != (byte *)0x0) && (this_00 = (void *)thunk_FUN_00835d40(), this_00 != (void *)0x0)
      ) && (((bVar4 = FUN_00656dc0(this,lotLow,lotHigh), bVar4 &&
             ((uVar5 = FUN_00632280(*(void **)((int)this + 8),lotLow,lotHigh), (char)uVar5 == '\0'
              && (uVar5 = FUN_00631830(*(void **)((int)this + 8),lotLow,lotHigh),
                 (char)uVar5 == '\0')))) ||
            ((uVar6 = FUN_0082b210(this_00,lotLow,lotHigh), (char)uVar6 != '\0' &&
             ((uVar5 = FUN_00632280(*(void **)((int)this + 8),lotLow,lotHigh), (char)uVar5 == '\0'
              && (uVar5 = FUN_00631830(*(void **)((int)this + 8),lotLow,lotHigh),
                 (char)uVar5 == '\0')))))))) {
    pbVar3 = local_10;
    iVar2 = *(int *)((int)local_10 + 0x4bc);
    uVar5 = 0;
    local_14 = 0;
    local_10 = (byte *)0x0;
    if ((char)iVar2 == '\0') {
      uVar6 = FUN_006515a0(this,(int)pbVar3,(undefined2 *)&local_18);
      if ((((char)uVar6 == '\0') ||
          (iVar7 = *(int *)(*(int *)(*(int *)((int)this + 0x10) + 8) + (local_18 & 0xffff) * 4) +
                   *(int *)(*(int *)((int)this + 0x10) + 0xc), iVar7 == 0)) ||
         (local_10 = (byte *)((uint)*(ushort *)(iVar7 + 2 + (local_18 >> 0x10) * 2) + iVar7),
         local_10 == (byte *)0x0)) {
        StreamReader_AccumulateStatus(stream,0);
        *(undefined1 *)((int)stream + 0x14) = 0;
        return 0;
      }
      local_14 = (uint)*local_10;
    }
    uVar8 = local_14;
    FUN_00565ae0(stream,1);
    FUN_00565ae0(stream,uVar8);
    if (uVar8 != 0) {
      local_c = local_18 & 0xffff;
      do {
        uVar1 = *(ushort *)(local_10 + (uVar5 & 0xff) * 2 + 5);
        uVar8 = (((uVar1 >> 10 & 7) - 3) +
                ((uVar1 >> 0xd) - 3) * **(int **)((int)this + 0x10) + local_c) * 0x10000 |
                uVar1 & 0x3ff;
        local_18 = uVar8;
        UInt32PairMap_Find((void *)((int)this + 0xa0),local_8,&local_18);
        local_18 = 0xffffffff;
        if (local_8[0] == *(int *)(*(int *)((int)this + 0xa4) + *(int *)((int)this + 0xa8) * 4)) {
          if ((char)iVar2 == '\0') {
            StreamReader_AccumulateStatus(stream,0);
            *(undefined1 *)((int)stream + 0x14) = 0;
            return 0;
          }
        }
        else {
          local_18 = *(uint *)(local_8[0] + 4);
        }
        FUN_00565ae0(stream,uVar8);
        FUN_005684e0(stream,local_18);
        uVar5 = uVar5 + 1;
      } while (uVar5 < local_14);
    }
    return *(byte *)((int)stream + 0x14);
  }
  StreamReader_AccumulateStatus(stream,0);
  *(undefined1 *)((int)stream + 0x14) = 0;
  return 0;
}

