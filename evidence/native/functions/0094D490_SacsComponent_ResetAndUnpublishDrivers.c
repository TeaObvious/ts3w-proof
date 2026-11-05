/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Analyst note (PC1.67 SACS host reset contract): ECX SACS component. Reset each nonnull driver in
   captured component[+8,+C) via800FB0. At normal end PUSH0 and call94D320; this final component
   drain is required, not just walker reset. It invalidates published driver handles via manager+D4,
   verified76A6D0. Script clients can retain stale numeric handles; IsEventQueueValid767480 must
   then fail driver lookup. Null row takes early return as actual branch shows. */

void __fastcall SacsComponent_ResetAndUnpublishDrivers(int param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar2 = *(int **)(param_1 + 8);
  piVar1 = *(int **)(param_1 + 0xc);
  while( true ) {
    if (piVar2 == piVar1) {
      SACS_ComponentReleaseDriverRows_94D320(param_1);
      return;
    }
    if (*piVar2 == 0) break;
    SACS_ResetDriver_800fb0(*piVar2);
    piVar2 = piVar2 + 1;
  }
  return;
}

