/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 driver actor lookup used when bridge watch fires. It can lazily instantiate a walker for
   an actor defined in the graph; an already installed host-side waiter is not required at bridge
   request admission.
   
   Analyst role/contract. ECX driver, actor hash stackword, RET4. Scan existing8-byte bindings;
   nonnull first matching walker returns. Missing/null row resolves actor definition from graph+0C
   through7FD820, creates actual ActorInst/walker803B00 then rescans7FFFE0; unknown definition
   returns0. No original managed actor-name dictionary or new background owner. */

int __thiscall SACS_LookupDestinationWalker_803c00(void *this,int param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = *(int **)((int)this + 0x10);
  do {
    if (piVar1 == *(int **)((int)this + 0x14)) {
LAB_00803c29:
      if ((*(int *)((int)this + 0xc) != 0) &&
         (iVar2 = FUN_007fd820(*(int *)((int)this + 0xc)), iVar2 != 0)) {
        SacsDriver_CreateDefinedActorWalker(this,iVar2);
        iVar2 = SacsDriver_FindExistingActorWalker(this,param_1);
        return iVar2;
      }
      return 0;
    }
    if (*piVar1 == param_1) {
      if (piVar1[1] != 0) {
        return piVar1[1];
      }
      goto LAB_00803c29;
    }
    piVar1 = piVar1 + 2;
  } while( true );
}

