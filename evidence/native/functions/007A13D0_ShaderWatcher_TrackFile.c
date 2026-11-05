/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: watcher initialization. Copies the tracked filename, records its modification time,
   clears timing state and starts the selected clock. This is the producer for
   ShaderWatcher_PollAndReload's file/time state. */

void __thiscall ShaderWatcher_TrackFile(void *this,short *param_1)

{
  short sVar1;
  undefined8 uVar2;
  short *psVar3;
  __time64_t _Var4;
  LARGE_INTEGER local_8;
  
  sVar1 = *param_1;
  psVar3 = param_1;
  while (sVar1 != 0) {
    psVar3 = psVar3 + 1;
    sVar1 = *psVar3;
  }
  FUN_00408d60((undefined4 *)((int)this + 0x40),param_1,param_1 + ((int)psVar3 - (int)param_1 >> 1))
  ;
  _Var4 = FUN_004dbec0(*(wchar_t **)((int)this + 0x40),2);
  *(__time64_t *)((int)this + 0x38) = _Var4;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  if (*(int *)((int)this + 0x28) != 1) {
    QueryPerformanceCounter(&local_8);
    *(DWORD *)((int)this + 0x18) = local_8.s.LowPart;
    *(LONG *)((int)this + 0x1c) = local_8.s.HighPart;
    return;
  }
  uVar2 = rdtsc();
  *(int *)((int)this + 0x18) = (int)uVar2;
  *(int *)((int)this + 0x1c) = (int)((ulonglong)uVar2 >> 0x20);
  return;
}

