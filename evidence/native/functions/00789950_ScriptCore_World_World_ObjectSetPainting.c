/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163718 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetPainting [assembly=ScriptCore token=0x060007E7; objId:
   System.UInt64, paintingKey: Sims3.SimIFace.ResourceKey, levelToReveal: System.UInt32;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 painting contract. Registered World_ObjectSetPainting(ulong objectGuid,
   ResourceKey managedKey, uint stage). cdecl, 28 stack bytes, RET; original hook identity retained.
   The 16-byte managed key arrives TYPE/GROUP/INSTANCE64 and is reordered to native
   INSTANCE64/TYPE/GROUP before 949490. Missing registry/object/Model is a no-op. The Model mask is
   read at 11E9FC4. No key/stage validation here. The complete 103-byte body ends 7899B6; the
   previous 112-byte window included padding. The structure type is an analyst ABI description. */

void __cdecl
ScriptCore_World__World_ObjectSetPainting
          (ulonglong objectGuid,PC167_ManagedPaintingResourceKey managedKey,uint levelToReveal)

{
  void *pvVar1;
  undefined4 uStack_10;
  undefined4 uStack_c;
  uint uStack_8;
  uint uStack_4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectGuid);
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fc4);
      if (pvVar1 != (void *)0x0) {
        uStack_10 = (undefined4)managedKey.resourceInstance;
        uStack_c = managedKey.resourceInstance._4_4_;
        uStack_8 = managedKey.resourceType;
        uStack_4 = managedKey.resourceGroup;
        ModelComponent_SubmitPaintingCommand(pvVar1,(byte *)&uStack_10,levelToReveal);
      }
    }
  }
  return;
}

