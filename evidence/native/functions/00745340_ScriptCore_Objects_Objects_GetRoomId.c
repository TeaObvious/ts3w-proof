/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 Objects_GetRoomId; cdecl fulluint64 ObjectGUID, signed32 EAX result. Borrowed
   registry lookup and spatialcomponent mask011edf08. Validcomponent returns int32 field+20. Missing
   object/component returns EAXffffffff(-1). This object-cached room differs from
   World_GetRoomId(point,LightBlocking), which Sim.RoomChanged uses for auto-greeting through
   GlobalFunctions.IsInside. Complete original body745340..745373. */

int __cdecl ScriptCore_Objects__Objects_GetRoomId(ulonglong objectId)

{
  void *pvVar1;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,objectId);
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
    if (pvVar1 != (void *)0x0) {
      return *(int *)((int)pvVar1 + 0x20);
    }
  }
  return -1;
}

