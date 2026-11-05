/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX listener; RET8 consumes two physical words
   despite inferred argument roles. Updates actor overlay selection using007FD8A0 and native state
   identity. Selected controller plus active statuses1/2/3/7 can become ready0 for non-Edith
   destination, otherwise interruptible3 or playing2; Edith interruptible emits completion. Native
   also emits overlay subtype7 when selected state is overlay-enabled. Current notification
   projection omits this overlay side effect. */

void __thiscall SacsListener_OnControllerStarted(void *this,int *param_1,int param_2)

{
  char cVar1;
  int *piVar2;
  void *this_00;
  int iVar3;
  
  cVar1 = FUN_007fd8a0(*(void **)(*(int *)(*(int *)((int)this + 0x18) + 4) + 0xc),param_2);
  if (cVar1 == '\0') {
    *(undefined4 *)(*(int *)((int)this + 0x18) + 0x14) = 0;
  }
  else {
    *(int *)(*(int *)((int)this + 0x18) + 0x14) = param_2;
  }
  if ((*(int *)(*param_1 + 0x20) == *(int *)((int)this + 0x14)) &&
     ((((iVar3 = *(int *)((int)this + 0x18), *(int *)(iVar3 + 0x6c) == 1 ||
        (*(int *)(iVar3 + 0x6c) == 2)) || (*(int *)(iVar3 + 0x6c) == 3)) ||
      (*(int *)(iVar3 + 0x6c) == 7)))) {
    if ((*(char *)((int)this + 0x1c) == '\0') &&
       (this_00 = *(void **)((int)this + 0x18), *(int *)((int)this_00 + 0x24) != 0)) {
      iVar3 = 0;
    }
    else {
      this_00 = *(void **)((int)this + 0x18);
      if (*(char *)((int)param_1 + 0x16) != '\0') {
        SacsWalker_TrySetExecutionStatus(this_00,3);
        if (*(char *)((int)this + 0x1c) != '\0') {
          SacsListener_EmitAnimationDoneOnce(this,*(int *)((int)this + 0x14));
        }
        goto LAB_008051bb;
      }
      iVar3 = 2;
    }
    SacsWalker_TrySetExecutionStatus(this_00,iVar3);
  }
LAB_008051bb:
  cVar1 = FUN_007fd8a0(*(void **)(*(int *)(*(int *)((int)this + 0x18) + 4) + 0xc),param_2);
  if (cVar1 != '\0') {
    iVar3 = FUN_007fd1b0(param_2);
    piVar2 = FUN_007427b0();
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2[4] = iVar3;
      piVar2[1] = 0;
      *piVar2 = (int)&PTR_FUN_01021018;
      piVar2[2] = 0x50;
      piVar2[3] = 7;
      piVar2[8] = (int)"Scripting/EventQueue/Event";
      piVar2[5] = (int)&DAT_011c8e54;
      piVar2[6] = (int)&DAT_011c8e54;
      piVar2[7] = (int)&DAT_011c8e55;
      (**(code **)*piVar2)();
    }
    FUN_008019c0(*(void **)((int)this + 0x18),piVar2);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  return;
}

