/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Under context-owner+190 criticalsection, advances queue
   front, frees exhausted block when required, then releases the removed public job reference after
   leaving lock. Paired with successful00c626c0/00c62590 context acquisition. */

void __thiscall WorldContext_ReleaseFrontJob(void *this)

{
  LPCRITICAL_SECTION this_00;
  void *this_01;
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 400);
  FUN_004e1c00(this_00,(uint *)&DAT_00ff8758);
  this_01 = (void *)**(undefined4 **)((int)this + 0x1c8);
  puVar2 = *(undefined4 **)((int)this + 0x1c8) + 1;
  if (puVar2 != *(undefined4 **)((int)this + 0x1d0)) {
    *(undefined4 **)((int)this + 0x1c8) = puVar2;
    FUN_004e1cc0(this_00);
    Job_ReleaseReference(this_01);
    return;
  }
  if (*(void **)((int)this + 0x1cc) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x1cc));
  }
  piVar3 = (int *)(*(int *)((int)this + 0x1d4) + 4);
  *(int **)((int)this + 0x1d4) = piVar3;
  iVar1 = *piVar3;
  *(int *)((int)this + 0x1cc) = iVar1;
  *(int *)((int)this + 0x1d0) = iVar1 + 0x100;
  *(undefined4 *)((int)this + 0x1c8) = *(undefined4 *)((int)this + 0x1cc);
  FUN_004e1cc0(this_00);
  Job_ReleaseReference(this_01);
  return;
}

