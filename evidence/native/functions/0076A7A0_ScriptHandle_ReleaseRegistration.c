/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS host reset contract): ECX typed registry, UInt32 numeric handle
   stackword RET4. Under lock+9F0 use unsigned high byte to select bucket, find forward handle row,
   decrement row+8 count; when it reaches zero erase forward row and erase reverse mapping by saved
   pointer. Return saved pointer DWORD, or zero for missing bucket/handle. Contrast76A6D0 explicit
   pointer unpublication, which clears forward pointer regardless of registration count.
   Vtable1008960+D8 and108C6D0+D8 point here;767480 releases its temporary queue registration
   through this slot. Complete69-instruction195-byte body defined at entry76A7A0; finalRET4
   ends76A862, followingINT3alignment excluded.
   
   Analyst note, original PC1.67 static. Actual complete typed registration release: ECX registry,
   one numeric UInt32 handle DWORD, RET4, saved pointer DWORD in EAX (or0 missing). Current
   void/noargs database metadata was physically incorrect; preserve all prior SACS/typed-registry
   annotations. Under actual critical section registry+0x9F0 select bucket by unsigned handle high
   byte, find forward row, decrement DWORD row+8, save pointer row+4. When count becomes0 erase
   forward row and reverse pointer mapping; return the saved pointer for every valid release, even
   if count remains nonzero. No underlying object virtual Release occurs here: shared UI destroy
   caller007796E0 and layout destroy0077A820 separately consume that pointer. Actual
   global-interface main table0108C6D0+D8 and existing generic table01008960+D8 point here.
   Full195-byte body ends at RET4 bytes0076A860..862; subsequent padding excluded. Actual C stack
   aliases around generic map erasure do not replace physical count/return/cleanup instructions. */

uint __thiscall ScriptHandle_ReleaseRegistration(void *this,uint handle)

{
  void *this_00;
  int *piVar1;
  LPCRITICAL_SECTION this_01;
  uint uVar2;
  int iVar3;
  byte bStack_9;
  int iStack_8;
  int *piStack_4;
  
  this_01 = (LPCRITICAL_SECTION)((int)this + 0x9f0);
  FUN_004e1c00(this_01,(uint *)&DAT_01008744);
  bStack_9 = (byte)(handle >> 0x18);
  FUN_0076a530((void *)((int)this + 4),&iStack_8,&bStack_9);
  iVar3 = iStack_8;
  if (iStack_8 != *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    this_00 = (void *)(iStack_8 + 4);
    PickCandidateMap_FindIterator(this_00,&iStack_8,&handle);
    if (iStack_8 != *(int *)(*(int *)(iVar3 + 8) + *(int *)(iVar3 + 0xc) * 4)) {
      piVar1 = (int *)(iStack_8 + 8);
      *piVar1 = *piVar1 + -1;
      uVar2 = *(uint *)(iStack_8 + 4);
      handle = uVar2;
      if (*piVar1 == 0) {
        FUN_00c4c890(this_00,&iStack_8,iStack_8,piStack_4);
        FUN_009d6a10((void *)(iVar3 + 0x24),&handle);
      }
      FUN_004e1cc0(this_01);
      return uVar2;
    }
  }
  FUN_004e1cc0(this_01);
  return 0;
}

