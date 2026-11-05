/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX selected layout math interface; parent rectangle and in/out
   edge rectangle are two stack pointers/RET8. Reverses the selected anchor contributions in
   binary32 operations: subtract parent extent on anchored far edges (also near edge when near
   anchor absent), otherwise add parent origin only when both anchors absent. Both return paths
   write AL1, not a full-EAX Boolean. This leaf performs no inversion clamp or layout-chain
   scheduling. */

bool __thiscall SimpleLayout_RemoveAnchoredEdges(void *this,float *parentRect,float *ioEdges)

{
  if ((*(byte *)((int)this + 4) & 8) == 0) {
    if ((*(byte *)((int)this + 4) & 4) == 0) {
      *ioEdges = *parentRect + *ioEdges;
      ioEdges[2] = *parentRect + ioEdges[2];
    }
  }
  else {
    ioEdges[2] = ioEdges[2] - (parentRect[2] - *parentRect);
    if ((*(byte *)((int)this + 4) & 4) == 0) {
      *ioEdges = *ioEdges - (parentRect[2] - *parentRect);
    }
  }
  if ((*(byte *)((int)this + 4) & 2) == 0) {
    if ((*(byte *)((int)this + 4) & 1) == 0) {
      ioEdges[1] = parentRect[1] + ioEdges[1];
      ioEdges[3] = parentRect[1] + ioEdges[3];
    }
  }
  else {
    ioEdges[3] = ioEdges[3] - (parentRect[3] - parentRect[1]);
    if ((*(byte *)((int)this + 4) & 1) == 0) {
      ioEdges[1] = ioEdges[1] - (parentRect[3] - parentRect[1]);
      return true;
    }
  }
  return true;
}

