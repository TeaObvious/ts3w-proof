/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: watcher poll. Checks the shader-file modification time on a coarse timer; after a change
   and another elapsed threshold, calls ShaderLibrary_LoadPrecompiledPackage with reload=1. This is
   a reload of precompiled package data; shader-source recompilation is not established by this
   function. */

void __fastcall ShaderWatcher_PollAndReload(DWORD *param_1)

{
  uint *puVar1;
  undefined8 uVar2;
  ulonglong uVar3;
  __time64_t _Var4;
  LARGE_INTEGER local_8;
  
  puVar1 = param_1 + 6;
  uVar3 = FUN_004f36c0(puVar1);
  if (((int)(uVar3 >> 0x20) != 0) || (2999 < (uint)uVar3)) {
    _Var4 = FUN_004dbec0((wchar_t *)param_1[0x10],2);
    if (((DWORD)_Var4 != param_1[0xe]) || ((DWORD)((ulonglong)_Var4 >> 0x20) != param_1[0xf])) {
      *(__time64_t *)(param_1 + 0xe) = _Var4;
      FUN_004e3890(param_1);
    }
    *puVar1 = 0;
    param_1[7] = 0;
    param_1[8] = 0;
    param_1[9] = 0;
    if (param_1[10] == 1) {
      uVar2 = rdtsc();
      local_8.s.HighPart = (LONG)((ulonglong)uVar2 >> 0x20);
      *puVar1 = (uint)uVar2;
    }
    else {
      QueryPerformanceCounter(&local_8);
      *puVar1 = local_8.s.LowPart;
    }
    param_1[7] = local_8.s.HighPart;
  }
  if (*param_1 != 0 || param_1[1] != 0) {
    uVar3 = FUN_004f36c0(param_1);
    if (((int)(uVar3 >> 0x20) != 0) || (999 < (uint)uVar3)) {
      FUN_004f3620(param_1);
      ShaderLibrary_LoadPrecompiledPackage(DAT_011d853c,'\x01');
    }
  }
  return;
}

