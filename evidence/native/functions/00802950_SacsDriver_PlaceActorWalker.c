/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, walker/state pointers, RET8.
   Requires both nonnull. State sync byte4C controls driver mode3C/master40. Undo retained graph
   phase3, clear78, reset walker800C70, install flags40/state, assign return28, replace
   pending8001F0. No direct StopAllAnimation in this native body; managed explicit clip-stop is
   project lifetime policy. */

void __thiscall SacsDriver_PlaceActorWalker(void *this,void *param_1,uint param_2)

{
  void *this_00;
  
  if ((param_1 != (void *)0x0) && (param_2 != 0)) {
    if (*(char *)(param_2 + 0x4c) == '\0') {
      if (*(char *)((int)this + 0x3c) != '\0') {
        *(undefined1 *)((int)this + 0x3c) = 0;
        *(undefined4 *)((int)this + 0x40) = 0;
      }
    }
    else if (*(char *)((int)this + 0x3c) == '\0') {
      *(undefined1 *)((int)this + 0x3c) = 1;
      *(void **)((int)this + 0x40) = param_1;
    }
    if (*(int *)((int)param_1 + 0x78) != 0) {
      this_00 = *(void **)(*(int *)((int)param_1 + 0x78) + 0x38);
      if (this_00 != (void *)0x0) {
        SacsDecisionGraph_DispatchPhase(this_00,3,(void *)((int)this + 0x44),(uint)param_1);
      }
      *(undefined4 *)((int)param_1 + 0x78) = 0;
    }
    SACS_ClearWalker_800c70(param_1);
    SacsWalker_QueueOrInstallRequest(param_1,0x40,param_2);
    *(uint *)((int)param_1 + 0x28) = param_2;
    SacsDriver_ReplacePendingWalkerState(this,param_1,param_2);
  }
  return;
}

