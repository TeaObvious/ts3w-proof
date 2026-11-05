/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011677c0.
   ScriptCore.Audio::Audio_StopObjectSoundImpl [assembly=ScriptCore token=0x060011E2; objectHandle:
   System.UInt64, soundHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 object audio wrapper instruction and ABI contract. THREE physical stack words
   GUIDlow/high,soundId; void. Full body863BA0..863C16,119bytes. Resolved component
   receives942BB0(soundId,stopMode0); raw pushes0 then supplied soundId at863BEA/863BEC, actual
   receiverECX. Original stop-mode0 meaning downstream is not inferred as immediate completion/fade.
   cdecl caller cleanup, plain RET. Original UInt64 GUID occupies stack+4/+8 low/high. Uses global
   object registry937570, exact GUID lookup937F80, then874FB0 with local output/reference storage
   before Audio component mask lookup934260. Missing registry/object/component is no-op (start
   returns0). Borrowed lookup and reference holder are distinct. Selected release LOCK XADD
   subtracts1 from held object's DWORD+4; if oldcount==1, XCHG resets it to1 then virtual+0 with
   deleteFlag1. Full874FB0 acquisition/error semantics, object/GC lifetime and concurrent refcount
   domain remain static research. Following terminal RET padding is INT3 and is excluded from this
   function body. */

void __cdecl ScriptCore_Audio__Audio_StopObjectSoundImpl(ulonglong objectGuid,uint soundId)

{
  int *piVar1;
  int iVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined4 *local_4;
  
  local_4 = (undefined4 *)0x0;
  pvVar3 = ObjectRegistry_GetGlobal();
  if (pvVar3 != (void *)0x0) {
    puVar4 = ObjectRegistry_FindBorrowed(pvVar3,objectGuid);
    FUN_00874fb0(&local_4,puVar4);
    puVar4 = local_4;
    if (local_4 != (undefined4 *)0x0) {
      pvVar3 = Object_GetComponentByMask(local_4,DAT_011e9e70);
      if (pvVar3 != (void *)0x0) {
                    /* Actual942BB0 arguments are suppliedUInt32 soundId plus stopMode0; component
                       receiverECX, callee RET8. No backend completion is implied by return. */
        ObjectSound_StopOne(pvVar3,soundId,0);
      }
      piVar1 = puVar4 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar4)(puVar4,1);
      }
    }
  }
  return;
}

