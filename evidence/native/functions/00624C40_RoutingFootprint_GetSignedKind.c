/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. ECX footprint, no
   physical stack arguments/plainRET. MOVSX EAX,byteptr[ECX+35], full signed Int32 result. Shared
   getter used by several footprint vtables; selected LotFloorFootprint vtable FECD98 slot +C points
   here. Reading raw kind is not architectural role classification; current byte-based frontend role
   names are a separate policy. */

int __thiscall RoutingFootprint_GetSignedKind(void *this)

{
  return (int)*(char *)((int)this + 0x35);
}

