/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Shared counted-reference increment, not UI-specific. Complete physical 3-instruction/8-byte body
   adds one to DWORD [ECX+8], returns the new word in EAX, RET. No atomic prefix, null guard or
   overflow check is visible. The case-6 effect interface +0 path adjusts ECX by -0x10 then reaches
   this body through 00516C20; this proves the selected retain operation, not universal
   registry/list retention. */

undefined4 __fastcall CountedReference_Retain(int param_1)

{
  *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + 1;
  return *(undefined4 *)(param_1 + 8);
}

