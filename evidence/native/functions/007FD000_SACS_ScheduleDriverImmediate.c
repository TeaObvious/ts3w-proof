/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete71-instruction body; existing analyst name retained. Admit nonnull driver only if
   manager current+14 iszero, store current driver and supplied mode byte+19. Before each8040D0 call
   clear revisit+18. At most10 advances; another iteration additionally requires revisit true,
   current nonnull and original driver intrusive count unsigned>1. Clear current/mode on exit;
   persistent revisit deduplicates/requeues original pointer in pending vector+1C/+20, with existing
   growth path. RET8. Do not infer one-tick-all-drivers, time-step consumption, thread safety, or
   exact callback/completion ordering from this scheduler. */

void __thiscall SACS_ScheduleDriverImmediate(void *this,int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  
  if ((param_1 != 0) && (*(int *)((int)this + 0x14) == 0)) {
    iVar2 = 10;
    *(int *)((int)this + 0x14) = param_1;
    *(undefined1 *)((int)this + 0x19) = (undefined1)param_2;
    while( true ) {
      *(undefined1 *)((int)this + 0x18) = 0;
      SACS_AdvanceDirtyWalkers(*(void **)((int)this + 0x14));
      iVar2 = iVar2 + -1;
      if (iVar2 == 0) break;
      bVar3 = true;
      if (*(char *)((int)this + 0x18) == '\0') goto LAB_007fd053;
      if ((*(int *)((int)this + 0x14) == 0) || (*(uint *)(param_1 + 4) < 2)) break;
    }
    bVar3 = *(char *)((int)this + 0x18) == '\0';
LAB_007fd053:
    if ((bVar3) || (*(int *)((int)this + 0x14) == 0)) {
      *(undefined4 *)((int)this + 0x14) = 0;
      *(undefined1 *)((int)this + 0x19) = 0;
    }
    else {
      piVar1 = *(int **)((int)this + 0x1c);
      *(undefined4 *)((int)this + 0x14) = 0;
      *(undefined1 *)((int)this + 0x19) = 0;
      param_2 = param_1;
      for (; piVar1 != *(int **)((int)this + 0x20); piVar1 = piVar1 + 1) {
        if (*piVar1 == param_1) {
          return;
        }
      }
      piVar1 = *(int **)((int)this + 0x20);
      if (*(int **)((int)this + 0x24) <= piVar1) {
        FUN_00982420((void *)((int)this + 0x1c),piVar1,&param_2);
        return;
      }
      *(int **)((int)this + 0x20) = piVar1 + 1;
      if (piVar1 != (int *)0x0) {
        *piVar1 = param_1;
        return;
      }
    }
  }
  return;
}

