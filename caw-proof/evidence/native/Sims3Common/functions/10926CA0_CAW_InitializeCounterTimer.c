/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Zeroes start/cumulative counter fields +0/+4/+8/+C,
   initializes unit+10 and conversion+14, then delegates the requested unit to0x109267D0. Optional
   start records RDTSC for enum1 or QueryPerformanceCounter for other units. Terrain
   constructor0x10257BE0 supplies enum4 and start=false. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

DWORD * __thiscall CAW_InitializeCounterTimer(void *this,undefined4 param_1,char param_2)

{
  undefined8 uVar1;
  undefined4 uVar2;
  LARGE_INTEGER local_8;
  
  uVar2 = DAT_10acb0d4;
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = uVar2;
  CAW_SetCounterTimerUnit(this,param_1);
  if ((param_2 != '\0') && (*(int *)this == 0 && *(int *)((int)this + 4) == 0)) {
    if (*(int *)((int)this + 0x10) == 1) {
      uVar1 = rdtsc();
      *(int *)this = (int)uVar1;
      *(int *)((int)this + 4) = (int)((ulonglong)uVar1 >> 0x20);
      return this;
    }
    QueryPerformanceCounter(&local_8);
    *(LONG *)((int)this + 4) = local_8.s.HighPart;
    *(DWORD *)this = local_8.s.LowPart;
  }
  return this;
}

