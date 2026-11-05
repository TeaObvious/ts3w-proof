/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161458 (TS3W.exe).
   ScriptCore.Objects::Objects_DoPostReachingValidSpatialConfiguration [assembly=ScriptCore
   token=0x0600000C; id: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. FullGUID; ifLocation component exists, tailcalls00c89670.
   MissingID/component noop. */

void __cdecl Objects_DoPostReachingValidSpatialConfiguration(ulonglong guid)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
    if (pvVar1 != (void *)0x0) {
      LocationComponent_PostReachingConfiguration(pvVar1);
      return;
    }
  }
  return;
}

