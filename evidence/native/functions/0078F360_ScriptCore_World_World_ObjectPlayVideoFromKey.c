/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163708 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectPlayVideoFromKey [assembly=ScriptCore token=0x060007E5; objId:
   System.UInt64, videoKey: Sims3.SimIFace.ResourceKey, bLoop: System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_ObjectPlayVideoFromKey
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined1 param_7)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed
                       (pvVar1,CONCAT26((short)((uint)param_2 >> 0x10),
                                        CONCAT24((short)param_2,param_1)));
    if (pvVar1 != (void *)0x0) {
      GetGlobalInterfacePointer_11D5BBC();
      FUN_004afe80();
      uVar2 = ObjectVideo_QueuePlayWithPairedSound
                        (param_1,param_2,param_5,param_6,param_3,param_4,param_7,1,1);
      return uVar2;
    }
  }
  return 0;
}

