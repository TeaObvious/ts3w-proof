/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67: QPF-derived global scales including milliseconds and counter-overhead
   calibration; no startup reachability claim.
   QPF reciprocal times 1000 is stored as binary32 at 0x011cc8fc for mode 4 milliseconds. Original
   calibration also changes OS priorities and estimates counter overhead. Startup reachability,
   initialization success and OS-failure paths remain separate questions; this code was not executed
   for this analysis.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void ElapsedClock_InitializeCalibrationScales(void)

{
  ulonglong uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  double dVar4;
  HANDLE hProcess;
  HANDLE hThread;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  int iVar8;
  uint uVar9;
  float10 fVar10;
  longlong lVar11;
  LARGE_INTEGER local_58;
  HANDLE local_50;
  HANDLE local_4c;
  DWORD local_48;
  int local_44;
  LARGE_INTEGER local_40;
  LARGE_INTEGER local_38;
  uint local_30;
  uint uStack_2c;
  uint local_28;
  uint uStack_24;
  int local_20;
  uint uStack_1c;
  LARGE_INTEGER local_18;
  LARGE_INTEGER local_10;
  
  if ((DAT_0114d9f4 == 0) && (DAT_0114d9f0 < 2)) {
    hProcess = GetCurrentProcess();
    local_50 = hProcess;
    local_48 = GetPriorityClass(hProcess);
    hThread = GetCurrentThread();
    local_4c = hThread;
    local_44 = GetThreadPriority(hThread);
    SetPriorityClass(hProcess,0x100);
    SetThreadPriority(hThread,0xf);
    DAT_0114d9f8 = 0;
    DAT_0114d9fc = 0;
    local_58.s.LowPart = 0;
    do {
      QueryPerformanceCounter(&local_38);
      uVar1 = rdtsc();
      uVar6 = (uint)(uVar1 >> 0x20);
      local_30 = (uint)uVar1;
      uStack_2c = uVar6 & 0x7fffffff;
      local_40.s.HighPart = uVar6 & 0x80000000;
      local_40.s.LowPart = 0;
      local_28 = local_38.s.LowPart;
      uStack_24 = local_38.s.HighPart & 0x7fffffff;
      uStack_1c = local_38.s.HighPart & 0x80000000;
      local_20 = 0;
      dVar4 = (-(double)(longlong)(((ulonglong)uVar6 & 0x80000000) << 0x20) +
              (double)(uVar1 & 0x7fffffffffffffff)) /
              (-(double)(longlong)(((ulonglong)(uint)local_38.s.HighPart & 0x80000000) << 0x20) +
              (double)(CONCAT44(local_38.s.HighPart,local_38.s.LowPart) & 0x7fffffffffffffff));
      if ((0.98 < dVar4) && (dVar4 < 1.02)) {
        QueryPerformanceFrequency((LARGE_INTEGER *)&DAT_0114d9f8);
        break;
      }
      local_58.s.LowPart = local_58.s.LowPart + 1;
    } while ((int)local_58.s.LowPart < 5);
    lVar11 = CONCAT44(DAT_0114d9fc,DAT_0114d9f8);
    if (DAT_0114d9f8 == 0 && DAT_0114d9fc == 0) {
      local_10.s.LowPart = 0;
      local_10.s.HighPart = 0;
      QueryPerformanceFrequency(&local_38);
      QueryPerformanceCounter(&local_40);
      uVar2 = rdtsc();
      uStack_2c = (uint)((ulonglong)uVar2 >> 0x20);
      local_30 = (uint)uVar2;
      do {
        SleepEx(0x32,1);
        QueryPerformanceCounter(&local_58);
        uVar2 = rdtsc();
        local_20 = local_58.s.LowPart - local_40._0_4_;
        uVar6 = (local_58.s.HighPart - local_40._4_4_) -
                (uint)(local_58.s.LowPart < local_40.s.LowPart);
        uStack_1c = uVar6 & 0x7fffffff;
        uStack_24 = uVar6 & 0x80000000;
        local_28 = 0;
        local_18.s.LowPart = local_38.s.LowPart;
        local_18.s.HighPart = local_38.s.HighPart & 0x7fffffff;
        local_10.s.HighPart = local_38.s.HighPart & 0x80000000;
        local_10.s.LowPart = 0;
        fVar10 = (-(float10)(longlong)(((ulonglong)uVar6 & 0x80000000) << 0x20) +
                 (float10)(CONCAT44(uVar6,local_20) & 0x7fffffffffffffff)) /
                 (-(float10)(longlong)(((ulonglong)(uint)local_38.s.HighPart & 0x80000000) << 0x20)
                 + (float10)(CONCAT44(local_38.s.HighPart,local_38.s.LowPart) & 0x7fffffffffffffff))
        ;
      } while (fVar10 < (float10)0.25);
      uVar6 = ((int)((ulonglong)uVar2 >> 0x20) - uStack_2c) - (uint)((uint)uVar2 < local_30);
      local_10.s.HighPart = uVar6 & 0x80000000;
      local_10.s.LowPart = 0;
      lVar11 = Compiler_TruncateX87ToInt64Fallback
                         ((-(float10)(longlong)(((ulonglong)uVar6 & 0x80000000) << 0x20) +
                          (float10)(CONCAT44(uVar6,(uint)uVar2 - local_30) & 0x7fffffffffffffff)) /
                          fVar10);
      hThread = local_4c;
      hProcess = local_50;
    }
    DAT_0114d9fc = (int)((ulonglong)lVar11 >> 0x20);
    DAT_0114d9f8 = (int)lVar11;
    QueryPerformanceFrequency((LARGE_INTEGER *)&DAT_0114d9f0);
    SetPriorityClass(hProcess,local_48);
    SetThreadPriority(hThread,local_44);
    uVar9 = 0xffffffff;
    DAT_011cc8f8 = 1.0 / (float)CONCAT44(DAT_0114d9f4,DAT_0114d9f0);
    uVar6 = 0xffffffff;
    iVar8 = 8;
    DAT_011cc8f4 = DAT_011cc8f8 * 0.016666668;
    DAT_011cc8fc = DAT_011cc8f8 * 1000.0;
    DAT_011cc900 = DAT_011cc8f8 * 1e+06;
    DAT_011cc904 = DAT_011cc8f8 * 1e+09;
    do {
      QueryPerformanceCounter(&local_18);
      QueryPerformanceCounter(&local_10);
      uVar5 = (local_10.s.HighPart - local_18._4_4_) -
              (uint)(local_10.s.LowPart < local_18.s.LowPart);
      if ((uVar5 <= uVar6) && ((uVar5 < uVar6 || (local_10.s.LowPart - local_18._0_4_ < uVar9)))) {
        uVar6 = uVar5;
        uVar9 = local_10.s.LowPart - local_18._0_4_;
      }
      iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    _DAT_011cc908 = 0xffffffff;
    _DAT_011cc8e4 = 1.0 / (float)CONCAT44(DAT_0114d9fc,DAT_0114d9f8);
    _DAT_011cc90c = 0xffffffff;
    iVar8 = 8;
    _DAT_011cc8e0 = _DAT_011cc8e4 * 0.016666668;
    _DAT_011cc8e8 = _DAT_011cc8e4 * 1000.0;
    _DAT_011cc8ec = _DAT_011cc8e4 * 1e+06;
    _DAT_011cc8f0 = _DAT_011cc8e4 * 1e+09;
    do {
      uVar2 = rdtsc();
      uVar3 = rdtsc();
      uVar5 = (uint)uVar3 - (uint)uVar2;
      uVar7 = ((int)((ulonglong)uVar3 >> 0x20) - (int)((ulonglong)uVar2 >> 0x20)) -
              (uint)((uint)uVar3 < (uint)uVar2);
      if ((uVar7 <= _DAT_011cc90c) && ((uVar7 < _DAT_011cc90c || (uVar5 < _DAT_011cc908)))) {
        _DAT_011cc908 = uVar5;
        _DAT_011cc90c = uVar7;
      }
      iVar8 = iVar8 + -1;
      DAT_011cc910 = uVar9;
      DAT_011cc914 = uVar6;
    } while (iVar8 != 0);
  }
  return;
}

