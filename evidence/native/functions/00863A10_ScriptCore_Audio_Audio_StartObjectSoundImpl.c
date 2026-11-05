/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011677a8.
   ScriptCore.Audio::Audio_StartObjectSoundImpl [assembly=ScriptCore token=0x060011DF; objectHandle:
   System.UInt64, name: System.String, loop: System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 object audio wrapper instruction and ABI contract. FOUR physical stack words: GUID
   low/high,managed string handle,loop word; meaningful loop input is LOWBYTE at entrySP+10h (higher
   bytes ignored). UInt32 EAX0 rejects, child ID returned unchanged. Full
   body863A10..863AD6,199bytes. Host769390 virtual+58 takes ECXhost plus ONE managed-name stack word
   and returns16-bit code-unit pointer. No local null host/buffer check. Normalize loop byte!=0 to
   UInt32flags0/1, then call9433A0(component,nameCodeUnits,flags,relatedNULL). This flagbit0 also
   controls native range/inactive/name-retention downstream; a separate current Loop Boolean does
   not alone implement it. Calls preserve child result across held-object release. cdecl caller
   cleanup, plain RET. Original UInt64 GUID occupies stack+4/+8 low/high. Uses global object
   registry937570, exact GUID lookup937F80, then874FB0 with local output/reference storage before
   Audio component mask lookup934260. Missing registry/object/component is no-op (start returns0).
   Borrowed lookup and reference holder are distinct. Selected release LOCK XADD subtracts1 from
   held object's DWORD+4; if oldcount==1, XCHG resets it to1 then virtual+0 with deleteFlag1.
   Full874FB0 acquisition/error semantics, object/GC lifetime and concurrent refcount domain remain
   static research. Following terminal RET padding is INT3 and is excluded from this function body.
    */

uint __cdecl
ScriptCore_Audio__Audio_StartObjectSoundImpl
          (ulonglong objectGuid,void *managedName,byte loopLowByte)

{
  int iVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int *piVar4;
  ushort *soundNameCodeUnits;
  uint uVar5;
  undefined4 *local_4;
  
  local_4 = (undefined4 *)0x0;
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    puVar3 = ObjectRegistry_FindBorrowed(pvVar2,objectGuid);
    FUN_00874fb0(&local_4,puVar3);
    puVar3 = local_4;
    if (local_4 != (undefined4 *)0x0) {
      pvVar2 = Object_GetComponentByMask(local_4,DAT_011e9e70);
      if (pvVar2 != (void *)0x0) {
        piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
        soundNameCodeUnits = (**(code **)(*piVar4 + 0x58))(piVar4,managedName);
                    /* Original entrySP+10h loop LOWBYTE, normalize nonzero toUInt32flags1. Name is
                       entrySP+0Ch; these are distinct slots despite former param3 alias. */
        uVar5 = ObjectSound_StartWideName
                          (pvVar2,soundNameCodeUnits,(uint)(loopLowByte != 0),(void *)0x0);
        piVar4 = puVar3 + 1;
        LOCK();
        iVar1 = *piVar4;
        *piVar4 = *piVar4 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *piVar4 = 1;
          UNLOCK();
          (**(code **)*puVar3)(puVar3,1);
        }
        return uVar5;
      }
      piVar4 = puVar3 + 1;
      LOCK();
      iVar1 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*puVar3)(puVar3,1);
      }
    }
  }
  return 0;
}

