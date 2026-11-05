/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX row,stream RET4, AL status. UInt16
   room, packedUInt32coordinates, UInt64object. Internal object+0,X+8,Z+9,level+A,mask+B. Packing
   uses MOVSX for all four bytes and repeated SHL8/ADD, not independent unsigned byte stores:
   ((s8level*256+s8mask)*256+s8Z)*256+s8X. Thus out-of-range signed X/Z/mask can borrow into higher
   bytes. B54380 reads packed low8/next8/mask8/level8 back into internal fields. */

undefined1 __thiscall PoolManager_WriteRoomObjectRow(void *this,void *param_1)

{
  byte bVar1;
  
  bVar1 = FUN_004ddf20(*(int **)((int)param_1 + 8),*(ushort *)((int)this + 0xc),
                       *(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                             ((*(char *)((int)this + 10) * 0x100 + (int)*(char *)((int)this + 0xb))
                              * 0x100 + (int)*(char *)((int)this + 9)) * 0x100 +
                             (int)*(char *)((int)this + 8),*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = FUN_004de0c0(*(int **)((int)param_1 + 8),
                       CONCAT26((short)((uint)*(undefined4 *)((int)this + 4) >> 0x10),
                                *(undefined6 *)this),*(int *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  return *(undefined1 *)((int)param_1 + 0x14);
}

