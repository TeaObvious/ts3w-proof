/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC 1.67 straight-line leaf; analyst name. Footprint descriptor 0x0117c90c
   dependency slot +0x18. Cdecl stack DWORD mask, caller cleans 4 bytes (0x00937790). Loads
   registered Sim mask 0x011ea0fc, TESTs the input and SETNE returns its nonzero intersection in AL.
   Upper EAX is not a Boolean result. Does not decode a footprint or validate resource readiness.
   Exact body 0x00944940..0x0094494c (13 bytes). */

bool __cdecl FootprintDependency_HasSim(uint componentMask)

{
  return (componentMask & DAT_011ea0fc) != 0;
}

