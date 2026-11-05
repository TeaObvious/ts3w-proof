/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Under manager lock, returns when internal state+24 is7,6,0
   or1. While active marks+4c; if current thread matches a registered worker it may pump work
   through0059a820(manager,worker,0,true,true), otherwise joins manager wait-list+40, releases lock,
   waits on WaitNode event with originalFFFFFFFF timeoutword00fda7ac, then reacquires lock and
   rechecks. A submitted cleanup waits for6/7; this helper does not independently force unsubmitted
   state1 to execute or guarantee eventual termination. */

void __thiscall JobManager_WaitForInternalJob(void *this,void *job)

{
  undefined4 *puVar1;
  int iVar2;
  bool bVar3;
  void *pvVar4;
  int *piVar5;
  undefined4 *local_4;
  
  pvVar4 = ThreadIdentity_GetCurrentCachedHandle();
  puVar1 = *(undefined4 **)((int)this + 0x88);
  local_4 = (undefined4 *)0x0;
  do {
    if (puVar1 == (undefined4 *)((int)this + 0x88)) {
      puVar1 = (undefined4 *)((int)this + 0x9c);
      if (*(undefined4 **)((int)this + 0xa0) == puVar1) {
        piVar5 = (int *)FUN_004e4500(0x18,"Services/JobManager/WaitNode",0);
        if (piVar5 == (int *)0x0) {
          piVar5 = (int *)0x0;
        }
        else {
          FUN_004e2e30(piVar5 + 2,0);
          *piVar5 = (int)piVar5;
          piVar5[1] = (int)piVar5;
        }
      }
      else {
        piVar5 = (int *)*puVar1;
        *(undefined4 **)(*piVar5 + 4) = puVar1;
        *puVar1 = *(undefined4 *)*puVar1;
      }
LAB_0059ac63:
      iVar2 = *(int *)((int)job + 0x24);
      while ((((iVar2 != 7 && (*(int *)((int)job + 0x24) != 6)) && (*(int *)((int)job + 0x24) != 0))
             && (*(int *)((int)job + 0x24) != 1))) {
        *(undefined1 *)((int)job + 0x4c) = 1;
        if ((local_4 == (undefined4 *)0x0) ||
           (bVar3 = JobManager_PumpWorkerQueue(this,local_4,(void *)0x0,true,true), !bVar3)) {
          piVar5[1] = *(int *)((int)this + 0x44);
          *piVar5 = (int)this + 0x40;
          *(int **)((int)this + 0x44) = piVar5;
          *(int **)piVar5[1] = piVar5;
          FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 8));
          SyncEvent_WaitUntilDeadline(piVar5 + 2,&DAT_00fda7ac);
          FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 8),(uint *)&DAT_00fda7ac);
        }
        iVar2 = *(int *)((int)job + 0x24);
      }
      if (local_4 == (undefined4 *)0x0) {
        *piVar5 = *(int *)((int)this + 0x9c);
        piVar5[1] = (int)this + 0x9c;
        *(int **)((int)this + 0x9c) = piVar5;
        *(int **)(*piVar5 + 4) = piVar5;
      }
      return;
    }
    if ((void *)puVar1[9] == pvVar4) {
      piVar5 = puVar1 + 2;
      local_4 = puVar1;
      goto LAB_0059ac63;
    }
    puVar1 = (undefined4 *)*puVar1;
  } while( true );
}

