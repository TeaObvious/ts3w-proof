/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011636a8 (TS3W.exe).
   ScriptCore.World::World_ObjectIsFootprintEnabled [assembly=ScriptCore token=0x060007D9; objId:
   System.UInt64, footprintNameHash: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reviewed cdecl GUID
   and hash, AL bool. Missing manager/object/component returns false; otherwise forwards
   IsNamedEnabled AL. */

bool __cdecl
ScriptCore_World__World_ObjectIsFootprintEnabled(ulonglong objectGuid,uint footprintNameHash)

{
  bool bVar1;
  void *pvVar2;
  
  pvVar2 = ObjectRegistry_GetGlobal();
  if (pvVar2 != (void *)0x0) {
    pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,objectGuid);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011e9fa8);
      if (pvVar2 != (void *)0x0) {
        bVar1 = FootprintComponent_IsNamedEnabled(pvVar2,footprintNameHash);
        return bVar1;
      }
    }
  }
  return false;
}

