/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl owner/event payload, ALtrue. Missing owner/component
   no-op. Reads DWORD at event payload+8 WITHOUT null payload guard: nonzero activates943430(0),
   zero deactivates9422F0(0). Registered event14, priority0. Exact broader event identity/state
   producer unexpanded. */

bool __cdecl ObjectSound_OnActivationState(void *ownerObject,void *eventPayload)

{
  void *this;
  
  if (ownerObject != (void *)0x0) {
    this = Object_GetComponentByMask(ownerObject,DAT_011e9e70);
    if (this != (void *)0x0) {
      if (*(int *)((int)eventPayload + 8) != 0) {
        ObjectSound_ActivateAndReplay(this,0);
        return true;
      }
      ObjectSound_Deactivate(this,0);
    }
  }
  return true;
}

