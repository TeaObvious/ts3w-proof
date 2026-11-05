/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX row plus stream pointer, RET0x04; AL status. Perform UInt16, UInt32
   and UInt64 reads in order, accumulating failures without skipping later reads. Wire14B
   room/X/Z/mask/level/object becomes observed internal16B layout: object+0,
   X+8,Z+9,level+A,mask+B,room+C. Caller inserts only successful rows. No independent version field,
   full row type or object ownership inferred. Descriptive role, not recovered symbol. */

undefined1 __thiscall PoolManager_ReadRoomObjectRow(void *this,void *param_1)

{
  void *this_00;
  bool bVar1;
  ushort local_c [2];
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = param_1;
  local_c[0] = 0;
  local_c[1] = 0;
  bVar1 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),local_c,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  *(ushort *)((int)this + 0xc) = local_c[0];
  param_1 = (void *)0x0;
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  *(char *)((int)this + 10) = (char)((uint)param_1 >> 0x18);
  *(char *)((int)this + 8) = (char)param_1;
  *(char *)((int)this + 0xb) = (char)((uint)param_1 >> 0x10);
  *(char *)((int)this + 9) = (char)((uint)param_1 >> 8);
  local_8 = 0;
  local_4 = 0;
  bVar1 = Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)&local_8,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  *(undefined4 *)this = local_8;
  *(undefined4 *)((int)this + 4) = local_4;
  return *(undefined1 *)((int)this_00 + 0x14);
}

