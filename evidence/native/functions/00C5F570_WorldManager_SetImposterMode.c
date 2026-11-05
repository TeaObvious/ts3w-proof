/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 map/lot detail contract. Writes the low input byte to this+0xd8 only. True
   selects the active-only/imposter request pass on the next lot detail update. It neither selects
   the active GUID nor clears the independent+0xda allow-active flag. */

void __thiscall WorldManager_SetImposterMode(void *this,uchar enable)

{
  *(uchar *)((int)this + 0xd8) = enable;
  return;
}

