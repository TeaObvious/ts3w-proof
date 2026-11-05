/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Analyst note (PC1.67 SACS host reset contract): ECX typed handle registry, pointer and type stack
   words; RET8, AL bool. Under registry+9F0 critical section find low-byte type bucket, reverse-map
   pointer to handle, erase reverse entry, find handle row and write DWORD0 at row+4. Does not
   require a handle counter to reach zero. False for absent type/pointer/handle; upper EAX bits are
   unspecified. Vtable1008960+D4 and108C6D0+D4 point here; SACS94D320 passes driver pointer
   and20hex. Subsequent76A590 numeric-handle lookup returns null even if number remains in a managed
   wrapper. */

uint __thiscall ScriptHandle_UnpublishTypedPointer(void *this,undefined4 param_1,uint param_2)

{
  void *this_00;
  void *this_01;
  LPCRITICAL_SECTION this_02;
  void *pvVar1;
  uint uVar2;
  LONG LVar3;
  void *local_8;
  void *local_4;
  
  this_02 = (LPCRITICAL_SECTION)((int)this + 0x9f0);
  FUN_004e1c00(this_02,(uint *)&DAT_01008744);
  FUN_0076a530((void *)((int)this + 4),&local_8,(byte *)&param_2);
  pvVar1 = local_8;
  if (local_8 != *(void **)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    this_00 = (void *)((int)local_8 + 4);
    this_01 = (void *)((int)local_8 + 0x24);
    UInt32PairMap_Find(this_01,&local_8,&param_1);
    if (local_8 != *(void **)(*(int *)((int)pvVar1 + 0x28) + *(int *)((int)pvVar1 + 0x2c) * 4)) {
      param_2 = *(uint *)((int)local_8 + 4);
      UInt32PairMap_EraseIterator(this_01,&local_8,local_8,local_4);
      PickCandidateMap_FindIterator(this_00,&local_8,&param_2);
      if (local_8 != *(void **)(*(int *)((int)pvVar1 + 8) + *(int *)((int)pvVar1 + 0xc) * 4)) {
        *(undefined4 *)((int)local_8 + 4) = 0;
        LVar3 = FUN_004e1cc0(this_02);
        return CONCAT31((int3)((uint)LVar3 >> 8),1);
      }
    }
  }
  uVar2 = FUN_004e1cc0(this_02);
  return uVar2 & 0xffffff00;
}

