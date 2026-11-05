/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX selected proportional math interface; parent and in/out
   rectangle are two stack pointers/RET8. Each binary32 edge subtracts its corresponding parent
   extent times receiver fraction; order left,right,top,bottom. Writes AL1 at successful return;
   upper EAX is not a defined Boolean. No clamping, world/UI state mutation, reference acquisition
   or scheduling occurs in this arithmetic leaf. */

bool __thiscall
ProportionalLayout_RemoveParentFractions(void *this,float *parentRect,float *ioEdges)

{
  *ioEdges = *ioEdges - (parentRect[2] - *parentRect) * *(float *)((int)this + 4);
  ioEdges[2] = ioEdges[2] - (parentRect[2] - *parentRect) * *(float *)((int)this + 0xc);
  ioEdges[1] = ioEdges[1] - (parentRect[3] - parentRect[1]) * *(float *)((int)this + 8);
  ioEdges[3] = ioEdges[3] - (parentRect[3] - parentRect[1]) * *(float *)((int)this + 0x10);
  return true;
}

