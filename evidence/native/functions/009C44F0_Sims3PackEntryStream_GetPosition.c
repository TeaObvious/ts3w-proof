/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. ECX child, RET4 consumes one origin word but body
   ignores it; returns current relative position+10. Do not infer all seek-origin behavior from this
   getter. */

uint __thiscall Sims3PackEntryStream_GetPosition(void *this,uint originUnused)

{
  return *(uint *)((int)this + 0x10);
}

