/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: update geometry; centered cursor/travel with SSE clamp/divide and x87 rounding;
   EAX int RET8.
   Mixed SSE/x87 arithmetic is material: range subtraction occurs in 32 bits before FILD, followed
   by floor and the existing conversion helper. No zero/negative travel or invalid-range guard is
   present. The caller-pushed notification word belongs to the later setter, not a third parameter
   here. Result EAX; RET 8.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

int __thiscall WinSlider_ValueAtPointer(void *this,float param_1,float param_2)

{
  int iVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  double dVar6;
  
  (**(code **)(*(int *)this + 0xa0))();
  if (*(int *)((int)this + 0x260) == 1) {
    fVar5 = *(float *)((int)this + 0x280) - *(float *)((int)this + 0x278);
    fVar3 = param_1 - (*(float *)((int)this + 0x280) - *(float *)((int)this + 0x278)) * 0.5;
    fVar4 = *(float *)((int)this + 0x290) - *(float *)((int)this + 0x288);
  }
  else {
    fVar5 = *(float *)((int)this + 0x284) - *(float *)((int)this + 0x27c);
    fVar3 = param_2 - (*(float *)((int)this + 0x284) - *(float *)((int)this + 0x27c)) * 0.5;
    fVar4 = *(float *)((int)this + 0x294) - *(float *)((int)this + 0x28c);
  }
  fVar4 = fVar4 - fVar5;
  if (fVar3 < 0.0) {
    fVar3 = 0.0;
  }
  if (fVar4 < fVar3) {
    fVar3 = fVar4;
  }
  if (*(int *)((int)this + 0x260) == 1) {
    iVar1 = *(int *)((int)this + 600);
    dVar6 = floor((double)((float)(*(int *)((int)this + 0x25c) - iVar1) * (fVar3 / fVar4) + 0.5));
    iVar2 = Compiler_TruncateX87ToLowInt32((float10)dVar6);
    return iVar2 + iVar1;
  }
  iVar1 = *(int *)((int)this + 0x25c);
  dVar6 = floor((double)((float)(iVar1 - *(int *)((int)this + 600)) * (fVar3 / fVar4) + 0.5));
  iVar2 = Compiler_TruncateX87ToLowInt32((float10)dVar6);
  return iVar1 - iVar2;
}

