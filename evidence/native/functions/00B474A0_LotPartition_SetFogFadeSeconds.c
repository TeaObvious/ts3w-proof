/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Thin void wrapper calls
   FogOfExploration_ExchangeFadeMilliseconds. Does not validate or clamp input; managed bridge
   supplies seconds. */

void __cdecl LotPartition_SetFogFadeSeconds(float seconds)

{
  FogOfExploration_ExchangeFadeMilliseconds(seconds);
  return;
}

