/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 load-pump leaf. ECX clock24bytes, UInt32mode+lowbytestart stackargs, RET8,
   returnsreceiverEAX. Zero start+accum16bytes andmodeDWORD10, setFLOAT32scale14=1, call4F34E0(mode)
   sameECX. IfstartnonzeroANDstartUInt64stillzero: mode1RDTSCelseQPC, store64bitstart. Noallocation,
   synchronization or localQPCsuccesscheck. Fullmode/scaleconfiguration4F34E0 is separately
   unreviewed and no unitname inferred here. */

void * __thiscall
ElapsedClock_ConstructAndOptionallyStart(void *this,uint clockMode,uchar startImmediately)

{
  undefined8 uVar1;
  float fVar2;
  LARGE_INTEGER local_8;
  
  fVar2 = FLOAT_00f998f8;
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(float *)((int)this + 0x14) = fVar2;
  FUN_004f34e0(this,clockMode);
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

