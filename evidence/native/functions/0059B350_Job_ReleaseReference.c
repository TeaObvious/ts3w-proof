/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: ECX public handle maps to internal-8. LOCK XADD -1 at
   internal+30 returns decremented signed32 count. Atzero locks owner manager+8 and invokes0059b010
   to recycle. Does not itself wait for job completion. Null branch is not safe: accesses address30.
   Caller owns one acquired reference; scheduler may hold another guarded by internal+4e. */

int __thiscall Job_ReleaseReference(void *this)

{
  LPCRITICAL_SECTION this_00;
  void *this_01;
  int iVar1;
  int *piVar2;
  void *job;
  
  if (this == (void *)0x0) {
    iVar1 = 0;
  }
  else {
    iVar1 = (int)this + -8;
  }
  piVar2 = (int *)(iVar1 + 0x30);
  LOCK();
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + -1;
  UNLOCK();
  if (iVar1 + -1 == 0) {
    if (this == (void *)0x0) {
      job = (void *)0x0;
    }
    else {
      job = (void *)((int)this + -8);
    }
    this_01 = *(void **)((int)job + 0x34);
    this_00 = (LPCRITICAL_SECTION)((int)this_01 + 8);
    FUN_004e1c00(this_00,(uint *)&DAT_00fda7ac);
    JobManager_RecycleInternalJob(this_01,job);
    FUN_004e1cc0(this_00);
  }
  return iVar1 + -1;
}

