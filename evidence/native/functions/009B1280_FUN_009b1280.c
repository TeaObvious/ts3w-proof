/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note, existing FUN name retained; no database rename.
   ECX metadata receiver; context and instance low/high are three stackwords, RET0C, resultAL. At9B12A4/AC the requested native key is D063545B/group0, with supplied instance, regardless of enumerated candidate group. The callee7D84C0 misleadingly named OpenWrite uses supplied modeBit0 here; this function then READS fields. No complete resource-host fallback/admission or full metadata-version/arithmetic parity is inferred. Stack aliasing param_1/param_2 later in actual C is temporary-local reuse, not extra ABI inputs. */
undefined1 __thiscall FUN_009b1280(void *this,void *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  uint uVar2;
  void *this_00;
  bool bVar3;
  bool bVar4;
  float fVar5;
  ulonglong uVar6;
  float local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  uint local_40;
  uint local_3c;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  int local_28;
  int local_24;
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined2 *local_18;
  char *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = param_1;
  local_c = param_3;
  local_10 = param_2;
  local_8 = 0xd063545b;
  local_4 = 0;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  if (!bVar3) {
    return 0;
  }
  bVar3 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)&param_2,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  if (0x1d < (ushort)param_2) {
    if (0x1e < (ushort)param_2) {
      bVar3 = Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)((int)this + 0x38),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar3);
      bVar3 = Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)((int)this + 0x50),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar3);
    }
    bVar3 = Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)((int)this + 0x68),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  local_20 = &DAT_011c8e54;
  local_1c = &DAT_011c8e54;
  local_14 = "Scratch/LotContentMetadata/Temp";
  local_18 = &DAT_011c8e56;
  StreamContext_ReadUtf16String(this_00,&local_20);
  if (0x1f < (ushort)param_2) {
    bVar3 = Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)((int)this + 0x70),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_48,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_44,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_40,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_3c,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),this,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 4),
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0xc),
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 8),
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_38,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_34,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_30,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_2c,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  if (0x1e < (ushort)param_2) {
    StreamContext_ReadUtf16String(this_00,(undefined4 *)((int)this + 0x24));
    StreamContext_ReadUtf16String(this_00,(undefined4 *)((int)this + 0x40));
  }
  StreamContext_ReadUtf16String(this_00,(undefined4 *)((int)this + 0x58));
  if ((ushort)param_2 < 0x1e) {
    uVar6 = NameHash64_Utf16Z(*(ushort **)((int)this + 0x58));
    *(ulonglong *)((int)this + 0x68) = uVar6;
  }
  bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x10),
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar3);
  *(uint *)((int)this + 0x78) = 0;
  *(uint *)((int)this + 0x7c) = 0;
  if (0x22 < (ushort)param_2) {
    uVar2 = *(uint *)((int)this + 0x10);
    if (uVar2 == 0) {
      bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x78),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar3);
    }
    else if (uVar2 == 1) {
      StreamReader_ReadUInt32Into(this_00,(uint *)((int)this + 0x7c));
    }
  }
  local_4c = 0;
  if (0x1c < (ushort)param_2) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_4c,*(uint *)((int)this_00 + 0x10))
    ;
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  local_50 = 0.0;
  if (0x19 < (ushort)param_2) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_50,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  if (0x1a < (ushort)param_2) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)((int)this + 0x20),
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  bVar3 = (ushort)param_2 < 0x2c;
  if (0x2a < (ushort)param_2) {
    bVar4 = Stream_ReadByte(*(void **)((int)this_00 + 8),(byte *)&param_1);
    StreamReader_AccumulateStatus(this_00,bVar4);
    local_28 = 0;
    local_24 = 0;
    bVar4 = Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)&local_28,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar4);
    if (local_28 != 0 || local_24 != 0) goto LAB_009b16af;
  }
  if (bVar3) {
    *(int *)((int)this + 0x20) = *(int *)((int)this + 0x20) - (int)local_50;
    if ((ushort)param_2 < 0x1c) {
      fVar5 = 1.0;
    }
    else {
      fVar5 = 2.0;
    }
    *(int *)((int)this + 0x20) =
         *(int *)((int)this + 0x20) - (int)((float)(*(int *)((int)this + 4) * *(int *)this) * fVar5)
    ;
  }
LAB_009b16af:
  if (0x39 < (ushort)param_2) {
    bVar3 = Stream_ReadBoolean(*(void **)((int)this_00 + 8),&param_1);
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  if (0x3b < (ushort)param_2) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  if (0x3d < (ushort)param_2) {
    bVar3 = Stream_ReadBoolean(*(void **)((int)this_00 + 8),(void *)((int)this + 0x80));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  if (0x3e < (ushort)param_2) {
    bVar3 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
  }
  ResourceStreamContext_Close(this_00);
  uVar1 = *(undefined1 *)((int)this_00 + 0x14);
  if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(local_20);
  }
  return uVar1;
}

