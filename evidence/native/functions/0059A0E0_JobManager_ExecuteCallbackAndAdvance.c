/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: For callback internal+10 sets state+24=4, drops manager
   lock, and cdecl-calls callback(publicHandle=internal+8,context=internal+14,state4). Caller ADD
   ESP,0xc proves callback consumes three stack DWORDs without callee cleanup; low AL determines
   success. Reacquires lock after callback returns. Successful no-dependency non-rescheduled path
   writes terminal6, wakes waiting callers if+4c, releases scheduler reference and recycles only
   atzero. Added dependencies return to state2; state5 reschedules. False callback or already7
   retires via0059af00. State6 is published after this callback4 has returned. */

void __thiscall JobManager_ExecuteCallbackAndAdvance(void *this,void *job)

{
  int iVar1;
  int *piVar2;
  void *job_00;
  char cVar3;
  int *piVar4;
  
  if (*(int *)((int)job + 0x10) != 0) {
    *(undefined4 *)((int)job + 0x24) = 4;
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 8));
    cVar3 = (**(code **)((int)job + 0x10))((int)job + 8,*(undefined4 *)((int)job + 0x14),4);
    FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 8),(uint *)&DAT_00fda7ac);
    if (cVar3 == '\0') goto LAB_0059a254;
  }
  if (*(int *)((int)job + 0x24) != 7) {
    if (*(int *)((int)job + 0x3c) != (int)job + 0x38) {
      piVar4 = *(int **)((int)job + 4);
      iVar1 = *(int *)job;
      *(undefined4 *)((int)job + 8) = 0;
      *(undefined4 *)((int)job + 0xc) = 0;
      *(undefined4 *)((int)job + 0x24) = 2;
      *piVar4 = iVar1;
      *(int **)(iVar1 + 4) = piVar4;
      *(undefined4 *)((int)job + 4) = *(undefined4 *)((int)this + 0x5c);
      *(int *)job = (int)this + 0x58;
      *(void **)((int)this + 0x5c) = job;
      **(undefined4 **)((int)job + 4) = job;
      return;
    }
    if (*(int *)((int)job + 0x24) != 5) {
      piVar4 = *(int **)((int)job + 4);
      iVar1 = *(int *)job;
      *(undefined4 *)((int)job + 0x24) = 6;
      *piVar4 = iVar1;
      *(int **)(iVar1 + 4) = piVar4;
      *(undefined4 *)((int)job + 4) = *(undefined4 *)((int)this + 0x7c);
      *(int *)job = (int)this + 0x78;
      *(void **)((int)this + 0x7c) = job;
      **(undefined4 **)((int)job + 4) = job;
      if (*(int *)((int)job + 0x44) != (int)job + 0x40) {
        do {
          if (*(int *)((int)job + 0x44) == 0) {
            piVar4 = (int *)0x0;
          }
          else {
            piVar4 = (int *)(*(int *)((int)job + 0x44) + -8);
          }
          piVar2 = (int *)piVar4[3];
          iVar1 = piVar4[2];
          job_00 = (void *)piVar4[5];
          *piVar2 = iVar1;
          *(int **)(iVar1 + 4) = piVar2;
          piVar2 = (int *)piVar4[1];
          iVar1 = *piVar4;
          *piVar2 = iVar1;
          *(int **)(iVar1 + 4) = piVar2;
          piVar4[1] = *(int *)((int)this + 0x98);
          *piVar4 = (int)this + 0x94;
          *(int **)((int)this + 0x98) = piVar4;
          *(int **)piVar4[1] = piVar4;
          if ((*(int *)((int)job_00 + 0x3c) == (int)job_00 + 0x38) &&
             (*(int *)((int)job_00 + 0x24) == 2)) {
            JobManager_MakeJobRunnable(this,job_00);
          }
        } while (*(int *)((int)job + 0x44) != (int)job + 0x40);
      }
      if (*(char *)((int)job + 0x4c) != '\0') {
        *(undefined1 *)((int)job + 0x4c) = 0;
        FUN_00599db0((int *)((int)this + 0x40));
      }
      *(undefined4 *)((int)job + 8) = 0;
      *(undefined4 *)((int)job + 0xc) = 0;
      *(undefined1 *)((int)job + 0x4e) = 0;
      piVar4 = (int *)((int)job + 0x30);
      LOCK();
      iVar1 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar1 != 1) {
        return;
      }
      JobManager_RecycleInternalJob(*(void **)((int)job + 0x34),job);
      return;
    }
    *(undefined4 *)((int)job + 8) = 0;
    *(undefined4 *)((int)job + 0xc) = 0;
    JobManager_MakeJobRunnable(this,job);
    return;
  }
LAB_0059a254:
  JobManager_RetireInternalJob(this,job,false);
  return;
}

