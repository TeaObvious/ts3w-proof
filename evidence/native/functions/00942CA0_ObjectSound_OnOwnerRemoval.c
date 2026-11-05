/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl owner/event payload; ALtrue. Missing owner/component
   no-op. If audio interface exists, unregisters ownerGUID via861F20; clears component word48 and
   stops all rows using(stopMode0,maskFFFFFFFF). Does not itself clear active4C. Full
   unregister/event-thread semantics unexpanded. */

bool __cdecl ObjectSound_OnOwnerRemoval(void *ownerObject,void *unusedEventPayload)

{
  void *this;
  
  if (ownerObject != (void *)0x0) {
    this = Object_GetComponentByMask(ownerObject,DAT_011e9e70);
    if (this != (void *)0x0) {
      if ((DAT_011d9c40 != 0) && (DAT_011d9c40 != 0x27bd0)) {
        FUN_00861f20(*(int *)(DAT_011d9c40 + 0x24));
      }
      *(undefined4 *)((int)this + 0x48) = 0;
      ObjectSound_StopMatchingRows(this,0,0xffffffff);
    }
  }
  return true;
}

