/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Event0x12 listener resolves Transform and forwards payload
   to00957b60, which consumes but does not read it. The handler dispatches composed pose through
   event0e and returnsAL1. This native object event table is separate from managed WorldEvent. */

bool __cdecl TransformComponent_OnEvent18(void *object,void *payload)

{
  bool bVar1;
  void *this;
  
  if (object != (void *)0x0) {
    this = Object_GetComponentByMask(object,DAT_011ea158);
    if (this != (void *)0x0) {
      bVar1 = TransformComponent_ForwardPoseEvent(this,payload);
      return bVar1;
    }
  }
  return true;
}

