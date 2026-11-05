/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst static routing contract: RoutingJob cleanup frees separately owned candidate vectors
   at+0x18/+0x28 then releases copied option storage at+0x40. Does not free host-owned result path
   list+0xc. */

void __fastcall RoutingJob_ReleaseCandidateStorage(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_01022290;
  FUN_0081c830(param_1 + 0x10);
  if ((void *)param_1[10] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[10]);
  }
  if ((void *)param_1[6] != (void *)0x0) {
    Memory_FreeIfNonNull((void *)param_1[6]);
  }
  if ((void *)param_1[4] == (void *)0x0) {
    return;
  }
  Job_ReleaseReference((void *)param_1[4]);
  return;
}

