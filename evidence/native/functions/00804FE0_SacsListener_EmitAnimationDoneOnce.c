/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX listener,controller identity RET4. Entry
   flag+E suppresses repeated completion emission; creates event type50/subtype5 with actor or
   synchronized special identity, dispatches via008019C0, readies active1/2/3/7 through008019D0 and
   clears listener mode when no requested destination. Full packet/queue delivery is a separate
   owner. Current completion queue/ReadyVersion are projections. */

void __thiscall SacsListener_EmitAnimationDoneOnce(void *this,int param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  
  iVar1 = *(int *)((int)this + 4);
  do {
    if (iVar1 == *(int *)((int)this + 8)) {
LAB_0080503e:
      iVar1 = *(int *)((int)this + 0x18);
      iVar3 = 0x42207261;
      if ((*(int *)(iVar1 + 0x10) == 0) || (*(char *)(*(int *)(iVar1 + 0x10) + 0x4c) == '\0')) {
        iVar3 = *(int *)(*(int *)(*(int *)(iVar1 + 8) + 0x20) + 0x2c);
      }
      FUN_00801f20(iVar1);
      piVar2 = FUN_007427b0();
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2[4] = iVar3;
        piVar2[1] = 0;
        *piVar2 = (int)&PTR_FUN_01021018;
        piVar2[2] = 0x50;
        piVar2[3] = 5;
        piVar2[8] = (int)"Scripting/EventQueue/Event";
        piVar2[5] = (int)&DAT_011c8e54;
        piVar2[6] = (int)&DAT_011c8e54;
        piVar2[7] = (int)&DAT_011c8e55;
        (**(code **)*piVar2)();
      }
      FUN_008019c0(*(void **)((int)this + 0x18),piVar2);
      iVar1 = *(int *)((int)this + 0x18);
      if (((*(int *)(iVar1 + 0x6c) == 1) || (*(int *)(iVar1 + 0x6c) == 2)) ||
         ((*(int *)(iVar1 + 0x6c) == 3 || (*(int *)(iVar1 + 0x6c) == 7)))) {
        SacsWalker_TrySetExecutionStatus(*(void **)((int)this + 0x18),0);
      }
      if (*(int *)(*(int *)((int)this + 0x18) + 0x24) == 0) {
        *(undefined1 *)((int)this + 0x1c) = 0;
      }
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      return;
    }
    if (*(int *)(iVar1 + 8) == param_1) {
      if (*(char *)(iVar1 + 0xe) != '\0') {
        iVar1 = *(int *)((int)this + 0x18);
        if ((((*(int *)(iVar1 + 0x6c) != 1) && (*(int *)(iVar1 + 0x6c) != 2)) &&
            (*(int *)(iVar1 + 0x6c) != 3)) && (*(int *)(iVar1 + 0x6c) != 7)) {
          return;
        }
        SacsWalker_TrySetExecutionStatus(*(void **)((int)this + 0x18),0);
        return;
      }
      *(undefined1 *)(iVar1 + 0xe) = 1;
      goto LAB_0080503e;
    }
    iVar1 = iVar1 + 0x18;
  } while( true );
}

