/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC 1.67 straight-line leaf; analyst name. VisualState descriptor 0x0117cc28
   dependency slot +0x18. Cdecl stack DWORD mask, caller cleans 4 bytes (0x00937790). ORs the
   registered Effect (0x011e9e90), Model (0x011e9fc4) and Script (0x011ea0f8) masks, then TEST/SETNE
   returns only AL=(componentMask & combinedMask)!=0. Upper EAX is not a Boolean. No field writes,
   component creation or fixed-point expansion. Exact body 0x0095dbc0..0x0095dbd8 (25 bytes). */

bool __cdecl VisualStateDependency_HasVisualSource(uint componentMask)

{
  return (componentMask & (DAT_011e9e90 | DAT_011e9fc4 | DAT_011ea0f8)) != 0;
}

