/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: clear start/accumulator; choose RDTSC mode1 or QPC then store new start.
   Clears both start and accumulator, then chooses RDTSC for mode 1 or QPC and stores the new start.
   This differs from StopAndAccumulate. No prototype change.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __fastcall ElapsedClock_Restart(DWORD *param_1)

{
  undefined8 uVar1;
  LARGE_INTEGER local_8;
  
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

