/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Under context-owner+190 criticalsection, compares context
   queue begin+1c8/end+1d8. Busy queue returns retained prior job in dependencyOut and falseAL.
   Empty queue retains/enqueues current job and returns trueAL. Queue block rollover uses00730220.
   Not a general memory-cache admission API. */

bool __thiscall WorldContext_TryAcquireForJob(void *this,void *job,void **dependencyOut)

{
  LPCRITICAL_SECTION this_00;
  undefined4 *puVar1;
  void *pvVar2;
  int iVar3;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 400);
  FUN_004e1c00(this_00,(uint *)&DAT_00ff8758);
  pvVar2 = job;
  if (*(int *)((int)this + 0x1c8) != *(int *)((int)this + 0x1d8)) {
    iVar3 = *(int *)((int)this + 0x1d8);
    if (iVar3 == *(int *)((int)this + 0x1dc)) {
      iVar3 = *(int *)(*(int *)((int)this + 0x1e4) + -4) + 0x100;
    }
    pvVar2 = *(void **)(iVar3 + -4);
    Job_AddReference(pvVar2);
    *dependencyOut = pvVar2;
    FUN_004e1cc0(this_00);
    return false;
  }
  Job_AddReference(job);
  puVar1 = *(undefined4 **)((int)this + 0x1d8);
  if (puVar1 + 1 == *(undefined4 **)((int)this + 0x1e0)) {
    FUN_00730220((void *)((int)this + 0x1c0),&job);
  }
  else {
    *(undefined4 **)((int)this + 0x1d8) = puVar1 + 1;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = pvVar2;
      FUN_004e1cc0(this_00);
      return true;
    }
  }
  FUN_004e1cc0(this_00);
  return true;
}

