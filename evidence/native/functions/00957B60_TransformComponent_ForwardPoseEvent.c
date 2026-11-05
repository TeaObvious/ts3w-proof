/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Dispatches event0e with composed world pose even when
   notification flag4 is set. ReturnsAL1. Payload parameter is consumed but unused. */

bool __thiscall TransformComponent_ForwardPoseEvent(void *this,void *payload)

{
  float local_30 [11];
  
  TransformComponent_GetWorldQuaternionTranslation(this,local_30);
  ObjectEvents_Dispatch(0xe,*(void **)((int)this + 4),local_30);
  return true;
}

