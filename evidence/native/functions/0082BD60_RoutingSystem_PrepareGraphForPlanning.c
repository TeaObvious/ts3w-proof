/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: If lot-graph backend at routingSystem+0x95c has dirty
   byte+0x10e, enumerates lots from world backend+0x964. Eligible graph lots invoke0082af90 to
   refresh; then dirty byte clears. No path is produced here. Detailed rebuild leaf internals remain
   open. */

void __fastcall RoutingSystem_PrepareGraphForPlanning(void *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  int *piVar5;
  
  if (*(char *)(*(int *)((int)param_1 + 0x95c) + 0x10e) != '\0') {
    puVar3 = (undefined4 *)FUN_00c687a0(*(void **)((int)param_1 + 0x964),'\0');
    piVar1 = (int *)puVar3[1];
    for (piVar5 = (int *)*puVar3; piVar5 != piVar1; piVar5 = piVar5 + 1) {
      iVar2 = *piVar5;
      if ((iVar2 != 0) &&
         (uVar4 = FUN_00632280(*(void **)((int)param_1 + 0x95c),*(uint *)(iVar2 + 0x48),
                               *(uint *)(iVar2 + 0x4c)), (char)uVar4 != '\0')) {
        FUN_0082af90(param_1,*piVar5);
      }
    }
    *(undefined1 *)(*(int *)((int)param_1 + 0x95c) + 0x10e) = 0;
  }
  return;
}

