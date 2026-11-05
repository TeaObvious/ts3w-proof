/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX selected proportional math interface; parent and in/out
   rectangle are two stack pointers/RET8. Receiver+4/+8/+C/+10 are left/top/right/bottom fractions.
   SUBSS parent far-near, MULSS selected fraction, ADDSS existing edge, MOVSS store; actual order is
   left,right,top,bottom. No fused operation or clamp in this leaf and no Boolean result is
   established. Generic wrapper005330F0 calls the interface virtual+14 then strict COMISS/JBE
   inversion clamps. Concrete allocation/vtable joins are supporting data, not inferred from a
   similar method name. */

void __thiscall ProportionalLayout_AddParentFractions(void *this,float *parentRect,float *ioEdges)

{
  *ioEdges = (parentRect[2] - *parentRect) * *(float *)((int)this + 4) + *ioEdges;
  ioEdges[2] = (parentRect[2] - *parentRect) * *(float *)((int)this + 0xc) + ioEdges[2];
  ioEdges[1] = (parentRect[3] - parentRect[1]) * *(float *)((int)this + 8) + ioEdges[1];
  ioEdges[3] = (parentRect[3] - parentRect[1]) * *(float *)((int)this + 0x10) + ioEdges[3];
  return;
}

