/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Detaches dependency links, inserts into manager
   retired-list+80, publishes state7, propagates to dependents through0059a270. Optional cdecl
   callback(public,context,7) occurs outside lock only if callback present and prior state was
   neither4 nor5; it occurs AFTER state7 publication. Wakes waiting callers and drops scheduler ref
   if+4e. Therefore terminal7 alone does not mean every optional callback7 has returned.
   Cleanup00c626c0 ignores all statevalues except4, so state7 notification does not access its stack
   context. */

void __thiscall JobManager_RetireInternalJob(void *this,void *job,bool notifyCallback)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  
  if (*(int *)((int)job + 0x3c) != (int)job + 0x38) {
    do {
      piVar1 = *(int **)((int)job + 0x3c);
      iVar2 = piVar1[4];
      iVar3 = piVar1[2];
      piVar4 = (int *)piVar1[3];
      *piVar4 = iVar3;
      *(int **)(iVar3 + 4) = piVar4;
      piVar4 = (int *)piVar1[1];
      iVar3 = *piVar1;
      *piVar4 = iVar3;
      *(int **)(iVar3 + 4) = piVar4;
      piVar1[1] = *(int *)((int)this + 0x98);
      *piVar1 = (int)this + 0x94;
      *(int **)((int)this + 0x98) = piVar1;
      *(int **)piVar1[1] = piVar1;
      FUN_0059ae30(iVar2);
    } while (*(int *)((int)job + 0x3c) != (int)job + 0x38);
  }
  iVar2 = *(int *)((int)job + 0x24);
  piVar1 = *(int **)((int)job + 4);
  iVar3 = *(int *)job;
  *piVar1 = iVar3;
  *(int **)(iVar3 + 4) = piVar1;
  *(undefined4 *)((int)job + 4) = *(undefined4 *)((int)this + 0x84);
  *(int *)job = (int)this + 0x80;
  *(void **)((int)this + 0x84) = job;
  **(undefined4 **)((int)job + 4) = job;
  *(undefined4 *)((int)job + 0x24) = 7;
  JobManager_RetireDependentJobs(this,job);
  if ((((notifyCallback) && (*(int *)((int)job + 0x10) != 0)) && (iVar2 != 4)) && (iVar2 != 5)) {
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 8));
    (**(code **)((int)job + 0x10))((int)job + 8,*(undefined4 *)((int)job + 0x14),7);
    FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 8),(uint *)&DAT_00fda7ac);
  }
  if (*(char *)((int)job + 0x4c) != '\0') {
    *(undefined1 *)((int)job + 0x4c) = 0;
    FUN_00599db0((int *)((int)this + 0x40));
  }
  if (*(char *)((int)job + 0x4e) != '\0') {
    *(undefined1 *)((int)job + 0x4e) = 0;
    piVar1 = (int *)((int)job + 0x30);
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      JobManager_RecycleInternalJob(*(void **)((int)job + 0x34),job);
    }
  }
  return;
}

