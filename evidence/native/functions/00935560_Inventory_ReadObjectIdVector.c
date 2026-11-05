/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): ECX vector plus one stream-context stack word,
   RET4. Read UInt32 count, accumulate status, CheckArrayBytes(count,8), reserve/read raw64-bit
   elements under context byte order; count0 skips resize/read and returns status. Current
   fresh-array projection preserves width/order but uses exceptions and bounded arrays. */

undefined1 __thiscall Inventory_ReadObjectIdVector(void *this,void *param_1)

{
  bool bVar1;
  uint local_4;
  
  local_4 = 0;
  bVar1 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  if (*(char *)((int)param_1 + 0x14) != '\0') {
    bVar1 = StreamReader_CheckArrayBytes(param_1,local_4,8);
    if (bVar1) {
      if (local_4 != 0) {
        FUN_0059f220(this,local_4);
        bVar1 = Stream_ReadUInt64ArrayByByteOrder
                          (*(undefined **)((int)param_1 + 8),*(undefined **)this,local_4,
                           *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar1);
      }
      return *(undefined1 *)((int)param_1 + 0x14);
    }
  }
  return 0;
}

