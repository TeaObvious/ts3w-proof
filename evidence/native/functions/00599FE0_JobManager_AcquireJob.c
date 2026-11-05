/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Virtual slot+10 of vtable00fda80c. ECX=manager, one stack
   argument outJob, RET4, AL bool. Reuses manager free-list+48 or allocates internal0x50-byte
   Services/JobManager/Job record. Public handle=internal+8, atomic refcount internal+30 incremented
   once, owner manager+34, callback+10 cleared, state+24=1, default affinity+28=FFFFFFFF. Writes
   null and returns false on allocation failure. Caller writes callback/context at PUBLIC+8/+c,
   which are INTERNAL+10/+14. This out-pointer ABI is required for the indirect call at00c63442;
   treating it as argumentless corrupts decompiler stack recovery. */

bool __thiscall JobManager_AcquireJob(void *this,void **outJob)

{
  undefined4 *puVar1;
  int *piVar2;
  int *piVar3;
  
  FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 8),(uint *)&DAT_00fda7ac);
  puVar1 = (undefined4 *)((int)this + 0x48);
  if (*(undefined4 **)((int)this + 0x4c) == puVar1) {
    piVar3 = (int *)FUN_004e4500(0x50,"Services/JobManager/Job",0);
    if (piVar3 == (int *)0x0) {
      piVar3 = (int *)0x0;
      goto LAB_0059a057;
    }
    LOCK();
    piVar3[0xc] = 0;
    UNLOCK();
    piVar2 = piVar3 + 0xe;
    piVar3[0xf] = (int)piVar2;
    *piVar2 = (int)piVar2;
    piVar2 = piVar3 + 0x10;
    piVar3[0x11] = (int)piVar2;
    *piVar2 = (int)piVar2;
    *(undefined1 *)((int)piVar3 + 0x4e) = 0;
    piVar3[7] = (int)&DAT_00f98f7a;
    piVar3[6] = 0;
    piVar3[0xb] = 0;
  }
  else {
    piVar3 = (int *)*puVar1;
    *(undefined4 **)(*piVar3 + 4) = puVar1;
    *puVar1 = *(undefined4 *)*puVar1;
  }
  if (piVar3 != (int *)0x0) {
    LOCK();
    piVar3[0xc] = piVar3[0xc] + 1;
    UNLOCK();
    piVar3[2] = 0;
    piVar3[3] = 0;
    piVar3[0xd] = (int)this;
    piVar3[4] = 0;
    piVar3[8] = 0;
    piVar3[0x12] = 0;
    piVar3[10] = -1;
    piVar3[9] = 1;
    *(undefined1 *)(piVar3 + 0x13) = 0;
    *(undefined1 *)((int)piVar3 + 0x4d) = 0;
    piVar3[1] = *(int *)((int)this + 0x54);
    *piVar3 = (int)this + 0x50;
    *(int **)((int)this + 0x54) = piVar3;
    *(int **)piVar3[1] = piVar3;
  }
LAB_0059a057:
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 8));
  if (piVar3 != (int *)0x0) {
    *outJob = piVar3 + 2;
    return piVar3 != (int *)0x0;
  }
  *outJob = (void *)0x0;
  return false;
}

