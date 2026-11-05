/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 cdecl control entry; nine caller-popped stackword lanes: object GUID low/high,
   four-word resource key, low-byte loop and two low-word auxiliary inputs. Missing object
   registry/object or resource rejects with EAX0. Builds BADAF60C with full GUID/key, loop and100h
   target dimensions; if the object audio component exists calls
   ObjectSound_StartWithAdmissionChecks for base_tv with flags1, related0 and existingSound0 BEFORE
   render submission. Returns the paired UInt32 sound result. Same-key deduplication occurs later in
   manager9D79E0, not in this body. Auxiliary flag semantics and native audio-row/device ownership
   are not expanded here. */

undefined4 __cdecl
ObjectVideo_QueuePlayWithPairedSound
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined1 param_7,undefined2 param_8,
          undefined2 param_9)

{
  undefined4 uVar1;
  void *pvVar2;
  int *piVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  byte abStack_64 [4];
  undefined4 *puStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined1 auStack_54 [80];
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
    if (pvVar2 != (void *)0x0) {
      GetGlobalInterfacePointer_11D5BBC();
      piVar3 = (int *)FUN_004afe80();
      iVar4 = (**(code **)(*piVar3 + 0x44))(&param_3);
      if (iVar4 != 0) {
        abStack_64[0] = 0xc;
        abStack_64[1] = 0xf6;
        abStack_64[2] = 0xda;
        abStack_64[3] = 0xba;
        puStack_60 = (undefined4 *)0x0;
        uStack_5c = param_1;
        uStack_58 = param_2;
        puVar5 = FUN_0078eb30((int)abStack_64);
        *puVar5 = param_3;
        puVar5[1] = param_4;
        puVar5[2] = param_5;
        puVar5[3] = param_6;
        puVar5[6] = 0x100;
        puVar5[7] = 0x100;
        *(undefined1 *)(puVar5 + 4) = param_7;
        puVar5[5] = 0;
        *(undefined2 *)(puVar5 + 8) = param_8;
        *(undefined2 *)((int)puVar5 + 0x22) = param_9;
        *(undefined1 *)((int)puVar5 + 0x11) = 1;
        pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011e9e70);
        if (pvVar2 != (void *)0x0) {
          uVar6 = ObjectSound_StartWithAdmissionChecks(pvVar2,(byte *)"base_tv",1,(void *)0x0,0);
          puVar5[5] = uVar6;
        }
        RenderCommand_EnqueueIfDispatcherExists(abStack_64);
        uVar1 = puVar5[5];
        if (puStack_60 != (undefined4 *)0x0) {
          (**(code **)*puStack_60)(auStack_54);
        }
        return uVar1;
      }
    }
  }
  return 0;
}

