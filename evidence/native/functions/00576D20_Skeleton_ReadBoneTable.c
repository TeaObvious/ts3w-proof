/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical ECX bone-table owner, one reader-context word, RET4, AL
   context status. UInt32 bone-table version admits0..2, then UInt32 count. Each 0x70-byte live bone
   receives translation3 at+10, quaternion4 at+20, scale3 at+30, counted BYTE string at+40,
   opposing/parent/hash/flags DWORDs at+54/+58/+5C/+60. Version>=2 alone reads trailing skeleton
   byte string at table+54. It calls00576090 after fields. These are serialized byte strings, not
   UTF16 or a character-count API. Bone matrix/SQT conversion remains a separate child contract. */

undefined1 __thiscall Skeleton_ReadBoneTable(void *this,void *param_1)

{
  void *this_00;
  bool bVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  uint local_8;
  void *local_4;
  
  this_00 = param_1;
  local_8 = 3;
  local_4 = this;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_8,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  if (2 < local_8) {
    return 0;
  }
  iVar3 = 0;
  param_1 = (void *)0x0;
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  FUN_00576c80((void *)((int)this + 4),(uint)param_1);
  pvVar2 = (void *)0x0;
  if (param_1 != (void *)0x0) {
    do {
      iVar4 = *(int *)((int)this + 4) + iVar3;
      FUN_007d7b60(this_00,(uint *)(iVar4 + 0x10));
      FUN_007d7c20(this_00,(uint *)(iVar4 + 0x20));
      FUN_007d7b60(this_00,(uint *)(iVar4 + 0x30));
      StreamContext_ReadCountedByteString(this_00,(undefined4 *)(iVar4 + 0x40));
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)(iVar4 + 0x54),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)(iVar4 + 0x58),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)(iVar4 + 0x5c),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)(iVar4 + 0x60),
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      pvVar2 = (void *)((int)pvVar2 + 1);
      iVar3 = iVar3 + 0x70;
      this = local_4;
    } while (pvVar2 < param_1);
  }
  if (1 < local_8) {
    StreamContext_ReadCountedByteString(this_00,(undefined4 *)((int)this + 0x54));
  }
  FUN_00576090((int)this);
  return *(undefined1 *)((int)this_00 + 0x14);
}

