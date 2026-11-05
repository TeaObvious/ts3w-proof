/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX vector plus one stream-context stack word,
   RET4. Read UInt32 count, accumulate status, CheckArrayBytes(count,8), reserve/read raw64-bit
   elements under context byte order; count0 skips resize/read and returns status. Current
   fresh-array projection preserves width/order but uses exceptions and bounded arrays. */

undefined1 __thiscall Inventory_ReadObjectIdVector(void *this,void *param_1)

{
  bool bVar1;
  undefined4 uVar2;
  uint local_4;
  
  local_4 = 0;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    bVar1 = StreamReader_CheckArrayBytes(param_1,local_4,8);
    if (bVar1) {
      if (local_4 != 0) {
        FUN_0059f220(this,local_4);
        uVar2 = FUN_004dda50(*(int **)((int)param_1 + 8),*(uint **)this,local_4);
        StreamReader_AccumulateStatus(param_1,(byte)uVar2);
      }
      return *(undefined1 *)((int)param_1 + 0x14);
    }
  }
  return 0;
}

