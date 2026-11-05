

/* Drops a reference to the MemoryStream backing record, or dispatches its final payload/record
   release path.
   ECX supplies the backing record and the body uses plain RET. If signed count+C>1, decrement that
   DWORD and return its new value in EAX. Otherwise byte+10 gates allocator+0C(data+8,0), then call
   record virtual0(flag1) and return EAX0, without first decrementing count. Zero is not a general
   Boolean success or proof of deallocation/liveness. This body has no null-record guard, LOCK
   instruction or lifetime validation. The selected constructor/prefix/default-adapter release chain
   is a separate dependency; foreign allocator/object callbacks and alias ownership remain open.
   Preserve int fastcall return/parameter projections and original bytes. */

int __fastcall MemoryBacking_ReleaseReference(undefined4 *backingRecord)

{
  int decrementedReferenceCount;
  
  if (1 < (int)backingRecord[3]) {
    decrementedReferenceCount = backingRecord[3] + -1;
    backingRecord[3] = decrementedReferenceCount;
    return decrementedReferenceCount;
  }
  if (*(char *)(backingRecord + 4) != '\0') {
    (**(code **)(*(int *)backingRecord[1] + 0xc))(backingRecord[2],0);
  }
  (**(code **)*backingRecord)(1);
  return 0;
}

