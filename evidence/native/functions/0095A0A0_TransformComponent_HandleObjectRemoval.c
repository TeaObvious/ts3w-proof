/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Calls00959fa0 and009589f0 with boolean inverse of Transform
   flag8. ReturnsAL1. Full detach helper semantics remain open. */

bool __thiscall TransformComponent_HandleObjectRemoval(void *this)

{
  FUN_00959fa0((int)this);
  FUN_009589f0(this,~(byte)(*(uint *)((int)this + 0x34) >> 3) & 1);
  return true;
}

