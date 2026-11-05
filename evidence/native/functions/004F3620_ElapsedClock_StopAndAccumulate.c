/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: accumulate corrected elapsed ticks before clearing start; preserves accumulator;
   not reset-to-zero.
   Corrected elapsed ticks are added to the existing accumulator before the start words are cleared.
   Accumulator is retained; this is not reset-to-zero. Unsigned arithmetic, overhead correction and
   wrap behavior are preserved.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __fastcall ElapsedClock_StopAndAccumulate(uint *param_1)

{
  uint *puVar1;
  int iVar2;
  undefined8 uVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  LARGE_INTEGER local_8;
  
  if (*param_1 != 0 || param_1[1] != 0) {
    if (param_1[4] == 1) {
      uVar3 = rdtsc();
      local_8.s.HighPart = (LONG)((ulonglong)uVar3 >> 0x20);
      local_8.s.LowPart = (DWORD)uVar3;
    }
    else {
      QueryPerformanceCounter(&local_8);
    }
    uVar4 = local_8.s.LowPart - *param_1;
    uVar5 = (local_8.s.HighPart - param_1[1]) - (uint)(local_8.s.LowPart < *param_1);
    if ((DAT_011cc914 <= uVar5) && ((uVar5 != DAT_011cc914 || (DAT_011cc910 < uVar4)))) {
      bVar6 = uVar4 < DAT_011cc910;
      uVar4 = uVar4 - DAT_011cc910;
      iVar2 = uVar5 - DAT_011cc914;
      puVar1 = param_1 + 2;
      uVar5 = *puVar1;
      *puVar1 = *puVar1 + uVar4;
      *param_1 = 0;
      param_1[3] = param_1[3] + (iVar2 - (uint)bVar6) + (uint)CARRY4(uVar5,uVar4);
      param_1[1] = 0;
      return;
    }
    puVar1 = param_1 + 2;
    uVar4 = *puVar1;
    *puVar1 = *puVar1 + 1;
    *param_1 = 0;
    param_1[1] = 0;
    param_1[3] = param_1[3] + (uint)(0xfffffffe < uVar4);
  }
  return;
}

