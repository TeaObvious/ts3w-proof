/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Bounded role RefPackCodec_Initialize: stores vtable00FBA058 and supplied allocator at+4; ECX
   wrapper receiver and one stack DWORD/RET4. Constructor identity only, no codec-registry or
   stream-lifetime equivalence inferred. */

void __thiscall RefPackCodec_Initialize(void *this,undefined4 param_1)

{
  *(undefined ***)this = &PTR_LAB_00fba058;
  *(undefined4 *)((int)this + 4) = param_1;
  return;
}

