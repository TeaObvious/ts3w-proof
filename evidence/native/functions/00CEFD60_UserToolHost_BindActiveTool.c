/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction preparation/interaction comparison): Analyst role from complete
   CEFFC0 producer/consumer chain. ECX tool host plus tool pointer and low-byte boolean stack value
   in two physical DWORD slots; RET8. Same active pointer returns. Replacement resets timing state
   +1B8..+1C4; actual source is RDTSC or QueryPerformanceCounter according to +1C8. Existing tool
   virtual+34 AL predicate chooses CEFD10 insertion into host+180 retained list when zero; otherwise
   old virtual+8 retires under old lot+0D0 critical section. WorldManager notification follows
   old-tool handling. AddRef incoming pointer before replacing +2C; decrement old count, restore
   count1 and virtual scalar-delete(1) when zero. Nonnull binding notifies C5F460; null binding
   submits event1140E90A with normalized (low byte !=0) payload. A deferred-list insertion does not
   establish final destruction time or all resource/GPU completion. Current speculative
   Task/interacting lot are not this native retained tool owner. */

void __thiscall UserToolHost_BindActiveTool(void *this,undefined4 *param_1,char param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined8 uVar3;
  int iVar4;
  char cVar5;
  int *piVar6;
  undefined **local_c [2];
  uint uStack_4;
  
  piVar6 = (int *)((int)this + 0x2c);
  if (param_1 != *(undefined4 **)((int)this + 0x2c)) {
    *(undefined4 *)((int)this + 0x1b8) = 0;
    *(undefined4 *)((int)this + 0x1bc) = 0;
    *(undefined4 *)((int)this + 0x1c0) = 0;
    *(undefined4 *)((int)this + 0x1c4) = 0;
    if (*(int *)((int)this + 0x1c8) == 1) {
      uVar3 = rdtsc();
      local_c[1] = (undefined **)((ulonglong)uVar3 >> 0x20);
      *(int *)((int)this + 0x1b8) = (int)uVar3;
    }
    else {
      QueryPerformanceCounter((LARGE_INTEGER *)local_c);
      *(undefined ***)((int)this + 0x1b8) = local_c[0];
    }
    *(undefined ***)((int)this + 0x1bc) = local_c[1];
    iVar4 = DAT_011edbc4;
    if ((int *)*piVar6 != (int *)0x0) {
      cVar5 = (**(code **)(*(int *)*piVar6 + 0x34))();
      if (cVar5 == '\0') {
        UserToolHost_QueueRetainedTool((void *)((int)this + 0x180),piVar6);
      }
      else {
        iVar2 = *(int *)(*piVar6 + 0xc);
        if (iVar2 != 0) {
          EnterCriticalSection((LPCRITICAL_SECTION)(iVar2 + 0xd0));
        }
        (**(code **)(*(int *)*piVar6 + 8))();
        if (iVar2 != 0) {
          LeaveCriticalSection((LPCRITICAL_SECTION)(iVar2 + 0xd0));
        }
      }
      if (iVar4 != 0) {
        FUN_00c5f470(iVar4);
      }
    }
    puVar1 = (undefined4 *)*piVar6;
    if (param_1 != puVar1) {
      if (param_1 != (undefined4 *)0x0) {
        param_1[1] = param_1[1] + 1;
      }
      *piVar6 = (int)param_1;
      if ((puVar1 != (undefined4 *)0x0) &&
         (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
        puVar1[1] = 1;
        (**(code **)*puVar1)(1);
      }
    }
    if (*piVar6 == 0) {
      piVar6 = (int *)FUN_007693a0();
      if (piVar6 != (int *)0x0) {
        LOCK();
        local_c[1] = (undefined **)0x0;
        UNLOCK();
        uStack_4 = (uint)(param_2 != '\0');
        local_c[0] = &PTR_FUN_01065f8c;
        (**(code **)(*piVar6 + 0x18))(0x1140e90a,local_c,0);
      }
    }
    else if (iVar4 != 0) {
      FUN_00c5f460(iVar4);
      return;
    }
  }
  return;
}

