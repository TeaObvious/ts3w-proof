/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Null is no-op; otherwise forwards allocation to global
   allocator011cc864 through004e5e70. Evidence of ownership release request, not
   OS/process-residency reclamation measurement. */

void __cdecl Memory_FreeIfNonNull(void *allocation)

{
  if (allocation != (void *)0x0) {
    FUN_004e5e70(DAT_011cc864,(int)allocation);
  }
  return;
}

