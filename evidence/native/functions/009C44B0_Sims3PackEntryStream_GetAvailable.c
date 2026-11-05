/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. ECX child, no stack args. Returns UInt32
   length(+1C)-position(+10), wrapping arithmetic; no clamp/position validity check in this leaf. */

uint __thiscall Sims3PackEntryStream_GetAvailable(void *this)

{
  return *(int *)((int)this + 0x1c) - *(int *)((int)this + 0x10);
}

