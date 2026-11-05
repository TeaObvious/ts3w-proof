/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall64byte four-key pointer RET4 fullEAX ID. Lookupfullquad. Existingrow
   incrementsDWORDcounter+44 withnativewrap. Missing allocates FIRST FREE POSITIVE ID viaA8EA30,
   creates keyrow/counter, initialcount1, writes reverseIDmap with64bytekey. Does NOT compare
   implicitdefault before addingreference. CallerA99300 increasescounterbyremainingquartercount-1.
   Thus reference-row ID is not necessarily physical lookupresult0 in a previouslyabsent row case.
    */

uint __thiscall FloorKeyMap_AddReference(void *this,undefined *fourKeys)

{
  uint uVar1;
  uint *puVar2;
  undefined4 *puVar3;
  int iVar4;
  uint local_8 [2];
  
  FUN_00a8f320(this,local_8,fourKeys);
  if (local_8[0] == *(uint *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_8[1] = 1;
    uVar1 = FloorKeyMap_FirstFreePositiveId(this);
    local_8[0] = uVar1;
    puVar2 = (uint *)FloorKeyMap_GetOrCreateCounters(this,fourKeys);
    *puVar2 = uVar1;
    puVar2[1] = 1;
    puVar3 = (undefined4 *)FUN_00a90180((void *)((int)this + 0x20),local_8);
    for (iVar4 = 0x10; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar3 = *(undefined4 *)fourKeys;
      fourKeys = (undefined *)((int)fourKeys + 4);
      puVar3 = puVar3 + 1;
    }
    return uVar1;
  }
  *(int *)(local_8[0] + 0x44) = *(int *)(local_8[0] + 0x44) + 1;
  return *(uint *)(local_8[0] + 0x40);
}

