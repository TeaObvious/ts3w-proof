/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: half-open scalar rectangle test; finite and unordered branch behavior from
   complete COMISS instructions.
   Finite coordinates use left/top inclusive and right/bottom exclusive tests. Unordered values
   follow the actual COMISS branches; upstream validation and floating-point exception masking
   remain unknown. EAX is 0 or 1; RET 8.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

undefined4 __thiscall UiRect_ContainsPointHalfOpen(void *this,float param_1,float param_2)

{
  if ((((*(float *)this <= param_1) && (*(float *)((int)this + 4) <= param_2)) &&
      (param_1 < *(float *)((int)this + 8))) && (param_2 < *(float *)((int)this + 0xc))) {
    return 1;
  }
  return 0;
}

