/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical ECX is the layout math interface at complete object+0x10;
   two stack DWORD pointers are parent rectangle then in/out edge rectangle, RET8. Low byte
   receiver+4 uses right8/left4/bottom2/top1. Far-edge branches add parent extent (far minus near);
   absent near+far subtract parent origin. Leaf does not clamp or establish a Boolean result.
   Generic selected wrapper005330F0 invokes interface virtual+0x14 then clamps only strict inverted
   far edges with COMISS/JBE, leaving unordered and equal values untouched. Class/factory/name
   registration joins are separate supporting data; this is an analyst name, not a recovered source
   symbol. */

void __thiscall SimpleLayout_ApplyAnchoredEdges(void *this,float *parentRect,float *ioEdges)

{
  if ((*(byte *)((int)this + 4) & 8) == 0) {
    if ((*(byte *)((int)this + 4) & 4) == 0) {
      *ioEdges = *ioEdges - *parentRect;
      ioEdges[2] = ioEdges[2] - *parentRect;
    }
  }
  else {
    ioEdges[2] = (parentRect[2] - *parentRect) + ioEdges[2];
    if ((*(byte *)((int)this + 4) & 4) == 0) {
      *ioEdges = (parentRect[2] - *parentRect) + *ioEdges;
    }
  }
  if ((*(byte *)((int)this + 4) & 2) == 0) {
    if ((*(byte *)((int)this + 4) & 1) == 0) {
      ioEdges[1] = ioEdges[1] - parentRect[1];
      ioEdges[3] = ioEdges[3] - parentRect[1];
    }
  }
  else {
    ioEdges[3] = (parentRect[3] - parentRect[1]) + ioEdges[3];
    if ((*(byte *)((int)this + 4) & 1) == 0) {
      ioEdges[1] = (parentRect[3] - parentRect[1]) + ioEdges[1];
      return;
    }
  }
  return;
}

