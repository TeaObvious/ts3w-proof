/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 load-pump leaf. cdecl onecookie stackword, plainRET or tailjumpECAAA0
   aftermovingcookieECX. Candidate callback has one process-shared timer1200BC0 and one-time
   initbit1200BD8. First ORbit1 thenclockctor(mode5,start1), registeronexitF95230. Read elapsed
   helperST0 and compare original FLOAT32FC2B9C bits3D088889=.03333333507180214. FCOMIP
   threshold,elapsed; JA SKIPS ONLY ordered threshold>elapsed. Equality AND unordered continue;
   decompiled threshold<=elapsed omits unordered case. On admitted invocation
   clearstart+accumulator16bytes, readRDTSC iftimerMode1elseQPC
   andreplace64bitstartBEFOREservices/threadcheck. Query50AF90;nonnullcallsECXvirtual24then28 (not
   independently named/expanded). GetCurrentThreadId vs7D9C20 registeredID; mismatchreturns
   AFTERtimerreset+thosecalls. Matchcallsnonnull-unguarded global11CEBD0 virtual8C, loads cookieECX,
   tailjumpsECAAA0. No Sleep/wait/assetqueue/readiness computation in THIS body. ClockMode5
   units/calibration, childservice effects, complete setupcaller and actualruntime
   registration/reentrancy remain open; numericthreshold alone doesnotprove30Hz/simulationtime.
   Sharedinit/update no explicitlock. */

void __cdecl LoadPump_ThrottleAndDispatchServices(void *userData)

{
  undefined8 uVar1;
  int *piVar2;
  DWORD DVar3;
  uint uVar4;
  float10 fVar5;
  LARGE_INTEGER local_8;
  
  if ((_DAT_01200bd8 & 1) == 0) {
    _DAT_01200bd8 = _DAT_01200bd8 | 1;
    ElapsedClock_ConstructAndOptionallyStart(&DAT_01200bc0,5,'\x01');
    FUN_00f7f381((_onexit_t)&DAT_00f95230);
  }
  fVar5 = ElapsedClock_ReadScaledTicks(&DAT_01200bc0);
                    /* FCOMIP threshold,elapsed followed JA: skip ONLY ordered greater. Unordered
                       doesnot takeJA. C threshold<=elapsed expression loses this exceptional-input
                       branch. */
  if ((float10)DAT_00fc2b9c <= fVar5) {
    _DAT_01200bc0 = 0;
    _DAT_01200bc4 = 0;
    _DAT_01200bc8 = 0;
    _DAT_01200bcc = 0;
    if (DAT_01200bd0 == 1) {
      uVar1 = rdtsc();
      local_8.s.HighPart = (LONG)((ulonglong)uVar1 >> 0x20);
      _DAT_01200bc0 = (DWORD)uVar1;
    }
    else {
      QueryPerformanceCounter(&local_8);
      _DAT_01200bc0 = local_8.s.LowPart;
    }
    _DAT_01200bc4 = local_8.s.HighPart;
    piVar2 = (int *)FUN_0050af90();
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x24))();
      (**(code **)(*piVar2 + 0x28))();
    }
    DVar3 = GetCurrentThreadId();
    uVar4 = ThreadIdentity_ReadRegisteredPumpThreadId();
                    /* Thread mismatch skips frame-service tailcall; timerreset and optional
                       virtual24/28 have ALREADY occurred. */
    if (DVar3 == uVar4) {
      (**(code **)(*DAT_011cebd0 + 0x8c))();
      LoadPump_RunSelectedFrameServices(userData);
      return;
    }
  }
  return;
}

