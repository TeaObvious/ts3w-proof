/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 load-pump leaf. Noargs plainRET; EAX exactUInt32global11D9A88. Selectedconsumer
   compareswithGetCurrentThreadId. No current-thread query/registrationwrite/lock in this getter;
   fullproducer and platformreplacement policy remainopen. */

uint __cdecl ThreadIdentity_ReadRegisteredPumpThreadId(void)

{
  return DAT_011d9a88;
}

