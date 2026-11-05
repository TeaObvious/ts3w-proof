/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: State1/2/3 cancels through0059af00, with recursive
   cancellation of selected exclusive dependencies; state7 returns true. Original state4/5 only
   propagates to dependent graph0059a270 and optionally waits0059abe0; it does not mark the running
   callback terminal here. Other states return false. Low AL is the meaningful result; upper EAX may
   be leftover. Arbitrary concurrent shutdown/corrupt-reference safety is not established. */

bool __thiscall JobManager_CancelInternalJob(void *this,void *job,bool waitIfRunning)

{
  int iVar1;
  int *piVar2;
  int local_98;
  undefined1 *local_94;
  undefined1 *local_90;
  undefined1 local_80 [128];
  
  switch(*(undefined4 *)((int)job + 0x24)) {
  case 1:
  case 2:
  case 3:
    break;
  case 4:
  case 5:
    JobManager_RetireDependentJobs(this,job);
    if (waitIfRunning) {
      JobManager_WaitForInternalJob(this,job);
    }
  default:
    return false;
  case 7:
    return true;
  }
  piVar2 = *(int **)((int)job + 0x38);
  local_94 = local_80;
  local_90 = local_80;
  if (piVar2 != (int *)((int)job + 0x38)) {
    do {
      iVar1 = piVar2[4];
      if ((*(char *)(iVar1 + 0x4d) != '\0') && (*(int *)(iVar1 + 0x40) == *(int *)(iVar1 + 0x44))) {
        local_98 = iVar1;
        FUN_0059b3b0(&local_94,&local_98);
        Job_AddReference((void *)(iVar1 + 8));
      }
      piVar2 = (int *)*piVar2;
    } while (piVar2 != (int *)((int)job + 0x38));
  }
  JobManager_RetireInternalJob(this,job,true);
  if (local_94 != local_90) {
    do {
      piVar2 = *(int **)(local_90 + -4);
      local_90 = local_90 + -4;
      JobManager_CancelInternalJob(this,piVar2,waitIfRunning);
      FUN_0059b1c0(piVar2);
    } while (local_94 != local_90);
  }
  if (local_94 == (undefined1 *)0x0) {
    return true;
  }
  if (local_94 == local_80) {
    return true;
  }
  Memory_FreeIfNonNull(local_94);
  return true;
}

