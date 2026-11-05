/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC1.67 unsigned species predicate. True
   for0xc00,0xd00,0xe00,0xf00,0x4100,0x4200,0x4300,0x4500,0x4600. Shark0x4400 excluded. Portal
   permission classifier uses this to bypass primary/variant availability rejection; it does not
   bypass cost/forbidden/callback checks. */

bool __cdecl Routing_IsBoatSpeciesForPortalPermission(uint casSpecies)

{
  if ((((((casSpecies != 0xe00) && (casSpecies != 0xd00)) && (casSpecies != 0xf00)) &&
       ((casSpecies != 0xc00 && (casSpecies != 0x4100)))) &&
      ((casSpecies != 0x4200 && ((casSpecies != 0x4300 && (casSpecies != 0x4500)))))) &&
     (casSpecies != 0x4600)) {
    return false;
  }
  return true;
}

