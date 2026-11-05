/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_LoadTickImpl at 0x00789220,
   bytes e99b634d00. This is a static control-flow link from the registered entry; the target may
   have other callers and its side effects require separate analysis. TS3W.exe.
   
   Analyst PC1.67 load-pump leaf. cdecl no stackargs, plainRET, void. Load callback11EDBC8; null
   returns. Nonnull PUSH currentcookie11EDBCC, CALL callback, POP ECX cleansone4-bytearg. No
   loop/drain/completion/status/readiness predicate in this dispatcher. Callback effects depend on
   installed target, and pair synchronization/lifetime is not established. Original complete
   envelope20bytes, earlier176-byte window included padding/neighbor code. */

void __cdecl World_InvokeLoadPumpCallback(void)

{
  if (PTR_011edbc8 != (WorldLoadPumpCallback *)0x0) {
    (*PTR_011edbc8)(DAT_011edbcc);
  }
  return;
}

