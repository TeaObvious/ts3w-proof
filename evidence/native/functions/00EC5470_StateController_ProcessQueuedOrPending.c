/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (317 bytes/142 instructions). ECX=controller; RET8 removes two
   unused stack words; their meaning is unproved and the stored fastcall projection stays unchanged.
   Zero+0x10 disables work. Nonempty queue+0x14/+0x18 has priority: select last8-byte record;
   publish current pointer+0x24, old current virtual+0x4, then record tag to+0x28, decrement live
   end, reread record and invoke nonnull state virtual+0x18(controller,tag). One record then return;
   no new virtual+0x0 on pop. The record pointer survives the old callback, so reentry safety is not
   established. Empty queue negotiates nonnull pending+0x2C: distinct current-null or current-tag
   found in current virtual+0x10 list assigns only current pointer through005A9510. Otherwise
   intersects that list with pending virtual+0x0C via00EC51C0; nonzero invokes CURRENT
   virtual+0x14(controller,currentTag,intersection). Same pointer/different tags invokes+0x14 with
   pending tag; equal tags clears pending pointer BEFORE virtual+0x4, leaving+0x30. A static
   call00EC5550->00EC5400 remains behind contradictory ordinary pending-nonnull/current-null guards;
   do not erase that edge or claim ordinary reachability. Callback effects,
   scheduler/cadence/progress/exit remain open. */

void __fastcall StateController_ProcessQueuedOrPending(void *param_1)

{
  undefined4 *this;
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  
  if (*(int *)((int)param_1 + 0x10) != 0) {
    if (*(int *)((int)param_1 + 0x14) == *(int *)((int)param_1 + 0x18)) {
      piVar1 = *(int **)((int)param_1 + 0x2c);
      piVar2 = (int *)((int)param_1 + 0x2c);
      if (piVar1 != (int *)0x0) {
        piVar4 = *(int **)((int)param_1 + 0x24);
        this = (undefined4 *)((int)param_1 + 0x24);
        if (piVar4 == piVar1) {
          if (piVar4 == (int *)0x0) {
            StateController_AppendQueuedState(param_1,piVar1,*(undefined4 *)((int)param_1 + 0x30));
            piVar1 = (int *)*piVar2;
            if (piVar1 != (int *)0x0) {
              *piVar2 = 0;
              (**(code **)(*piVar1 + 4))();
              return;
            }
          }
          else {
            if (*(int *)((int)param_1 + 0x30) != *(int *)((int)param_1 + 0x28)) {
              (**(code **)(*piVar4 + 0x14))
                        (param_1,*(int *)((int)param_1 + 0x28),*(int *)((int)param_1 + 0x30));
              return;
            }
            piVar1 = (int *)*piVar2;
            if (piVar1 != (int *)0x0) {
              *piVar2 = 0;
              (**(code **)(*piVar1 + 4))();
              return;
            }
          }
        }
        else {
          if (piVar4 == (int *)0x0) {
            StatePointerSlots_AssignVirtualLifetime(this,piVar2);
            return;
          }
          piVar1 = (int *)(**(code **)(*piVar4 + 0x10))();
          iVar3 = *piVar1;
          if (iVar3 != 0) {
            piVar4 = piVar1;
            do {
              if (iVar3 == *(int *)((int)param_1 + 0x28)) {
                StatePointerSlots_AssignVirtualLifetime(this,piVar2);
                return;
              }
              iVar3 = piVar4[1];
              piVar4 = piVar4 + 1;
            } while (iVar3 != 0);
          }
          piVar2 = (int *)(**(code **)(*(int *)*piVar2 + 0xc))();
          iVar3 = StateTagLists_FirstCommonNonzero(piVar1,piVar2);
          if (iVar3 != 0) {
            (**(code **)(*(int *)*this + 0x14))(param_1,*(undefined4 *)((int)param_1 + 0x28),iVar3);
          }
        }
      }
    }
    else {
      iVar3 = *(int *)((int)param_1 + 0x18);
      piVar2 = *(int **)((int)param_1 + 0x24);
      *(undefined4 *)((int)param_1 + 0x24) = *(undefined4 *)(iVar3 + -8);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      *(undefined4 *)((int)param_1 + 0x28) = *(undefined4 *)(iVar3 + -4);
      *(int *)((int)param_1 + 0x18) = *(int *)((int)param_1 + 0x18) + -8;
      if (*(int **)(iVar3 + -8) != (int *)0x0) {
        (**(code **)(**(int **)(iVar3 + -8) + 0x18))(param_1,*(undefined4 *)(iVar3 + -4));
        return;
      }
    }
  }
  return;
}

