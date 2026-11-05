/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC1.67. Null returnsAL0; otherwise returns nativeportal uint16 flags lowbyte
   bit1. Consumed by endpoint dedup and reachability, distinct from bit0 one-way. */

bool __cdecl Portal_BypassesEndPositionCheck(void *portal)

{
  if (portal != (void *)0x0) {
    return (bool)(*(byte *)((int)portal + 0x58) >> 1 & 1);
  }
  return false;
}

