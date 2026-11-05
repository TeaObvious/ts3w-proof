

/* Replaces the MemoryStream backing record and capacity, preserving a capacity-bounded byte prefix
   when both old and new backing exist.
   ECX is the stream and the one stack DWORD is requestedCapacity; RET4. Nonzero capacity allocates
   a0x14 backing object through004E0A20 and payload through004DEF60; null record/data returns false
   AL, with constructed-null-data backing released through004DEE00. These false exits have no
   explicit replacement store to stream+4/+14, but called allocation/release side effects remain
   open; no global rollback/OOM guarantee. Copy count is unsigned min(requestedCapacity,
   oldCapacity), not logical length. Old signed count+C>1 is decremented; otherwise byte+10 gates
   data allocator+0C and record virtual0(flag1). Success stores stream+4/+14 and AL1; zero request
   releases/clears backing and capacity. Logical length+10, position+18 and growth permission+1C are
   not changed or checked here. Only AL is the success contract; upper EAX bits are path-dependent
   residues. Preserve the current undefined4 nativeSignature/thiscall/types although C renders uint;
   valid backing/allocator storage and lifetime are prerequisites. */

uint __thiscall MemoryStream_ReplaceBackingCapacity(void *this,uint requestedCapacity)

{
  int *backingRecord;
  char *allocationLabel;
  undefined4 *puVar1;
  uint uVar2;
  int decrementedOldReferenceCount;
  int *replacementBacking;
  
  if ((*(int *)((int)this + 4) == 0) ||
     (backingRecord = *(int **)(*(int *)((int)this + 4) + 4), backingRecord == (int *)0x0)) {
    backingRecord = (int *)FUN_004d9c90();
  }
  if (requestedCapacity != 0) {
    allocationLabel = *(char **)((int)this + 8);
    if (allocationLabel == (char *)0x0) {
      allocationLabel = "Services/EAIO/EAStreamMemory/ptr";
    }
    puVar1 = FUN_004e0a20(0x14,backingRecord,allocationLabel);
    uVar2 = 0;
    if (puVar1 != (undefined4 *)0x0) {
      backingRecord = FUN_004def60(puVar1,requestedCapacity,backingRecord,*(char **)((int)this + 8))
      ;
      uVar2 = 0;
      if (backingRecord != (int *)0x0) {
        backingRecord[3] = backingRecord[3] + 1;
        replacementBacking = backingRecord;
        if (backingRecord[2] != 0) goto LAB_004df22e;
        uVar2 = MemoryBacking_ReleaseReference(backingRecord);
      }
    }
    return uVar2 & 0xffffff00;
  }
  replacementBacking = (int *)0x0;
LAB_004df22e:
  if (*(int *)((int)this + 4) != 0) {
    if (replacementBacking != (int *)0x0) {
      uVar2 = *(uint *)((int)this + 0x14);
      if (requestedCapacity < *(uint *)((int)this + 0x14)) {
        uVar2 = requestedCapacity;
      }
      memcpy((void *)replacementBacking[2],*(void **)(*(int *)((int)this + 4) + 8),uVar2);
    }
    puVar1 = *(undefined4 **)((int)this + 4);
    if (1 < (int)puVar1[3]) {
      decrementedOldReferenceCount = puVar1[3] + -1;
      puVar1[3] = decrementedOldReferenceCount;
      *(int **)((int)this + 4) = replacementBacking;
      *(uint *)((int)this + 0x14) = requestedCapacity;
      return CONCAT31((int3)((uint)decrementedOldReferenceCount >> 8),1);
    }
    if (*(char *)(puVar1 + 4) != '\0') {
      (**(code **)(*(int *)puVar1[1] + 0xc))(puVar1[2],0);
    }
    backingRecord = (int *)(**(code **)*puVar1)(1);
  }
  *(int **)((int)this + 4) = replacementBacking;
  *(uint *)((int)this + 0x14) = requestedCapacity;
  return CONCAT31((int3)((uint)backingRecord >> 8),1);
}

