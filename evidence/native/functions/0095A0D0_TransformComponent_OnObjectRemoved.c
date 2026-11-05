/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Event6 callback looks up Transform component then invokes
   teardown/unparent helper. Returns AL true. */

bool __cdecl TransformComponent_OnObjectRemoved(void *object,void *payload)

{
  bool bVar1;
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011ea158);
    if (this != (void *)0x0) {
      bVar1 = TransformComponent_HandleObjectRemoval(this);
      return bVar1;
    }
  }
  return true;
}

