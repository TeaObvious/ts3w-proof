/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object IO context instruction contract. ECX context array owner, TWO physical
   stack words opaque ownerArgument and readerOrNull; RET8, result low AL only. Null reader walks
   all owner+4 DWORD-count entries, calls context virtual+8(ownerArgument,NULL), stops first AL0;
   otherwise AL1. Nonnull reads U16 tableVersion and U16 rowCount, accumulates reader status+14.
   At935D26 ADD ECX,FFFFFEFF then CMP CX,00FE/JA: unsigned LOW16 wrap admits exactly0101..01FF, not
   C# signed-promoted subtraction. Reads hashDWORD and sizeDWORD; finds registered mask, marks it
   seen, calls context virtual+8(ownerArgument, reader orNULL for zero size), skips unknown hash by
   sized absolute seek. Repeated known rows invoke callback repeatedly; no dedup/rollback.
   Afterwards absent registered contexts receive virtual+4(0); first callback refusal marks reader
   status0 and returnsAL0. Native reader has no supplied context-end bound/exact-end test. Child
   semantics, primitive failures and seek overflow acceptance remain separate. Decompiled
   readerOrNull-as-count is reused physical stack slot: raw count load/comparisons are UInt16, not
   pointer or signed count. */

byte __thiscall ObjectIoContexts_ReadOrInitialize(void *this,void *ownerArgument,void *readerOrNull)

{
  void *this_00;
  char cVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  uint uVar6;
  void *pvVar7;
  uint local_14;
  ushort local_10 [2];
  uint local_c;
  void *local_8;
  uint local_4;
  
  this_00 = readerOrNull;
  uVar6 = 0;
  if (readerOrNull == (void *)0x0) {
    uVar6 = 0;
    if (*(int *)((int)this + 4) != 0) {
      do {
        cVar1 = (**(code **)(**(int **)(*(int *)((int)this + 8) + uVar6 * 4) + 8))(ownerArgument,0);
        if (cVar1 == '\0') {
          return 0;
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 < *(uint *)((int)this + 4));
    }
    return 1;
  }
  local_10[0] = 0;
  local_10[1] = 0;
  bVar2 = Stream_ReadUInt16(*(void **)((int)readerOrNull + 8),local_10,
                            *(uint *)((int)readerOrNull + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  bVar2 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)&readerOrNull,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar2);
  if (*(char *)((int)this_00 + 0x14) != '\0') {
                    /* LOW16 admission: (UInt16)(tableVersion-0x0101) <=0x00FE. CMP CX/JA is
                       unsigned; accepted0101..01FF only. */
    if ((ushort)(local_10[0] - 0x101U) < 0xff) {
      local_8 = ObjectRegistry_GetGlobal();
                    /* Serialized rowCount is UInt16. Reused caller argument stack slot may appear
                       as a pointer/signed short in C; branch is only zero-count gate. */
      local_14 = 0;
      if ((short)readerOrNull != 0) {
        do {
          bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_4,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar2);
          bVar2 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_c,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar2);
          if (*(char *)((int)this_00 + 0x14) == '\0') {
            return 0;
          }
          iVar3 = StreamContext_GetPositionAndMarkNegative(this_00);
          uVar4 = ObjectRegistry_FindMaskByNameHash(local_8,local_4);
          if (uVar4 != 0) {
            local_14 = local_14 | uVar4;
            iVar5 = FUN_005af890(uVar4);
            pvVar7 = this_00;
                    /* sizeDWORD==0 sends NULL to this registered context's virtual+8; seen bit was
                       already set. Nonzero size sends reader pointer. */
            if (local_c == 0) {
              pvVar7 = (void *)0x0;
            }
            cVar1 = (**(code **)(**(int **)(*(int *)((int)this + 8) + iVar5 * 4) + 8))
                              (ownerArgument,pvVar7);
            if (cVar1 == '\0') goto LAB_00935e48;
          }
                    /* Unknown hashes still seek to payloadStart+sizeDWORD. ADD is32-bit; deeper
                       signed-absolute seek/error behavior remains with helper. */
          StreamContext_SeekWithSignedAbsoluteGuard(this_00,iVar3 + local_c,0);
                    /* MOVZX UInt16 rowCount, unsigned JB loop; no signed Int16 row limit. */
          uVar6 = uVar6 + 1;
        } while (uVar6 < ((uint)readerOrNull & 0xffff));
      }
      iVar3 = FUN_00937520((int)local_8);
      iVar5 = 0;
      if (0 < iVar3) {
        do {
                    /* For each registered descriptor absent from accumulated seen mask, call
                       context virtual+4 with explicit zero. Prior callback effects are not rolled
                       back on refusal. */
          if (((local_14 & 1 << ((byte)iVar5 & 0x1f)) == 0) &&
             (cVar1 = (**(code **)(**(int **)(*(int *)((int)this + 8) + iVar5 * 4) + 4))(0),
             cVar1 == '\0')) {
LAB_00935e48:
            StreamReader_AccumulateStatus(this_00,0);
            *(undefined1 *)((int)this_00 + 0x14) = 0;
            return 0;
          }
          iVar5 = iVar5 + 1;
        } while (iVar5 < iVar3);
      }
      return *(byte *)((int)this_00 + 0x14);
    }
    StreamReader_AccumulateStatus(this_00,0);
    *(undefined1 *)((int)this_00 + 0x14) = 0;
  }
  return 0;
}

