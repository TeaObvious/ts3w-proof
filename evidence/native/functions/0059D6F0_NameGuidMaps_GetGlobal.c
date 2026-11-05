/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. Returns global011CF308. Constructor installs and
   destructor clears it; accessor alone does not prove thread-safe initialization or lifetime. */

void * NameGuidMaps_GetGlobal(void)

{
  return DAT_011cf308;
}

