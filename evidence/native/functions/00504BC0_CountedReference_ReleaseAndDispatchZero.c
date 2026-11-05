/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Shared counted-reference decrement and zero dispatch, not UI-specific. Complete physical
   11-instruction/23-byte body decrements DWORD [ECX+8], retains the resulting word for EAX, and
   only at zero calls whole-object primary vtable +8 with stack argument 1. No atomic prefix,
   underflow guard or list-membership veto is present. The case-6 effect interface +4 path adjusts
   ECX by -0x10 then reaches this body through 00539560. The primary +8 implementation and allocator
   protocol are not established by this body; do not equate it with the separate interface +8 slot.
    */

int __fastcall CountedReference_ReleaseAndDispatchZero(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = param_1 + 2;
  *piVar1 = *piVar1 + -1;
  iVar2 = param_1[2];
  if (*piVar1 == 0) {
    (**(code **)(*param_1 + 8))(1);
  }
  return iVar2;
}

