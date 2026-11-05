/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x0059b05a) */
/* Analyst PC1.67 cleanup job contract: Under manager lock retires remaining relationships
   via0059af00(job,false), releases optional retained interface internal+18 outside lock via
   virtual+4, clears internal+8/+c, unlinks from current list, inserts into free-list manager+48 and
   writes state0. This recycles internal allocation; it does not free its0x50-byte storage at each
   last release. */

void __thiscall JobManager_RecycleInternalJob(void *this,void *job)

{
  int *piVar1;
  int iVar2;
  
  JobManager_RetireInternalJob(this,job,false);
  piVar1 = *(int **)((int)job + 0x18);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)job + 0x18) = 0;
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 8));
    if ((piVar1 != (int *)0x0) && (piVar1 != (int *)0x0)) {
      (**(code **)(*piVar1 + 4))();
    }
    FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 8),(uint *)&DAT_00fda7ac);
  }
  piVar1 = *(int **)((int)job + 4);
  iVar2 = *(int *)job;
  *(undefined4 *)((int)job + 8) = 0;
  *(undefined4 *)((int)job + 0xc) = 0;
  *piVar1 = iVar2;
  *(int **)(iVar2 + 4) = piVar1;
  *(undefined4 *)((int)job + 4) = *(undefined4 *)((int)this + 0x4c);
  *(int *)job = (int)this + 0x48;
  *(void **)((int)this + 0x4c) = job;
  **(undefined4 **)((int)job + 4) = job;
  *(undefined4 *)((int)job + 0x24) = 0;
  return;
}

