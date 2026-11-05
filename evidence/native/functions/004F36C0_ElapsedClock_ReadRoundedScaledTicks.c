/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: unsigned tick conversion, binary32 scale, +0.4999899864, tailcall existing Int64
   helper; EDX:EAX result.
   Unsigned 64-bit tick correction, binary32 instance scale and binary32 word 0x3efffeb0 (about
   0.4999899864) precede the existing int64 conversion tail jump. Result EDX:EAX.
   Counter/calibration initialization and replacement services are outside this pair.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

ulonglong __fastcall ElapsedClock_ReadRoundedScaledTicks(uint *param_1)

{
  undefined8 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  ulonglong uVar7;
  LARGE_INTEGER local_8;
  
  uVar4 = param_1[3];
  uVar5 = param_1[2];
  if (*param_1 != 0 || param_1[1] != 0) {
    if (param_1[4] == 1) {
      uVar1 = rdtsc();
      local_8.s.HighPart = (LONG)((ulonglong)uVar1 >> 0x20);
      local_8.s.LowPart = (DWORD)uVar1;
    }
    else {
      QueryPerformanceCounter(&local_8);
    }
    uVar2 = local_8.s.LowPart - *param_1;
    uVar3 = (local_8.s.HighPart - param_1[1]) - (uint)(local_8.s.LowPart < *param_1);
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
  local_8.s.HighPart = uVar4 & 0x80000000;
  local_8.s.LowPart = 0;
  uVar7 = Compiler_TruncateX87ToInt64Fallback
                    ((-(float10)(longlong)(((ulonglong)uVar4 & 0x80000000) << 0x20) +
                     (float10)(CONCAT44(uVar4,uVar5) & 0x7fffffffffffffff)) *
                     (float10)(float)param_1[5] + (float10)0.49999);
  return uVar7;
}

