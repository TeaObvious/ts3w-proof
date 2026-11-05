/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. ECX registry; returns lowest available bit in the high byte
   from (~allocatedFlags)&0xff000000. Records the bit in +11cc and +11d0. No exhaustion guard beyond
   a zero result. */

uint __thiscall ObjectRegistry_AllocateUpdateFlag(void *this)

{
  uint uVar1;
  
  uVar1 = *(uint *)((int)this + 0x11cc) ^ 0xff000000;
  uVar1 = -uVar1 & uVar1;
  *(uint *)((int)this + 0x11d0) = *(uint *)((int)this + 0x11d0) | uVar1;
  *(uint *)((int)this + 0x11cc) = *(uint *)((int)this + 0x11cc) | uVar1;
  return uVar1;
}

