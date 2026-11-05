/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Descriptor registrationcallback adds Transform listeners
   toevent6,18,4, then allocates two object-update flags. Assigned component mask is stored by
   caller00932a30; callback does not storeit. */

void __cdecl TransformComponent_RegisterEvents(uint assignedComponentMask)

{
  void *this;
  
  ObjectEvents_RegisterListener(6,TransformComponent_OnObjectRemoved,0);
  ObjectEvents_RegisterListener(0x12,TransformComponent_OnEvent18,0);
  ObjectEvents_RegisterListener(4,TransformComponent_OnObjectAttached,0);
  this = ObjectRegistry_GetGlobal();
  DAT_011ea154 = ObjectRegistry_AllocateUpdateFlag(this);
  DAT_011ea150 = ObjectRegistry_AllocateTransientUpdateFlag(this);
  return;
}

