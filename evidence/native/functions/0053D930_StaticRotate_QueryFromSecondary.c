/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053d930. Physical ECX subtract4 then tailJMP53D350. Exact owned
   adjustor8B/2instructions; shared query25B MUST NOT be included in this body. Signature for new
   definition must be actual Ghidra output, not an asserted ABI repair. */

void * __thiscall StaticRotate_QueryFromSecondary(int param_1,int param_2)

{
  void *pvVar1;
  
  if (param_2 != 0x37d6855) {
    pvVar1 = FUN_00504b80((void *)(param_1 + -4),param_2);
    return pvVar1;
  }
  return (void *)(param_1 + -4);
}

