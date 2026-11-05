/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Objectevent0e listener resolvesLocation component, forwards
   pose payload+10 (worldtranslation) to00c8abe0, returnsAL1. Requires non-null payload when
   component present; synchronous pose producer supplies it. */

bool __cdecl LocationComponent_OnWorldPoseChanged(void *object,float *worldPose)

{
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011edf08);
    if (this != (void *)0x0) {
      LocationComponent_UpdateForWorldPosition(this,worldPose + 4);
    }
  }
  return true;
}

