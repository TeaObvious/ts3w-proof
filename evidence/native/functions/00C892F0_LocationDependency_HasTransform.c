/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC 1.67 straight-line leaf; analyst name. Location descriptor 0x011855c8
   dependency slot +0x18. Cdecl stack DWORD mask, caller cleans 4 bytes (0x00937790). AND with
   registered Transform mask 0x011ea158, then NEG/SBB EAX,EAX/NEG converts zero/nonzero to full EAX
   0 or 1. Unlike the SETNE-AL sibling predicates, all return bits are defined here. No location
   lookup, lot assignment or memory write. Exact body 0x00c892f0..0x00c892ff (16 bytes). */

uint __cdecl LocationDependency_HasTransform(uint componentMask)

{
  return (uint)((DAT_011ea158 & componentMask) != 0);
}

