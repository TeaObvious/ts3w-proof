/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Processes queued jobs with0059a0e0, optionally returning
   after one. May move highest-priority eligible common job to worker queue; priority comparison is
   signed32 (JLE), with INT_MIN sentinel when empty. When returnIfEmpty=false may release lock and
   wait; worker stop byte+40 ends loop. Used by0059abe0 with deadline0 and true,true, allowing
   waiting worker to execute queued work. This is static scheduling logic, not an observed runtime
   thread trace. */

bool __thiscall
JobManager_PumpWorkerQueue(void *this,void *worker,void *deadline,bool returnIfEmpty,bool oneJob)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  bool local_15;
  LARGE_INTEGER local_10;
  int local_4;
  
  iVar2 = *(int *)((int)worker + 0x2c);
  local_15 = false;
  if (*(char *)((int)worker + 0x40) != '\0') {
    return false;
  }
  piVar1 = (int *)((int)worker + 0x30);
  do {
    iVar6 = -0x80000000;
    if (*(int **)((int)worker + 0x34) != piVar1) {
      iVar6 = *(int *)(*piVar1 + 0x48);
    }
    if (((iVar2 < 0) && (*(undefined4 **)((int)this + 100) != (undefined4 *)((int)this + 0x60))) &&
       (piVar3 = *(int **)((int)this + 0x60), iVar6 < piVar3[0x12])) {
      piVar4 = (int *)piVar3[1];
      iVar6 = *piVar3;
      *piVar4 = iVar6;
      *(int **)(iVar6 + 4) = piVar4;
      *piVar3 = *piVar1;
      piVar3[1] = (int)piVar1;
      *piVar1 = (int)piVar3;
      *(int **)(*piVar3 + 4) = piVar3;
    }
    if (*(int **)((int)worker + 0x34) == piVar1) {
      if (returnIfEmpty) {
        return local_15;
      }
      piVar3 = (int *)((int)worker + 8);
      *(undefined4 *)((int)worker + 0xc) = *(undefined4 *)((int)this + 0x3c);
      *piVar3 = (int)this + 0x38;
      *(int **)((int)this + 0x3c) = piVar3;
      **(int **)((int)worker + 0xc) = (int)piVar3;
      FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 8));
      SyncEvent_WaitUntilDeadline((void *)((int)worker + 0x10),&DAT_00fda7ac);
      FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 8),(uint *)&DAT_00fda7ac);
    }
    else {
      piVar3 = (int *)*piVar1;
      piVar4 = *(int **)((int)worker + 0x38);
      if (piVar4 != piVar3) {
        iVar6 = *piVar3;
        piVar5 = (int *)piVar3[1];
        *(int **)(iVar6 + 4) = piVar5;
        *piVar5 = iVar6;
        piVar5 = (int *)piVar4[1];
        *piVar5 = (int)piVar3;
        piVar4[1] = (int)piVar3;
        piVar3[1] = (int)piVar5;
        *piVar3 = (int)piVar4;
      }
      JobManager_ExecuteCallbackAndAdvance(this,*(void **)((int)worker + 0x38));
      local_15 = true;
      if (oneJob) {
        return true;
      }
      if (deadline != (void *)0x0) {
        QueryPerformanceCounter(&local_10);
        local_4 = (*(int *)((int)deadline + 0x1c) - local_10._4_4_) -
                  (uint)(*(uint *)((int)deadline + 0x18) < local_10.s.LowPart);
        if (local_4 < 0) {
          return true;
        }
      }
    }
    if (*(char *)((int)worker + 0x40) != '\0') {
      return local_15;
    }
  } while( true );
}

