/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 original instruction review. ECX is the audio owner; RET 10h consumes FOUR stack
   arguments: eventKey, soundId, objectGuid64Ptr, stopReason. Only event 0x03A129EE runs this path.
   Find soundId in the map at owner+0x27D0C, save the delegate, then erase/free the node BEFORE
   delegate/host checks and invocation. A missing entry returns; a null delegate or missing host
   still consumes the entry. Host vtable+0x134 receives three 32-byte variants: UInt32 soundId (tag
   0x0A), UInt64 object GUID (tag 0x0C), UInt32 stopReason (tag 0x0A), count 3. A same-ID
   registration during the callback follows removal of the old node. Host result is a separate
   32-byte variant at pre-call SP+0x10; TEST [SP+0x18],4 checks its flags+8. The decompiled local_88
   reuse after the unknown virtual call is a stack-alias artifact, NOT access to the erased node.
   Concrete host implementation, thread, delegate GC ownership, shutdown and handle reuse remain
   unresolved. */

void __thiscall
Audio_DispatchFinishedSoundCallbackEvent
          (void *this,uint eventKey,uint soundId,ulonglong *objectGuid,uint stopReason)

{
  int iVar1;
  int *piVar2;
  void *local_88;
  void *local_84;
  undefined1 local_80 [16];
  undefined1 auStack_70 [16];
  undefined1 local_60 [32];
  undefined1 local_40 [32];
  undefined1 local_20 [32];
  
  if (eventKey == 0x3a129ee) {
    UInt32PairMap_Find((void *)((int)this + 0x27d0c),&local_88,&soundId);
    if (local_88 != *(void **)(*(int *)((int)this + 0x27d10) + *(int *)((int)this + 0x27d14) * 4)) {
      iVar1 = *(int *)((int)local_88 + 4);
                    /* Erase/free callback node BEFORE null delegate, missing host and invocation.
                       One-shot consumption even if invocation cannot proceed. */
      UInt32PairMap_EraseIterator((void *)((int)this + 0x27d0c),&local_88,local_88,local_84);
      if (iVar1 != 0) {
        piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
        if (piVar2 != (int *)0x0) {
          Variant_ConstructUInt32(local_60,&soundId);
          Variant_ConstructUInt64(local_40,objectGuid);
          Variant_ConstructUInt32(local_20,&stopReason);
          (**(code **)(*piVar2 + 0x134))(local_80,iVar1,local_60,3);
                    /* Host result variant flags at output+8 (pre-call SP+18h), NOT the erased map
                       node. Unknown virtual-call cleanup confuses decompiler stack aliases. */
          if (((uint)local_88 & 4) != 0) {
            FUN_004f5760(&stack0xffffff70,'\0');
          }
          FUN_004466e0(auStack_70,0x20,3,FUN_004f5820);
        }
      }
    }
  }
  return;
}

