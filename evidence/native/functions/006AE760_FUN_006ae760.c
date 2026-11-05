/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical ECX manager, no stackarguments/plainRETvoid; inferredfastcall retained. Front queue40==50 returns. Objectvirtual4 beforestep, optional providerD0 virtual0 poses selectedhour (managerB4 unless positiveordered, thenqueuedhour);6B5860 lowAL completion; provider virtual4 clears afterward regardless completion. Successful positiveorderedqueuedtime computes wrappedspan24, storesB8/C0 and selects phase4+6B3030 for span<=12 orunordered, otherwisephase1/countdown10/span1. CompletedpointerFC and queuepop follow. Final6AE88B JMP objectvirtual8 is a tail dispatch, not the C warning jumptable; no virtualtarget/refcount meaning inferred. No queue/GPU readiness guarantee. */

void __fastcall FUN_006ae760(int param_1)

{
  float fVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  float fVar5;
  float local_c;
  
  if (*(int *)(param_1 + 0x40) == *(int *)(param_1 + 0x50)) {
    return;
  }
  puVar2 = *(undefined4 **)(param_1 + 0x40);
  piVar3 = (int *)*puVar2;
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 4))();
  }
  fVar1 = (float)puVar2[1];
  if (piVar3 == (int *)0x0) {
    FUN_006ae180(param_1 + 0x38);
    return;
  }
  local_c = *(float *)(param_1 + 0xb4);
  if (0.0 < *(float *)(param_1 + 0xb4)) {
    local_c = fVar1;
  }
  if (*(undefined4 **)(param_1 + 0xd0) != (undefined4 *)0x0) {
    (**(code **)**(undefined4 **)(param_1 + 0xd0))(local_c);
  }
  uVar4 = FUN_006b5860(piVar3);
  if (*(int **)(param_1 + 0xd0) != (int *)0x0) {
    (**(code **)(**(int **)(param_1 + 0xd0) + 4))();
  }
  if ((char)uVar4 != '\0') {
    if (0.0 < fVar1) {
      fVar5 = fVar1 - *(float *)(param_1 + 0xb4);
      if (fVar1 <= *(float *)(param_1 + 0xb4)) {
        fVar5 = fVar5 + 24.0;
      }
      *(float *)(param_1 + 0xc0) = fVar5;
      *(float *)(param_1 + 0xb8) = fVar1;
      if (fVar5 <= 12.0) {
        *(undefined4 *)(param_1 + 0xb0) = 4;
        FUN_006b3030(*(int *)(param_1 + 100));
      }
      else {
        *(undefined4 *)(param_1 + 0xb0) = 1;
        *(undefined4 *)(param_1 + 0xc4) = 10;
        *(float *)(param_1 + 0xc0) = 1.0;
      }
    }
    *(int **)(param_1 + 0xfc) = piVar3;
    FUN_006ae180(param_1 + 0x38);
  }
                    /* WARNING: Could not recover jumptable at 0x006ae88b. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar3 + 8))();
  return;
}
