/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_Restart. Export ordinal(s): 2442. Entry
   VA: 0x10993460. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600059D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl StopWatch_Restart(DWORD *param_1)

{
  undefined8 uVar1;
  LARGE_INTEGER local_8;
  
                    /* 0x993460  2442  StopWatch_Restart */
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if (param_1[4] == 1) {
    uVar1 = rdtsc();
    *param_1 = (DWORD)uVar1;
    param_1[1] = (DWORD)((ulonglong)uVar1 >> 0x20);
    return;
  }
  QueryPerformanceCounter(&local_8);
  *param_1 = local_8.s.LowPart;
  param_1[1] = local_8.s.HighPart;
  return;
}

