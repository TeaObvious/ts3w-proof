/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636a0 (TS3W.exe).
   ScriptCore.World::World_ObjectEnableFootprint [assembly=ScriptCore token=0x060007D8; objId:
   System.UInt64, footprintNameHash: System.UInt32, enable: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed cdecl GUID,
   hash, one-byte enable. Missing manager/object/footprint component returns AL false. Calls
   SetNamedEnabledBit and returns true regardless of hash presence or actual change; true means
   component dispatch. */

bool __cdecl
ScriptCore_World__World_ObjectEnableFootprint
          (ulonglong objectGuid,uint footprintNameHash,bool enable)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectGuid);
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fa8);
      if (pvVar1 != (void *)0x0) {
        FootprintComponent_SetNamedEnabledBit(pvVar1,footprintNameHash,enable);
        return true;
      }
    }
  }
  return false;
}

