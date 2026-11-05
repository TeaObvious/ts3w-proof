/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Vtable010052ac+0x14 returns target ObjectGuid from+0x50/+0x54 in
   EDX:EAX; this arrives ECX. Both halves matter to callers. */

undefined8 __fastcall RadialRangeDestination_GetTargetObjectId(int param_1)

{
  return *(undefined8 *)(param_1 + 0x50);
}

