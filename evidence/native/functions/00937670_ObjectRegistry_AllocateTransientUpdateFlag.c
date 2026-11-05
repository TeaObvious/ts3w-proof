/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Returns lowest unused high-byte flag from
   (~allocated)&0xff000000 and records it only in +11cc; unlike00937690 does not add it to +11d0. */

uint __thiscall ObjectRegistry_AllocateTransientUpdateFlag(void *this)

{
  uint uVar1;
  
  uVar1 = *(uint *)((int)this + 0x11cc) ^ 0xff000000;
  uVar1 = -uVar1 & uVar1;
  *(uint *)((int)this + 0x11cc) = *(uint *)((int)this + 0x11cc) | uVar1;
  return uVar1;
}

