/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX wrapper, plain RET. Clears DWORD wrapper+8 then+4 only, corresponding to y/x
   counters in the selected wrapper+4 allocator. Does not write allocator offsets, limits or
   strides. No stack argument, child call, capacity check or semantic return contract inferred;
   analysis ABI metadata unchanged. */

void __fastcall FloorAtlas_ResetWrappedSlotCounters(int param_1)

{
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  return;
}

