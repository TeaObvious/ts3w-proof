/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Calls QueryPerformanceCounter, loads the interval argument
   as an unsigned32 integer into x87 (signed FILD followed by a2^32 correction when its high bit is
   set), divides by the binary32 unit conversion at timer+14, and invokes0x10A90966 to convert the
   x87 result to integer ticks. Adds those ticks to the current performance counter and stores
   the64-bit deadline at timer+18/+1C. If optional start is true and the start counter is zero,
   records RDTSC for enum1 or QueryPerformanceCounter otherwise. The decompiler omits the x87
   division/implicit-ST0 input to0x10A90966; instructions0x10926BF4..0x10926C1E establish it.
   Terrain dispatcher supplies1000 in unit4, therefore one second; its subsequent eligibility
   comparison is strict currentCounter greater than deadline. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_SetCounterTimerDeadline(void *this,int param_1,char param_2)

{
  undefined8 uVar1;
  ulonglong uVar2;
  LARGE_INTEGER local_8;
  
  QueryPerformanceCounter(&local_8);
  uVar2 = CAW_TruncateX87ValueToInt64();
  *(ulonglong *)((int)this + 0x18) = uVar2 + CONCAT44(local_8.s.HighPart,local_8.s.LowPart);
  if ((param_2 != '\0') && (*(int *)this == 0 && *(int *)((int)this + 4) == 0)) {
    if (*(int *)((int)this + 0x10) == 1) {
      uVar1 = rdtsc();
      *(int *)this = (int)uVar1;
      *(int *)((int)this + 4) = (int)((ulonglong)uVar1 >> 0x20);
      return;
    }
    QueryPerformanceCounter(&local_8);
    *(DWORD *)this = local_8.s.LowPart;
    *(LONG *)((int)this + 4) = local_8.s.HighPart;
  }
  return;
}

