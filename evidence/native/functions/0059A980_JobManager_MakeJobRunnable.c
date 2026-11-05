/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Internal job under manager lock. Non-null callback+10
   assigns increasing64-bit sequence at+8/+c and routes job by affinity internal+28; FFFFFFFF uses
   common ready list+60, state3, waking waiting workers/callers. Other masks choose matching worker
   or retire7. Null callback executes0059a0e0 directly. Scheduler reference uses atomic internal+30
   guarded by+4e. Ready queue selection/policy is not proof of runtime worker/thread choice. */

void __thiscall JobManager_MakeJobRunnable(void *this,void *job)

{
  undefined4 *this_00;
  uint *puVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  undefined4 *puVar6;
  void *pvVar7;
  
  if (*(int *)((int)job + 0x10) == 0) {
    if (((1 << (*(byte *)((int)job + 0x24) & 0x1f) & 0x3cU) == 0) &&
       (*(char *)((int)job + 0x4e) == '\0')) {
      *(undefined1 *)((int)job + 0x4e) = 1;
      pvVar7 = job;
      if (job == (void *)0xfffffff8) {
        pvVar7 = (void *)0x0;
      }
      LOCK();
      *(int *)((int)pvVar7 + 0x30) = *(int *)((int)pvVar7 + 0x30) + 1;
      UNLOCK();
    }
    if (*(int *)((int)job + 0x24) == 5) {
      *(undefined4 *)((int)job + 0x24) = 4;
    }
    piVar3 = *(int **)((int)job + 4);
    iVar4 = *(int *)job;
    *piVar3 = iVar4;
    *(int **)(iVar4 + 4) = piVar3;
    *(undefined4 *)((int)job + 4) = *(undefined4 *)((int)this + 0x6c);
    *(int *)job = (int)this + 0x68;
    *(void **)((int)this + 0x6c) = job;
    **(undefined4 **)((int)job + 4) = job;
    JobManager_ExecuteCallbackAndAdvance(this,job);
    return;
  }
  puVar1 = (uint *)((int)this + 0xa8);
  uVar2 = *puVar1;
  *puVar1 = *puVar1 + 1;
  this_00 = (undefined4 *)((int)job + 8);
  *(int *)((int)this + 0xac) = *(int *)((int)this + 0xac) + (uint)(0xfffffffe < uVar2);
  *this_00 = *(undefined4 *)((int)this + 0xa8);
  *(undefined4 *)((int)job + 0xc) = *(undefined4 *)((int)this + 0xac);
  if (*(uint *)((int)job + 0x28) == 0xffffffff) {
    if (((1 << (*(byte *)((int)job + 0x24) & 0x1f) & 0x3cU) == 0) &&
       (*(char *)((int)job + 0x4e) == '\0')) {
      *(undefined1 *)((int)job + 0x4e) = 1;
      pvVar7 = job;
      if (this_00 == (undefined4 *)0x0) {
        pvVar7 = (void *)0x0;
      }
      LOCK();
      *(int *)((int)pvVar7 + 0x30) = *(int *)((int)pvVar7 + 0x30) + 1;
      UNLOCK();
    }
    iVar4 = *(int *)job;
    piVar3 = *(int **)((int)job + 4);
    *piVar3 = iVar4;
    *(int **)(iVar4 + 4) = piVar3;
    FUN_0059a2e0((int *)((int)this + 0x60),job);
    *(undefined4 *)((int)job + 0x24) = 3;
    if (*(int **)((int)this + 0x3c) != (int *)((int)this + 0x38)) {
      piVar3 = *(int **)((int)this + 0x38);
      piVar5 = (int *)piVar3[1];
      if (piVar5 != piVar3) {
        iVar4 = *piVar3;
        *piVar5 = iVar4;
        *(int **)(iVar4 + 4) = piVar5;
        *piVar3 = (int)piVar3;
        piVar3[1] = (int)piVar3;
        FUN_004e2d20(piVar3 + 2,1);
      }
    }
    if (*(int **)((int)this + 0x44) != (int *)((int)this + 0x40)) {
      piVar3 = *(int **)((int)this + 0x40);
      piVar5 = (int *)piVar3[1];
      if (piVar5 != piVar3) {
        iVar4 = *piVar3;
        *piVar5 = iVar4;
        *(int **)(iVar4 + 4) = piVar5;
        *piVar3 = (int)piVar3;
        piVar3[1] = (int)piVar3;
        FUN_004e2d20(piVar3 + 2,1);
        return;
      }
    }
  }
  else {
    for (puVar6 = *(undefined4 **)((int)this + 0x88); puVar6 != (undefined4 *)((int)this + 0x88);
        puVar6 = (undefined4 *)*puVar6) {
      if ((puVar6[0xb] & *(uint *)((int)job + 0x28)) != 0) {
        if (((1 << (*(byte *)((int)job + 0x24) & 0x1f) & 0x3cU) == 0) &&
           (*(char *)((int)job + 0x4e) == '\0')) {
          *(undefined1 *)((int)job + 0x4e) = 1;
          Job_AddReference(this_00);
        }
        piVar3 = *(int **)((int)job + 4);
        iVar4 = *(int *)job;
        *piVar3 = iVar4;
        *(int **)(iVar4 + 4) = piVar3;
        FUN_0059a2e0(puVar6 + 0xc,job);
        piVar3 = puVar6 + 2;
        *(undefined4 *)((int)job + 0x24) = 3;
        piVar5 = (int *)puVar6[3];
        if (piVar5 == piVar3) {
          return;
        }
        iVar4 = *piVar3;
        *piVar5 = iVar4;
        *(int **)(iVar4 + 4) = piVar5;
        *piVar3 = (int)piVar3;
        puVar6[3] = piVar3;
        FUN_004e2d20(puVar6 + 4,1);
        return;
      }
    }
    JobManager_RetireInternalJob(this,job,true);
  }
  return;
}

