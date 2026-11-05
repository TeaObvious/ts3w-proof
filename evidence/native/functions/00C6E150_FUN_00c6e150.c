/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX manager, stack4 unsigned index, RET4. Index below computed pointer count returns begin[index], else EAXzero. No retain occurs in this body; higher owner controls lifetime.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00C6E150_FUN_00c6e150.asm
 */

undefined4 __thiscall FUN_00c6e150(void *this,uint param_1)

{
  if (param_1 < (uint)(*(int *)((int)this + 0x18) - *(int *)((int)this + 0x14) >> 2)) {
    return *(undefined4 *)(*(int *)((int)this + 0x14) + param_1 * 4);
  }
  return 0;
}

