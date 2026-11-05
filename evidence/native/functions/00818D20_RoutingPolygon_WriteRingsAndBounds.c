/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing polygon contract): Analyst name. ECX36-byte polygonrecord; stream
   stackslotRET4, ALalways1. Ringcount=(end-begin)>>4; each ring vertexcount=(end-begin)>>3,
   orderedbinary32X/Zpairs, then four existing binary32AABBwords+10..+1C and Boolean+20. Bounds are
   authored/retained state, not recomputed from vertices here. Stream writes accumulate status but
   do not change leafAL1. Empty rings/counts serialize without current projection safetyceilings. */

byte __thiscall RoutingPolygon_WriteRingsAndBounds(void *this,void *stream)

{
  void *this_00;
  byte bVar1;
  bool readSucceeded;
  uint uVar2;
  uint value;
  uint local_4;
  
  this_00 = stream;
  local_4 = *(int *)((int)this + 4) - *(int *)this >> 4;
  bVar1 = Stream_WriteUInt32(*(void **)((int)stream + 8),local_4,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar1);
  if (local_4 != 0) {
    stream = (void *)0x0;
    do {
      value = ((int *)(*(int *)this + (int)stream))[1] - *(int *)(*(int *)this + (int)stream) >> 3;
      bVar1 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),value,*(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      uVar2 = 0;
      if (value != 0) {
        do {
          bVar1 = FUN_004de390(*(int **)((int)this_00 + 8),
                               *(undefined4 *)(*(int *)((int)stream + *(int *)this) + uVar2 * 8),
                               *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          bVar1 = FUN_004de390(*(int **)((int)this_00 + 8),
                               *(undefined4 *)(*(int *)((int)stream + *(int *)this) + 4 + uVar2 * 8)
                               ,*(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          uVar2 = uVar2 + 1;
        } while (uVar2 < value);
      }
      stream = (void *)((int)stream + 0x10);
      local_4 = local_4 - 1;
    } while (local_4 != 0);
  }
  bVar1 = FUN_004de390(*(int **)((int)this_00 + 8),*(undefined4 *)((int)this + 0x10),
                       *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = FUN_004de390(*(int **)((int)this_00 + 8),*(undefined4 *)((int)this + 0x14),
                       *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = FUN_004de390(*(int **)((int)this_00 + 8),*(undefined4 *)((int)this + 0x18),
                       *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = FUN_004de390(*(int **)((int)this_00 + 8),*(undefined4 *)((int)this + 0x1c),
                       *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  readSucceeded = Stream_WriteBoolean(*(void **)((int)this_00 + 8),*(byte *)((int)this + 0x20));
  StreamReader_AccumulateStatus(this_00,readSucceeded);
  return 1;
}

