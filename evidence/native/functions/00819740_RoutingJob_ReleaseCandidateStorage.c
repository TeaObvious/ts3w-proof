/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: RoutingJob cleanup frees separately owned candidate vectors
   at+0x18/+0x28 then releases copied option storage at+0x40. Does not free host-owned result path
   list+0xc. */

void __fastcall RoutingJob_ReleaseCandidateStorage(undefined4 *param_1)

{
  *param_1 = &PTR_LAB_01022290;
  FUN_0081c830(param_1 + 0x10);
  if (param_1[10] != 0) {
    FUN_004e44e0(param_1[10]);
  }
  if (param_1[6] != 0) {
    FUN_004e44e0(param_1[6]);
  }
  if (param_1[4] != 0) {
    FUN_0059b350(param_1[4]);
    return;
  }
  return;
}

