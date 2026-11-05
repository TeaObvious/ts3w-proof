

/* Releases an allocator chunk through conditional bin/coalescing or region-dispatch paths; this is
   not a universal OS-free or successful-deallocation guarantee.
   ECX is the allocator, the one raw stack DWORD is the payload address, RET4. Null skips metadata
   updates. Nonnull reads headers at payload-10h/-0Ch and requires valid chunk/list state. Masked
   span<=allocator+4 enters a size bin; larger mask02-clear chunks coalesce/list-update and may
   call004E5080/004E54E0 for trimming. Mask02-set regions unlink and decrement allocator+48Ch/+488h
   accounting before KERNEL32!VirtualFree(base,0,8000h), whose result is not checked or rolled back
   here. Different paths leave unrelated EAX residues, with no normalized success result. Shared
   wrapper004E5E70 conditionally brackets this body with allocator locking; no global
   thread/ownership/liveness/OOM/rollback contract follows. Preserve current undefined
   nativeSignature/thiscall and int address-word parameter although C renders void and pointer
   casts; no type/ABI/boundary edit. */

void __thiscall GeneralAllocator_FreeChunk(void *this,int payloadAddressWord)

{
  uint uVar1;
  uint *freeChunkCursor;
  undefined4 uVar2;
  uint successorChunkSpanBytes;
  uint coalescedChunkSpanBytes;
  uint *initialSuccessorChunk;
  int *regionTailLinkWords;
  
  if (payloadAddressWord != 0) {
    uVar1 = *(uint *)(payloadAddressWord + -0xc);
    freeChunkCursor = (uint *)(payloadAddressWord + -0x10);
    coalescedChunkSpanBytes = uVar1 & 0x7ffffff8;
    if (coalescedChunkSpanBytes <= *(uint *)((int)this + 4)) {
      *(uint *)((int)this + 4) = *(uint *)((int)this + 4) | 1;
      uVar2 = *(undefined4 *)((int)this + (coalescedChunkSpanBytes >> 3) * 4);
      *(uint *)(payloadAddressWord + -0xc) = *(uint *)(payloadAddressWord + -0xc) | 0x80000004;
      *(undefined4 *)(payloadAddressWord + -4) = uVar2;
      *(uint **)((int)this + (coalescedChunkSpanBytes >> 3) * 4) = freeChunkCursor;
      return;
    }
    if ((uVar1 & 2) == 0) {
      initialSuccessorChunk = (uint *)(coalescedChunkSpanBytes + (int)freeChunkCursor);
      successorChunkSpanBytes =
           *(uint *)(coalescedChunkSpanBytes + 4 + (int)freeChunkCursor) & 0x7ffffff8;
      if ((uVar1 & 1) == 0) {
        uVar1 = *freeChunkCursor;
        freeChunkCursor = (uint *)((int)freeChunkCursor - uVar1);
        coalescedChunkSpanBytes = coalescedChunkSpanBytes + uVar1;
        freeChunkCursor[1] = coalescedChunkSpanBytes | 1;
        *initialSuccessorChunk = coalescedChunkSpanBytes;
        *(uint *)(freeChunkCursor[2] + 0xc) = freeChunkCursor[3];
        *(uint *)(freeChunkCursor[3] + 8) = freeChunkCursor[2];
      }
      if ((*(byte *)((int)initialSuccessorChunk + successorChunkSpanBytes + 4) & 1) == 0) {
        *(uint *)(initialSuccessorChunk[2] + 0xc) = initialSuccessorChunk[3];
        *(uint *)(initialSuccessorChunk[3] + 8) = initialSuccessorChunk[2];
        coalescedChunkSpanBytes = coalescedChunkSpanBytes + successorChunkSpanBytes;
        freeChunkCursor[1] = coalescedChunkSpanBytes | 1;
        *(uint *)(coalescedChunkSpanBytes + (int)freeChunkCursor) = coalescedChunkSpanBytes;
      }
      else {
        initialSuccessorChunk[1] = initialSuccessorChunk[1] & 0xfffffffe;
        *initialSuccessorChunk = coalescedChunkSpanBytes;
      }
      if ((freeChunkCursor == *(uint **)((int)this + 0x440)) ||
         (initialSuccessorChunk == *(uint **)((int)this + 0x440))) {
        *(uint **)((int)this + 0x440) = freeChunkCursor;
        freeChunkCursor[3] = (uint)freeChunkCursor;
        freeChunkCursor[2] = (uint)freeChunkCursor;
        freeChunkCursor[1] = coalescedChunkSpanBytes | 1;
        *(uint *)(coalescedChunkSpanBytes + (int)freeChunkCursor) = coalescedChunkSpanBytes;
      }
      else {
        uVar1 = *(uint *)((int)this + 0x3c);
        freeChunkCursor[2] = (int)this + 0x30;
        freeChunkCursor[3] = uVar1;
        *(uint **)((int)this + 0x3c) = freeChunkCursor;
        *(uint **)(uVar1 + 8) = freeChunkCursor;
      }
      if (((0xffff < coalescedChunkSpanBytes) &&
          (uVar2 = FUN_004e5080(this,coalescedChunkSpanBytes + (int)freeChunkCursor),
          (char)uVar2 != '\0')) && (*(uint *)((int)this + 0x4c8) <= coalescedChunkSpanBytes)) {
        FUN_004e54e0(this,*(int *)((int)this + 0x4cc));
        return;
      }
    }
    else {
      uVar1 = *freeChunkCursor;
      regionTailLinkWords = (int *)(coalescedChunkSpanBytes + 8 + (int)freeChunkCursor);
      *(undefined4 *)(*regionTailLinkWords + 0xc) =
           *(undefined4 *)(coalescedChunkSpanBytes + 0xc + (int)freeChunkCursor);
      *(int *)(*(int *)(coalescedChunkSpanBytes + 0xc + (int)freeChunkCursor) + 8) =
           *regionTailLinkWords;
      *(int *)((int)this + 0x48c) =
           *(int *)((int)this + 0x48c) - (uVar1 + 0x10 + coalescedChunkSpanBytes);
      *(int *)((int)this + 0x488) = *(int *)((int)this + 0x488) + -1;
      VirtualFree((LPVOID)((int)freeChunkCursor - uVar1),0,0x8000);
    }
  }
  return;
}

