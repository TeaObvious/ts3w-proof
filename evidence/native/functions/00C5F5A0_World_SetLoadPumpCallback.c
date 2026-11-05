/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 load-pump leaf. cdecl callback/userData, twoDWORD stackwords RET callercleanup.
   Writes function pointer11EDBC8 FIRST then cookie11EDBCC. No null validation, locking, atomic pair
   publication, ownership/retain, queue or callback execution in this setter. Callback type void
   cdecl(cookie) proven byC5F5C0 physical PUSH/indirectCALL/POP. Sole currently found setup
   callsiteECC644 is a research lead; its full startup/registration caller remains outside this
   selected complete contract. */

void __cdecl World_SetLoadPumpCallback(WorldLoadPumpCallback *callback,void *userData)

{
  PTR_011edbc8 = callback;
  DAT_011edbcc = userData;
  return;
}

