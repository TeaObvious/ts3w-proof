/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: optional raw signed step-division snapping; upper then lower clamp;
   target/duplicate/start store and clock restart; void RET4.
   Optional snapping uses the raw signed step divisor without a max(1,step) guard. Signed
   upper-then-lower clamp precedes target/duplicate/start updates and clock restart. Zero-divisor,
   signed-division overflow and 32-bit wrap behavior remain material. No value result; RET 4. No
   inferred prototype is forced.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __thiscall WinScrollbar_SetTargetValue(int param_1,int param_2)

{
  code *pcVar1;
  undefined8 uVar2;
  int iVar3;
  LARGE_INTEGER LStack_8;
  
  if ((*(byte *)(param_1 + 0x40) & 2) != 0) {
    iVar3 = *(int *)(param_1 + 0x24);
    param_2 = (param_2 / iVar3 + (uint)(iVar3 <= (param_2 % iVar3) * 2)) * iVar3;
  }
  iVar3 = *(int *)(param_1 + 0x18) - *(int *)(param_1 + 0x1c);
  if (iVar3 < param_2) {
    param_2 = iVar3;
  }
  if (param_2 < *(int *)(param_1 + 0x14)) {
    param_2 = *(int *)(param_1 + 0x14);
  }
  *(int *)(param_1 + 8) = param_2;
  *(int *)(param_1 + 0xc) = param_2;
  if (param_2 != *(int *)(param_1 + 4)) {
    pcVar1 = *(code **)(*(int *)(param_1 + -0x250) + 0x9c);
    *(int *)(param_1 + 0x10) = *(int *)(param_1 + 4);
    (*pcVar1)();
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x4c) = 0;
    *(undefined4 *)(param_1 + 0x50) = 0;
    *(undefined4 *)(param_1 + 0x54) = 0;
    if (*(int *)(param_1 + 0x58) == 1) {
      uVar2 = rdtsc();
      *(int *)(param_1 + 0x48) = (int)uVar2;
      *(int *)(param_1 + 0x4c) = (int)((ulonglong)uVar2 >> 0x20);
      return;
    }
    QueryPerformanceCounter(&LStack_8);
    *(DWORD *)(param_1 + 0x48) = LStack_8.s.LowPart;
    *(LONG *)(param_1 + 0x4c) = LStack_8.s.HighPart;
  }
  return;
}

