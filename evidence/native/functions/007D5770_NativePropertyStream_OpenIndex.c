/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader; original nonzero UInt16 version,
   relative data size and UInt16 row count; map rows contain encoded name and stream-relative
   offset. Retains starting position+C and final table position+10, publishes stream+8 only on
   accumulated success. This differs from managed PropertyStreamReader version1..2 and current
   bounded arrays; current duplicate-last policy is not established by unique-map insertion.
   Original AL status matters, upper EAX incidental. */

undefined4 __thiscall NativePropertyStream_OpenIndex(void *this,void *param_1)

{
  void *this_00;
  bool bVar1;
  int iVar2;
  uint extraout_EAX;
  uint extraout_EAX_00;
  uint uVar3;
  ushort uVar4;
  ushort local_28 [2];
  uint local_24;
  uint local_20;
  uint local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  undefined1 local_c [12];
  
  this_00 = param_1;
  iVar2 = StreamContext_GetPositionAndMarkNegative(param_1);
  *(int *)((int)this + 0xc) = iVar2;
  uVar4 = 0;
  local_28[0] = 0;
  local_28[1] = 0;
  bVar1 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),local_28,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  uVar3 = extraout_EAX;
  if (local_28[0] != 0) {
    local_24 = 0;
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_24,*(uint *)((int)this_00 + 0x10))
    ;
    StreamReader_AccumulateStatus(this_00,bVar1);
    uVar3 = extraout_EAX_00;
    if (*(char *)((int)this_00 + 0x14) != '\0') {
      StreamContext_SeekWithSignedAbsoluteGuard(this_00,*(int *)((int)this + 0xc) + local_24,0);
      param_1 = (void *)0x0;
      bVar1 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)&param_1,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      if ((ushort)param_1 != 0) {
        do {
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_20,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_1c,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          local_14 = local_20;
          local_18 = local_18 & 0xffffff00;
          local_10 = local_1c;
          UInt32PairMap_InsertUnique((void *)((int)this + 0x14),local_c,&local_14,local_18);
          uVar4 = uVar4 + 1;
        } while (uVar4 < (ushort)param_1);
      }
      uVar3 = StreamContext_GetPositionAndMarkNegative(this_00);
      *(uint *)((int)this + 0x10) = uVar3;
      if (*(char *)((int)this_00 + 0x14) != '\0') {
        *(void **)((int)this + 8) = this_00;
        return CONCAT31((int3)(uVar3 >> 8),1);
      }
    }
  }
  return uVar3 & 0xffffff00;
}

