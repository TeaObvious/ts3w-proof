/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 load-pump leaf. ECX clock24bytes,no stackargsRET, x87ST0 extendedfloatingreturn
   (customST0storage avoids invented returnpointer). StartUInt64 at0/4, accumulatedUInt64 at8/C,
   modeDWORD10, scaleFLOAT32at14. Ifstart0 useaccumulatoronly. Else readRDTSC whenmode1elseQPC;
   subtractstartUInt64, compare unsigned againstglobaloverheadUInt64(11CC910/914). Delta<=overhead
   addsONEtick; greater addsdelta-overhead, with64bitcarry/wrap. Read doesnotwriteclock. Convert
   resultUNSIGNED64 via FILD(highbitcleared64) PLUS negatedFILD(signbit-only64); latter
   is+2^63whenhighbitset, NOTsignednegativeelapsed. FMUL storedFLOAT32scale andreturnST0.
   Unit/scale/overhead initialization, wrap/clockcalibration and OS callfailure behavior remain
   separate; no simulationclock read in this body. */

float10 __thiscall ElapsedClock_ReadScaledTicks(void *this)

{
  undefined8 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  LARGE_INTEGER local_8;
  
  uVar4 = *(uint *)((int)this + 0xc);
  uVar5 = *(uint *)((int)this + 8);
  if (*(int *)this != 0 || *(int *)((int)this + 4) != 0) {
    if (*(int *)((int)this + 0x10) == 1) {
      uVar1 = rdtsc();
      local_8.s.HighPart = (LONG)((ulonglong)uVar1 >> 0x20);
      local_8.s.LowPart = (DWORD)uVar1;
    }
    else {
      QueryPerformanceCounter(&local_8);
    }
    uVar2 = local_8.s.LowPart - *(int *)this;
    uVar3 = (local_8.s.HighPart - *(int *)((int)this + 4)) -
            (uint)(local_8.s.LowPart < *(uint *)this);
    if ((uVar3 < DAT_011cc914) || ((uVar3 == DAT_011cc914 && (uVar2 <= DAT_011cc910)))) {
      bVar6 = 0xfffffffe < uVar5;
      uVar5 = uVar5 + 1;
      uVar4 = uVar4 + bVar6;
    }
    else {
      bVar6 = CARRY4(uVar5,uVar2 - DAT_011cc910);
      uVar5 = uVar5 + (uVar2 - DAT_011cc910);
      uVar4 = uVar4 + ((uVar3 - DAT_011cc914) - (uint)(uVar2 < DAT_011cc910)) + (uint)bVar6;
    }
  }
                    /* FILD signed signbit-only64 then FCHS adds+2^63 for unsignedconversion. No
                       signed negative ticks implied. */
  return (-(float10)(longlong)(((ulonglong)uVar4 & 0x80000000) << 0x20) +
         (float10)(CONCAT44(uVar4,uVar5) & 0x7fffffffffffffff)) *
         (float10)*(float *)((int)this + 0x14);
}

