/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636b0 (TS3W.exe).
   ScriptCore.World::World_ObjectResetFootprintState [assembly=ScriptCore token=0x060007DA; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed cdecl GUID,
   AL bool. Missing manager/object/component returns false; otherwise resets runtime flags and
   returns true. */

bool __cdecl ScriptCore_World__World_ObjectResetFootprintState(ulonglong objectGuid)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectGuid);
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011e9fa8);
      if (pvVar1 != (void *)0x0) {
        FootprintComponent_ResetRuntimeFlags((int)pvVar1);
        return true;
      }
    }
  }
  return false;
}

