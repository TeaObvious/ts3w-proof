/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Walks internal+40 dependent-link list, unlinks/recycles
   links, and recursively retires dependent job with0059af00(...,true). Caller holds manager lock.
   Does not invoke arbitrary callback4 directly. */

void __thiscall JobManager_RetireDependentJobs(void *this,void *job)

{
  int *piVar1;
  int iVar2;
  void *job_00;
  int *piVar3;
  
  if (*(int *)((int)job + 0x44) != (int)job + 0x40) {
    do {
      if (*(int *)((int)job + 0x44) == 0) {
        piVar3 = (int *)0x0;
      }
      else {
        piVar3 = (int *)(*(int *)((int)job + 0x44) + -8);
      }
      piVar1 = (int *)piVar3[3];
      iVar2 = piVar3[2];
      job_00 = (void *)piVar3[5];
      *piVar1 = iVar2;
      *(int **)(iVar2 + 4) = piVar1;
      piVar1 = (int *)piVar3[1];
      iVar2 = *piVar3;
      *piVar1 = iVar2;
      *(int **)(iVar2 + 4) = piVar1;
      piVar3[1] = *(int *)((int)this + 0x98);
      *piVar3 = (int)this + 0x94;
      *(int **)((int)this + 0x98) = piVar3;
      *(int **)piVar3[1] = piVar3;
      JobManager_RetireInternalJob(this,job_00,true);
    } while (*(int *)((int)job + 0x44) != (int)job + 0x40);
  }
  return;
}

