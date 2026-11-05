/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original CAW 1.22.10 Sims3Common.dll: Calls QueryPerformanceFrequency for the stored
   performance-counter frequency at 0x10C572E8. At 0x109266B0..0x109266E1, FILD loads that
   frequency, x87 computes its reciprocal, FST stores seconds-per-tick at 0x10CABCE8 without popping
   the extended reciprocal, then loads the binary32 constant1000.0 (0x447A0000, bytes00007a44) at
   0x10ABE284 and multiplies the retained reciprocal before rounding/storing milliseconds-per-tick
   at 0x10CABCEC. This proves timer enum4 uses milliseconds; it is not an arbitrary frame-count
   delay. The reciprocal remains in x87 across the first store, so this calculation must not be
   described as multiplying the already rounded binary32 seconds-per-tick value. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

void CAW_InitializePerformanceCounterUnitConversions(void)

{
  undefined8 uVar1;
  undefined8 uVar2;
  double dVar3;
  HANDLE hProcess;
  HANDLE hThread;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  ulonglong uVar9;
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
  
  if ((DAT_10c572ec == 0) && (lpFrequency_10c572e8 < (LARGE_INTEGER *)0x2)) {
    hProcess = GetCurrentProcess();
    local_50 = hProcess;
    local_48 = GetPriorityClass(hProcess);
    hThread = GetCurrentThread();
    local_4c = hThread;
    local_44 = GetThreadPriority(hThread);
    SetPriorityClass(hProcess,0x100);
    SetThreadPriority(hThread,0xf);
    lpFrequency_10c572f0 = (LARGE_INTEGER *)0x0;
    DAT_10c572f4 = 0;
    local_58.s.LowPart = 0;
    do {
      QueryPerformanceCounter(&local_38);
      uVar9 = rdtsc();
      uVar5 = (uint)(uVar9 >> 0x20);
      local_30 = (uint)uVar9;
      uStack_2c = uVar5 & 0x7fffffff;
      local_40.s.HighPart = uVar5 & 0x80000000;
      local_40.s.LowPart = 0;
      local_28 = local_38.s.LowPart;
      uStack_24 = local_38.s.HighPart & 0x7fffffff;
      uStack_1c = local_38.s.HighPart & 0x80000000;
      local_20 = 0;
      dVar3 = (-(double)(longlong)(((ulonglong)uVar5 & 0x80000000) << 0x20) +
              (double)(uVar9 & 0x7fffffffffffffff)) /
              (-(double)(longlong)(((ulonglong)(uint)local_38.s.HighPart & 0x80000000) << 0x20) +
              (double)(CONCAT44(local_38.s.HighPart,local_38.s.LowPart) & 0x7fffffffffffffff));
      if ((_DAT_10b6e7f0 < dVar3) && (dVar3 < _DAT_10b6e7e8)) {
        QueryPerformanceFrequency((LARGE_INTEGER *)&lpFrequency_10c572f0);
        break;
      }
      local_58.s.LowPart = local_58.s.LowPart + 1;
    } while ((int)local_58.s.LowPart < 5);
    uVar9 = CONCAT44(DAT_10c572f4,lpFrequency_10c572f0);
    if (lpFrequency_10c572f0 == (LARGE_INTEGER *)0x0 && DAT_10c572f4 == 0) {
      local_10.s.LowPart = 0;
      local_10.s.HighPart = 0;
      QueryPerformanceFrequency(&local_38);
      QueryPerformanceCounter(&local_40);
      uVar1 = rdtsc();
      uStack_2c = (uint)((ulonglong)uVar1 >> 0x20);
      local_30 = (uint)uVar1;
      do {
        SleepEx(0x32,1);
        QueryPerformanceCounter(&local_58);
        uVar1 = rdtsc();
        local_20 = local_58.s.LowPart - local_40._0_4_;
        uVar5 = (local_58.s.HighPart - local_40._4_4_) -
                (uint)(local_58.s.LowPart < local_40.s.LowPart);
        uStack_1c = uVar5 & 0x7fffffff;
        uStack_24 = uVar5 & 0x80000000;
        local_28 = 0;
        local_18.s.LowPart = local_38.s.LowPart;
        local_18.s.HighPart = local_38.s.HighPart & 0x7fffffff;
        local_10.s.HighPart = local_38.s.HighPart & 0x80000000;
        local_10.s.LowPart = 0;
      } while ((-(double)(longlong)(((ulonglong)uVar5 & 0x80000000) << 0x20) +
               (double)(CONCAT44(uVar5,local_20) & 0x7fffffffffffffff)) /
               (-(double)(longlong)(((ulonglong)(uint)local_38.s.HighPart & 0x80000000) << 0x20) +
               (double)(CONCAT44(local_38.s.HighPart,local_38.s.LowPart) & 0x7fffffffffffffff)) <
               _DAT_10ab25b0);
      local_10.s.HighPart =
           ((int)((ulonglong)uVar1 >> 0x20) - uStack_2c) - (uint)((uint)uVar1 < local_30) &
           0x80000000;
      local_10.s.LowPart = 0;
      uVar9 = CAW_TruncateX87ValueToInt64();
      hThread = local_4c;
      hProcess = local_50;
    }
    DAT_10c572f4 = (int)(uVar9 >> 0x20);
    lpFrequency_10c572f0 = (LARGE_INTEGER *)uVar9;
    QueryPerformanceFrequency((LARGE_INTEGER *)&lpFrequency_10c572e8);
    SetPriorityClass(hProcess,local_48);
    SetThreadPriority(hThread,local_44);
    uVar8 = 0xffffffff;
    DAT_10cabce8 = 1.0 / (float)CONCAT44(DAT_10c572ec,lpFrequency_10c572e8);
    uVar5 = 0xffffffff;
    iVar7 = 8;
    DAT_10cabce4 = _DAT_10add49c * DAT_10cabce8;
    DAT_10cabcec = DAT_10abe284 * DAT_10cabce8;
    DAT_10cabcf0 = DAT_10aba5ec * DAT_10cabce8;
    DAT_10cabcf4 = DAT_10cabce8 * (float)s_>_knNServices_ArgScript__10b6e7fb._1_4_;
    do {
      QueryPerformanceCounter(&local_18);
      QueryPerformanceCounter(&local_10);
      uVar4 = (local_10.s.HighPart - local_18._4_4_) -
              (uint)(local_10.s.LowPart < local_18.s.LowPart);
      if ((uVar4 <= uVar5) && ((uVar4 < uVar5 || (local_10.s.LowPart - local_18._0_4_ < uVar8)))) {
        uVar5 = uVar4;
        uVar8 = local_10.s.LowPart - local_18._0_4_;
      }
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    _DAT_10cabcf8 = 0xffffffff;
    _DAT_10cabcd4 = 1.0 / (float)CONCAT44(DAT_10c572f4,lpFrequency_10c572f0);
    _DAT_10cabcfc = 0xffffffff;
    iVar7 = 8;
    _DAT_10cabcd0 = _DAT_10add49c * _DAT_10cabcd4;
    _DAT_10cabcd8 = DAT_10abe284 * _DAT_10cabcd4;
    _DAT_10cabcdc = DAT_10aba5ec * _DAT_10cabcd4;
    _DAT_10cabce0 = _DAT_10cabcd4 * (float)s_>_knNServices_ArgScript__10b6e7fb._1_4_;
    do {
      uVar1 = rdtsc();
      uVar2 = rdtsc();
      uVar4 = (uint)uVar2 - (uint)uVar1;
      uVar6 = ((int)((ulonglong)uVar2 >> 0x20) - (int)((ulonglong)uVar1 >> 0x20)) -
              (uint)((uint)uVar2 < (uint)uVar1);
      if ((uVar6 <= _DAT_10cabcfc) && ((uVar6 < _DAT_10cabcfc || (uVar4 < _DAT_10cabcf8)))) {
        _DAT_10cabcf8 = uVar4;
        _DAT_10cabcfc = uVar6;
      }
      iVar7 = iVar7 + -1;
      DAT_10cabd00 = uVar8;
      DAT_10cabd04 = uVar5;
    } while (iVar7 != 0);
  }
  return;
}

