/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Under manager critical section+8, only state1 submits. Empty
   dependency list internal+38 dispatches0059a980. Otherwise takes one scheduler reference if
   byte+4e was clear, moves job to manager+58 and writes state2. Internal record offsets; public job
   handle is internal+8. */

void __thiscall JobManager_SubmitInternal(void *this,void *job)

{
  LPCRITICAL_SECTION this_00;
  int *piVar1;
  int iVar2;
  void *pvVar3;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 8);
  FUN_004e1c00(this_00,(uint *)&DAT_00fda7ac);
  if (*(int *)((int)job + 0x24) == 1) {
    if (*(int *)((int)job + 0x3c) == (int)job + 0x38) {
      JobManager_MakeJobRunnable(this,job);
      FUN_004e1cc0(this_00);
      return;
    }
    if (*(char *)((int)job + 0x4e) == '\0') {
      *(undefined1 *)((int)job + 0x4e) = 1;
      pvVar3 = job;
      if (job == (void *)0xfffffff8) {
        pvVar3 = (void *)0x0;
      }
      LOCK();
      *(int *)((int)pvVar3 + 0x30) = *(int *)((int)pvVar3 + 0x30) + 1;
      UNLOCK();
    }
    piVar1 = *(int **)((int)job + 4);
    iVar2 = *(int *)job;
    *piVar1 = iVar2;
    *(int **)(iVar2 + 4) = piVar1;
    *(undefined4 *)((int)job + 0x24) = 2;
    *(undefined4 *)((int)job + 4) = *(undefined4 *)((int)this + 0x5c);
    *(int *)job = (int)this + 0x58;
    *(void **)((int)this + 0x5c) = job;
    **(undefined4 **)((int)job + 4) = job;
  }
  FUN_004e1cc0(this_00);
  return;
}

