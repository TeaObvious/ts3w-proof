/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXsamplerdatabase; unsigned onebased ordinal stackwordRET4/EAXpointer or0. Ordinal0 returns0; compare ordinal-1 unsigned toSAR2(end-begin), outofrange0; otherwise vector[ordinal-1]. Not zero-based/pass-name/key lookup. */

undefined4 __thiscall FUN_0079abd0(void *this,int param_1)

{
  if (param_1 != 0) {
    if (param_1 - 1U < (uint)(*(int *)((int)this + 4) - *(int *)this >> 2)) {
      return *(undefined4 *)(*(int *)this + (param_1 - 1U) * 4);
    }
  }
  return 0;
}
