/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 load-pump leaf. ECX clock24bytes, UInt32mode+lowbytestart stackargs, RET8,
   returnsreceiverEAX. Zero start+accum16bytes andmodeDWORD10, setFLOAT32scale14=1, call4F34E0(mode)
   sameECX. IfstartnonzeroANDstartUInt64stillzero: mode1RDTSCelseQPC, store64bitstart. Noallocation,
   synchronization or localQPCsuccesscheck. Fullmode/scaleconfiguration4F34E0 is separately
   unreviewed and no unitname inferred here. */

void * __thiscall
ElapsedClock_ConstructAndOptionallyStart(void *this,uint clockMode,uchar startImmediately)

{
  undefined8 uVar1;
  LARGE_INTEGER local_8;
  
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(float *)((int)this + 0x14) = 1.0;
  ElapsedClock_SelectCounterScale(this,clockMode);
  if ((startImmediately != '\0') && (*(int *)this == 0 && *(int *)((int)this + 4) == 0)) {
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

