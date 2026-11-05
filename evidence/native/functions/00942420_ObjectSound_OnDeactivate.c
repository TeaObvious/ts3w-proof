/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl owner/event payload, ALtrue. Null owner/missing
   Audio mask component no-op; otherwise forwards payload word to9422F0. Registered owner event0C
   in9435A0. */

bool __cdecl ObjectSound_OnDeactivate(void *ownerObject,void *eventPayload)

{
  bool bVar1;
  void *this;
  
  if (ownerObject != (void *)0x0) {
    this = Object_GetComponentByMask(ownerObject,DAT_011e9e70);
    if (this != (void *)0x0) {
      bVar1 = ObjectSound_Deactivate(this,(uint)eventPayload);
      return bVar1;
    }
  }
  return true;
}

